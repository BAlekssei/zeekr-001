#!/usr/bin/env bash
# Сборка XCLauncher3_ya_widget.apk: стоковый лаунчер + патч «Яндекс Музыка в карточке медиа».
#
#   ./build.sh [<стоковый XCLauncher3.apk>]     # по умолчанию ../XCLauncher3_original_3.0.2747.apk
#
# Меняется только classes2.dex (ресурсы и остальные dex — байт-в-байт из стока), поэтому
# framework-res.apk не нужен: полная пересборка ресурсов на этом APK падает в aapt2.
# Нужны в PATH: apktool (3.x), patch, zip, zipalign, apksigner (Android build-tools).
set -euo pipefail
cd "$(dirname "$0")"

STOCK="${1:-../XCLauncher3_original_3.0.2747.apk}"
KEY=../../platform/platform.pk8
CERT=../../platform/platform.x509.pem
OUT=../XCLauncher3_ya_widget.apk

rm -rf build; mkdir -p build

echo "== 1. Распаковка кода (без ресурсов)"
apktool d -f -r "$STOCK" -o build/src

echo "== 2. Патч + новые классы"
for p in patches/*.patch; do patch -d build/src -p1 -N < "$p"; done
cp -r smali_classes2/. build/src/smali_classes2/

echo "== 3. Сборка dex"
apktool b -f build/src -o build/nores.apk
ls build/src/build/apk/classes2.dex

echo "== 4. Подмена classes2.dex в стоковом APK"
cp "$STOCK" build/base.apk
( cd build/src/build/apk && zip -q -u ../../../base.apk classes2.dex )
zip -q -d build/base.apk 'META-INF/*'

echo "== 5. zipalign + подпись platform-ключом"
zipalign -p -f 4 build/base.apk build/align.apk
apksigner sign --key "$KEY" --cert "$CERT" --out "$OUT" build/align.apk
apksigner verify --print-certs "$OUT" | head -2
echo "Готово: $OUT"
