#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:15781888:68af103a8e2b3eb2873eaddbbc705dae3c869cf3; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:15138816:09e5b5f8f7477c0d358722e79864bfc2e1b3e34a EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 68af103a8e2b3eb2873eaddbbc705dae3c869cf3 15781888 09e5b5f8f7477c0d358722e79864bfc2e1b3e34a:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi
