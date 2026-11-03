#!/usr/bin/env bash
# Install as an update to the system package, preserving data and the system APK.
set -euo pipefail
cd "$(dirname "$0")"
APK=XCMyCar_RU.apk
[ -f "$APK" ] || { echo "Нет $APK — сначала ./build.sh"; exit 1; }
apksigner verify "$APK"
mkdir -p backups
CURRENT=$(adb shell pm path com.ecarx.mycar | tr -d '\r' | sed -n 's/^package://p')
[ -n "$CURRENT" ] && [ "$(printf '%s\n' "$CURRENT" | wc -l)" -eq 1 ] || { echo 'Не найден единственный APK XCMyCar'; exit 1; }
BK="backups/XCMyCar_$(date +%Y%m%d_%H%M%S).apk"
adb pull "$CURRENT" "$BK"
adb install -r "$APK"
adb shell am start -W -n com.ecarx.mycar/com.zeekrlife.myCar.view.MainActivity
echo "Готово. Бэкап: $BK"
