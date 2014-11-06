.class public abstract Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;
.super Landroid/os/Binder;
.source "IDLNAService.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

.field static final TRANSACTION_addDeviceListener:I = 0x23

.field static final TRANSACTION_addDlnaSystemEventListener:I = 0xf

.field static final TRANSACTION_addMediaChangedListener:I = 0x25

.field static final TRANSACTION_addShareFilePath:I = 0x2a

.field static final TRANSACTION_addUploadTransferProgressListener:I = 0x45

.field static final TRANSACTION_addWifiDisplayChangedListener:I = 0x59

.field static final TRANSACTION_cacheAllMedia:I = 0x1f

.field static final TRANSACTION_cancelUpload:I = 0x42

.field static final TRANSACTION_cleanShareStorage:I = 0x2c

.field static final TRANSACTION_deleteDmsFile:I = 0x43

.field static final TRANSACTION_disconnectRendering:I = 0x4f

.field static final TRANSACTION_dmrNotifyTransportStateChanged:I = 0x11

.field static final TRANSACTION_dmrNotifyVolumeChanged:I = 0x12

.field static final TRANSACTION_exitDlna:I = 0x2

.field static final TRANSACTION_getAllDeviceMediaInfo:I = 0x17

.field static final TRANSACTION_getAllDeviceMediaInfoWithPagination:I = 0x18

.field static final TRANSACTION_getAllDeviceTotalMedia:I = 0x19

.field static final TRANSACTION_getChildren:I = 0x21

.field static final TRANSACTION_getDeviceById:I = 0x16

.field static final TRANSACTION_getDmrDeviceName:I = 0x7

.field static final TRANSACTION_getDmrDeviceProductType:I = 0x8

.field static final TRANSACTION_getDmsDeviceName:I = 0xb

.field static final TRANSACTION_getDmsDeviceProductType:I = 0xc

.field static final TRANSACTION_getFileShareState:I = 0x29

.field static final TRANSACTION_getFolderInfoByFolderId:I = 0x22

.field static final TRANSACTION_getMediaInfo:I = 0x1b

.field static final TRANSACTION_getMediaInfoWithPagination:I = 0x1c

.field static final TRANSACTION_getMirrorState:I = 0x4a

.field static final TRANSACTION_getPhoneView:I = 0x4c

.field static final TRANSACTION_getPositionInfo:I = 0x3d

.field static final TRANSACTION_getRemoteDmrDeviceList:I = 0x14

.field static final TRANSACTION_getRemoteDmsDeviceList:I = 0x15

.field static final TRANSACTION_getRenderingDevice:I = 0x49

.field static final TRANSACTION_getRenderingMedia:I = 0x48

.field static final TRANSACTION_getRootFolderId:I = 0x20

.field static final TRANSACTION_getStackInitMode:I = 0x4

.field static final TRANSACTION_getTotalMedia:I = 0x1d

.field static final TRANSACTION_getTransportStateInfo:I = 0x3e

.field static final TRANSACTION_getVersion:I = 0x6

.field static final TRANSACTION_getVolume:I = 0x3f

.field static final TRANSACTION_hasWifiDisplayDevice:I = 0x58

.field static final TRANSACTION_isCasting:I = 0x53

.field static final TRANSACTION_isStarted:I = 0x3

.field static final TRANSACTION_isSupportDLNA:I = 0x55

.field static final TRANSACTION_isSupportMirror:I = 0x56

.field static final TRANSACTION_isSupportShareFile:I = 0x2f

.field static final TRANSACTION_isValidShareFile:I = 0x30

.field static final TRANSACTION_mirrorConnect:I = 0x54

.field static final TRANSACTION_mirrorToDlna:I = 0x50

.field static final TRANSACTION_moveDmsFile:I = 0x44

.field static final TRANSACTION_muteMirrorSound:I = 0x51

.field static final TRANSACTION_openMirrorSound:I = 0x52

.field static final TRANSACTION_pause:I = 0x36

.field static final TRANSACTION_play:I = 0x35

.field static final TRANSACTION_push:I = 0x34

