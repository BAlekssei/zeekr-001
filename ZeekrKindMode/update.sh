#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p build backups
if [ $# -gt 0 ]; then
    cp "$1" build/new-original.apk
else
    adb pull /vendor/app/ZeekrKindMode/ZeekrKindMode.apk build/new-original.apk
fi
apksigner verify build/new-original.apk
./build.sh build/new-original.apk
if [ -f ZeekrKindMode_original.apk ]; then
    cp ZeekrKindMode_original.apk "backups/ZeekrKindMode_original_$(date +%Y%m%d_%H%M%S).apk"
fi
mv build/new-original.apk ZeekrKindMode_original.apk
