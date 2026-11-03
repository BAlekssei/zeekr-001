#!/usr/bin/env python3
"""Translate Unity screens and Android dialogs while preserving code and resource IDs."""
import argparse
import base64
import copy
import hashlib
import importlib.metadata
import json
import re
from pathlib import Path
import struct
import zipfile
import zlib

import UnityPy
from android_strings import translate as android_pool
import runtime_strings

ROOT = Path(__file__).resolve().parents[1]
BASE = "assets/aa/Android/"
TABLE = BASE + "carctrlmodule_assets_stringtables/languagetable_{}.bundle"
CATALOG = "assets/aa/catalog.json"


def require(condition, message):
    if not condition:
        raise ValueError(message)


def read_string(raw, pos):
    size = struct.unpack_from("<I", raw, pos)[0]
    end = pos + 4 + size
    require(end <= len(raw), "String exceeds object boundary")
    return raw[pos + 4:end].decode("utf-8"), (end + 3) & ~3


def write_string(value):
    data = value.encode("utf-8")
    return struct.pack("<I", len(data)) + data + bytes(-len(data) % 4)


def table_rows(raw):
    name, pos = read_string(raw, 28)  # MonoBehaviour header + m_Name
    locale, pos = read_string(raw, pos)
    pos += 12  # shared table data PPtr
    metadata, count = struct.unpack_from("<II", raw, pos)
    require(metadata == 0 and count == 136, "Unexpected StringTable schema")
    pos += 8
    header = raw[:pos]
    rows = []
    for _ in range(count):
        start = pos
        key = struct.unpack_from("<q", raw, pos)[0]
        text, pos = read_string(raw, pos + 8)
        metadata = struct.unpack_from("<I", raw, pos)[0]
        require(metadata == 0, "StringTable entry has unsupported metadata")
        pos += 4
        rows.append((key, text, raw[start:pos]))
    require(raw[pos:] == bytes.fromhex("0200000000000000"), "Unexpected StringTable tail")
    return name, locale, header, rows, raw[pos:]


def objects(bundle):
    return {(obj.assets_file.name, obj.path_id): obj for obj in bundle.objects}


def bundle_crc(bundle):
    crc = 0
    for file in bundle.file.files.values():
        crc = zlib.crc32(file.reader.bytes if hasattr(file, "reader") else file.bytes, crc)
    return crc


def save_checked(env, expected):
    original = objects(env)
    data = env.file.save(packer="lz4")
    reread = UnityPy.load(data)
    actual = objects(reread)
    require(actual.keys() == original.keys(), "Bundle object IDs changed")
    for key, obj in actual.items():
        require(obj.get_raw_data() == expected.get(key, original[key].get_raw_data()),
                f"Unexpected object change: {key}")
    require(env.file.files.keys() == reread.file.files.keys(), "Bundle file names changed")
    for name, old in env.file.files.items():
        new = reread.file.files[name]
        if not hasattr(old, "objects"):
            require(old.bytes == new.bytes, f"Resource stream changed: {name}")
    return data, bundle_crc(reread)


def patch_table(data, translations, locale):
    env = UnityPy.load(data)
    candidates = [o for o in env.objects if o.type.name == "MonoBehaviour"]
    require(len(candidates) == 1, "Expected one StringTable")
    obj = candidates[0]
    name, actual_locale, header, rows, tail = table_rows(obj.get_raw_data())
    require(actual_locale == locale, f"Unexpected locale: {actual_locale}")
    changes = {item["id"]: item for item in translations}
    found = set()
    result = bytearray(header)
    for key, text, raw in rows:
        if key in changes:
            item = changes[key]
            require(text == item[locale], f"Source text changed: {key}: {text}")
            result += struct.pack("<q", key) + write_string(item["ru"]) + bytes(4)
            found.add(key)
        else:
            result += raw
    require(found == changes.keys(), "Missing translation IDs")
    result += tail
    patched = bytes(result)
    _, _, _, new_rows, _ = table_rows(patched)
    require([r[0] for r in rows] == [r[0] for r in new_rows], "String IDs/order changed")
    expected = {(obj.assets_file.name, obj.path_id): patched}
    obj.set_raw_data(patched)
    print(f"{name}: {len(found)} translated entries")
    return save_checked(env, expected)


