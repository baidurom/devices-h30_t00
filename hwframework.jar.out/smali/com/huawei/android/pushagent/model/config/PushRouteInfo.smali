.class public Lcom/huawei/android/pushagent/model/config/PushRouteInfo;
.super Lcom/huawei/android/pushagent/datatype/TRSRetInfo;
.source "PushRouteInfo.java"


# static fields
.field public static final PUSHSRV_VALID_TIME:Ljava/lang/String; = "pushSrvValidTime"

.field private static g_PushTRSCfg:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;


# instance fields
.field public connectTimes:I

.field public pushSrvNeedQueryTRS:Z

.field private queryTRSInterval:J

.field private trsQueryThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->g_PushTRSCfg:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->trsQueryThread:Ljava/lang/Thread;

    .line 26
    iput v2, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->connectTimes:I

    .line 28
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->queryTRSInterval:J

    .line 30
    iput-boolean v2, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->pushSrvNeedQueryTRS:Z

    .line 44
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->loadFromFile()Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/pushagent/model/config/PushRouteInfo;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/pushagent/model/config/PushRouteInfo;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/android/pushagent/model/config/PushRouteInfo;Lcom/huawei/android/pushagent/datatype/TRSRetInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->setTRSRetInfo(Lcom/huawei/android/pushagent/datatype/TRSRetInfo;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    const-class v1, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->g_PushTRSCfg:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    invoke-direct {v0, p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->g_PushTRSCfg:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    .line 39
    :cond_0
    sget-object v0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->g_PushTRSCfg:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized isTrsQueryThreadAlive()Z
    .locals 1

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->trsQueryThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->trsQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 229
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized queryTRSThread()Z
    .locals 8

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isTrsQueryThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "PushLog2510"

    const-string v1, " trsQuery thread already running, just wait!!"

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    const/4 v0, 0x0

    .line 222
    :goto_0
    monitor-exit p0

    return v0

    .line 186
    :cond_0
    :try_start_1
    new-instance v0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo$1;

    const-string v1, "PushTRSQuery"

    invoke-direct {v0, p0, v1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo$1;-><init>(Lcom/huawei/android/pushagent/model/config/PushRouteInfo;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->trsQueryThread:Ljava/lang/Thread;

    .line 211
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->trsQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 213
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    new-instance v1, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v2, "lastQueryTRSTime"

    const-class v3, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    .line 217
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    new-instance v1, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v2, "queryTrsTimes"

    const-class v3, Ljava/lang/Long;

    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    const-string v5, "queryTrsTimes"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setNeedQueryTRS(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 175
    sget-object v0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->g_PushTRSCfg:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->g_PushTRSCfg:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    const-string v1, "pushSrvValidTime"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->setValue(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->g_PushTRSCfg:Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->pushSrvNeedQueryTRS:Z

    .line 179
    :cond_0
    return-void
.end method

.method private setTRSRetInfo(Lcom/huawei/android/pushagent/datatype/TRSRetInfo;)Z
    .locals 12
    .parameter "retInfo"

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 117
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    :cond_0
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in PushSrvInfo:trsRetInfo, trsRetInfo is null or invalid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 167
    :goto_0
    return v3

    .line 123
    :cond_1
    const-string v3, "PushLog2510"

    const-string v6, "queryTrs success!"

    invoke-static {v3, v6}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isEqualHeartBeatRange(Lcom/huawei/android/pushagent/datatype/TRSRetInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 125
    const-string v3, "PushLog2510"

    const-string v6, "heart beat range change."

    invoke-static {v3, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.huawei.android.push.intent.HEARTBEAT_RANGE_CHANGE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    .line 130
    :cond_2
    iget-object v3, p1, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    const-string v6, "USE_SSL"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    iget-object v3, p1, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    const-string v6, "USE_SSL"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 132
    .local v2, useSSl:I
    const/4 v3, 0x0

    new-instance v6, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v7, "USE_SSL"

    const-class v8, Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    .line 137
    .end local v2           #useSSl:I
    :cond_3
    invoke-virtual {p1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getBelongId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isEqualBelongId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 138
    const-string v3, "PushLog2510"

    const-string v6, "belongId changed, need to reRegisterDeviceToken"

    invoke-static {v3, v6}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/android/pushagent/model/pushcommand/DeviceTokenMgr;->reRegisterDeviceToken(Landroid/content/Context;)V

    .line 142
    :cond_4
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 145
    const-string v3, "pushSrvValidTime"

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getTRSValidmax()J

    move-result-wide v6

    mul-long/2addr v6, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->setValue(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 148
    iput v5, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->connectTimes:I

    .line 149
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getConnTrsItval()J

    move-result-wide v6

    mul-long/2addr v6, v10

    iput-wide v6, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->queryTRSInterval:J

    .line 150
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    new-instance v6, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v7, "queryTrsTimes"

    const-class v8, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    .line 153
    const-string v3, "PushLog2510"

    const-string v6, "write the lastQueryTRSsucc_time to the pushConfig.xml file "

    invoke-static {v3, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 156
    .local v0, lastQueryTRSsucc_time:J
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    new-instance v6, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v7, "lastQueryTRSsucc_time"

    const-class v8, Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v3, v6}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    .line 159
    iput-boolean v5, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->pushSrvNeedQueryTRS:Z

    .line 162
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->saveToFile()Z

    .line 164
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->notifyConnectResult(Z)V

    .line 165
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.huawei.android.push.intent.TRS_QUERY_SUCCESS"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "trs_result"

    invoke-virtual {p1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    move v3, v4

    .line 167
    goto/16 :goto_0
.end method


# virtual methods
.method public getConnectPushSrvInterval()J
    .locals 10

    .prologue
    const/4 v8, 0x1

    const-wide/16 v2, 0x3e8

    .line 50
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getServerRec4Min()J

    move-result-wide v0

    .line 51
    .local v0, interval:J
    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    const-string v5, "cloudpush_isNoDelayConnect"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    :goto_0
    return-wide v2

    .line 56
    :cond_0
    iget v4, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->connectTimes:I

    int-to-long v4, v4

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getSrvMaxFailTimes()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 57
    iput-boolean v8, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->pushSrvNeedQueryTRS:Z

    .line 58
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getServiceRec5Min()J

    move-result-wide v4

    mul-long v0, v4, v2

    move-wide v2, v0

    .line 59
    goto :goto_0

    .line 61
    :cond_1
    iget v4, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->connectTimes:I

    packed-switch v4, :pswitch_data_0

    .line 77
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getServerRec4Min()J

    move-result-wide v4

    mul-long v0, v2, v4

    .line 78
    iput-boolean v8, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->pushSrvNeedQueryTRS:Z

    .line 81
    :goto_1
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after getConnectPushSrvInterval:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms, connectTimes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->connectTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 83
    goto :goto_0

    .line 63
    :pswitch_0
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getServerRec1Min()J

    move-result-wide v4

    mul-long v0, v4, v2

    .line 64
    goto :goto_1

    .line 66
    :pswitch_1
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getServerRec2Min()J

    move-result-wide v4

    mul-long v0, v4, v2

    .line 67
    goto :goto_1

    .line 69
    :pswitch_2
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getServerRec3Min()J

    move-result-wide v4

    mul-long v0, v4, v2

    .line 70
    goto :goto_1

    .line 72
    :pswitch_3
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getServerRec2Min()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getServerRec3Min()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getServerRec2Min()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-double v6, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-long v4, v4

    mul-long v0, v2, v4

    .line 74
    goto :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPollingSrvAddr(Z)Ljava/net/InetSocketAddress;
    .locals 4
    .parameter "isForceToConnTRS"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->queryTRSInfo(Z)Z

    move-result v0

    .line 100
    .local v0, isNeedQueryTrs:Z
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isValidPolling()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    const-string v1, "PushLog2510"

    const-string v2, "in getPollingAddr, have no invalid addr"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x0

    .line 105
    :goto_0
    return-object v1

    .line 104
    :cond_1
    const-string v1, "PushLog2510"

    const-string v2, "return valid PollingSrvAddr"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPollingIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPollingPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getPushSrvAddr(Z)Ljava/net/InetSocketAddress;
    .locals 4
    .parameter "isForceToConnTRS"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->queryTRSInfo(Z)Z

    move-result v0

    .line 89
    .local v0, isNeedQueryTrs:Z
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    const-string v1, "PushLog2510"

    const-string v2, "in getPushSrvAddr, have no invalid addr"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v1, 0x0

    .line 94
    :goto_0
    return-object v1

    .line 93
    :cond_1
    const-string v1, "PushLog2510"

    const-string v2, "return valid PushSrvAddr"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getServerIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getServerPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getPushSrvValidTime()J
    .locals 3

    .prologue
    .line 171
    const-string v0, "pushSrvValidTime"

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public notifyConnectResult(Z)V
    .locals 1
    .parameter "isSuccess"

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->connectTimes:I

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget v0, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->connectTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->connectTimes:I

    goto :goto_0
.end method

.method public queryTRSInfo(Z)Z
    .locals 10
    .parameter "isForceToConnTRS"

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isTrsQueryThreadAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    const-string v4, "PushLog2510"

    const-string v5, "trsQuery thread is running"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v4, 0x1

    .line 304
    :goto_0
    return v4

    .line 239
    :cond_0
    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    const-string v5, "lastQueryTRSTime"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 242
    .local v0, lastQueryTRSTime:J
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isvalid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isValid()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " srvValidBefore:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pushSrvValidTime"

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {p0, v6, v7, v8}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pushSrvNeedQueryTRS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->pushSrvNeedQueryTRS:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    iget-boolean v4, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->pushSrvNeedQueryTRS:Z

    if-nez v4, :cond_1

    const-string v4, "pushSrvValidTime"

    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {p0, v4, v5, v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 248
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " need not query TRS, info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 252
    :cond_1
    iget-boolean v4, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->pushSrvNeedQueryTRS:Z

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getTRSValidmin()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 255
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " cannot query TRS in trsValid_min, pushSrvNeedQueryTRS, info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 260
    :cond_2
    const/4 v4, -0x1

    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 262
    const-string v4, "PushLog2510"

    const-string v5, "in queryTRSInfo no network"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 265
    :cond_3
    if-nez p1, :cond_7

    .line 267
    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    const-string v5, "lastQueryTRSsucc_time"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 269
    .local v2, lastQueryTRSsucc_time:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getTRSValidmin()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 270
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not contect TRS Service when  the connect more than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getTRSValidmin()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sec last contected success time,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lastQueryTRSsucc_time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 282
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iget-wide v6, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->queryTRSInterval:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 283
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t connect TRS Service when the connectting time more later "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->queryTRSInterval:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sec than  last contectting time,lastQueryTRSTime ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 293
    :cond_5
    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    const-string v5, "queryTrsTimes"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getMaxQTRSTimes()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 295
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getConnTrsErrItval()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->queryTRSInterval:J

    .line 300
    .end local v2           #lastQueryTRSsucc_time:J
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    const-string v5, "cloudpush_isNoDelayConnect"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/huawei/android/pushagent/datatype/Config;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->canQueryTRS(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 302
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 298
    :cond_7
    const-string v4, "PushLog2510"

    const-string v5, "Force to Connect TRS"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_8
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->queryTRSThread()Z

    move-result v4

    goto/16 :goto_0
.end method
