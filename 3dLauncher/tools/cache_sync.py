"""Prepare a compatible Unity metadata cache, retaining known previous cached translations."""
import argparse
import hashlib
import json
from pathlib import Path
import zipfile

import runtime_strings

ROOT = Path(__file__).resolve().parents[1]


def prepare(current, original, apk_metadata, spec):
    runtime_strings.verify(original, apk_metadata, spec)
    legacy = bytearray(original)
    for item in spec['cache_overrides']:
        start = item['offset']
        source, cached = item['source'].encode(), item['cached'].encode()
        if len(source) != len(cached) or legacy[start:start + len(source)] != source:
            raise ValueError('Known legacy cache layout changed')
        legacy[start:start + len(source)] = cached
    # Only the exact stock cache, the known legacy cache, and our validated outputs are accepted.
    for base in [original, bytes(legacy)]:
        variant = dict(spec, source_sha256=hashlib.sha256(base).hexdigest())
        patched = runtime_strings.translate(base, variant)
        if current in [base, patched]:
            return patched
    raise ValueError('Unknown metadata cache: saved backup retained; no device file will be replaced')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('cache', type=Path)
    parser.add_argument('output', type=Path)
    parser.add_argument('--restore', action='store_true')
    args = parser.parse_args()
    spec = json.loads((ROOT / 'ru/runtime-literals.json').read_text())
    with zipfile.ZipFile(ROOT / '3dLauncher_original.apk') as stock:
        original = stock.read(runtime_strings.PATH)
    with zipfile.ZipFile(ROOT / '3dLauncher_RU.apk') as apk:
        metadata = apk.read(runtime_strings.PATH)
    current = args.cache.read_bytes()
    patched = prepare(current, original, metadata, spec)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_bytes(current if args.restore else patched)
    print(f'Cache verified; prepared SHA-256: {hashlib.sha256(args.output.read_bytes()).hexdigest()}')


if __name__ == '__main__':
    main()
