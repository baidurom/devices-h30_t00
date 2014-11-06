.class public Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;
.super Ljava/lang/Object;
.source "WifiStateManager.java"


# static fields
.field private static final LAST_WIFI_NAME:Ljava/lang/String; = "LastWifiConnectedName"

.field private static final TAG:Ljava/lang/String; = "WifiStateManager"

.field private static connectivityManager:Landroid/net/ConnectivityManager;

.field private static wifiManager:Landroid/net/wifi/WifiManager;

.field private static wifiStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;


# instance fields
.field private lastWifiConnectedName:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 87
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 88
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 93
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 94
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "LastWifiConnectedName"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->lastWifiConnectedName:Ljava/lang/String;

    .line 97
    :cond_0
    return-void
.end method

.method static synthetic access$0()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    return-object v0
.end method

.method public static destroyInstance()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    .line 119
    return-void
.end method

.method public static getConnectiveManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 363
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 365
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 366
    .local v0, appContext:Landroid/content/Context;
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 368
    :cond_0
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v1
.end method

.method private getDottedDecimalIP([B)Ljava/lang/String;
    .locals 3
    .parameter "ipAddr"

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    const/4 v2, 0x0

    .line 216
    :goto_0
    return-object v2

    .line 207
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 210
    :cond_1
    if-lez v0, :cond_2

    .line 212
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_2
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    .line 110
    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiStateManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;

    return-object v0
.end method

.method private getLocalIPAddress()[B
    .locals 8

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_1

    .line 198
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    const/4 v6, 0x0

    :goto_1
    return-object v6

    .line 176
    .restart local v1       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 177
    .local v5, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 179
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 180
    .local v4, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_2

    .line 182
    instance-of v6, v4, Ljava/net/Inet4Address;

    if-eqz v6, :cond_2

    .line 184
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    goto :goto_1

    .line 190
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4           #inetAddress:Ljava/net/InetAddress;
    .end local v5           #intf:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v3

    .line 192
    .local v3, ex:Ljava/util/NoSuchElementException;
    const-string v6, "WifiStateManager"

    const-string v7, "getLocalIPAddress() get ip error,happened NoSuchElementException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    .end local v3           #ex:Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v0

    .line 194
    .local v0, e:Ljava/net/SocketException;
    const-string v6, "WifiStateManager"

    const-string v7, "getLocalIPAddress() get ip error,happened SocketException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local v0           #e:Ljava/net/SocketException;
    :catch_2
    move-exception v3

    .line 196
    .local v3, ex:Ljava/lang/Exception;
    const-string v6, "IPMANAGER"

    const-string v7, "get ip error,happened Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .prologue
    .line 347
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 349
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 350
    .local v0, appContext:Landroid/content/Context;
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 352
    :cond_0
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v1
.end method


# virtual methods
.method public checkWifiState()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 128
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 130
    .local v0, mWifi:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectedWifiNameByBSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 316
    .local v0, bssid:Ljava/lang/String;
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 318
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 320
    :cond_0
    return-object v0
.end method

.method public getConnectedWifiNameBySSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, ssid:Ljava/lang/String;
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 334
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_0
    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->getLocalIPAddress()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->getDottedDecimalIP([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastConnectedWifiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->lastWifiConnectedName:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xc

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, macAddr:Ljava/lang/String;
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 229
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 230
    .local v2, wifoInfo:Landroid/net/wifi/WifiInfo;
    if-nez v2, :cond_0

    .line 232
    const-string v3, ""

    .line 256
    .end local v2           #wifoInfo:Landroid/net/wifi/WifiInfo;
    :goto_0
    return-object v3

    .line 234
    .restart local v2       #wifoInfo:Landroid/net/wifi/WifiInfo;
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_1

    const/16 v3, 0x11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 238
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 240
    .local v0, a:[C
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v4, 0x0

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 241
    const/4 v4, 0x1

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 242
    const/4 v4, 0x3

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 243
    const/4 v4, 0x4

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 244
    const/4 v4, 0x6

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 245
    const/4 v4, 0x7

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 246
    const/16 v4, 0x9

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 247
    const/16 v4, 0xa

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 248
    aget-char v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 249
    const/16 v4, 0xd

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 250
    const/16 v4, 0xf

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 251
    const/16 v4, 0x10

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 252
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .end local v0           #a:[C
    :cond_1
    const-string v3, "WifiStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMacAddress:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #wifoInfo:Landroid/net/wifi/WifiInfo;
    :cond_2
    move-object v3, v1

    .line 256
    goto/16 :goto_0
.end method

.method public setLastConnectedWifiName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 297
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 298
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "LastWifiConnectedName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;->lastWifiConnectedName:Ljava/lang/String;

    .line 304
    :cond_0
    return-void
.end method

.method public wifiDirectRequest()V
    .locals 5

    .prologue
    .line 145
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    .local v0, appContext:Landroid/content/Context;
    const-string v3, "wifip2p"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 147
    .local v2, manager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    .line 148
    .local v1, channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    new-instance v3, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager$1;

    invoke-direct {v3, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager$1;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiStateManager;)V

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 168
    return-void
.end method
