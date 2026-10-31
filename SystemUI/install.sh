#!/usr/bin/env bash
# Установка пропатченного SystemUI на ГУ Zeekr 001 (Android 9, userdebug: adb root + remount)
set -euo pipefail
cd "$(dirname "$0")"
APK=systemui_patched_final.apk
DST=/system/priv-app/SystemUI/SystemUI.apk

[ -f "$APK" ] || { echo "Нет $APK — сначала ./build.sh"; exit 1; }

echo "== 1. root + remount /system"
adb root
sleep 2
adb wait-for-device
adb remount

echo "== 2. Бэкап текущего SystemUI с машины"
BK="SystemUI_backup_$(date +%Y%m%d_%H%M%S).apk"
adb pull "$DST" "$BK"
echo "   сохранён: $BK  (откат: ./install.sh с ним вместо $APK — см. README)"

echo "== 3. Заливка"
adb push "$APK" "$DST"
adb shell chmod 644 "$DST"
adb shell chown root:root "$DST"

echo "== 4. Перезагрузка"
adb reboot
echo "Готово. После загрузки: дата и календарь в статус-баре должны быть на русском."
