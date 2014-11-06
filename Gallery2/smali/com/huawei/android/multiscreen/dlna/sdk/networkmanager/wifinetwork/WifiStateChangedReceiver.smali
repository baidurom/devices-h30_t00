.class public Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver$WifiDirectListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

.field private mapActionIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wifDirectListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

.field private wifiStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "WifiStateChangedReceiver"

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver$WifiDirectListener;

    invoke-direct {v0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver$WifiDirectListener;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->wifDirectListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->mapActionIndex:Ljava/util/Map;

    .line 80
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    .line 81
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->wifiStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    .line 86
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->mapActionIndex:Ljava/util/Map;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->mapActionIndex:Ljava/util/Map;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->context:Landroid/content/Context;

    .line 93
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->setWifiDirect(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method private getDottedDecimalIP([B)Ljava/lang/String;
    .locals 3
    .parameter "ipAddr"

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    const/4 v2, 0x0

    .line 313
    :goto_0
    return-object v2

    .line 304
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 307
    :cond_1
    if-lez v0, :cond_2

    .line 309
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_2
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getIPList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 221
    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-eqz v0, :cond_1

    .line 223
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_2

    .line 247
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    :goto_0
    return-object v5

    .line 225
    .restart local v0       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 226
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 228
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 229
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_3

    .line 231
    instance-of v7, v3, Ljava/net/Inet4Address;

    if-eqz v7, :cond_3

    .line 233
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->getDottedDecimalIP([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 239
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v6

    .line 240
    .local v6, sx:Ljava/net/SocketException;
    const-string v7, "IPMANAGER"

    const-string v8, "get ip SocketException"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 241
    .end local v6           #sx:Ljava/net/SocketException;
    :catch_1
    move-exception v2

    .line 242
    .local v2, ex:Ljava/util/NoSuchElementException;
    const-string v7, "IPMANAGER"

    const-string v8, "get ip NoSuchElementException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 243
    .end local v2           #ex:Ljava/util/NoSuchElementException;
    :catch_2
    move-exception v2

    .line 244
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "IPMANAGER"

    const-string v8, "get ip error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getWifiDirectIP()Ljava/lang/String;
    .locals 5

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->getIPList()Ljava/util/List;

    move-result-object v1

    .line 269
    .local v1, listIP:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 292
    const-string v3, "0.0.0.0"

    .line 295
    :goto_0
    return-object v3

    .line 273
    :pswitch_0
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->getWifiIP()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 280
    :cond_0
    :pswitch_1
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->getWifiIP()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, wifiIP:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 295
    const-string v3, "0.0.0.0"

    goto :goto_0

    .line 281
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    .local v0, ip:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v3, v0

    .line 285
    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getWifiIP()Ljava/lang/String;
    .locals 4

    .prologue
    .line 251
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->context:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 252
    .local v1, manager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 253
    .local v0, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->intToInetAddress(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private intToInetAddress(I)Ljava/lang/String;
    .locals 3
    .parameter "hostAddress"

    .prologue
    .line 257
    const/4 v1, 0x4

    new-array v0, v1, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 258
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 259
    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 260
    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 263
    .local v0, addressBytes:[B
    invoke-direct {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->getDottedDecimalIP([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private onConnectionChanged_WifiDirect(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 328
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 331
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->isStarted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 340
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->sendWifiDirectRequest(Landroid/content/Context;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->getNetworkInfo()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

    move-result-object v0

    .line 350
    .local v0, lastNetwork:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->getIPList()Ljava/util/List;

    move-result-object v1

    .line 352
    .local v1, listIP:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 360
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 362
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->setNoNetwork()V

    goto :goto_0

    .line 367
    :cond_2
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->setWifi()V

    goto :goto_0
.end method

.method private onStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 141
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 142
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->setNoNetwork()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->wifiStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->getConnectedWifiNameByBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 152
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->isStarted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->getIPList()Ljava/util/List;

    move-result-object v1

    .line 159
    .local v1, listIP:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 163
    :pswitch_0
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->setWifi()V

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->sendWifiDirectRequest(Landroid/content/Context;)V

    goto :goto_0

    .line 179
    .end local v1           #listIP:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DISCONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->getNetworkInfo()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

    move-result-object v0

    .line 185
    .local v0, lastNetwork:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->getIPList()Ljava/util/List;

    move-result-object v1

    .line 187
    .restart local v1       #listIP:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 197
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->setNoNetwork()V

    goto :goto_0

    .line 202
    :cond_3
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->sendWifiDirectRequest(Landroid/content/Context;)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendWifiDirectRequest(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 387
    const-string v2, "wifip2p"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 388
    .local v1, manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    .line 389
    .local v0, channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->wifDirectListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 390
    return-void
.end method

.method private setNoNetwork()V
    .locals 2

    .prologue
    .line 430
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;-><init>()V

    .line 432
    .local v0, dlnaNetWorkInfo:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->NO_NETWORK:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->setNetworkType(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;)V

    .line 434
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    invoke-interface {v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->setCurrentActiveNetwork(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)V

    .line 435
    return-void
.end method

.method private setWifi()V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;-><init>()V

    .line 400
    .local v0, networkInfo:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->getWifiIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->setIpAddress(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->wifiStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->setMacAddress(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->wifiStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->getConnectedWifiNameByBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->setNetworkName(Ljava/lang/String;)V

    .line 403
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->WIFI:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->setNetworkType(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;)V

    .line 405
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    invoke-interface {v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->setCurrentActiveNetwork(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)V

    .line 406
    return-void
.end method

.method private setWifiDirect(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    .line 415
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;-><init>()V

    .line 417
    .local v0, networkInfo:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->getWifiDirectIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->setIpAddress(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->wifiStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->setMacAddress(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->setNetworkName(Ljava/lang/String;)V

    .line 420
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->WIFI_DIRECT:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->setNetworkType(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;)V

    .line 422
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    invoke-interface {v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->setCurrentActiveNetwork(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)V

    .line 423
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->mapActionIndex:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 103
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 117
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->onStateChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 127
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateChangedReceiver;->onConnectionChanged_WifiDirect(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
