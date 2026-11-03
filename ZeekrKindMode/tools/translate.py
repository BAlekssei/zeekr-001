#!/usr/bin/env python3
"""Translate camping dialogs without changing the mode service's code or resource IDs."""
import copy
import json
from pathlib import Path
import re
import sys
import zipfile

from android_strings import translate

ROOT = Path(__file__).resolve().parents[1]


def main():
    source_path, output_path = map(Path, sys.argv[1:])
    if source_path.resolve() == output_path.resolve():
        raise ValueError('Source APK must not be overwritten')
    items = json.loads((ROOT / 'ru/strings.json').read_text())
    mapping = {}
    for item in items:
        pattern = r'%(?:\d+\$)?[sd]|%%'
        if re.findall(pattern, item['source']) != re.findall(pattern, item['ru']):
            raise ValueError(f"Placeholders changed: {item['name']}")
        if item['source'] in mapping and mapping[item['source']] != item['ru']:
            raise ValueError(f"Conflicting translation: {item['name']}")
        mapping[item['source']] = item['ru']
    output_path.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(source_path) as source:
        if len(source.namelist()) != len(set(source.namelist())):
            raise ValueError('Duplicate ZIP entries')
        patched = translate(source.read('resources.arsc'), mapping)
        with zipfile.ZipFile(output_path, 'w') as output:
            for info in source.infolist():
                if info.filename.upper().startswith('META-INF/'):
                    continue
                data = patched if info.filename == 'resources.arsc' else source.read(info)
                output.writestr(copy.copy(info), data)
        with zipfile.ZipFile(output_path) as output:
            if output.testzip() is not None:
                raise ValueError('Invalid APK ZIP')
            changes = {n for n in output.namelist() if output.read(n) != source.read(n)}
            if changes != {'resources.arsc'}:
                raise ValueError(f'Unexpected APK changes: {changes}')
    print(f'{len(items)} named resources translated; only resources.arsc changed. '
          'DEX, libraries, manifest and layouts preserved byte-for-byte.')


if __name__ == '__main__':
    main()
