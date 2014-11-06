.class Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver$WifiDirectListener;
.super Ljava/lang/Object;
.source "WifiStateChangedReceiver.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiDirectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;


# direct methods
.method constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver$WifiDirectListener;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 450
    if-eqz p1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver$WifiDirectListener;->this$0:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;

    #calls: Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->setWifiDirect(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    invoke-static {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->access$0(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 454
    :cond_0
    return-void
.end method
