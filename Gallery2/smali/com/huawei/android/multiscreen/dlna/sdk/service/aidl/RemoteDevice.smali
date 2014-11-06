.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
.super Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;
.source "RemoteDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deviceType:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice$1;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice$1;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;-><init>()V

    .line 14
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->DMR_DEVICE:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->deviceType:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceType()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->deviceType:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    return-object v0
.end method

.method public setDeviceType(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;)V
    .locals 0
    .parameter "deviceType"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->deviceType:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteDevice [deviceType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->deviceType:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->productType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", udn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->udn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->productType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->productType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->name()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->deviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->udn:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->udn:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->deviceType:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->deviceType:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->name()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    return-void

    .line 28
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 30
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 32
    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 33
    :cond_3
    const-string v0, ""

    goto :goto_3
.end method
