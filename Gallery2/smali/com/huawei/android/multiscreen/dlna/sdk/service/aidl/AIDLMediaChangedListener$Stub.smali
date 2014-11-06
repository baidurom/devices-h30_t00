.class public abstract Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener$Stub;
.super Landroid/os/Binder;
.source "AIDLMediaChangedListener.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLMediaChangedListener"

.field static final TRANSACTION_getId:I = 0x1

.field static final TRANSACTION_onMediaChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLMediaChangedListener"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;
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
    const-string v1, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLMediaChangedListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v3, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLMediaChangedListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLMediaChangedListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener$Stub;->getId()I

    move-result v1

    .line 52
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v1           #_result:I
    :sswitch_2
    const-string v3, "com.huawei.android.multiscreen.dlna.sdk.service.aidl.AIDLMediaChangedListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener$Stub;->onMediaChanged(I)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
