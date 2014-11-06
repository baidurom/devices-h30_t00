.class public Lcom/huawei/android/net/wifi/p2p/NfcWifiP2pManagerEx;
.super Ljava/lang/Object;
.source "NfcWifiP2pManagerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addP2PValidDevice(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 2
    .parameter "mWifiP2pManager"
    .parameter "c"
    .parameter "deviceAddress"
    .parameter "listener"

    .prologue
    .line 17
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static beam_connect(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 2
    .parameter "mWifiP2pManager"
    .parameter "c"
    .parameter "config"
    .parameter "listener"

    .prologue
    .line 25
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeP2PValidDevice(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 2
    .parameter "mWifiP2pManager"
    .parameter "c"
    .parameter "deviceAddress"
    .parameter "listener"

    .prologue
    .line 21
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
