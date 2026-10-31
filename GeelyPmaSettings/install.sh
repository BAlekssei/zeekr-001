#!/usr/bin/env bash
# Установка русского GeelySettings на ГУ Zeekr 001 (Android 9, userdebug: adb root + remount)
set -euo pipefail
cd "$(dirname "$0")"
APK=GeelySettings_RU.apk
DST=/system/app/GeelySettings/GeelySettings.apk

[ -f "$APK" ] || { echo "Нет $APK — сначала ./build.sh"; exit 1; }

echo "== 1. root + remount /system"
adb root
sleep 2
adb wait-for-device
adb remount

echo "== 2. Бэкап текущего GeelySettings с машины"
BK="GeelySettings_backup_$(date +%Y%m%d_%H%M%S).apk"
adb pull "$DST" "$BK"
echo "   сохранён: $BK  (откат — см. README)"

echo "== 3. Заливка"
# dex изменён — старый предкомпилированный oat от стока больше не подходит
if adb shell "[ -d /system/app/GeelySettings/oat ]"; then
  adb pull /system/app/GeelySettings/oat "${BK%.apk}_oat" >/dev/null && echo "   oat сохранён: ${BK%.apk}_oat"
  adb shell rm -rf /system/app/GeelySettings/oat
fi
adb push "$APK" "$DST"
adb shell chmod 644 "$DST"
adb shell chown root:root "$DST"

echo "== 4. Перезагрузка"
adb reboot
echo "Готово. После загрузки настройки машины должны быть на русском."
