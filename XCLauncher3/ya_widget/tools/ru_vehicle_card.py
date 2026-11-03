#!/usr/bin/env python3
"""Replace global resources.arsc strings without rebuilding resource packages.

String indices, package bytes, IDs, configurations and style spans stay intact.
The global pool grows; only its offsets and the enclosing table size change.
"""
import json
import struct
import sys
from pathlib import Path


def u32(data, pos):
    return struct.unpack_from('<I', data, pos)[0]


def length(data, pos, utf8):
    unit, mask = (1, 0x80) if utf8 else (2, 0x8000)
    value = int.from_bytes(data[pos:pos + unit], 'little')
    pos += unit
    if value & mask:
        value = ((value & (mask - 1)) << (8 * unit)) | int.from_bytes(data[pos:pos + unit], 'little')
        pos += unit
    return value, pos


def pack_length(value, utf8):
    if utf8:
        if value > 0x7fff:
            raise ValueError('UTF-8 string too long')
        return bytes([0x80 | (value >> 8), value & 0xff]) if value > 0x7f else bytes([value])
    return struct.pack('<HH', 0x8000 | (value >> 16), value & 0xffff) if value > 0x7fff else struct.pack('<H', value)


def strings(pool):
    header = struct.unpack_from('<HHIIIIII', pool)
    kind, header_size, size, count, styles, flags, start, style_start = header
    if kind != 1 or size != len(pool) or header_size < 28:
        raise ValueError('Invalid string pool')
    utf8 = bool(flags & 0x100)
    values = []
    for i in range(count):
        pos = start + u32(pool, header_size + 4 * i)
        chars, pos = length(pool, pos, utf8)
        if utf8:
            size_bytes, pos = length(pool, pos, True)
        else:
            size_bytes = chars * 2
        values.append(pool[pos:pos + size_bytes].decode('utf-8' if utf8 else 'utf-16le'))
    return values


def translate(table, translations):
    kind, header_size, table_size = struct.unpack_from('<HHI', table)
    if kind != 2 or table_size != len(table):
        raise ValueError('Expected a complete Android resource table')
    pos = header_size
    if struct.unpack_from('<H', table, pos)[0] != 1:
        raise ValueError('Expected global string pool before packages')
    size = u32(table, pos + 4)
    pool = table[pos:pos + size]
    values = strings(pool)
    missing = set(translations) - set(values)
    if missing:
        raise ValueError(f'Stock strings missing; review this version: {sorted(missing)}')
    _, pool_header, _, count, styles, flags, start, style_start = struct.unpack_from('<HHIIIIII', pool)
    utf8 = bool(flags & 0x100)
    result = bytearray(pool[:start])
    payload = bytearray()
    # Android style spans are UTF-16 character offsets. Fail if a changed string is styled.
    for i, value in enumerate(values):
        if value in translations and i < styles and u32(pool, pool_header + 4 * count + 4 * i) != 0xffffffff:
            raise ValueError(f'Cannot replace styled string: {value}')
        struct.pack_into('<I', result, pool_header + 4 * i, len(payload))
        value = translations.get(value, value)
        utf16 = value.encode('utf-16le')
        payload += pack_length(len(utf16) // 2, utf8)
        if utf8:
            encoded = value.encode('utf-8')
            payload += pack_length(len(encoded), True) + encoded + b'\0'
        else:
            payload += utf16 + b'\0\0'
    payload += b'\0' * (-len(payload) % 4)
    new_style_start = start + len(payload) if style_start else 0
    result += payload
    if style_start:
        result += pool[style_start:]
    struct.pack_into('<I', result, 4, len(result))
    struct.pack_into('<I', result, 16, flags & ~1)  # translated values are no longer sorted
    struct.pack_into('<I', result, 24, new_style_start)
    expected = [translations.get(v, v) for v in values]
    if strings(result) != expected:
        raise ValueError('String pool round-trip failed')
    out = bytearray(table[:pos]) + result + table[pos + size:]
    struct.pack_into('<I', out, 4, len(out))
    assert out[pos + len(result):] == table[pos + size:]
    print(f'Карточка автомобиля: {sum(v in translations for v in values)} строк, пакеты ресурсов сохранены')
    return bytes(out)


if __name__ == '__main__':
    mapping = Path(__file__).resolve().parents[1] / 'ru/vehicle-card.json'
    source, output = map(Path, sys.argv[1:])
    output.write_bytes(translate(source.read_bytes(), json.loads(mapping.read_text())))