.field static final TRANSACTION_pushDefaultImage:I = 0x57

.field static final TRANSACTION_pushImage:I = 0x33

.field static final TRANSACTION_pushMedia:I = 0x4d

.field static final TRANSACTION_pushMediaAtPositionTime:I = 0x4e

.field static final TRANSACTION_removeDeviceListener:I = 0x24

.field static final TRANSACTION_removeDlnaSystemEventListener:I = 0x10

.field static final TRANSACTION_removeMediaChangedListener:I = 0x26

.field static final TRANSACTION_removeShareFilePath:I = 0x2b

.field static final TRANSACTION_removeUploadTransferProgressListener:I = 0x46

.field static final TRANSACTION_removeWifiDisplayChangedListener:I = 0x5a

.field static final TRANSACTION_searchAllDeviceMediaInfo:I = 0x1a

.field static final TRANSACTION_searchDevice:I = 0x47

.field static final TRANSACTION_searchMediaInfo:I = 0x1e

.field static final TRANSACTION_seek:I = 0x37

.field static final TRANSACTION_setDmrDeviceName:I = 0x9

.field static final TRANSACTION_setDmrDeviceProductType:I = 0xa

.field static final TRANSACTION_setDmrPlayerController:I = 0x13

.field static final TRANSACTION_setDmsDeviceName:I = 0xd

.field static final TRANSACTION_setDmsDeviceProductType:I = 0xe

.field static final TRANSACTION_setLogLevel:I = 0x5

.field static final TRANSACTION_setNextUri:I = 0x3a

.field static final TRANSACTION_setPhoneView:I = 0x4b

.field static final TRANSACTION_setShareEnable:I = 0x28

.field static final TRANSACTION_setShareFileFilterClient:I = 0x27

.field static final TRANSACTION_setVolume:I = 0x39

.field static final TRANSACTION_startDlna:I = 0x1

.field static final TRANSACTION_startProcessSync:I = 0x3b

.field static final TRANSACTION_startSync:I = 0x31

.field static final TRANSACTION_stop:I = 0x38

.field static final TRANSACTION_stopProcessSync:I = 0x3c

.field static final TRANSACTION_stopSync:I = 0x32

.field static final TRANSACTION_updateShareFilesPath:I = 0x2e

.field static final TRANSACTION_updateShareFilesPathByFlag:I = 0x2d

.field static final TRANSACTION_uploadLocalFile:I = 0x40

