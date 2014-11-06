.class Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager$1;
.super Ljava/lang/Object;
.source "WifiStateManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiDirectRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager$1;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 157
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;-><init>()V

    .line 159
    .local v0, networkInfo:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->access$0()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->getIPAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->setIpAddress(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->access$0()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->setMacAddress(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->setNetworkName(Ljava/lang/String;)V

    .line 162
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->WIFI_DIRECT:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->setNetworkType(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;)V

    .line 164
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->setCurrentActiveNetwork(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)V

    .line 166
    .end local v0           #networkInfo:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;
    :cond_0
    return-void
.end method
