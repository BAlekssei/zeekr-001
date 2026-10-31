#!/usr/bin/env bash
# Установка русского GeelySettings на ГУ Zeekr 001 (Android 9, userdebug: adb root + remount)
#
#   ./install.sh                 # установить GeelySettings_RU.apk
#   ./install.sh <файл.apk>      # поставить другой APK (например, сток или бэкап для отката)
#
# APK сначала заливается в /data/local/tmp и сверяется по md5, и только потом копируется
# в /system. Так обрыв передачи не оставляет в /system недописанный файл.
# Запущенное приложение держит открытым удалённый старый APK: пока процесс жив, его ~128 МБ
# остаются занятыми, и новый файл не помещается («No space left on device»). Поэтому
# процесс останавливается, а его остатки завершаются.
set -euo pipefail
cd "$(dirname "$0")"
APK=${1:-GeelySettings_RU.apk}
PKG=com.geely.pma.settings
DIR=/system/app/GeelySettings
DST=$DIR/GeelySettings.apk
TMP=/data/local/tmp/GeelySettings_new.apk

[ -f "$APK" ] || { echo "Нет $APK — сначала ./build.sh"; exit 1; }
md5() { md5sum "$1" | cut -d' ' -f1; }
rmd5() { { adb shell "md5sum $1 2>/dev/null" || true; } | tr -d '\r' | cut -d' ' -f1; }
avail_kb() { adb shell "df -k $DIR" | tr -d '\r' | tail -1 | awk '{print $4}'; }

echo "== 1. root + remount /system"
adb root
sleep 2
adb wait-for-device
adb remount

echo "== 2. Бэкап текущего GeelySettings с машины"
CUR=$(rmd5 "$DST")
if [ -z "$CUR" ]; then
  echo "   на машине нет $DST — бэкап пропущен"
elif [ -f GeelySettings_original.apk ] && [ "$CUR" = "$(md5 GeelySettings_original.apk)" ]; then
  echo "   на машине сток = GeelySettings_original.apk — отдельный бэкап не нужен"
elif [ "$CUR" = "$(md5 "$APK")" ]; then
  echo "   на машине уже стоит $APK — ставить нечего"; exit 0
else
  BK="GeelySettings_backup_$(date +%Y%m%d_%H%M%S).apk"
  adb pull "$DST" "$BK"
  echo "   сохранён: $BK  (откат: ./install.sh $BK)"
fi

echo "== 3. Заливка во временный файл и проверка"
adb push "$APK" "$TMP"
[ "$(rmd5 "$TMP")" = "$(md5 "$APK")" ] || { echo "md5 не совпал после push — /system не тронут"; exit 1; }

echo "== 4. Замена в /system"
NEED=$(( $(stat -c %s "$APK") / 1024 + 1024 ))
adb shell am force-stop $PKG || true
# dex изменён — старый предкомпилированный oat от стока больше не подходит
if adb shell "[ -d $DIR/oat ]"; then
  OATBK="GeelySettings_oat_$(date +%Y%m%d_%H%M%S)"
  adb pull $DIR/oat "$OATBK" >/dev/null && echo "   oat сохранён: $OATBK"
  adb shell rm -rf $DIR/oat
fi
adb shell rm -f "$DST"
# процессы, которые ещё держат удалённый APK, — завершить, иначе место не освободится
for i in 1 2 3; do
  PIDS=$(adb shell 'for p in /proc/[0-9]*; do ls -l $p/fd 2>/dev/null | grep -q "GeelySettings.apk (deleted)" && echo ${p#/proc/}; done; true' | tr -d '\r' | xargs)
  [ -z "$PIDS" ] && break
  echo "   держат удалённый APK: $PIDS — завершаю"
  adb shell "kill $PIDS" || true
  sleep 2
done
AV=$(avail_kb)
echo "   свободно в /system: $((AV / 1024)) МБ, нужно: $((NEED / 1024)) МБ"
if [ "$AV" -lt "$NEED" ]; then
  echo "НЕ ХВАТАЕТ МЕСТА. В $DIR сейчас нет APK — НЕ перезагружайте машину."
  echo "Новый APK лежит в $TMP. Освободите место в /system и выполните:"
  echo "  adb shell cp $TMP $DST && adb shell chmod 644 $DST && adb shell chown root:root $DST"
  exit 1
fi
adb shell cp "$TMP" "$DST"
adb shell chmod 644 "$DST"
adb shell chown root:root "$DST"
[ "$(rmd5 "$DST")" = "$(md5 "$APK")" ] || { echo "md5 в /system не совпал — НЕ перезагружайте, повторите шаг 4"; exit 1; }
adb shell rm -f "$TMP"
echo "   OK: $DST"

echo "== 5. Перезагрузка"
adb reboot
echo "Готово. После загрузки настройки машины должны быть на русском."
