#!/usr/bin/env python3
"""Русификация GeelySettings: перенос перевода между версиями и наложение на сток.

  ru_settings.py apply   <apktool-dir>                     — наложить ru/*.xml на распакованный сток
  ru_settings.py extract <old-RU-dir> <old-stock-or-new-dir> — снять перевод из старой русской сборки в ru/*.xml

Перевод хранится как готовые элементы ресурсов (по имени):
  ru/strings.xml — <string>       -> res/values/strings.xml
  ru/arrays.xml  — <string-array> -> res/values/arrays.xml и res/values-zh-rCN/arrays.xml
                   (массивы кладутся и в zh-rCN, как в прежней русской сборке, —
                    чтобы списки были по-русски, даже если машина сама вернула zh-CN)

Замена текстовая (регулярками по имени), остальная разметка файла не трогается.
Только stdlib, Python 3.8+.
"""
import os, re, sys

HERE = os.path.dirname(os.path.abspath(__file__))
RU = os.path.join(HERE, '..', 'ru')
CYR = re.compile('[Ѐ-ӿ]')
FMT = re.compile(r'%(?:\d+\$)?[-#+ 0,(]*\d*(?:\.\d+)?[sdfxXcbeEgGoh]')

# не переносить: служебные/библиотечные строки, где отличие старой сборки — просто другая версия
SKIP = {'abc_menu_function_shortcut_label', 'sensors_analytics_carrier1'}


def elements(text, tag):
    """name -> исходный текст элемента <tag name="...">…</tag> (или самозакрывающегося)."""
    rx = re.compile(r'<%s name="([^"]+)"[^>]*?(?:/>|>.*?</%s>)' % (tag, tag), re.S)
    return {m.group(1): m.group(0) for m in rx.finditer(text)}


def read(p):
    with open(p, encoding='utf-8') as f:
        return f.read()


def write(p, s):
    with open(p, 'w', encoding='utf-8') as f:
        f.write(s)


def wrap(items):
    return '<?xml version="1.0" encoding="utf-8"?>\n<resources>\n' + \
        ''.join('    %s\n' % v for _, v in items) + '</resources>\n'


def fmts(s):
    return sorted(FMT.findall(s.replace('%%', '')))


def extract(old, base):
    """Строки/массивы, которые в старой русской сборке отличаются от base и есть в base."""
    for fn, tag in (('strings.xml', 'string'), ('arrays.xml', 'string-array')):
        o = elements(read(os.path.join(old, 'res/values', fn)), tag)
        b = elements(read(os.path.join(base, 'res/values', fn)), tag)
        out = [(k, v) for k, v in o.items() if k in b and v != b[k] and k not in SKIP]
        write(os.path.join(RU, fn), wrap(out))
        print('%-12s %d (с кириллицей %d)' % (fn, len(out), sum(bool(CYR.search(v)) for _, v in out)))


def merge(path, tag, tr, add_missing):
    text = read(path)
    have = elements(text, tag)
    done, missing = 0, []
    for k, v in tr.items():
        if k in have:
            text = text.replace(have[k], v, 1)
            done += 1
        elif add_missing:
            text = text.replace('</resources>', '    %s\n</resources>' % v, 1)
            done += 1
        else:
            missing.append(k)
    write(path, text)
    return done, missing, have


def apply(d):
    rc = 0
    tr = elements(read(os.path.join(RU, 'strings.xml')), 'string')
    done, missing, stock = merge(os.path.join(d, 'res/values/strings.xml'), 'string', tr, False)
    print('strings: заменено %d из %d' % (done, len(tr)))
    if missing:
        print('  нет в стоке (удалены в новой версии):', ', '.join(missing))
    for k, v in tr.items():
        if k in stock and fmts(v) != fmts(stock[k]):
            print('  ! плейсхолдеры не совпадают: %s  сток %s  ru %s' % (k, fmts(stock[k]), fmts(v)))
            rc = 1
    # что осталось непереведённым (иероглифы в values/strings.xml)
    han = re.compile('[一-鿿]')
    left = [k for k, v in elements(read(os.path.join(d, 'res/values/strings.xml')), 'string').items()
            if han.search(v) and k not in tr]
    if left:
        print('  с иероглифами и без перевода (%d): %s' % (len(left), ', '.join(left[:30])))

    tr = elements(read(os.path.join(RU, 'arrays.xml')), 'string-array')
    for sub, add in (('values', False), ('values-zh-rCN', True)):
        done, missing, stock = merge(os.path.join(d, 'res', sub, 'arrays.xml'), 'string-array', tr, add)
        print('arrays (%s): %d из %d' % (sub, done, len(tr)))
        if missing:
            print('  нет в стоке:', ', '.join(missing))
        if sub == 'values':
            for k, v in tr.items():
                if k in stock and v.count('<item') != stock[k].count('<item'):
                    print('  ! число пунктов изменилось: %s' % k); rc = 1
    return rc


if __name__ == '__main__':
    if len(sys.argv) == 3 and sys.argv[1] == 'apply':
        sys.exit(apply(sys.argv[2]))
    if len(sys.argv) == 4 and sys.argv[1] == 'extract':
        extract(sys.argv[2], sys.argv[3]); sys.exit(0)
    print(__doc__); sys.exit(2)
