#!/usr/bin/env bash
# Перенос доработок на новую прошивку: стоковый SystemUI.apk -> apktool d -> patches/ -> SystemUI_mod
#
#   ./update.sh                    # скачать SystemUI.apk и framework-res.apk с машины по adb
#   ./update.sh <SystemUI.apk>     # взять готовый APK (framework-res.apk — из ../platform)
#
# После успешного переноса запускает ./build.sh.
# Нужны в PATH: apktool, patch (+ zipalign, apksigner для build.sh)
set -euo pipefail
cd "$(dirname "$0")"
FW=../platform/framework-res.apk

if [ $# -ge 1 ]; then
  cp "$1" SystemUI_original.apk
else
  echo "== 0. Скачиваю с машины"
  adb root; sleep 2; adb wait-for-device
  adb pull /system/priv-app/SystemUI/SystemUI.apk SystemUI_original.apk
  adb pull /system/framework/framework-res.apk "$FW"
  adb shell getprop ro.build.display.id
fi

echo "== 1. Распаковка"
mkdir -p build/framework
apktool if "$FW" -p build/framework
rm -rf build/SystemUI_new
apktool d -f SystemUI_original.apk -o build/SystemUI_new -p build/framework
grep -o 'Android:PMA_V[0-9.]*' build/SystemUI_new/res/values/arrays.xml | head -1 || true

echo "== 2. Патчи"
fail=0
for p in patches/*.patch; do
  if patch -d build/SystemUI_new -p1 -N --fuzz=3 -r - < "$p"; then
    echo "   OK   $(basename "$p")"
  else
    echo "   FAIL $(basename "$p")  <-- нужен ручной перенос"; fail=1
  fi
done
[ "$fail" = 0 ] || { echo "Есть непрошедшие патчи: правьте build/SystemUI_new вручную"; exit 1; }

# aapt2 не соберёт adaptive-icon при minSdk 19 из оригинала
sed -i 's/minSdkVersion: 19/minSdkVersion: 28/' build/SystemUI_new/apktool.yml

echo "== 3. Замена SystemUI_mod"
rm -rf SystemUI_mod
mv build/SystemUI_new SystemUI_mod
rm -rf SystemUI_mod/build

./build.sh