def patch_prefab(data, fields, translations, layouts):
    env = UnityPy.load(data)
    expected = {}
    for item in fields:
        matches = [o for o in env.objects if o.path_id == item['id']]
        require(len(matches) == 1, f"Missing prefab object: {item['id']}")
        obj = matches[0]
        require(obj.type.name == 'MonoBehaviour', 'Expected MonoBehaviour text field')
        script = obj.read(check_read=False).m_Script.deref().read().m_ClassName
        require(script == item['class'], f"Prefab text class changed: {script}")
        raw = obj.get_raw_data()
        offset = item['offset']
        source, end = read_string(raw, offset)
        require(len(raw) == item['size'] and source == item['source'],
                f"Prefab text/schema changed: {item['id']}")
        # Only the display string changes; fonts, geometry, keys and callbacks are retained.
        patched = raw[:offset] + write_string(translations[source]) + raw[end:]
        expected[(obj.assets_file.name, obj.path_id)] = patched
        obj.set_raw_data(patched)
    for item in layouts:
        obj = next(o for o in env.objects if o.path_id == item['id'])
        require(obj.type.name == 'RectTransform', 'Expected caption RectTransform')
        tree = obj.read_typetree()
        require(tree['m_SizeDelta'] == {'x': item['source_width'], 'y': item['height']},
                f"Caption dimensions changed: {item['id']}")
        require(tree['m_AnchorMin'] == tree['m_AnchorMax'] == {'x': 0.5, 'y': 0.5},
                'Expected centered suspension caption')
        tree['m_SizeDelta']['x'] = item['width']
        patched = obj.save_typetree(tree)
        expected[(obj.assets_file.name, obj.path_id)] = patched
    print(f"Prefab {fields[0]['bundle'].split('/')[-1]}: {len(fields)} text fields")
    return save_checked(env, expected)


def request_options(extra, offset):
    require(extra[offset] == 7, "Unexpected catalog option encoding")
    pos = offset + 1
    pos += 1 + extra[pos]  # assembly name
    pos += 1 + extra[pos]  # class name
    size = struct.unpack_from("<I", extra, pos)[0]
    options = json.loads(extra[pos + 4:pos + 4 + size].decode("utf-16-le"))
    return extra[offset:pos], options


