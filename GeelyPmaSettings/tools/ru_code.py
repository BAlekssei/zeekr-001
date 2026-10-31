#!/usr/bin/env python3
"""Перевод текстов, зашитых в код GeelySettings (const-string в smali).

  ru_code.py apply <apktool-dir>   — заменить строки из ru/code.tsv во всех smali*/;
                                     печатает каталоги smali, в которых что-то изменилось
  ru_code.py scan  <apktool-dir>   — список всех китайских const-string (для пополнения словаря)

Заменяется только литерал целиком. Если строка встречается в методе со switch по
String.hashCode() (Kotlin when(строка)), замена в этом методе НЕ делается и выдаётся
предупреждение: хэши в switch посчитаны от китайского текста.
"""
import os, re, sys

HERE = os.path.dirname(os.path.abspath(__file__))
DICT = os.path.join(HERE, '..', 'ru', 'code.tsv')
CONST = re.compile(r'(const-string(?:/jumbo)? [vp]\d+, )"((?:[^"\\]|\\.)*)"')
HAN = re.compile('[一-鿿]')


def unesc(s):
    return s.encode('latin1', 'backslashreplace').decode('unicode_escape', 'surrogatepass')


def esc(s):
    out = []
    for ch in s:
        o = ord(ch)
        if ch in '"\\':
            out.append('\\' + ch)
        elif ch == '\n':
            out.append('\\n')
        elif 32 <= o < 127:
            out.append(ch)
        else:
            out.append('\\u%04x' % o)
    return ''.join(out)


def load():
    d = {}
    for line in open(DICT, encoding='utf-8'):
        line = line.rstrip('\n')
        if not line or line.startswith('#'):
            continue
        zh, ru = line.split('\t', 1)
        d[zh] = ru
    return d


def smali_files(root):
    for top in sorted(os.listdir(root)):
        if top.startswith('smali'):
            for dp, _, fs in os.walk(os.path.join(root, top)):
                for f in fs:
                    if f.endswith('.smali'):
                        yield top, os.path.join(dp, f)


def methods(text):
    """Режем файл на куски по .method ... .end method (вне методов — как есть)."""
    return re.split(r'(?=^\.method )|(?<=^\.end method\n)', text, flags=re.M)


def apply(root):
    tr = load()
    hits = {k: 0 for k in tr}
    changed = set()
    for top, p in smali_files(root):
        text = open(p, encoding='utf-8').read()
        if '\\u' not in text:
            continue
        parts = methods(text)
        dirty = False
        for i, m in enumerate(parts):
            hashed = '->hashCode()I' in m

            def sub(mo):
                nonlocal dirty
                s = unesc(mo.group(2))
                if s not in tr:
                    return mo.group(0)
                if hashed:
                    print('  ! пропуск (when/hashCode): %s  %s' % (s, os.path.relpath(p, root)))
                    return mo.group(0)
                hits[s] += 1
                dirty = True
                return mo.group(1) + '"' + esc(tr[s]) + '"'
            parts[i] = CONST.sub(sub, m)
        if dirty:
            open(p, 'w', encoding='utf-8').write(''.join(parts))
            changed.add(top)
    n = sum(hits.values())
    print('code: заменено %d вхождений, %d строк из %d' % (n, sum(1 for v in hits.values() if v), len(tr)))
    miss = [k for k, v in hits.items() if not v]
    if miss:
        print('  не найдено в коде:', ', '.join(miss))
    for top in sorted(changed):
        print('CHANGED', top)


def scan(root):
    seen = {}
    for top, p in smali_files(root):
        for mo in CONST.finditer(open(p, encoding='utf-8').read()):
            s = unesc(mo.group(2))
            if HAN.search(s):
                seen.setdefault(s, os.path.relpath(p, root))
    for s, f in seen.items():
        print(('%s\t%s' % (s.replace('\n', '\\n'), f)).encode('utf-8', 'replace').decode('utf-8'))


if __name__ == '__main__':
    if len(sys.argv) == 3 and sys.argv[1] in ('apply', 'scan'):
        (apply if sys.argv[1] == 'apply' else scan)(sys.argv[2]); sys.exit(0)
    print(__doc__); sys.exit(2)
