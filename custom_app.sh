#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"

    echo ">>> change EMULATED_STORAGE_TARGET to EMULATED_STORAGE_TARGET_X in Memory.java"
    sed -i 's/EMULATED_STORAGE_TARGET/EMULATED_STORAGE_TARGET_X/g' $tempSmaliDir/smali/com/android/settings/deviceinfo/Memory.smali
    echo ">>> use vendor persist.sys.primarysd property to support storage change"
    sed -i 's/persist.sys.baidu.default_write/persist.sys.primarysd/g' $tempSmaliDir/smali/com/android/settings/deviceinfo/Memory.smali
    sed -i 's/first_storage/0/g' $tempSmaliDir/smali/com/android/settings/deviceinfo/Memory.smali
    sed -i 's/secondary_storage/1/g' $tempSmaliDir/smali/com/android/settings/deviceinfo/Memory.smali

    echo ">>> use isHaveExternalSdcard to check weather support UsbMassStorage in UsbSettings.java"
    sed -i 's#invoke-virtual {v.*}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z#invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->isHaveExternalSdcard()Z#g' $tempSmaliDir/smali/com/android/settings/deviceinfo/UsbSettings.smali

    echo ">>> add origin settings"
    sed -i '/com.android.settings.ManageApplicationsSettings/r Settings/settings_headers.xml.part' $tempSmaliDir/res/xml/settings_headers.xml


elif [ "$apkBaseName" = "Phone" ];then
    echo ">>> in custom_app $apkBaseName"
    echo ">>> use Lcom/mediatek/notification/NotificationPlus instead of Landroid/app/NotificationPlus in Phone"
    echo ">>> use Lcom/mediatek/notification/NotificationManagerPlus instead of Landroid/app/NotificationManagerPlus in Phone"
    sed -i 's#Landroid/app/NotificationPlus#Lcom/mediatek/notification/NotificationPlus#g' $tempSmaliDir/smali/com/android/phone/NotificationMgr.smali
    sed -i 's#Landroid/app/NotificationManagerPlus#Lcom/mediatek/notification/NotificationManagerPlus#g' $tempSmaliDir/smali/com/android/phone/NotificationMgr.smali

elif [ "$apkBaseName" = "BaiduGallery3D" ];then
    echo ">>> in custom_app $apkBaseName modify AndroidManifest"
    sed -i '/<activity android:theme="@style\/Theme.Camera" android:label="@string\/camera_label" android:icon="@mipmap\/ic_launcher_camera" android:name="com.baidu.camera.CameraActivity" android:taskAffinity="com.baidu.camera.CameraActivity" android:clearTaskOnLaunch="true" android:configChanges="keyboardHidden|orientation|screenSize" android:windowSoftInputMode="stateAlwaysHidden|adjustPan/,/<\/activity>/d' $tempSmaliDir/AndroidManifest.xml
    sed -i '/<activity-alias android:label="@string\/camera_label" android:icon="@mipmap\/ic_launcher_camera" android:name="com.baidu.camera.CameraLauncher" android:targetActivity="com.baidu.camera.CameraActivity"/,/<\/activity-alias>/d' $tempSmaliDir/AndroidManifest.xml
    sed -i '/<activity-alias android:label="@string\/camera_label" android:icon="@mipmap\/ic_launcher_camera" android:name="com.baidu.camera.Camera" android:targetActivity="com.baidu.camera.CameraActivity"/,/<\/activity-alias>/d' $tempSmaliDir/AndroidManifest.xml
    sed -i '/<activity-alias android:label="@string\/video_camera_label" android:icon="@mipmap\/ic_launcher_video_camera" android:name="com.baidu.camera.VideoCamera" android:targetActivity="com.baidu.camera.CameraActivity"/,/<\/activity-alias>/d' $tempSmaliDir/AndroidManifest.xml

    echo ">>> in custom_app $apkBaseName modify style.xml"
    sed -i 's/name="TextAppearance.DialogWindowTitle"/name="TextAppearance.DialogWindowTitle" parent="@*android:style\/TextAppearance.DialogWindowTitle"/g' $tempSmaliDir/res/values/styles.xml

elif [ "$apkBaseName" = "HomePro" ];then
    echo ">>> in custom_app $apkBaseName"

    sed -i 's/className="com.baidu.camera.Camera" packageName="com.baidu.camera"/className="com.android.hwcamera" packageName="com.android.gallery3d"/g' $tempSmaliDir/res/xml-xhdpi/default_workspace.xml
     
fi

