#!/usr/bin/env bash
# Установка русского кондиционера (com.geely.pma.climate) на ГУ Zeekr 001 (Android 9)
set -euo pipefail
cd "$(dirname "$0")"
APK=GeelyHvac_RU.apk

[ -f "$APK" ] || { echo "Нет $APK"; exit 1; }

echo "== 1. Установка"
adb install -r "$APK"

echo "== 2. Сброс данных приложения"
adb shell pm clear com.geely.pma.climate

echo "== 3. Перезагрузка"
adb reboot
echo "Готово. После загрузки кондиционер должен быть на русском."
