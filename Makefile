# Makefile Reference
# Please use this file as the project Makefile reference

##############################################################################
# This value defines which base this project should choose, only for baidu internal.
# Support values: S710, JRD77SS, YINS, YIGN, I9250
#-----------------------------------------------------------------------------
BAIDU_BASE_DEVICE := I9250

##############################################################################
# Default DALVIK_VM_BUILD setting is 27
# Only used for odex, if not, ignore...
#-----------------------------------------------------------------------------
DALVIK_VM_BUILD := 27

##############################################################################
# Default DENSITY setting is hdpi
# this depends on the device's resolution
#-----------------------------------------------------------------------------
DENSITY := xhdpi

##############################################################################
# customize weather use prebuilt image or pack from BOOT/RECOVERY directory
# Support Values:
# vendor_modify_images := boot recovery
# boot/recovery, pack boot.img/recovery.img from vendor/BOOT / vendor/RECOVERY
# NULL, check boot.img/recovery.img in project root directory, if it exists,
# use a prebuilt boot.img/recovery.img, if not, nothing to do
#-----------------------------------------------------------------------------
vendor_modify_images := boot recovery

##############################################################################
# Directorys which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_dirs := app vendor/operator/app delapp

##############################################################################
# Files which you want to remove in vendor directory
#-----------------------------------------------------------------------------
# vendor_remove_files := bin/zchgd

##############################################################################
# Vendor apks you want to use
#-----------------------------------------------------------------------------
vendor_saved_apps := FMRadio HwBluetoothImport MtkBt

##############################################################################
# Apks build from current project root directory
# if the apk is decode from baidu:
# 1, check if the apk in BAIDU_UPDATE_RES_APPS (you can see it in build/configs/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's apk to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_apps := FMRadio
# you need decode FMRadio.apk to the project directory (use apktool d FMRadio.apk) first
# then you can make it by:   make FMRadio
#-----------------------------------------------------------------------------
# vendor_modify_apps := FMRadio

##############################################################################
# Jars build from current project root directory
# if the jar is decode from baidu:
# 1, check if the jar in BAIDU_UPDATE_RES_APPS (you can see it in build/configs/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's jar to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_jars := android.policy
# you need decode android.policy.jar to the project directory (use apktool d android.policy.jar) first
# then you can make it by:   make android.policy
#-----------------------------------------------------------------------------
vendor_modify_jars := framework hwframework mediatek-framework mediatek-telephony-common secondary-framework services telephony-common

##############################################################################
# Directorys which you want to saved in baidu directory
#-----------------------------------------------------------------------------
# baidu_saved_dirs := media/audio/ui

##############################################################################
# Files which you want to saved in baidu directory
#-----------------------------------------------------------------------------
# baidu_saved_files := lib/libwebcore.so

##############################################################################
# baidu_remove_apps: those baidu apk you want remove 
#-----------------------------------------------------------------------------
# baidu_remove_apps := BaiduUserFeedback.apk

##############################################################################
# baidu_modify_apps: which base the baidu's apk
# just override the res, append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_apps := Phone

##############################################################################
# baidu_modify_jars: which base the baidu's jar
# just append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_jars := android.policy

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------

override_property += \
    ro.config.hwtheme=0

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------
# remove_property += \
#    dev.defaultwallpaper

################### Auto Patch Constants Definition #########################
# Current ROM version and the new version to be ugraded.
# These two are useful for ROM upgrading.
# When UPGRADE_VERSION is none, means to upgrade to the newest version.
#-----------------------------------------------------------------------------
# ROM_VERSION := ROM37
# UPGRADE_VERSION := ROM38

##############################################################################
# Porting commits from a reference device automatically.
# These two are useful for ROM porting.
#-----------------------------------------------------------------------------
# PORTING_FROM_DEVICE := p6
# PORTING_FROM_BRANCH := smali-4.2

################### Auto Patch Constants Definition #########################

SIGN_OTA := false
NO_SYSTEM_IMG := true

include $(PORT_BUILD)/main.mk
include $(PORT_BUILD)/autopatch.mk
