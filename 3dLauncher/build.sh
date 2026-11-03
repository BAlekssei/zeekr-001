#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p build
python3 tools/translate.py "${1:-3dLauncher_original.apk}" build/unsigned.apk
zipalign -p -f 4 build/unsigned.apk build/aligned.apk
apksigner sign --key ../platform/platform.pk8 --cert ../platform/platform.x509.pem \
    --out 3dLauncher_RU.apk build/aligned.apk
apksigner verify --print-certs 3dLauncher_RU.apk
zipalign -c -p 4 3dLauncher_RU.apk
python3 tools/audit.py 3dLauncher_RU.apk
echo 'Готово: 3dLauncher_RU.apk'
