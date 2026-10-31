#!/usr/bin/env bash
# Перенос доработок SystemUI (русский календарь/дата, «Режим отладки») на новую версию прошивки.
#
#   ./port.sh <SystemUI.apk с машины> <framework-res.apk с машины> [out_dir]
#
# Нужны: java, patch, apktool.jar (3.x), uber-apk-signer.jar (для zipalign+подписи).
# Пути к jar можно задать через APKTOOL_JAR / SIGNER_JAR.
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
APK="${1:?SystemUI.apk}"
FW="${2:?framework-res.apk}"
OUT="${3:-$HERE/build_new}"
APKTOOL_JAR="${APKTOOL_JAR:-apktool.jar}"
SIGNER_JAR="${SIGNER_JAR:-uber-apk-signer.jar}"
FWDIR="$OUT/framework"
DEC="$OUT/SystemUI_dec"

mkdir -p "$OUT" "$FWDIR"
apktool() { java -jar "$APKTOOL_JAR" "$@"; }

echo "== 1. Фреймворк машины"
apktool if "$FW" -p "$FWDIR"

echo "== 2. Распаковка"
apktool d -f "$APK" -o "$DEC" -p "$FWDIR"

echo "== 3. Патчи"
fail=0
for p in "$HERE"/patches/*.patch; do
  if patch -d "$DEC" -p1 -N --fuzz=3 -r - < "$p"; then
    echo "   OK  $(basename "$p")"
  else
    echo "   FAIL $(basename "$p")  <-- нужен ручной перенос"; fail=1
  fi
done
[ "$fail" = 0 ] || { echo "Есть непрошедшие патчи, сборка остановлена"; exit 1; }

# aapt2 не соберёт adaptive-icon при minSdk 19 из оригинала
sed -i 's/minSdkVersion: 19/minSdkVersion: 28/' "$DEC/apktool.yml"

echo "== 4. Сборка"
apktool b "$DEC" -o "$OUT/systemui_unsigned.apk" -p "$FWDIR"

echo "== 5. zipalign + подпись platform-ключом"
KS="$OUT/platform.jks"
if [ ! -f "$KS" ]; then
  openssl pkcs8 -inform DER -nocrypt -in "$HERE/platform.pk8" -out "$OUT/platform.key"
  openssl pkcs12 -export -in "$HERE/platform.x509.pem" -inkey "$OUT/platform.key" \
    -name platform -out "$OUT/platform.p12" -passout pass:android
  keytool -importkeystore -srckeystore "$OUT/platform.p12" -srcstoretype PKCS12 -srcstorepass android \
    -destkeystore "$KS" -deststorepass android -destkeypass android -alias platform
fi
java -jar "$SIGNER_JAR" -a "$OUT/systemui_unsigned.apk" --ks "$KS" --ksAlias platform \
  --ksPass android --ksKeyPass android -o "$OUT/signed" --allowResign
mv "$OUT"/signed/*-aligned-signed.apk "$OUT/systemui_patched_final.apk"
echo "Готово: $OUT/systemui_patched_final.apk"
