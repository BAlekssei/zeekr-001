"""Translate selected IL2CPP display literals, preserving all metadata indices and code."""
import hashlib
import struct

PATH = 'assets/bin/Data/Managed/Metadata/global-metadata.dat'


def read_literals(raw):
    magic, version, offset, size, data_offset, data_size = struct.unpack_from('<6I', raw)
    if magic != 0xFAB11BAF or version != 29 or size % 8:
        raise ValueError('Unexpected IL2CPP metadata format')
    if offset < 24 or offset + size > len(raw) or data_offset + data_size > len(raw):
        raise ValueError('IL2CPP section out of bounds')
    result = []
    for pos in range(offset, offset + size, 8):
        length, index = struct.unpack_from('<II', raw, pos)
        if index + length > data_size:
            raise ValueError('IL2CPP string exceeds literal pool')
        result.append(raw[data_offset + index:data_offset + index + length])
    return offset, data_offset, data_size, result


def verify(original, patched, spec):
    if hashlib.sha256(original).hexdigest() != spec['source_sha256']:
        raise ValueError('IL2CPP metadata version changed; review runtime display references')
    offset, old_data_offset, old_data_size, before = read_literals(original)
    new_offset, data_offset, data_size, after = read_literals(patched)
    expected = {item['index']: item for item in spec['strings']}
    if len(expected) != len(spec['strings']) or len(expected) != 4:
        raise ValueError('Expected four distinct camping display literals')
    if new_offset != offset or len(before) != len(after):
        raise ValueError('IL2CPP literal indices/count changed')
    for index, (old, new) in enumerate(zip(before, after)):
        if index in expected:
            item = expected[index]
            if old != item['source'].encode() or new != item['ru'].encode():
                raise ValueError(f'Runtime text mismatch: {index}')
        elif old != new:
            raise ValueError(f'Unexpected runtime string change: {index}')
    # The original file remains intact except the data-pool header and four descriptors.
    prefix = bytearray(patched[:len(original)])
    prefix[16:24] = original[16:24]
    for index in expected:
        pos = offset + index * 8
        prefix[pos:pos + 8] = original[pos:pos + 8]
    if prefix != original:
        raise ValueError('Non-string IL2CPP metadata changed')
    pool = original[old_data_offset:old_data_offset + old_data_size]
    for item in spec['strings']:
        pool += item['ru'].encode()
    aligned = (len(original) + 3) & ~3
    if data_offset != aligned or data_size != len(pool):
        raise ValueError('Unexpected IL2CPP literal pool bounds')
    if patched[len(original):aligned] != bytes(aligned - len(original)):
        raise ValueError('Unexpected IL2CPP append padding')
    if patched[aligned:] != pool:
        raise ValueError('IL2CPP literal pool differs from expected append')


def translate(original, spec):
    offset, data_offset, data_size, strings = read_literals(original)
    pool = bytearray(original[data_offset:data_offset + data_size])
    result = bytearray(original)
    for item in spec['strings']:
        index = item['index']
        if strings[index] != item['source'].encode():
            raise ValueError(f'Original runtime literal changed: {index}')
        text = item['ru'].encode()
        struct.pack_into('<II', result, offset + index * 8, len(text), len(pool))
        pool.extend(text)
    aligned = (len(result) + 3) & ~3
    result.extend(bytes(aligned - len(result)))
    struct.pack_into('<II', result, 16, aligned, len(pool))
    result.extend(pool)
    patched = bytes(result)
    verify(original, patched, spec)
    print(f'IL2CPP: {len(spec["strings"])} camping display literals translated; all indices and other metadata preserved')
    return patched
