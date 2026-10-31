# Основные настройки авто
# Вроде всё перевёл, но могут быть кривые строчки.

apktool d -f -s GeelySettings-51.apk -o ./old


apktool b setting_unpacked/ -o GeelySettings_RU.apk
zipalign -p -f 4 GeelySettings_RU.apk GeelySettings_RU_aligned.apk
apksigner sign --key ../platform.pk8 --cert ../platform.x509.pem GeelySettings_RU_aligned.apk

./adb reboot
./adb root
./adb remount
./adb shell chmod 644 /system/app/GeelySettings/GeelySettings.apk
PS C:\adb> ./adb reboot