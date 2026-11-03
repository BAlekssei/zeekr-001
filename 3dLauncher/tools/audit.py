#!/usr/bin/env python3
"""Audit every Unity UI text component and translated table in a finished APK."""
import json
from pathlib import Path
import sys
import zipfile

import UnityPy

from android_strings import strings, u32
from translate import ROOT, TABLE, read_string, require, table_rows
import runtime_strings


def main():
    path = Path(sys.argv[1])
    translations = json.loads((ROOT / 'ru/interface.json').read_text())
    expected = {item['id']: item['ru'] for item in translations}
    with zipfile.ZipFile(path) as apk:
        for locale in ['zh-hans', 'en']:
            env = UnityPy.load(apk.read(TABLE.format(locale)))
            obj = next(o for o in env.objects if o.type.name == 'MonoBehaviour')
            rows = table_rows(obj.get_raw_data())[3]
            require({key: text for key, text, _ in rows} == expected,
                    f'Translation table mismatch: {locale}')
        checked = 0
        for name in apk.namelist():
            if '/ui/' not in name or not name.endswith('.bundle'):
                continue
            for obj in UnityPy.load(apk.read(name)).objects:
                if obj.type.name != 'MonoBehaviour':
                    continue
                data = obj.read(check_read=False)
                script = data.m_Script.deref().read().m_ClassName
                if script not in ['TextMeshProUGUI', 'Text']:
                    continue
                offset = 88 if script == 'TextMeshProUGUI' else 144
                text, _ = read_string(obj.get_raw_data(), offset)
                require(not any('\u3400' <= c <= '\u9fff' for c in text),
                        f'Untranslated UI text: {name}, {obj.path_id}: {text}')
                checked += 1
        require(checked == 92, f'UI text component count changed: {checked}')
        layouts = json.loads((ROOT / 'ru/unity-layout.json').read_text())
        for name in {item['bundle'] for item in layouts}:
            env = UnityPy.load(apk.read(name))
            for item in [item for item in layouts if item['bundle'] == name]:
                obj = next(o for o in env.objects if o.path_id == item['id'])
                require(obj.read_typetree()['m_SizeDelta']['x'] == item['width'],
                        'Suspension caption width not patched')
        for name, mapping in json.loads((ROOT / 'ru/layout-text.json').read_text()).items():
            raw = apk.read(name)
            offset = int.from_bytes(raw[2:4], 'little')
            pool = strings(raw[offset:offset + u32(raw, offset + 4)])
            require(set(mapping.values()) <= set(pool), f'Layout translation missing: {name}')
        raw = apk.read('resources.arsc')
        offset = int.from_bytes(raw[2:4], 'little')
        pool = strings(raw[offset:offset + u32(raw, offset + 4)])
        android = json.loads((ROOT / 'ru/android.json').read_text())
        require({item['ru'] for item in android} <= set(pool), 'Android dialog translation missing')
        runtime = json.loads((ROOT / 'ru/runtime-literals.json').read_text())
        with zipfile.ZipFile(ROOT / '3dLauncher_original.apk') as original:
            runtime_strings.verify(original.read(runtime_strings.PATH), apk.read(runtime_strings.PATH), runtime)
    print(f'Audit passed: all 136 entries in both tables, {checked} Unity UI text components, '
          f'{len(android)} Android resources, three layouts and four runtime camping captions')


if __name__ == '__main__':
    main()
