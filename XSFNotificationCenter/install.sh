#!/usr/bin/env bash
# Установка русского центра уведомлений (XSFNotificationCenter) на ГУ Zeekr 001 (Android 9)
set -euo pipefail
cd "$(dirname "$0")"
APK=XSFNotificationCenter_RU.apk
DST=/system/priv-app/XSFNotificationCenter/XSFNotificationCenter.apk

[ -f "$APK" ] || { echo "Нет $APK"; exit 1; }

echo "== 1. root + remount"
adb root
adb remount

echo "== 2. Копирование в system"
adb push "$APK" "$DST"
adb shell chmod 644 "$DST"

echo "== 3. Перезагрузка"
adb reboot
echo "Готово. После загрузки центр уведомлений должен быть на русском."
