#!/usr/bin/env python3
"""Apply named Russian strings; reject missing resources or changed placeholders."""
import re
import sys
import xml.etree.ElementTree as ET
from pathlib import Path

HERE = Path(__file__).resolve().parents[1]
FMT = re.compile(r"%(?:\d+\$)?[-#+ 0,(]*\d*(?:\.\d+)?[a-zA-Z]")


def placeholders(text):
    return sorted(FMT.findall(text.replace('%%', '')))


def apply(project):
    translation = ET.parse(HERE / 'ru/strings.xml').getroot()
    stock_path = project / 'res/values/strings.xml'
    stock = {e.get('name'): e for e in ET.parse(stock_path).getroot()}
    for e in translation:
        name = e.get('name')
        if name not in stock:
            raise ValueError(f'Missing stock string: {name}; review translation for this version')
        if placeholders(''.join(e.itertext())) != placeholders(''.join(stock[name].itertext())):
            raise ValueError(f'Placeholder mismatch: {name}')
    # The vehicle may restore zh-CN. Keep these UI strings Russian in either locale.
    for directory in ('values', 'values-ru', 'values-zh-rCN'):
        path = project / 'res' / directory / 'strings.xml'
        path.parent.mkdir(parents=True, exist_ok=True)
        text = path.read_text() if path.exists() else '<?xml version="1.0" encoding="utf-8"?>\n<resources>\n</resources>\n'
        for e in translation:
            name = e.get('name')
            replacement = ET.tostring(e, encoding='unicode').strip()
            pattern = rf'<string\s+name="{re.escape(name)}"[^>]*(?:/>|>.*?</string>)'
            text, count = re.subn(pattern, lambda _: replacement, text, flags=re.S)
            if count == 0:
                text = text.replace('</resources>', f'    {replacement}\n</resources>')
            elif count != 1:
                raise ValueError(f'Duplicate resource: {path}: {name}')
        path.write_text(text)
        print(f'{directory}: {len(translation)} strings')


if __name__ == '__main__':
    apply(Path(sys.argv[1]))
