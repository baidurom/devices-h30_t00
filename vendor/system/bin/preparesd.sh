#!/system/bin/sh
PATH_SDCARD=/sdcard
PATH_MNT_SDCARD=/mnt/sdcard
PATH_SOURCE_SD=/storage/sdcard1
/system/bin/mount -o remount /
if [ -d ${PATH_SDCARD} ];then 
    /system/bin/rm ${PATH_SDCARD}
fi 
/system/bin/ln -s ${PATH_SOURCE_SD} ${PATH_SDCARD}
if [ -d ${PATH_MNT_SDCARD} ];then 
    /system/bin/rm ${PATH_MNT_SDCARD}
fi 
/system/bin/ln -s ${PATH_SOURCE_SD} ${PATH_MNT_SDCARD}
/system/bin/mount -o remount -r /