# AvasOff — отключение звука «НЛО» (AVAS) при каждом запуске

Zeekr 001 при каждом запуске заново включает внешний звук предупреждения пешеходов
(AVAS, 低速行人提示音). Кнопка в лаунчере выключает его только до следующего старта.

Кнопка просто передаёт параметр в аудио-HAL:

```
AudioManager.setParameters("avas_switch=off")   // в логе: adev_set_parameters: avas_switch=off
```

**AvasOff** — маленькое приложение без иконки:
- `AvasService` — фоновый сервис, раз в 2 с читает `avas_switch` и, если `on`, ставит `off`;
- `BootReceiver` — запускает сервис на `BOOT_COMPLETED` / `USER_PRESENT` / обновлении пакета;
- `Main` — CLI для `app_process` (через `AudioSystem` по reflection): `get | on | off`.

`targetSdk 25` — чтобы на Android 9 фоновый сервис жил без уведомления.
Пока сервис работает, включить AVAS кнопкой нельзя (сразу выключится).

## Структура

```
src/        исходники apktool-проекта (smali + манифест)
build.sh    сборка: apktool -> zipalign -> apksigner (platform keys из ../SystemUI)
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
CP='CLASSPATH=$(pm path ru.avasoff|cut -d: -f2)'
adb shell su 0 sh -c "$CP app_process /system/bin ru.avasoff.Main get"
adb shell su 0 sh -c "$CP app_process /system/bin ru.avasoff.Main off"

adb shell am force-stop ru.avasoff   # временно разрешить AVAS (до перезагрузки)
adb uninstall ru.avasoff             # удалить
```