def patch_catalog(raw, changes, old_crcs):
    catalog = json.loads(raw)
    entries = bytearray(base64.b64decode(catalog["m_EntryDataString"]))
    extra = bytearray(base64.b64decode(catalog["m_ExtraDataString"]))
    count = struct.unpack_from("<I", entries)[0]
    require(len(entries) == 4 + 28 * count, "Unexpected catalog entry layout")
    found = set()
    for pos in range(4, len(entries), 28):
        internal_id, provider, _, _, offset, _, _ = struct.unpack_from("<7i", entries, pos)
        path = catalog["m_InternalIds"][internal_id]
        path = "assets/aa/" + path.split("RuntimePath}/", 1)[-1]
        if path not in changes or provider != 0:
            continue
        require(path not in found, f"Duplicate bundle location: {path}")
        prefix, options = request_options(extra, offset)
        require(options["m_Crc"] == old_crcs[path], f"Original Unity CRC differs: {path}")
        data, crc = changes[path]
        options.update(m_Crc=crc, m_BundleSize=len(data), m_Hash=hashlib.md5(data).hexdigest())
        encoded = json.dumps(options, separators=(",", ":")).encode("utf-16-le")
        struct.pack_into("<i", entries, pos + 16, len(extra))
        extra.extend(prefix + struct.pack("<I", len(encoded)) + encoded)
        found.add(path)
    require(found == changes.keys(), "Missing catalog bundle locations")
    catalog["m_EntryDataString"] = base64.b64encode(entries).decode()
    catalog["m_ExtraDataString"] = base64.b64encode(extra).decode()
    print(f"Addressables: updated CRC, size and cache hash for {len(found)} bundles")
    return json.dumps(catalog, ensure_ascii=False, separators=(",", ":")).encode()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    require(importlib.metadata.version("UnityPy") == "1.25.2", "Install requirements.txt first")
    require(args.source.resolve() != args.output.resolve(), "Source must not be overwritten")
    translations = json.loads((ROOT / "ru/interface.json").read_text())
    require(len(translations) == 136 and len({t['id'] for t in translations}) == 136,
            "Expected all 136 distinct StringTable entries")
    display = {item['zh-Hans']: item['ru'] for item in translations}
    display.update(json.loads((ROOT / 'ru/prefab-extra.json').read_text()))
    fields = json.loads((ROOT / 'ru/prefabs.json').read_text())
    layouts = json.loads((ROOT / 'ru/unity-layout.json').read_text())
    require(len({(f['bundle'], f['id']) for f in fields}) == len(fields), 'Duplicate prefab fields')
    with zipfile.ZipFile(args.source) as source:
        require(len(source.namelist()) == len(set(source.namelist())), "Duplicate APK entries")
        changes = {}
        for path in sorted({item['bundle'] for item in fields}):
            subset = [item for item in fields if item['bundle'] == path]
            rects = [item for item in layouts if item['bundle'] == path]
            changes[path] = patch_prefab(source.read(path), subset, display, rects)
        for suffix, locale in [("zh-hans", "zh-Hans"), ("en", "en")]:
            path = TABLE.format(suffix)
            changes[path] = patch_table(source.read(path), translations, locale)
        old_crcs = {path: bundle_crc(UnityPy.load(source.read(path))) for path in changes}
        replacements = {path: data for path, (data, _) in changes.items()}
        replacements[CATALOG] = patch_catalog(source.read(CATALOG), changes, old_crcs)
        android = json.loads((ROOT / 'ru/android.json').read_text())
        for item in android:
            placeholders = r'%(?:\d+\$)?[sd]'
            require(re.findall(placeholders, item['source']) == re.findall(placeholders, item['ru']),
                    f"Android placeholders changed: {item['name']}")
        mapping = {item['source']: item['ru'] for item in android}
        require(len(mapping) == len({i['source'] for i in android}), 'Duplicate Android source text')
        for item in android:
            require(mapping[item['source']] == item['ru'], 'Conflicting Android translations')
        replacements['resources.arsc'] = android_pool(source.read('resources.arsc'), mapping)
        layouts = json.loads((ROOT / 'ru/layout-text.json').read_text())
        for path, mapping in layouts.items():
            replacements[path] = android_pool(source.read(path), mapping, kind_expected=3)
        runtime = json.loads((ROOT / 'ru/runtime-literals.json').read_text())
        replacements[runtime_strings.PATH] = runtime_strings.translate(source.read(runtime_strings.PATH), runtime)
        args.output.parent.mkdir(parents=True, exist_ok=True)
        with zipfile.ZipFile(args.output, "w") as output:
            for info in source.infolist():
                if info.filename.upper().startswith("META-INF/"):
                    continue
                output.writestr(copy.copy(info), replacements.get(info.filename, source.read(info)))
        with zipfile.ZipFile(args.output) as output:
            require(output.testzip() is None, "Broken APK ZIP")
            changed = {n for n in output.namelist() if output.read(n) != source.read(n)}
            require(changed == replacements.keys(), "Unexpected changed APK entries")
        print(f"Verified: only {len(changes)} Unity bundles, catalog, Android string pool and "
              "three layouts plus four IL2CPP display literals changed; DEX, libraries and remaining assets preserved byte-for-byte")
    print(f"Unsigned APK: {args.output}")


if __name__ == "__main__":
    main()
