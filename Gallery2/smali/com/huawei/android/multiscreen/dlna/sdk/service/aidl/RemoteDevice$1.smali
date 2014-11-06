.class Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice$1;
.super Ljava/lang/Object;
.source "RemoteDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
    .locals 4
    .parameter "source"

    .prologue
    .line 55
    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    invoke-direct {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;-><init>()V

    .line 56
    .local v2, remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->setName(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, productType:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    :cond_0
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->Unknown:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->setProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V

    .line 65
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->setDeviceId(I)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->setUDN(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, deviceType:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    :cond_1
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->DMS_DEVICE:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->setDeviceType(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;)V

    .line 77
    :goto_1
    return-object v2

    .line 62
    .end local v0           #deviceType:Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->setProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V

    goto :goto_0

    .line 74
    .restart local v0       #deviceType:Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->setDeviceType(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;)V

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
    .locals 1
    .parameter "size"

    .prologue
    .line 50
    new-array v0, p1, [Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice$1;->newArray(I)[Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    move-result-object v0

    return-object v0
.end method