.field static final TRANSACTION_uploadRemoteFile:I = 0x41


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 998
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->startDlna(Ljava/lang/String;)Z

    move-result v8

    .line 54
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v8, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 60
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_2
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->exitDlna()Z

    move-result v8

    .line 62
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v8, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 68
    .end local v8           #_result:Z
    :sswitch_3
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->isStarted()Z

    move-result v8

    .line 70
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v8, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 76
    .end local v8           #_result:Z
    :sswitch_4
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getStackInitMode()Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->setLogLevel(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_6
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getVersion()Ljava/lang/String;

    move-result-object v8

    .line 95
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getDmrDeviceName()Ljava/lang/String;

    move-result-object v8

    .line 103
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 109
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getDmrDeviceProductType()Ljava/lang/String;

    move-result-object v8

    .line 111
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 117
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->setDmrDeviceName(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 126
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->setDmrDeviceProductType(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 135
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_b
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getDmsDeviceName()Ljava/lang/String;

    move-result-object v8

    .line 137
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 143
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getDmsDeviceProductType()Ljava/lang/String;

    move-result-object v8

    .line 145
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 151
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->setDmsDeviceName(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 160
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_e
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->setDmsDeviceProductType(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 169
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_f
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener;

    move-result-object v1

    .line 172
    .local v1, _arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->addDlnaSystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 178
    .end local v1           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener;
    :sswitch_10
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener;

    move-result-object v1

    .line 181
    .restart local v1       #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->removeDlnaSystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener;)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 187
    .end local v1           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener;
    :sswitch_11
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->dmrNotifyTransportStateChanged(Ljava/lang/String;)Z

    move-result v8

    .line 191
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v8, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 192
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 197
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_12
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->dmrNotifyVolumeChanged(I)Z

    move-result v8

    .line 201
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v8, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 202
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 207
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_13
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController;

    move-result-object v1

    .line 210
    .local v1, _arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->setDmrPlayerController(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 216
    .end local v1           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController;
    :sswitch_14
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getRemoteDmrDeviceList()Ljava/util/List;

    move-result-object v10

    .line 218
    .local v10, _result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 220
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 224
    .end local v10           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    :sswitch_15
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getRemoteDmsDeviceList()Ljava/util/List;

    move-result-object v10

    .line 226
    .restart local v10       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 228
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 232
    .end local v10           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    :sswitch_16
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 235
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    move-result-object v8

    .line 236
    .local v8, _result:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v8, :cond_5

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 244
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 242
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 248
    .end local v1           #_arg0:I
    .end local v8           #_result:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
    :sswitch_17
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getAllDeviceMediaInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 252
    .local v9, _result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 254
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 258
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    :sswitch_18
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 264
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 265
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getAllDeviceMediaInfoWithPagination(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v9

    .line 266
    .restart local v9       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 268
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 272
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    :sswitch_19
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 275
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getAllDeviceTotalMedia(Ljava/lang/String;)I

    move-result v8

    .line 276
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 282
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_1a
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->searchAllDeviceMediaInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 286
    .restart local v9       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 288
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 292
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    :sswitch_1b
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 296
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getMediaInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 298
    .restart local v9       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 304
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    :sswitch_1c
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 308
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 312
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 313
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getMediaInfoWithPagination(ILjava/lang/String;II)Ljava/util/List;

    move-result-object v9

    .line 314
    .restart local v9       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 316
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 320
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    :sswitch_1d
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 324
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 326
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 327
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getTotalMedia(ILjava/lang/String;I)I

    move-result v8

    .line 328
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 334
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v8           #_result:I
    :sswitch_1e
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 340
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->searchMediaInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 342
    .restart local v9       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 344
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 348
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    :sswitch_1f
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 352
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 353
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->cacheAllMedia(ILjava/lang/String;)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 359
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_20
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 362
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getRootFolderId(I)Ljava/lang/String;

    move-result-object v8

    .line 363
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 369
    .end local v1           #_arg0:I
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_21
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 373
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 374
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getChildren(ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 375
    .restart local v9       #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 377
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 381
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;>;"
    :sswitch_22
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 386
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getFolderInfoByFolderId(ILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    move-result-object v8

    .line 387
    .local v8, _result:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v8, :cond_6

    .line 389
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 395
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 393
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 399
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    :sswitch_23
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener;

    move-result-object v1

    .line 402
    .local v1, _arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->addDeviceListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener;)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 408
    .end local v1           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener;
    :sswitch_24
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener;

    move-result-object v1

    .line 411
    .restart local v1       #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->removeDeviceListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener;)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 417
    .end local v1           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener;
    :sswitch_25
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;

    move-result-object v1

    .line 420
    .local v1, _arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->addMediaChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 426
    .end local v1           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;
    :sswitch_26
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;

    move-result-object v1

    .line 429
    .restart local v1       #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->removeMediaChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;)V

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 435
    .end local v1           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;
    :sswitch_27
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIShareFileFilter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIShareFileFilter;

    move-result-object v1

    .line 438
    .local v1, _arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIShareFileFilter;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->setShareFileFilterClient(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIShareFileFilter;)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 444
    .end local v1           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIShareFileFilter;
    :sswitch_28
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    .line 447
    .local v1, _arg0:Z
    :goto_8
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->setShareEnable(Z)Z

    move-result v8

    .line 448
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    if-eqz v8, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 446
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 449
    .restart local v1       #_arg0:Z
    .restart local v8       #_result:Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 454
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :sswitch_29
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getFileShareState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 458
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 464
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2a
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 467
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->addShareFilePath(Ljava/lang/String;)Z

    move-result v8

    .line 468
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    if-eqz v8, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 469
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 474
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_2b
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 477
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->removeShareFilePath(Ljava/lang/String;)Z

    move-result v8

    .line 478
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    if-eqz v8, :cond_a

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 479
    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    .line 484
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_2c
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->cleanShareStorage()Z

    move-result v8

    .line 486
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    if-eqz v8, :cond_b

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 487
    :cond_b
    const/4 v0, 0x0

    goto :goto_c

    .line 492
    .end local v8           #_result:Z
    :sswitch_2d
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 496
    .local v7, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 497
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v7, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->updateShareFilesPathByFlag(Ljava/util/List;Ljava/lang/String;)Z

    move-result v8

    .line 498
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    if-eqz v8, :cond_c

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 499
    :cond_c
    const/4 v0, 0x0

    goto :goto_d

    .line 504
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v7           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #_result:Z
    :sswitch_2e
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 507
    .local v6, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;>;"
    invoke-virtual {p0, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->updateShareFilesPath(Ljava/util/List;)Z

    move-result v8

    .line 508
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    if-eqz v8, :cond_d

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 509
    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    .line 514
    .end local v6           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;>;"
    .end local v8           #_result:Z
    :sswitch_2f
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->isSupportShareFile(Ljava/lang/String;)Z

    move-result v8

    .line 518
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v8, :cond_e

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 519
    :cond_e
    const/4 v0, 0x0

    goto :goto_f

    .line 524
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_30
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 527
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->isValidShareFile(Ljava/lang/String;)Z

    move-result v8

    .line 528
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    if-eqz v8, :cond_f

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 529
    :cond_f
    const/4 v0, 0x0

    goto :goto_10

    .line 534
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_31
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 538
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLPlayerStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLPlayerStateChangedListener;

    move-result-object v2

    .line 540
    .local v2, _arg1:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLPlayerStateChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLSyncFailedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLSyncFailedListener;

    move-result-object v3

    .line 541
    .local v3, _arg2:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLSyncFailedListener;
    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->startSync(ILcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLPlayerStateChangedListener;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLSyncFailedListener;)V

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 547
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLPlayerStateChangedListener;
    .end local v3           #_arg2:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLSyncFailedListener;
    :sswitch_32
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 550
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->stopSync(I)V

    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 556
    .end local v1           #_arg0:I
    :sswitch_33
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 560
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 561
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;

    .line 566
    .local v2, _arg1:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    :goto_11
    invoke-virtual {p0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->pushImage(ILcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;)Z

    move-result v8

    .line 567
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    if-eqz v8, :cond_11

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 564
    .end local v2           #_arg1:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    .end local v8           #_result:Z
    :cond_10
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    goto :goto_11

    .line 568
    .restart local v8       #_result:Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_12

    .line 573
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    .end local v8           #_result:Z
    :sswitch_34
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 577
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 578
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;

    .line 584
    .restart local v2       #_arg1:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->push(ILcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;Ljava/lang/String;)Z

    move-result v8

    .line 586
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    if-eqz v8, :cond_13

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 581
    .end local v2           #_arg1:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v8           #_result:Z
    :cond_12
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    goto :goto_13

    .line 587
    .restart local v3       #_arg2:Ljava/lang/String;
    .restart local v8       #_result:Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_14

    .line 592
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_35
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 595
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->play(I)Z

    move-result v8

    .line 596
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    if-eqz v8, :cond_14

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 597
    :cond_14
    const/4 v0, 0x0

    goto :goto_15

    .line 602
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_36
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 605
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->pause(I)Z

    move-result v8

    .line 606
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    if-eqz v8, :cond_15

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 607
    :cond_15
    const/4 v0, 0x0

    goto :goto_16

    .line 612
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_37
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 616
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->seek(ILjava/lang/String;)Z

    move-result v8

    .line 618
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    if-eqz v8, :cond_16

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 619
    :cond_16
    const/4 v0, 0x0

    goto :goto_17

    .line 624
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_38
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 627
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->stop(I)Z

    move-result v8

    .line 628
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    if-eqz v8, :cond_17

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 629
    :cond_17
    const/4 v0, 0x0

    goto :goto_18

    .line 634
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_39
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 638
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 639
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->setVolume(II)Z

    move-result v8

    .line 640
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    if-eqz v8, :cond_18

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 641
    :cond_18
    const/4 v0, 0x0

    goto :goto_19

    .line 646
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v8           #_result:Z
    :sswitch_3a
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 650
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 651
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    .line 656
    .local v2, _arg1:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    :goto_1a
    invoke-virtual {p0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->setNextUri(ILcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v8

    .line 657
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    if-eqz v8, :cond_1a

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 654
    .end local v2           #_arg1:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    .end local v8           #_result:Z
    :cond_19
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    goto :goto_1a

    .line 658
    .restart local v8       #_result:Z
    :cond_1a
    const/4 v0, 0x0

    goto :goto_1b

    .line 663
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    .end local v8           #_result:Z
    :sswitch_3b
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 666
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->startProcessSync(I)V

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 672
    .end local v1           #_arg0:I
    :sswitch_3c
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 675
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->stopProcessSync(I)V

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 681
    .end local v1           #_arg0:I
    :sswitch_3d
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 684
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getPositionInfo(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    move-result-object v8

    .line 685
    .local v8, _result:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    if-eqz v8, :cond_1b

    .line 687
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 693
    :goto_1c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 691
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 697
    .end local v1           #_arg0:I
    .end local v8           #_result:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    :sswitch_3e
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 700
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getTransportStateInfo(I)Ljava/lang/String;

    move-result-object v8

    .line 701
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 703
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 707
    .end local v1           #_arg0:I
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_3f
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 710
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getVolume(I)I

    move-result v8

    .line 711
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 717
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_40
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 721
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 724
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->uploadLocalFile(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 725
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 731
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_41
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 735
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 737
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 738
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    .line 743
    .local v3, _arg2:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    :goto_1d
    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->uploadRemoteFile(ILjava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;)I

    move-result v8

    .line 744
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 741
    .end local v3           #_arg2:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .end local v8           #_result:I
    :cond_1c
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    goto :goto_1d

    .line 750
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    :sswitch_42
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 754
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 755
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->cancelUpload(II)Z

    move-result v8

    .line 756
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    if-eqz v8, :cond_1d

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 757
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1e

    .line 762
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v8           #_result:Z
    :sswitch_43
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 766
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->deleteDmsFile(ILjava/lang/String;)Z

    move-result v8

    .line 768
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    if-eqz v8, :cond_1e

    const/4 v0, 0x1

    :goto_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 769
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1f

    .line 774
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_44
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 778
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 780
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 781
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->moveDmsFile(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 782
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 784
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 788
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_45
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLUploadTransferProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLUploadTransferProgressListener;

    move-result-object v1

    .line 791
    .local v1, _arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLUploadTransferProgressListener;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->addUploadTransferProgressListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLUploadTransferProgressListener;)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 797
    .end local v1           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLUploadTransferProgressListener;
    :sswitch_46
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLUploadTransferProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLUploadTransferProgressListener;

    move-result-object v1

    .line 800
    .restart local v1       #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLUploadTransferProgressListener;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->removeUploadTransferProgressListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLUploadTransferProgressListener;)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 806
    .end local v1           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLUploadTransferProgressListener;
    :sswitch_47
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->searchDevice()V

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 813
    :sswitch_48
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getRenderingMedia()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;

    move-result-object v8

    .line 815
    .local v8, _result:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    if-eqz v8, :cond_1f

    .line 817
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->writeToParcel(Landroid/os/Parcel;I)V

    .line 823
    :goto_20
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 821
    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 827
    .end local v8           #_result:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    :sswitch_49
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getRenderingDevice()I

    move-result v8

    .line 829
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 835
    .end local v8           #_result:I
    :sswitch_4a
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getMirrorState()I

    move-result v8

    .line 837
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 843
    .end local v8           #_result:I
    :sswitch_4b
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 846
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->setPhoneView(I)V

    .line 847
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 852
    .end local v1           #_arg0:I
    :sswitch_4c
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->getPhoneView()I

    move-result v8

    .line 854
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 860
    .end local v8           #_result:I
    :sswitch_4d
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 864
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 866
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 868
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 869
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->pushMedia(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 870
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    if-eqz v8, :cond_20

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 871
    :cond_20
    const/4 v0, 0x0

    goto :goto_21

    .line 876
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_4e
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 880
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 882
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 884
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 886
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 887
    invoke-virtual/range {v0 .. v5}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->pushMediaAtPositionTime(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 888
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    if-eqz v8, :cond_21

    const/4 v0, 0x1

    :goto_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 889
    :cond_21
    const/4 v0, 0x0

    goto :goto_22

    .line 894
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_4f
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->disconnectRendering()Z

    move-result v8

    .line 896
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    if-eqz v8, :cond_22

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 898
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 897
    :cond_22
    const/4 v0, 0x0

    goto :goto_23

    .line 902
    .end local v8           #_result:Z
    :sswitch_50
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 905
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    .line 910
    .local v1, _arg0:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    :goto_24
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->mirrorToDlna(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v8

    .line 911
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    if-eqz v8, :cond_24

    const/4 v0, 0x1

    :goto_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 908
    .end local v1           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    .end local v8           #_result:Z
    :cond_23
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    goto :goto_24

    .line 912
    .restart local v8       #_result:Z
    :cond_24
    const/4 v0, 0x0

    goto :goto_25

    .line 917
    .end local v1           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    .end local v8           #_result:Z
    :sswitch_51
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->muteMirrorSound()I

    move-result v8

    .line 919
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 925
    .end local v8           #_result:I
    :sswitch_52
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->openMirrorSound()I

    move-result v8

    .line 927
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 933
    .end local v8           #_result:I
    :sswitch_53
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->isCasting()Z

    move-result v8

    .line 935
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    if-eqz v8, :cond_25

    const/4 v0, 0x1

    :goto_26
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 936
    :cond_25
    const/4 v0, 0x0

    goto :goto_26

    .line 941
    .end local v8           #_result:Z
    :sswitch_54
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->mirrorConnect()Z

    move-result v8

    .line 943
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    if-eqz v8, :cond_26

    const/4 v0, 0x1

    :goto_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 944
    :cond_26
    const/4 v0, 0x0

    goto :goto_27

    .line 949
    .end local v8           #_result:Z
    :sswitch_55
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->isSupportDLNA()Z

    move-result v8

    .line 951
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    if-eqz v8, :cond_27

    const/4 v0, 0x1

    :goto_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 952
    :cond_27
    const/4 v0, 0x0

    goto :goto_28

    .line 957
    .end local v8           #_result:Z
    :sswitch_56
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->isSupportMirror()Z

    move-result v8

    .line 959
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    if-eqz v8, :cond_28

    const/4 v0, 0x1

    :goto_29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 960
    :cond_28
    const/4 v0, 0x0

    goto :goto_29

    .line 965
    .end local v8           #_result:Z
    :sswitch_57
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->pushDefaultImage()Z

    move-result v8

    .line 967
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    if-eqz v8, :cond_29

    const/4 v0, 0x1

    :goto_2a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 968
    :cond_29
    const/4 v0, 0x0

    goto :goto_2a

    .line 973
    .end local v8           #_result:Z
    :sswitch_58
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->hasWifiDisplayDevice()Z

    move-result v8

    .line 975
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    if-eqz v8, :cond_2a

    const/4 v0, 0x1

    :goto_2b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 976
    :cond_2a
    const/4 v0, 0x0

    goto :goto_2b

    .line 981
    .end local v8           #_result:Z
    :sswitch_59
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener;

    move-result-object v1

    .line 984
    .local v1, _arg0:Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->addWifiDisplayChangedListener(Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener;)V

    .line 985
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 990
    .end local v1           #_arg0:Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener;
    :sswitch_5a
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.IDLNAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener;

    move-result-object v1

    .line 993
    .restart local v1       #_arg0:Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService$Stub;->removeWifiDisplayChangedListener(Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener;)V

    .line 994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
