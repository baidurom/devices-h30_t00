.class public final Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "ExecuteCheckManager.java"


# static fields
.field private static manager:Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->manager:Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 41
    return-void
.end method

.method private static declared-synchronized createInstance()V
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;-><init>()V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->manager:Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v1

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->manager:Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->createInstance()V

    .line 54
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->manager:Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    return-object v0
.end method

.method private getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 4

    .prologue
    .line 259
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 260
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 259
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 261
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 262
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    return-object v0
.end method

.method private isConnection3G(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 288
    packed-switch p1, :pswitch_data_0

    .line 308
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 300
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public canExecute(Z)Z
    .locals 3
    .parameter "isMyphoto"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 275
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 283
    goto :goto_0
.end method

.method public canExecute(ZZ)Z
    .locals 17
    .parameter "isMyphoto"
    .parameter "isFile"

    .prologue
    .line 167
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    const-string v15, "come into canExecute"

    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    if-nez v13, :cond_0

    .line 171
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    const-string v15, "getNetworkInfo null!"

    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v8, 0x0

    .line 253
    :goto_0
    return v8

    .line 175
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 176
    .local v1, context:Landroid/content/Context;
    const-string v13, "phone"

    invoke-virtual {v1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 177
    .local v10, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->isWifiOn(Landroid/content/Context;)Z

    move-result v6

    .line 178
    .local v6, isWifiOn:Z
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->isWifiConnected(Landroid/content/Context;)Z

    move-result v5

    .line 179
    .local v5, isWifiConnected:Z
    const/4 v8, 0x0

    .line 180
    .local v8, result:Z
    const-string v13, "is3Gdl"

    invoke-static {v1, v13}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 181
    .local v2, gdl:Z
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->isConnection3G(I)Z

    move-result v11

    .line 182
    .local v11, threeGState:Z
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    .line 183
    .local v12, threeGStateConnected:Z
    const-string v13, "isOpenPhoto"

    invoke-static {v1, v13}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 184
    .local v7, photoSwitcher:Z
    const-string v13, "isOpenShare"

    invoke-static {v1, v13}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 185
    .local v9, shareSwitcher:Z
    const-string v13, "isSwitchRecOn"

    invoke-static {v1, v13}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 186
    .local v4, isSwitchRecOn:Z
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->readIsLogOnFromFile(Landroid/content/Context;)Z

    move-result v3

    .line 188
    .local v3, isLogOn:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "isMyphoto:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",handleNetInfo,isWifiOn:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 189
    const-string v16, ",isWifiConnected:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",gdl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",3gState:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 190
    const-string v16, ",threeGStateConnected:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",photoSwitcher:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 191
    const-string v16, ",shareSwitcher:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",isSwitchRecOn:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",net work type:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->getType()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",telephonyManager.getNetworkType:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 193
    const-string v16, ",isLogOn:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 188
    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    if-nez v3, :cond_1

    .line 197
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "isLogOn:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 201
    :cond_1
    if-eqz v4, :cond_6

    .line 203
    if-eqz p1, :cond_3

    if-eqz v7, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 204
    if-eqz v5, :cond_3

    .line 206
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "isMyphoto:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",wifi,isWifiConnected:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 207
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 206
    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v8, 0x1

    .line 252
    :cond_2
    :goto_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "come out canExecute:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_3
    if-nez p1, :cond_2

    if-eqz v9, :cond_2

    .line 213
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "getNetworkInfo().getType():"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->getType()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    if-eqz v5, :cond_4

    .line 216
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "isMyphoto:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",wifi,isWifiConnected:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 217
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 216
    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v8, 0x1

    goto :goto_1

    .line 220
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    if-nez v13, :cond_5

    .line 222
    if-eqz v2, :cond_2

    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    .line 224
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "isMyphoto:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",gdl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 225
    const-string v16, "threeGState:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",threeGStateConnected:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 224
    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 232
    :cond_5
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    const-string v15, "unknow network type!"

    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 240
    :cond_6
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "isMyphoto:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",photoSwitcher:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 241
    const-string v16, ",shareSwitcher:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 240
    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    if-eqz p1, :cond_7

    if-eqz v7, :cond_7

    .line 244
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 246
    :cond_7
    if-nez p1, :cond_2

    if-eqz v9, :cond_2

    .line 248
    const/4 v8, 0x1

    goto/16 :goto_1
.end method

.method public canExecuteBak(ZZ)Z
    .locals 17
    .parameter "isMyphoto"
    .parameter "isFile"

    .prologue
    .line 73
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    const-string v15, "come into canExecute"

    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    if-nez v13, :cond_0

    .line 77
    const/4 v8, 0x0

    .line 153
    :goto_0
    return v8

    .line 80
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 81
    .local v1, context:Landroid/content/Context;
    const-string v13, "phone"

    invoke-virtual {v1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 82
    .local v10, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->isWifiOn(Landroid/content/Context;)Z

    move-result v6

    .line 83
    .local v6, isWifiOn:Z
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->isWifiConnected(Landroid/content/Context;)Z

    move-result v5

    .line 84
    .local v5, isWifiConnected:Z
    const/4 v8, 0x0

    .line 85
    .local v8, result:Z
    const-string v13, "is3Gdl"

    invoke-static {v1, v13}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 86
    .local v2, gdl:Z
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->isConnection3G(I)Z

    move-result v11

    .line 87
    .local v11, threeGState:Z
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    .line 88
    .local v12, threeGStateConnected:Z
    const-string v13, "isOpenPhoto"

    invoke-static {v1, v13}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 89
    .local v7, photoSwitcher:Z
    const-string v13, "isOpenShare"

    invoke-static {v1, v13}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 90
    .local v9, shareSwitcher:Z
    const-string v13, "isSwitchRecOn"

    invoke-static {v1, v13}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 91
    .local v4, isSwitchRecOn:Z
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->readIsLogOnFromFile(Landroid/content/Context;)Z

    move-result v3

    .line 93
    .local v3, isLogOn:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "handleNetInfo,isWifiOn:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",isWifiConnected:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 94
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",gdl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",3gState:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",threeGStateConnected:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 95
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",photoSwitcher:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",shareSwitcher:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 96
    const-string v16, ",isSwitchRecOn:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",net work type:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->getType()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 97
    const-string v16, ",telephonyManager.getNetworkType:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",isLogOn:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 93
    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-nez v3, :cond_1

    .line 101
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "isLogOn:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 105
    :cond_1
    if-eqz v4, :cond_6

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 109
    if-nez v5, :cond_6

    .line 111
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "isWifiConnected:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 115
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    if-nez v13, :cond_5

    .line 117
    if-nez v2, :cond_3

    .line 119
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "gdl:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 124
    :cond_3
    if-eqz v11, :cond_4

    if-nez v12, :cond_6

    .line 126
    :cond_4
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "threeGState:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 127
    const-string v16, ",threeGStateConnected:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 126
    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 135
    :cond_5
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    const-string v15, "unknow network type!"

    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 140
    :cond_6
    if-eqz p1, :cond_8

    .line 142
    if-eqz v7, :cond_7

    .line 144
    const/4 v8, 0x1

    .line 152
    :cond_7
    :goto_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "come out canExecute:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_8
    if-eqz v9, :cond_7

    .line 149
    const/4 v8, 0x1

    goto :goto_1
.end method
