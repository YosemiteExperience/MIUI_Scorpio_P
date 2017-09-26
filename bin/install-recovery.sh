#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:30754126:f7a384e4c98244cfd57bce62d59338d28761f81f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:29349194:6a0ae50036f1215f471657e59f31dbc96d0b23fb EMMC:/dev/block/bootdevice/by-name/recovery f7a384e4c98244cfd57bce62d59338d28761f81f 30754126 6a0ae50036f1215f471657e59f31dbc96d0b23fb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
