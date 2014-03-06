#!/bin/bash

jarBaseName=$1
tempSmaliDir=$2

if [ "$jarBaseName" = "android.policy" ];then
    echo ">>> in custom_jar $jarBaseName"
    if [ -f $tempSmaliDir/smali/com/android/internal/policy/impl/PhoneWindowManager.smali ];then
        echo ">>> turn private to public for keyguardIsShowingTq"
        sed -i 's/.method private keyguardIsShowingTq()Z/.method public keyguardIsShowingTq()Z/' $tempSmaliDir/smali/com/android/internal/policy/impl/PhoneWindowManager.smali

        sed -i 's/invoke-direct\( .*Lcom\/android\/internal\/policy\/impl\/PhoneWindowManager;->keyguardIsShowingTq()Z\)/invoke-virtual\1/g' $tempSmaliDir/smali/com/android/internal/policy/impl/PhoneWindowManager.smali
    fi
    echo ">>> update mediatek res id in android.policy"
    $PORT_ROOT/tools/modifyID.py $PORT_ROOT/devices/h30_t00/overlay/res/merge_update_mediatek_res.txt $tempSmaliDir
fi
