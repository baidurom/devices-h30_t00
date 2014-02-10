.class public Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;
.super Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;
.source "PushHeartBeat.java"


# static fields
.field private static final SPLIT:Ljava/lang/String; = "_"

.field private static final STR_CLINET_IP:Ljava/lang/String; = "ClientIP"

.field private static final STR_HasFindHeartBeat:Ljava/lang/String; = "HasFindHeartBeat"

.field private static final STR_HearBeatInterval:Ljava/lang/String; = "HearBeatInterval"

.field private static final STR_HeartBeatValid:Ljava/lang/String; = "HeartBeatValid"


# instance fields
.field private apnName:Ljava/lang/String;

.field private clientIP:Ljava/lang/String;

.field private curMccMnc:Ljava/lang/String;

.field private hasFindHeartBeat:Z

.field public heartBeatInterval:J

.field private maxHeartBeat:J

.field private minHeartBeat:J

.field private netType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;-><init>(Landroid/content/Context;)V

    .line 30
    iput-boolean v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->hasFindHeartBeat:Z

    .line 31
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    .line 32
    iget-wide v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    iput-wide v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->minHeartBeat:J

    .line 33
    iget-wide v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    iput-wide v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->maxHeartBeat:J

    .line 36
    iput v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->netType:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->curMccMnc:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->apnName:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->clientIP:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private getCurrentClientIP()Ljava/lang/String;
    .locals 5

    .prologue
    .line 84
    const-string v0, ""

    .line 86
    .local v0, curIp:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 87
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->getSocket()Ljava/net/Socket;

    move-result-object v2

    .line 88
    .local v2, socket:Ljava/net/Socket;
    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    .end local v2           #socket:Ljava/net/Socket;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 96
    const-string v0, ""

    .line 98
    :cond_1
    return-object v0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PushLog2510"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getFixHeartBeat()Ljava/lang/Long;
    .locals 8

    .prologue
    .line 106
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    const-string v5, "cloudpush_fixHeatBeat"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, fixHeartBeat:Ljava/lang/String;
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long v2, v4, v6

    .line 110
    .local v2, retHeartBeat:J
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get heart beat from config, value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " so neednot ajust"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 127
    .end local v2           #retHeartBeat:J
    :goto_0
    return-object v4

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get cloudpush_fixHeatBeat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cause:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    const/4 v4, 0x2

    iget v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->batteryStatus:I

    if-eq v4, v5, :cond_0

    const/4 v4, 0x5

    iget v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->batteryStatus:I

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 124
    const-string v4, "PushLog2510"

    const-string v5, "in wifi and in charging, cannot ajust heartBeat"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-wide/32 v4, 0xea60

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    .line 127
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 112
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private getHeartBeatFromTRS(Lcom/huawei/android/pushagent/datatype/TRSRetInfo;Ljava/lang/String;)V
    .locals 12
    .parameter "retInfo"
    .parameter "apnName"

    .prologue
    const-wide/16 v10, 0x3e8

    .line 345
    const/4 v4, 0x0

    .line 347
    .local v4, hasFindApnHeartBeat:Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 349
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getApnHeartBeatMap()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 350
    .local v6, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 351
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    .local v1, apnKey:Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 353
    const/4 v4, 0x1

    .line 354
    invoke-virtual {p1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getApnHeartBeatMap()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 355
    .local v0, apnHeartBeat:Ljava/lang/String;
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "apnName is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",apnHeartBeat is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v7, "_"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, arr:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long/2addr v7, v10

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->minHeartBeat:J

    .line 358
    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long/2addr v7, v10

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->maxHeartBeat:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v0           #apnHeartBeat:Ljava/lang/String;
    .end local v1           #apnKey:Ljava/lang/String;
    .end local v2           #arr:[Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    .line 370
    invoke-virtual {p1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->get3GMinHeartbeat()J

    move-result-wide v7

    mul-long/2addr v7, v10

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->minHeartBeat:J

    .line 371
    invoke-virtual {p1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->get3GMaxHeartbeat()J

    move-result-wide v7

    mul-long/2addr v7, v10

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->maxHeartBeat:J

    .line 373
    :cond_2
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "after all, minHeartBeat is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->minHeartBeat:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",maxHeartBeat is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->maxHeartBeat:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void

    .line 363
    :catch_0
    move-exception v3

    .line 364
    .local v3, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 365
    const-string v7, "PushLog2510"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private saveValues()Z
    .locals 9

    .prologue
    .line 301
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v3

    .line 302
    .local v3, netType:I
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/android/pushagent/utils/CommFun;->getMCCMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, curMccMnc:Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/android/pushagent/utils/CommFun;->getApnType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, apnName:Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v5, v3, :cond_0

    .line 305
    const-string v0, "wifi"

    .line 307
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 308
    .local v4, values:Landroid/content/ContentValues;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HasFindHeartBeat_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->hasFindHeartBeat:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HearBeatInterval_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClientIP_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->clientIP:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-boolean v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->hasFindHeartBeat:Z

    if-eqz v5, :cond_1

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x4d3f6400

    add-long/2addr v5, v7

    const-string v7, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-static {v5, v6, v7}, Lcom/huawei/android/pushagent/utils/CommFun;->getTimeString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, heartBeatValidEndTime:Ljava/lang/String;
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "when find best heart beat,save the valid end time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to xml."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v5, "HeartBeatValid"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .end local v2           #heartBeatValidEndTime:Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->getCfgFileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->write(Landroid/content/ContentValues;)Z

    move-result v5

    return v5
.end method


# virtual methods
.method public ajustHearBeatInterval(Z)V
    .locals 4
    .parameter "receivedRspTimeOut"

    .prologue
    .line 164
    const-string v0, "PushLog2510"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter adjustHeartBeat:(findHeartBeat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->hasFindHeartBeat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RspTimeOut:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " beatInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " range:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->minHeartBeat:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->maxHeartBeat:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isHearBeatTimeReq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->isHearBeatTimeReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " batteryStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->batteryStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->getFixHeartBeat()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-boolean v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->hasFindHeartBeat:Z

    if-nez v0, :cond_0

    .line 178
    iget-boolean v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->isHearBeatTimeReq:Z

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->setIsHearBeatTimeReq(Z)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->getNextHeartBeatInterval(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    .line 186
    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->minHeartBeat:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->maxHeartBeat:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 189
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->hasFindHeartBeat:Z

    .line 190
    const-string v0, "PushLog2510"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after all the best heartBeat Interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_1
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->saveValues()Z

    goto :goto_0

    .line 195
    :cond_3
    const-string v0, "PushLog2510"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set current heartBeatInterval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCfgFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    const-string v0, "PushHearBeat"

    return-object v0
.end method

.method public getNextHeartBeatInterval(Z)J
    .locals 7
    .parameter "receivedRspTimeOut"

    .prologue
    const-wide/16 v5, 0x7530

    .line 130
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 131
    const-wide/32 v1, 0x1b7740

    .line 158
    :cond_0
    :goto_0
    return-wide v1

    .line 134
    :cond_1
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->getFixHeartBeat()Ljava/lang/Long;

    move-result-object v0

    .line 135
    .local v0, fixHeartBeat:Ljava/lang/Long;
    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->isEnvChange()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->loadHeartBeat()Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;

    .line 143
    :cond_3
    iget-wide v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    .line 144
    .local v1, nextHeartBeat:J
    iget-boolean v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->hasFindHeartBeat:Z

    if-nez v3, :cond_0

    .line 146
    if-eqz p1, :cond_4

    .line 147
    iget-wide v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    sub-long v1, v3, v5

    .line 152
    :goto_1
    iget-wide v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->minHeartBeat:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_5

    .line 153
    iget-wide v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->minHeartBeat:J

    goto :goto_0

    .line 149
    :cond_4
    iget-wide v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    add-long v1, v3, v5

    goto :goto_1

    .line 154
    :cond_5
    iget-wide v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->maxHeartBeat:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 155
    iget-wide v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->maxHeartBeat:J

    goto :goto_0
.end method

.method protected isEnvChange()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v2

    .line 71
    .local v2, nowNetType:I
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/android/pushagent/utils/CommFun;->getMCCMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, mccMnc:Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/android/pushagent/utils/CommFun;->getApnType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, apn:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 79
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnvChange:netType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    :goto_0
    return v3

    .line 75
    :pswitch_0
    iget v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->netType:I

    if-ne v2, v5, :cond_1

    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->apnName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->curMccMnc:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v3, v4

    goto :goto_0

    .line 77
    :pswitch_1
    iget v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->netType:I

    if-ne v2, v5, :cond_2

    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->curMccMnc:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->getCurrentClientIP()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->clientIP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic loadHeartBeat()Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->loadHeartBeat()Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;

    move-result-object v0

    return-object v0
.end method

.method public loadHeartBeat()Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;
    .locals 13

    .prologue
    const-wide/16 v11, 0x3e8

    .line 204
    :try_start_0
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 205
    const-string v7, "PushLog2510"

    const-string v8, "system is in start, wait net for heartBeat"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 p0, 0x0

    .line 295
    :cond_0
    :goto_0
    return-object p0

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->getCurrentClientIP()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->clientIP:Ljava/lang/String;

    .line 209
    new-instance v7, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->getCfgFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->read()Landroid/content/ContentValues;

    move-result-object v5

    .line 210
    .local v5, value:Landroid/content/ContentValues;
    if-eqz v5, :cond_3

    .line 211
    const-string v7, "HeartBeatValid"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, heartBeatValid:Ljava/lang/String;
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hear beat valid from xml is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v1}, Lcom/huawei/android/pushagent/utils/CommFun;->getLongTime(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_2

    .line 215
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.huawei.android.push.intent.HEARTBEAT_VALID_ARRIVED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    .line 221
    .end local v1           #heartBeatValid:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v7

    iput v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->netType:I

    .line 222
    iget-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/huawei/android/pushagent/utils/CommFun;->getMCCMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->curMccMnc:Ljava/lang/String;

    .line 223
    iget-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v4

    .line 225
    .local v4, retInfo:Lcom/huawei/android/pushagent/datatype/TRSRetInfo;
    iget-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/huawei/android/pushagent/utils/CommFun;->getApnType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->apnName:Ljava/lang/String;

    .line 226
    invoke-virtual {v4}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->get3GMinHeartbeat()J

    move-result-wide v7

    mul-long/2addr v7, v11

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->minHeartBeat:J

    .line 227
    invoke-virtual {v4}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->get3GMaxHeartbeat()J

    move-result-wide v7

    mul-long/2addr v7, v11

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->maxHeartBeat:J

    .line 228
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->hasFindHeartBeat:Z

    .line 230
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in loadHeartBeat netType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->netType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mccMnc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->curMccMnc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "apnName is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->apnName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v7, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->getCfgFileName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->read()Landroid/content/ContentValues;

    move-result-object v6

    .line 233
    .local v6, values:Landroid/content/ContentValues;
    iget v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->netType:I

    packed-switch v7, :pswitch_data_0

    .line 266
    const-string v7, "PushLog2510"

    const-string v8, "unKnow net type"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 293
    .end local v4           #retInfo:Lcom/huawei/android/pushagent/datatype/TRSRetInfo;
    .end local v5           #value:Landroid/content/ContentValues;
    .end local v6           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call loadHeartBeat cause:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 219
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v5       #value:Landroid/content/ContentValues;
    :cond_3
    :try_start_1
    const-string v7, "PushLog2510"

    const-string v8, "PushHearBeat preferences is null"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 237
    .restart local v4       #retInfo:Lcom/huawei/android/pushagent/datatype/TRSRetInfo;
    .restart local v6       #values:Landroid/content/ContentValues;
    :pswitch_0
    invoke-virtual {v4}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getNoNetHeartbeat()J

    move-result-wide v7

    mul-long/2addr v7, v11

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    goto/16 :goto_0

    .line 242
    :pswitch_1
    invoke-virtual {v4}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getWifiMinHeartbeat()J

    move-result-wide v7

    mul-long/2addr v7, v11

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->minHeartBeat:J

    .line 243
    invoke-virtual {v4}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getWifiMaxHeartbeat()J

    move-result-wide v7

    mul-long/2addr v7, v11

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->maxHeartBeat:J

    .line 244
    const-string v7, "wifi"

    iput-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->apnName:Ljava/lang/String;

    .line 246
    iget-wide v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->minHeartBeat:J

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    .line 247
    if-eqz v6, :cond_5

    .line 248
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientIP_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->curMccMnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->netType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, oldIP:Ljava/lang/String;
    iget-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->clientIP:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->clientIP:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 252
    :cond_4
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "curIP:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->clientIP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " oldIP:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", there are diff, so need find heartBeat again"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    .end local v3           #oldIP:Ljava/lang/String;
    :pswitch_2
    iget-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->apnName:Ljava/lang/String;

    invoke-direct {p0, v4, v7}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->getHeartBeatFromTRS(Lcom/huawei/android/pushagent/datatype/TRSRetInfo;Ljava/lang/String;)V

    .line 271
    :cond_5
    iget-wide v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->minHeartBeat:J

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    .line 274
    if-eqz v6, :cond_0

    .line 275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HasFindHeartBeat_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->curMccMnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->netType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->apnName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HearBeatInterval_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->curMccMnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->netType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->apnName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 278
    :cond_6
    const-string v7, "PushLog2510"

    const-string v8, "have no this heartbeat config, use default"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HasFindHeartBeat_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->curMccMnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->netType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->apnName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->hasFindHeartBeat:Z

    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HearBeatInterval_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->curMccMnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->netType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->apnName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 283
    .local v2, iTmp:I
    int-to-long v7, v2

    const-wide/32 v9, 0x2bf20

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 284
    int-to-long v7, v2

    iput-wide v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sendHearBeat()V
    .locals 8

    .prologue
    .line 324
    :try_start_0
    invoke-static {}, Lcom/huawei/android/pushagent/PushService;->getInstance()Lcom/huawei/android/pushagent/PushService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/PushService;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.huawei.android.push.intent.HEARTBEAT_RSP_TIMEOUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "timer_reason"

    const-string v7, "timeOutWaitPushSrvRsp"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "connect_mode"

    sget-object v7, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    const-wide/16 v6, 0x2710

    invoke-static {v4, v5, v6, v7}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->setDelayAlarm(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 330
    new-instance v3, Lcom/huawei/android/pushagent/datatype/pushmessage/NewHeartBeatReqMessage;

    invoke-direct {v3}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewHeartBeatReqMessage;-><init>()V

    .line 331
    .local v3, msg:Lcom/huawei/android/pushagent/datatype/pushmessage/NewHeartBeatReqMessage;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->getNextHeartBeatInterval(Z)J

    move-result-wide v0

    .line 332
    .local v0, curHeartBeatInterval:J
    const-wide/high16 v4, 0x3ff0

    long-to-double v6, v0

    mul-double/2addr v4, v6

    const-wide v6, 0x40ed4c0000000000L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewHeartBeatReqMessage;->setNextHeartBeatToServer(B)V

    .line 333
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->send(Lcom/huawei/android/pushagent/datatype/IPushMessage;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v0           #curHeartBeatInterval:J
    .end local v3           #msg:Lcom/huawei/android/pushagent/datatype/pushmessage/NewHeartBeatReqMessage;
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v2

    .line 336
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call pushChannel.send cause Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setNextHeartBeatInterval(J)Z
    .locals 1
    .parameter "interval"

    .prologue
    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 59
    const-string v1, "="

    .line 60
    .local v1, sChar:Ljava/lang/String;
    const-string v0, " "

    .line 61
    .local v0, eChar:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "HasFindHeartBeat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->hasFindHeartBeat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "HearBeatInterval"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->heartBeatInterval:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "minHeartBeat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->minHeartBeat:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "maxHeartBeat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;->maxHeartBeat:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
