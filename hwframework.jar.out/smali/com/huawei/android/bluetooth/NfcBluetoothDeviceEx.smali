.class public Lcom/huawei/android/bluetooth/NfcBluetoothDeviceEx;
.super Ljava/lang/Object;
.source "NfcBluetoothDeviceEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNfcPairingWhiteList(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 2
    .parameter "device"
    .parameter "address"

    .prologue
    .line 13
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clearNfcPairingWhiteList(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 21
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeNfcPairingWhiteList(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 2
    .parameter "device"
    .parameter "address"

    .prologue
    .line 17
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
