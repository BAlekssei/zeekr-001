# GeelyPmaSettings — русификация основных настроек авто

Приложение `com.geely.pma.settings` (`/system/app/GeelySettings/GeelySettings.apk`),
прошивка **5.6d**, версия приложения `dc8155-20260603`.

Перевод ресурсов перенесён со старой русской сборки (`dc8155-20260430`) по именам ресурсов,
тексты, зашитые в код, переводятся по словарю. Оба способа не привязаны к номерам строк,
поэтому перенос на новые версии обычно проходит сам.

## Что изменено

| Где | Что |
|---|---|
| `ru/strings.xml` | 1893 строки → `res/values/strings.xml` (интерфейс по-русски; китайские названия операторов и `(U盘)` → латиницей, единое написание Wi‑Fi) |
| `ru/arrays.xml` | 80 списков (режимы, вкладки, уровни…) → `res/values/arrays.xml` и `res/values-zh-rCN/arrays.xml` |
| `ru/code.tsv` | 67 текстов, зашитых в код (94 места в smali): названия звуков замков, подписи ползунка зарядки, профили посадки «Профиль 1–3», варианты сигнала поиска авто и пассивной охраны, «Режим «Часовой»», заголовок журнала OTA, тексты встроенного браузера, ошибки навигации, тосты |
| `patches/01-ota_frag.xml` | экран обновлений: «Текущая версия», «Журнал обновлений» (текст зашит в разметку) |
| `patches/02-quick_settings_hmi_fragment.xml` | быстрые настройки режима вождения: шрифт переключателя 17sp и кнопка «Изменить» по ширине текста — русские подписи длиннее |

Списки кладутся и в `values-zh-rCN`, чтобы оставаться русскими, даже если машина сама вернула язык `zh-CN`
(строки в `values-zh-rCN` не тронуты).

Перевод правится прямо в `ru/*.xml` (готовые элементы `<string>` / `<string-array>`), затем `./build.sh`.
Строки, которые остались на китайском, `build.sh` перечислит сам.

### Тексты в коде

`tools/ru_code.py` заменяет в smali литералы `const-string` целиком по словарю `ru/code.tsv`
(`китайский<TAB>русский`). Пересобираются только затронутые dex (сейчас 6 из 9),
остальные кладутся из стока байт-в-байт.

Намеренно оставлено на китайском (~380 строк):
- логи и сообщения исключений — на экран не выводятся;
- события аналитики (`TrackEvent`, `TranZeekrad`, `DrivingEvent`, sensorsdata);
- ключи `when(строка)` — Kotlin сравнивает их через `hashCode()`, перевод ломает переходы
  (например, прокрутка к «超速预警» в ADAS). `ru_code.py` такие места сам пропускает с предупреждением;
- ответы голосовому ассистенту (`VrConstant`) — это протокол, а не текст для экрана.

Полный список китайских строк в коде: `python3 tools/ru_code.py scan build/GeelySettings_mod`
(после `./build.sh` там остаются только пересобираемые каталоги — для полного списка распакуйте сток `apktool d`).

## Структура

```
GeelySettings_original.apk   стоковый APK текущей прошивки
GeelySettings_RU.apk         готовый APK, подписан platform-ключом
ru/                          перевод (strings.xml, arrays.xml)
patches/                     правки разметки (unified diff)
tools/ru_settings.py         наложение перевода ресурсов / снятие перевода со старой русской сборки
tools/ru_code.py             перевод текстов в коде (smali) по ru/code.tsv
build.sh                     сборка: apktool d -> ru + code + patches -> apktool b -> zipalign -> apksigner
install.sh                   установка по adb (с бэкапом текущего APK и oat)
update.sh                    перенос на новую прошивку
```

Распакованный проект не хранится — `build.sh` каждый раз разворачивает сток в `build/GeelySettings_mod`
(APK весит ~130 МБ, хранить его копию в распакованном виде незачем).

Ключи — в `../platform`. Нужны в PATH: `apktool` (3.x), `zipalign`, `apksigner` (Android build-tools), `patch`, `unzip`, `python3`.
Сборка занимает пару минут (ассемблирование smali).

**Фреймворк — встроенный в apktool, не `framework-res.apk` машины.** Приложение собрано под API 34
и использует атрибуты (`android:shell`, `foregroundServiceType`, `allowClickWhenDisabled`), которых нет
в Android 9 машины: с её фреймворком apktool их теряет при распаковке и `aapt2` падает на сборке.
Приватных ресурсов `android:` приложение не использует, так что встроенного достаточно.

## Сборка

```bash
./build.sh        # -> GeelySettings_RU.apk
```

## Установка

```bash
./install.sh      # root, remount, бэкап GeelySettings_backup_<дата>.apk, push, reboot
```

Код (dex) изменён, поэтому `install.sh` удаляет предкомпилированный `/system/app/GeelySettings/oat`
от стока (копия — `GeelySettings_backup_<дата>_oat/`). Без него приложение компилируется заново
при первом запуске — первый старт может быть чуть дольше.

Откат на сток (или на бэкап):

```bash
adb root && adb remount
adb push GeelySettings_original.apk /system/app/GeelySettings/GeelySettings.apk
adb shell chmod 644 /system/app/GeelySettings/GeelySettings.apk
adb push GeelySettings_backup_<дата>_oat /system/app/GeelySettings/oat   # если сохранялся
adb reboot
```

## Новая прошивка

Обновление прошивки затирает приложение стоковым. Подключиться к машине и:

```bash
./update.sh                       # скачает GeelySettings.apk с машины и соберёт
./update.sh GeelySettings.apk     # или из готового файла
./install.sh
```

`build.sh` выведет:
- строки из `ru/`, которых нет в новой версии (удалены — просто лишние);
- новые строки с иероглифами — дописать перевод в `ru/strings.xml`;
- несовпадение плейсхолдеров `%s`/`%d` или числа пунктов в списке — такую строку надо сверить, иначе возможен вылет;
- строки из `ru/code.tsv`, которых больше нет в коде, и места, пропущенные из-за `when`/`hashCode`.

Если не наложился патч из `patches/`, правка переносится вручную в `build/GeelySettings_mod`.

Снять перевод с чужой/старой русской сборки (так получен текущий `ru/`):

```bash
apktool d -s old_RU.apk -o build/old
apktool d -s GeelySettings_original.apk -o build/new
python3 tools/ru_settings.py extract build/old build/new
```
