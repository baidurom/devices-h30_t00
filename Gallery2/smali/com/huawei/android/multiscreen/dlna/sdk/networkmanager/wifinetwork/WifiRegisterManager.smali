.class public Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiRegisterManager;
.super Ljava/lang/Object;
.source "WifiRegisterManager.java"


# static fields
.field private static mWifiStateReceiver:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerForWifiStateChangedReceiver()V
    .locals 5

    .prologue
    .line 36
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;-><init>()V

    sput-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiRegisterManager;->mWifiStateReceiver:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiRegisterManager;->mWifiStateReceiver:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;

    const-string v3, "permission.ALLOW_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 52
    return-void
.end method

.method public static unregisterForWifiStateChangedReceiver()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiRegisterManager;->mWifiStateReceiver:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    return-void
.end method
