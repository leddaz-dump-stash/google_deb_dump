#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:8361984:fa8a09963be92a8a3d682dc844811591f398c216; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7600128:dedbe9c643b5cd5c4544101a31edb946ffd07718 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery fa8a09963be92a8a3d682dc844811591f398c216 8361984 dedbe9c643b5cd5c4544101a31edb946ffd07718:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
