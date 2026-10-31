# AvasOff — отключение звука «НЛО» (AVAS) при каждом запуске + смена языка системы

Zeekr 001 при каждом запуске заново включает внешний звук предупреждения пешеходов
(AVAS, 低速行人提示音). Кнопка в лаунчере выключает его только до следующего старта.

Кнопка просто передаёт параметр в аудио-HAL:

```
AudioManager.setParameters("avas_switch=off")   // в логе: adev_set_parameters: avas_switch=off
```

**AvasOff** — маленькое приложение без иконки:
- `AvasService` — фоновый сервис, раз в 2 с читает `avas_switch` и, если `on`, ставит `off`;
  заодно проверяет язык системы и возвращает целевой (по умолчанию `ru-RU`), если машина сама переключилась на `zh-CN`;
- `BootReceiver` — запускает сервис на `BOOT_COMPLETED` / `USER_PRESENT` / обновлении пакета;
- `Main` — CLI для `app_process` (через `AudioSystem` по reflection): `get | on | off | lang [<tag>]`;
- `Lang` / `LangReceiver` — смена системного языка (см. ниже).

`targetSdk 25` — чтобы на Android 9 фоновый сервис жил без уведомления.
Пока сервис работает, включить AVAS кнопкой нельзя (сразу выключится).

## Смена языка (как в zSupport)

zSupport (`com.zsupport`, sharedUserId `android.uid.system`) при выборе «Русский» делает ровно одно:

```
cfg = ActivityManagerNative.getDefault().getConfiguration()
cfg.locale = ru_RU; cfg.userSetLocale = true
ActivityManagerNative.getDefault().updateConfiguration(cfg)
```

Больше ничего (ни Ecarx-API, ни settings) — проверено декомпиляцией и diff'ом до/после:
меняется только `persist.sys.locale` (`zh-CN` → `ru-RU`), его пишет сам system_server,
поэтому язык переживает перезагрузку. `Lang` делает то же самое.

Машина при этом иногда сама возвращает `zh-CN`, поэтому `AvasService` раз в 2 с сверяет
язык с целевым и при расхождении переключает обратно (в логе `locale was zh-CN -> switched to ru-RU`).
Целевой язык — `ru-RU` по умолчанию, меняется broadcast'ом (он же сразу переключает язык).

```bash
# через root (app_process) — разово; целевой язык сервиса не меняет,
# так что при включённом слежении сервис вернёт целевой через ~2 с
# adb shell склеивает аргументы через пробел, поэтому вся команда для sh -c — одной строкой в кавычках
avas() { adb shell "su 0 sh -c 'CLASSPATH=\$(pm path ru.avasoff|cut -d: -f2) app_process /system/bin ru.avasoff.Main $*'"; }
avas lang          # показать
avas lang ru-RU    # русский;  en-US — английский, zh-CN — китайский

# без root: broadcast в приложение (у adb shell есть CHANGE_CONFIGURATION)
# — переключает сразу И делает язык целевым, сервис будет его держать
adb shell am broadcast -n ru.avasoff/.LangReceiver -a ru.avasoff.SET_LOCALE --es locale ru-RU
adb shell am broadcast -n ru.avasoff/.LangReceiver -a ru.avasoff.SET_LOCALE --es locale off  # не следить
adb logcat -s AvasOff     # "locale -> ru-RU"
```

## Структура

```
src/        исходники apktool-проекта (smali + манифест)
build.sh    сборка: apktool -> zipalign -> apksigner (platform keys из ../platform)
install.sh  установка по adb + первый запуск сервиса
```

## Сборка

```bash
./build.sh        # -> avasoff.apk
```

## Установка

```bash
./install.sh
adb logcat -s AvasOff     # ожидаем "AVAS was on -> switched off"
```

## Ручное управление

```bash
avas get           # avas() — см. «Смена языка»
avas off

adb shell am force-stop ru.avasoff   # временно разрешить AVAS (до перезагрузки)
adb uninstall ru.avasoff             # удалить
```
