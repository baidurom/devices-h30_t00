.class public abstract Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub;
.super Landroid/os/Binder;
.source "AIDLIPlayerController.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLIPlayerController"

.field static final TRANSACTION_onGetPositionInfo:I = 0x7

.field static final TRANSACTION_onPause:I = 0x2

.field static final TRANSACTION_onPlay:I = 0x1

.field static final TRANSACTION_onSeek:I = 0x6

.field static final TRANSACTION_onSetMute:I = 0x9

.field static final TRANSACTION_onSetNextUri:I = 0x5

.field static final TRANSACTION_onSetUri:I = 0x4

.field static final TRANSACTION_onSetVolume:I = 0x8

.field static final TRANSACTION_onStop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLIPlayerController"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController;
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
    const-string v1, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLIPlayerController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v2, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLIPlayerController"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLIPlayerController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub;->onPlay()Z

    move-result v1

    .line 52
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v1           #_result:Z
    :sswitch_2
    const-string v4, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLIPlayerController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub;->onPause()Z

    move-result v1

    .line 60
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v1           #_result:Z
    :sswitch_3
    const-string v4, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLIPlayerController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub;->onStop()Z

    move-result v1

    .line 68
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v1           #_result:Z
    :sswitch_4
    const-string v4, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLIPlayerController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 77
    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;

    .line 82
    .local v0, _arg0:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub;->onSetUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;)Z

    move-result v1

    .line 83
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v0           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    .end local v1           #_result:Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    goto :goto_1

    .line 89
    .end local v0           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    :sswitch_5
    const-string v4, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLIPlayerController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 92
    sget-object v4, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;

    .line 97
    .restart local v0       #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub;->onSetNextUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;)Z

    move-result v1

    .line 98
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 95
    .end local v0           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    .end local v1           #_result:Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    goto :goto_2

    .line 104
    .end local v0           #_arg0:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    :sswitch_6
    const-string v4, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLIPlayerController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub;->onSeek(Ljava/lang/String;)Z

    move-result v1

    .line 108
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_7
    const-string v4, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLIPlayerController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub;->onGetPositionInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    move-result-object v1

    .line 116
    .local v1, _result:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v1, :cond_8

    .line 118
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {v1, p3, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 122
    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v1           #_result:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    :sswitch_8
    const-string v4, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLIPlayerController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub;->onSetVolume(I)Z

    move-result v1

    .line 132
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_9
    const-string v4, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLIPlayerController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    move v0, v3

    .line 141
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub;->onSetMute(Z)Z

    move-result v1

    .line 142
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v1, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_result:Z
    :cond_b
    move v0, v2

    .line 140
    goto :goto_3

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
