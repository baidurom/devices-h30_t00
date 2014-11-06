.class public abstract Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;
.super Landroid/os/Binder;
.source "IDolbyMobileSystemInterface.java"

# interfaces
.implements Landroid/media/dolby/IDolbyMobileSystemInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dolby/IDolbyMobileSystemInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/dolby/IDolbyMobileSystemInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.dolby.IDolbyMobileSystemInterface"

.field static final TRANSACTION_currentPreset:I = 0x3

.field static final TRANSACTION_getEffectOn:I = 0x1

.field static final TRANSACTION_getPresetCategory:I = 0x6

.field static final TRANSACTION_numPresets:I = 0x7

.field static final TRANSACTION_numPresetsPerCategory:I = 0x8

.field static final TRANSACTION_presetName:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0xa

.field static final TRANSACTION_selectPreset:I = 0x4

.field static final TRANSACTION_setEffectOn:I = 0x2

.field static final TRANSACTION_setPresetCategory:I = 0x5

.field static final TRANSACTION_unregisterCallback:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/dolby/IDolbyMobileSystemInterface;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/media/dolby/IDolbyMobileSystemInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getEffectOn()Z

    move-result v1

    .line 49
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v1           #_result:Z
    :sswitch_2
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 58
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setEffectOn(Z)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v2

    .line 57
    goto :goto_1

    .line 64
    :sswitch_3
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->currentPreset()I

    move-result v1

    .line 66
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v1           #_result:I
    :sswitch_4
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->selectPreset(I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setPresetCategory(I)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getPresetCategory()I

    move-result v1

    .line 92
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v1           #_result:I
    :sswitch_7
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->numPresets()I

    move-result v1

    .line 100
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v1           #_result:I
    :sswitch_8
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->numPresetsPerCategory(I)I

    move-result v1

    .line 110
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_9
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->presetName(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    .end local v0           #_arg0:I
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/dolby/IDolbyMobileServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    move-result-object v0

    .line 129
    .local v0, _arg0:Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->registerCallback(Landroid/media/dolby/IDolbyMobileServiceCallbacks;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 135
    .end local v0           #_arg0:Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    :sswitch_b
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/dolby/IDolbyMobileServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    move-result-object v0

    .line 138
    .restart local v0       #_arg0:Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->unregisterCallback(Landroid/media/dolby/IDolbyMobileServiceCallbacks;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
