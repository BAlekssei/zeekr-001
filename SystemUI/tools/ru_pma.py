#!/usr/bin/env python3
"""Русификация текстов PMA, зашитых в разметку и smali (их нет в values-ru).

    python3 tools/ru_pma.py SystemUI_mod

В smali меняются только строки, которые уходят на экран (setText, Toast, StringBuilder,
массивы, return). Логи, аналитика (track*) и сравнения с данными машины (equals)
не трогаются — кроме сравнений из EQUALS_OK, где сравнивается текст нашей же вкладки.
Скриптом сгенерирован patches/06-ru-pma.patch.
"""
import os, re, sys

RU = {
    # разметка
    "卸载": "Удалить",
    "最近使用": "Недавние",
    "应用中心": "Приложения",
    "无服务": "Нет сети",
    "提示": "Внимание",
    "是否确认退出交付中心模式？": "Выйти из режима выдачи автомобиля?",
    "取消": "Отмена",
    "确认": "OK",
    "低温提醒": "Низкая температура",
    "电池温度低，电池性能下降，若需提高电池性能，建议开启电池温度调节":
        "Батарея холодная, мощность снижена. Рекомендуется включить подогрев батареи",
    "电池温度调节": "Подогрев батареи",
    "音乐": "Музыка",
    "视频": "Видео",
    "哨兵模式": "Режим охраны",
    "查看视频": "Смотреть видео",
    "设置": "Настройки",
    "卸载应用": "Удаление приложения",
    "历史账号": "Аккаунты",
    "更多": "Ещё",
    "退出": "Выход",
    "车内CO₂": "CO₂ в салоне",
    "低": "Низкий",
    "无麦K歌": "Караоке без микрофона",
    "人声音量": "Громкость голоса",
    "混响效果": "Реверберация",
    "收音区选择": "Зона микрофона",
    "主驾": "Водитель",
    "副驾": "Пассажир",
    "后排左": "Сзади слева",
    "后排右": "Сзади справа",
    "关闭无麦K歌": "Выключить караоке",
    # smali: батарея
    "电池温度低，电池性能下降，正在调节电池温度以提高电池性能":
        "Батарея холодная, мощность снижена. Идёт подогрев батареи",
    "电池温度低，电池性能下降，车辆插枪中，电池温度调节无法开启":
        "Батарея холодная, мощность снижена. Подогрев недоступен при подключённой зарядке",
    # smali: тосты навигационной панели
    "为了您的行车安全，请在停车驻车的安全环境中运行娱乐应用":
        "В целях безопасности запускайте развлекательные приложения только на стоянке",
    "正在安装应用，请稍后": "Идёт установка приложения, подождите",
    "正在更新应用，请稍后": "Идёт обновление приложения, подождите",
    "系统OTA升级自带应用，不可暂停": "Системное приложение обновляется по OTA, пауза невозможна",
    "抱歉，暂时无法下载": "Извините, загрузка сейчас недоступна",
    "AVM运行中，相机与流媒体不可用": "Работает круговой обзор: камера и стриминг недоступны",
    # smali: качество воздуха
    "工作中": "Работает",
    "未工作": "Не работает",
    "未获取数据": "Нет данных",
    "高": "Высокий",
    "较高": "Повышенный",
    "适中": "Средний",
    "自动换气中": "Автопроветривание",
    # smali: режимы
    "休憩模式已激活": "Режим отдыха включён",
    "返回休憩模式": "Вернуться в режим отдыха",
    "洗车模式已激活": "Режим мойки включён",
    "返回洗车模式": "Вернуться в режим мойки",
    "露营模式已激活": "Режим кемпинга включён",
    "返回露营模式": "Вернуться в режим кемпинга",
    # smali: док, громкость
    "移除": "Убрать",
    "同步": "Синхр.",
    "全部静音": "Без звука",
    "关闭": "Выкл",
    "至少保留一个音区": "Оставьте хотя бы одну зону",
    "语音播报": "Голосовой ассистент",
    "导航声音": "Навигация",
    "车外声音": "Внешний звук",
    "多媒体": "Мультимедиа",
    "通话声音": "Телефон",
    # smali: профили
    "用车习惯1": "Профиль 1",
    "用车习惯2": "Профиль 2",
    "用车习惯3": "Профиль 3",
    "已切换到用车习惯1": "Включён профиль 1",
    "已切换到用车习惯2": "Включён профиль 2",
    "已切换到用车习惯3": "Включён профиль 3",
    "未登录": "Вход не выполнен",
    # smali: беспроводная зарядка
    "手机无法充电": "Телефон не заряжается",
    "电流异常，停止充电": "Ошибка тока, зарядка остановлена",
    "电压异常，停止充电": "Ошибка напряжения, зарядка остановлена",
    "充电板上存在NFC卡片等物品": "На панели посторонний предмет (NFC-карта и т.п.)",
    "手机充电中": "Телефон заряжается",
    "请移走充电板上的卡片，硬币等物品": "Уберите с панели карты, монеты и другие предметы",
    "手机充电完成": "Телефон заряжен",
    "手机或充电板过热，请移除手机": "Перегрев телефона или панели, уберите телефон",
    # smali: магазин приложений
    "正在安装...": "Установка...",
    "准备安装...": "Подготовка к установке...",
    "下载失败": "Ошибка загрузки",
    "已暂停": "Пауза",
    "正在下载...": "Загрузка...",
    "准备下载...": "Подготовка к загрузке...",
    # smali: диалог удаления «确认卸载“X”吗»
    "确认卸载“": "Удалить «",
    "”吗": "»?",
}

