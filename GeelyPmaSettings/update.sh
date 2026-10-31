#!/usr/bin/env bash
# Перенос русификации на новую прошивку: забрать стоковый GeelySettings и собрать заново.
#
#   ./update.sh                        # скачать GeelySettings.apk с машины по adb
#   ./update.sh <GeelySettings.apk>    # взять готовый APK
#
# Перевод накладывается по именам ресурсов, поэтому обычно переносится сам.
# build.sh покажет строки, которых нет в новой версии, и новые строки с иероглифами —
# их дописать в ru/strings.xml.
set -euo pipefail
cd "$(dirname "$0")"

if [ $# -ge 1 ]; then
  cp "$1" GeelySettings_original.apk
else
  echo "== 0. Скачиваю с машины"
  adb root; sleep 2; adb wait-for-device
  adb pull /system/app/GeelySettings/GeelySettings.apk GeelySettings_original.apk
  adb shell getprop ro.build.display.id
fi

./build.sh
