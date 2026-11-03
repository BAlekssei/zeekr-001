#!/usr/bin/env bash
# Pull the factory system APK, never an already translated /data/app update.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p build
if [ "$#" -gt 0 ]; then
    cp -- "$1" build/new-original.apk
else
    adb pull /system/app/XCMyCar/XCMyCar.apk build/new-original.apk
fi
unzip -tq build/new-original.apk
if [ -f XCMyCar_original.apk ]; then
    mkdir -p backups
    cp XCMyCar_original.apk "backups/XCMyCar_original_$(date +%Y%m%d_%H%M%S).apk"
fi
mv build/new-original.apk XCMyCar_original.apk
./build.sh
