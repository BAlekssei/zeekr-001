#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
SRC=XCMyCar_original.apk
MOD=build/XCMyCar_mod
OUT=XCMyCar_RU.apk
mkdir -p build
apktool d -f "$SRC" -o "$MOD" -p build/framework
python3 tools/translate.py "$MOD"
for p in patches/*.patch; do patch --batch --fuzz=0 -d "$MOD" -p1 < "$p"; done
cp -r smali/. "$MOD/smali/"
# Only classes.dex and classes2.dex change. Preserve classes3.dex exactly.
rm -rf "$MOD/smali_classes3"
unzip -p "$SRC" classes3.dex > "$MOD/classes3.dex"
apktool b -f "$MOD" -o build/unsigned.apk -p build/framework
zipalign -p -f 4 build/unsigned.apk build/aligned.apk
apksigner sign --key ../platform/platform.pk8 --cert ../platform/platform.x509.pem \
    --out "$OUT" build/aligned.apk
apksigner verify --print-certs "$OUT"
zipalign -c -p 4 "$OUT"
echo "Готово: $OUT"
