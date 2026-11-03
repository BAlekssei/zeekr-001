#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p build backups
if [ $# -gt 0 ]; then
    cp "$1" build/new-original.apk
else
    adb pull /system/priv-app/ZeekrCarLauncher3D/ZeekrCarLauncher3D.apk build/new-original.apk
fi
apksigner verify build/new-original.apk
./build.sh build/new-original.apk
# Keep the previous original until the new version has passed all build checks.
if [ -f 3dLauncher_original.apk ]; then
    cp 3dLauncher_original.apk "backups/3dLauncher_original_$(date +%Y%m%d_%H%M%S).apk"
fi
mv build/new-original.apk 3dLauncher_original.apk
