#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:30747982:719f20e615dce9d64d82eca1704e6b269f32a959; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:29345098:ec97307324cecbe6fc8480f1e0073738099a421a EMMC:/dev/block/bootdevice/by-name/recovery 719f20e615dce9d64d82eca1704e6b269f32a959 30747982 ec97307324cecbe6fc8480f1e0073738099a421a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
