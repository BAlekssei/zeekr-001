#!/usr/bin/env bash
# Установка AvasOff на ГУ Zeekr 001 (Android 9, AOSP su: синтаксис "su 0 <cmd>")
set -e
cd "$(dirname "$0")"
PKG=ru.avasoff

echo "== 1. Установка APK"
if ! adb install -r avasoff.apk; then
  echo "   adb install не прошёл, ставлю через root..."
  adb push avasoff.apk /data/local/tmp/avasoff.apk
  adb shell su 0 pm install -r /data/local/tmp/avasoff.apk
fi

echo "== 2. Проверка: прямой вызов AudioSystem через app_process"
APK=$(adb shell pm path $PKG | tr -d '\r' | cut -d: -f2)
adb shell su 0 sh -c "CLASSPATH=$APK app_process /system/bin ru.avasoff.Main get"

echo "== 3. Разрешаем работу в фоне"
adb shell su 0 cmd appops set $PKG RUN_IN_BACKGROUND allow || true
adb shell su 0 dumpsys deviceidle whitelist +$PKG || true

echo "== 4. Первый запуск сервиса (иначе BOOT_COMPLETED не придёт)"
adb shell am startservice -n $PKG/.AvasService

sleep 3
adb logcat -d -s AvasOff | tail -5
echo "Готово. Лог в реальном времени:  adb logcat -s AvasOff"
