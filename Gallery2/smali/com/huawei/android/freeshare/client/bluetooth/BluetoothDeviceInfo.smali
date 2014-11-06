.class public Lcom/huawei/android/freeshare/client/bluetooth/BluetoothDeviceInfo;
.super Lcom/huawei/android/freeshare/client/device/DeviceInfo;
.source "BluetoothDeviceInfo.java"


# instance fields
.field private mMacAddress:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothDeviceInfo;->mName:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothDeviceInfo;->mMacAddress:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "mac"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothDeviceInfo;->mName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothDeviceInfo;->mMacAddress:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public equal(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)Z
    .locals 3
    .parameter "deviceInfo"

    .prologue
    const/4 v0, 0x0

    .line 72
    if-nez p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->getDeviceType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 80
    iget-object v1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothDeviceInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/android/freeshare/client/device/DeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x2

    return v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothDeviceInfo;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothDeviceInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothDeviceInfo;->mName:Ljava/lang/String;

    .line 53
    return-void
.end method
