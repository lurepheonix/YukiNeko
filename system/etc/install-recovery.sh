#!/system/bin/sh
cp /system/cwm/recovery.img /dev/
cp /system/cwm/flash_image /dev/
chmod 755 /dev/flash_image
/dev/flash_image recovery /dev/recovery.img