# строки values-ru, которых нет в стоке (в дефолтной локали они китайские)
VALUES_RU = {
    "mon": "Пн", "tue": "Вт", "wed": "Ср", "thu": "Чт", "fri": "Пт", "sat": "Сб", "sun": "Вс",
    "pma_dock_widget_car_mileage_title": "Общий пробег",
    "pma_dock_widget_car_setting_title": "Настройки авто",
    "pma_dock_widget_track_title": "Трековый режим",
}

SMALI_DIRS = ["smali/com/android/systemui/statusbar/pma"]
# (файл, строка) сравнений, которые нужно перевести вместе с разметкой
EQUALS_OK = {("SliderWindowManager$7.smali", "应用中心")}
# методы, строки которых идут только в аналитику
SKIP_METHODS = {"getSeekBarEventName"}
# метки приложений дока по умолчанию — по ним идёт сопоставление
SKIP_FILES = {"PullDockDataUtils.smali"}

CONST = re.compile(r'^(\s*const-string(?:/jumbo)? )(\w+), "(.*)"$')


def dec(raw):
    return raw.encode("latin1", "backslashreplace").decode("unicode_escape")


def enc(s):
    return "".join(c if 32 <= ord(c) < 127 and c not in '"\\' else "\\u%04x" % ord(c) for c in s)


def usage(lines, i, reg):
    """Куда уходит строка: LOG / TRACK / EQ / OTHER."""
    for l in lines[i + 1:i + 14]:
        t = l.strip()
        if reg not in t:
            continue
        if "Landroid/util/Log;" in t or "LogUtil" in t:
            return "LOG"
        if "->track" in t:
            return "TRACK"
        if "->equals(" in t or "->contains(" in t or "->startsWith(" in t:
            return "EQ"
        if t.startswith(("invoke", "aput", "filled-new-array", "return", "sput", "iput", "move-object")):
            return "OTHER"
        if t.startswith("const"):
            return "OTHER"  # регистр перезаписан — значение ушло дальше по goto
    return "OTHER"


def do_smali(root):
    n = 0
    for d in SMALI_DIRS:
        for dp, _, fs in os.walk(os.path.join(root, d)):
            for f in fs:
                if f in SKIP_FILES:
                    continue
                p = os.path.join(dp, f)
                lines = open(p, encoding="utf-8").read().split("\n")
                changed = False
                meth = ""
                for i, l in enumerate(lines):
                    if l.startswith(".method"):
                        meth = l.split("(")[0].split()[-1]
                    if meth in SKIP_METHODS:
                        continue
                    m = CONST.match(l)
                    if not m:
                        continue
                    s = dec(m.group(3))
                    if s not in RU:
                        continue
                    u = usage(lines, i, m.group(2))
                    if u in ("LOG", "TRACK"):
                        continue
                    if u == "EQ" and (f, s) not in EQUALS_OK:
                        continue
                    lines[i] = '%s%s, "%s"' % (m.group(1), m.group(2), enc(RU[s]))
                    changed = True
                    n += 1
                if changed:
                    open(p, "w", encoding="utf-8").write("\n".join(lines))
    return n


def do_layouts(root):
    n = 0
    d = os.path.join(root, "res/layout")
    attr = re.compile(r'(android:(?:text|hint|contentDescription)=")([^"]*)(")')
    for f in sorted(os.listdir(d)):
        if not f.startswith("pma_"):
            continue
        p = os.path.join(d, f)
        src = open(p, encoding="utf-8").read()

        def rep(m):
            nonlocal n
            if m.group(2) in RU:
                n += 1
                return m.group(1) + RU[m.group(2)] + m.group(3)
            return m.group(0)

        out = attr.sub(rep, src)
        if out != src:
            open(p, "w", encoding="utf-8").write(out)
    return n


def do_values(root):
    p = os.path.join(root, "res/values-ru/strings.xml")
    src = open(p, encoding="utf-8").read()
    add = "".join('    <string name="%s">%s</string>\n' % (k, v)
                  for k, v in VALUES_RU.items() if 'name="%s"' % k not in src)
    if add:
        src = src.replace("</resources>", add + "</resources>")
        open(p, "w", encoding="utf-8").write(src)
    return add.count("<string")


if __name__ == "__main__":
    root = sys.argv[1]
    print("smali:", do_smali(root), "layout:", do_layouts(root), "values-ru:", do_values(root))
