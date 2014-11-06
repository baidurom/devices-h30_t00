.class public Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;
.super Ljava/lang/Object;
.source "NetworkStateReceiverManager.java"


# static fields
.field private static final LAST_NETWORK_IP:Ljava/lang/String; = "LastNetworkIP"

.field private static final LAST_NETWORK_MAC:Ljava/lang/String; = "LastNetworkMAC"

.field private static final LAST_NETWORK_NAME:Ljava/lang/String; = "LastNetworkName"

.field private static final LAST_NETWORK_TYPE:Ljava/lang/String; = "LastNetworkType"

.field private static final TAG:Ljava/lang/String; = "NetworkStateReceiverManager"

.field private static networkManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;


# instance fields
.field private lastNetWorkIP:Ljava/lang/String;

.field private lastNetworkInfo:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

.field private lastNetworkMAC:Ljava/lang/String;

.field private lastNetworkName:Ljava/lang/String;

.field private lastNetworkType:I

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 109
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 108
    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 111
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "LastNetworkName"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetworkName:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "LastNetworkType"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetworkType:I

    .line 113
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "LastNetworkIP"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetWorkIP:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "LastNetworkMAC"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetworkMAC:Ljava/lang/String;

    .line 115
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetworkType:I

    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->converToEnum(I)Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    move-result-object v0

    .line 116
    .local v0, type:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetworkName:Ljava/lang/String;

    .line 117
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetWorkIP:Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetworkMAC:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;-><init>(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetworkInfo:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

    .line 118
    return-void
.end method

.method private checkNetworkinfo(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)Z
    .locals 2
    .parameter "networkInfo"

    .prologue
    const/4 v0, 0x0

    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getNetworkType()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    move-result-object v1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static destroyInstance()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->networkManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;

    .line 125
    return-void
.end method

.method public static getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->networkManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->networkManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;

    .line 99
    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->networkManager:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;

    return-object v0
.end method

.method private isInitContainDmsMode()Z
    .locals 3

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, flag:Z
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getStackInitMode()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    move-result-object v1

    .line 312
    .local v1, initMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    if-eq v1, v2, :cond_0

    .line 313
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    if-eq v1, v2, :cond_0

    .line 314
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMR:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    if-eq v1, v2, :cond_0

    .line 315
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMR_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    if-eq v1, v2, :cond_0

    .line 316
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMR_DMP:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    if-ne v1, v2, :cond_1

    .line 317
    :cond_0
    const/4 v0, 0x1

    .line 319
    :cond_1
    return v0
.end method

.method private isNetworkChanged(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)Z
    .locals 2
    .parameter "newNetwork"
    .parameter "oldNetwork"

    .prologue
    .line 289
    if-eqz p2, :cond_0

    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->NO_NETWORK:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getNetworkType()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 291
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getNetworkType()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    move-result-object v0

    .line 294
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getNetworkType()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    move-result-object v1

    .line 293
    if-ne v0, v1, :cond_0

    .line 295
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getNetworkInfo()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetworkInfo:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

    return-object v0
.end method

.method public onReceiveNetworkInfo(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)V
    .locals 10
    .parameter "networkInfo"

    .prologue
    .line 147
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;

    move-result-object v0

    .line 151
    .local v0, dlnaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->checkNetworkinfo(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getStackInitMode()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    move-result-object v8

    if-nez v8, :cond_2

    .line 157
    iget-object v8, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetworkInfo:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

    invoke-direct {p0, p1, v8}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->isNetworkChanged(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->setNetworkInfo(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)V

    goto :goto_0

    .line 162
    :cond_2
    if-eqz p1, :cond_6

    .line 163
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getNetworkType()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    move-result-object v8

    sget-object v9, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->NO_NETWORK:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    if-ne v8, v9, :cond_3

    .line 164
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->exitDlna()Z

    .line 165
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->setNetworkInfo(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)V

    .line 166
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->notifyWifiStateLost()V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v8, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetworkInfo:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

    invoke-direct {p0, p1, v8}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->isNetworkChanged(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)Z

    move-result v6

    .line 169
    .local v6, ret:Z
    if-eqz v6, :cond_0

    .line 171
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->exitDlna()Z

    .line 172
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->setNetworkInfo(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)V

    .line 175
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getStackInitMode()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    move-result-object v7

    .line 176
    .local v7, type:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    invoke-virtual {v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DMS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 178
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmsDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;

    move-result-object v2

    .line 179
    .local v2, dms:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;
    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;->setName(Ljava/lang/String;)V

    .line 180
    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;->getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    move-result-object v5

    .line 181
    .local v5, producType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
    if-eqz v5, :cond_4

    .line 183
    invoke-interface {v2, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;->setProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V

    .line 186
    .end local v2           #dms:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;
    .end local v5           #producType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
    :cond_4
    invoke-virtual {v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DMR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 188
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    move-result-object v1

    .line 189
    .local v1, dmr:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;
    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->setName(Ljava/lang/String;)V

    .line 190
    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    move-result-object v5

    .line 191
    .restart local v5       #producType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
    if-eqz v5, :cond_5

    .line 193
    invoke-interface {v1, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;->setProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V

    .line 197
    .end local v1           #dmr:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;
    .end local v5           #producType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
    :cond_5
    invoke-interface {v0, v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->startDlna(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;)Z

    .line 198
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->notifyWifiStateChanged()V

    .line 200
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->isInitContainDmsMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 202
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDlnaNetworkPolicy()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkPolicy;

    move-result-object v4

    .line 203
    .local v4, networkPolicy:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkPolicy;
    if-eqz v4, :cond_0

    .line 206
    iget-object v8, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetworkInfo:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;

    .line 205
    invoke-interface {v4, p1, v8}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkPolicy;->isContinueShare(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)Z

    move-result v3

    .line 207
    .local v3, isShare:Z
    if-eqz v3, :cond_0

    .line 208
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->getDmsDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;

    move-result-object v8

    invoke-interface {v8, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;->setShareEnable(Z)Z

    goto/16 :goto_0

    .line 216
    .end local v3           #isShare:Z
    .end local v4           #networkPolicy:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkPolicy;
    .end local v6           #ret:Z
    .end local v7           #type:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    :cond_6
    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/IDlnaManager;->exitDlna()Z

    .line 217
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->setNetworkInfoNull()V

    .line 218
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/wifinetwork/WifiListenerManager;->notifyWifiStateLost()V

    goto/16 :goto_0
.end method

.method public setNetworkInfo(Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 238
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 239
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 240
    const-string v2, "LastNetworkName"

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    const-string v2, "LastNetworkType"

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getNetworkType()Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/ENetworkType;->getValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 242
    const-string v2, "LastNetworkIP"

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string v2, "LastNetworkMAC"

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetworkInfo:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_1
    return-void

    .line 245
    :cond_0
    const-string v2, "LastNetworkName"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v2, "LastNetworkType"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 247
    const-string v2, "LastNetworkIP"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 248
    const-string v2, "LastNetworkMAC"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NetworkStateReceiverManager"

    const-string v3, "setNetworkInfo happened Exception"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setNetworkInfoNull()V
    .locals 4

    .prologue
    .line 263
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 265
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LastNetworkName"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    const-string v2, "LastNetworkType"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 267
    const-string v2, "LastNetworkIP"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 268
    const-string v2, "LastNetworkMAC"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 272
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/NetworkStateReceiverManager;->lastNetworkInfo:Lcom/huawei/android/multiscreen/dlna/sdk/networkmanager/DlnaNetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NetworkStateReceiverManager"

    const-string v3, "setNetworkInfo happened Exception"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
