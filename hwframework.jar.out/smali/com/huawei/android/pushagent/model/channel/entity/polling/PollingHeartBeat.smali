.class public Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;
.super Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;
.source "PollingHeartBeat.java"


# instance fields
.field nextHeartBeatInterval:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;-><init>(Landroid/content/Context;)V

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;->nextHeartBeatInterval:J

    .line 19
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;->loadHeartBeat()Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    .line 20
    return-void
.end method


# virtual methods
.method public ajustHearBeatInterval(Z)V
    .locals 0
    .parameter "receivedRspTimeOut"

    .prologue
    .line 66
    return-void
.end method

.method public getCfgFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "Push_PollingHBeat"

    return-object v0
.end method

.method public getNextHeartBeatInterval(Z)J
    .locals 10
    .parameter "receivedRspTimeOut"

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    .line 33
    const/4 v4, -0x1

    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 34
    const-wide/32 v2, 0x1b7740

    .line 62
    :cond_0
    :goto_0
    return-wide v2

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;->isEnvChange()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;->loadHeartBeat()Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    .line 39
    :cond_2
    iget-wide v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;->nextHeartBeatInterval:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 40
    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;->nextHeartBeatInterval:J

    goto :goto_0

    .line 42
    :cond_3
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPollingInterval()J

    move-result-wide v4

    mul-long v2, v8, v4

    .line 43
    .local v2, nextPollingInterval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    .local v0, curTime:J
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;->getLastHeartBeatTime()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-ltz v4, :cond_4

    .line 46
    invoke-virtual {p0, v6, v7}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;->setLastHeartBeatTime(J)V

    .line 50
    :cond_4
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;->getLastHeartBeatTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPollingInterval()J

    move-result-wide v6

    mul-long/2addr v6, v8

    sub-long v6, v0, v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    .line 52
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPollingInterval()J

    move-result-wide v4

    mul-long v2, v8, v4

    goto :goto_0

    .line 56
    :cond_5
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;->getLastHeartBeatTime()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;->getLastHeartBeatTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPollingInterval()J

    move-result-wide v6

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;->getLastHeartBeatTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPollingInterval()J

    move-result-wide v6

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    sub-long v2, v4, v0

    goto :goto_0
.end method

.method protected isEnvChange()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public loadHeartBeat()Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;
    .locals 4

    .prologue
    .line 70
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;->getCfgFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "lastHeartBeatTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->lastHeartBeatTime:J

    .line 77
    return-object p0
.end method

.method public sendHearBeat()V
    .locals 3

    .prologue
    .line 84
    :try_start_0
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPollingChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->connect(Z)V
    :try_end_0
    .catch Lcom/huawei/android/pushagent/datatype/PushException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Lcom/huawei/android/pushagent/datatype/PushException;
    const-string v1, "PushLog2510"

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/datatype/PushException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setNextHeartBeatInterval(J)Z
    .locals 1
    .parameter "interval"

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;->nextHeartBeatInterval:J

    .line 103
    const/4 v0, 0x1

    return v0
.end method
