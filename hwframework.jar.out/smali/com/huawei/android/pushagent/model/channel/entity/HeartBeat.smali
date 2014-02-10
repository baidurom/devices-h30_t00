.class public abstract Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;
.super Ljava/lang/Object;
.source "HeartBeat.java"


# static fields
.field public static final LAST_HeartBeat_TIME:Ljava/lang/String; = "lastHeartBeatTime"

.field public static final TAG:Ljava/lang/String; = "PushLog2510"


# instance fields
.field public batteryStatus:I

.field public context:Landroid/content/Context;

.field public isHearBeatTimeReq:Z

.field public lastHeartBeatTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->lastHeartBeatTime:J

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->isHearBeatTimeReq:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->batteryStatus:I

    .line 30
    iput-object p1, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract ajustHearBeatInterval(Z)V
.end method

.method public delayHeartBeatReq()V
    .locals 6

    .prologue
    .line 41
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurHeartBeat(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 42
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getNextHeartBeatInterval(Z)J

    move-result-wide v0

    .line 43
    .local v0, heartBeatInterval:J
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after delayHeartBeatReq, nextHeartBeatTime, will be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms later"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.huawei.intent.action.PUSH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "EXTRA_INTENT_TYPE"

    const-string v5, "com.huawei.android.push.intent.HEARTBEAT_REQ"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "heartbeat_interval"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->setAlarmLoops(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 52
    .end local v0           #heartBeatInterval:J
    :cond_0
    return-void
.end method

.method public getCfgFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastHeartBeatTime()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->lastHeartBeatTime:J

    return-wide v0
.end method

.method public abstract getNextHeartBeatInterval(Z)J
.end method

.method public getNextHeartBeatTime()J
    .locals 6

    .prologue
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    .local v0, curTime:J
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getNextHeartBeatInterval(Z)J

    move-result-wide v2

    .line 97
    .local v2, nextHeartBeatInt:J
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getLastHeartBeatTime()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getLastHeartBeatTime()J

    move-result-wide v4

    add-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-gtz v4, :cond_1

    .line 99
    :cond_0
    add-long v4, v0, v2

    .line 102
    :goto_0
    return-wide v4

    :cond_1
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getLastHeartBeatTime()J

    move-result-wide v4

    add-long/2addr v4, v2

    goto :goto_0
.end method

.method protected abstract isEnvChange()Z
.end method

.method public abstract loadHeartBeat()Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;
.end method

.method public abstract sendHearBeat()V
.end method

.method public setBatteryStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 74
    iput p1, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->batteryStatus:I

    .line 75
    return-void
.end method

.method public setIsHearBeatTimeReq(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->isHearBeatTimeReq:Z

    .line 35
    return-void
.end method

.method public setLastHeartBeatTime(J)V
    .locals 4
    .parameter "lastConnectTime"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->lastHeartBeatTime:J

    .line 83
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getCfgFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lastHeartBeatTime"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    return-void
.end method

.method public abstract setNextHeartBeatInterval(J)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "lastHeartBeatTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->lastHeartBeatTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " heartBeatInterval"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getNextHeartBeatInterval(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateHeartBeatReq()V
    .locals 6

    .prologue
    .line 57
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurHeartBeat(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getNextHeartBeatTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 59
    .local v0, nextHeartBeatInterval:J
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after updateHeartBeatReq, nextHeartBeatTime, will be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms later"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.huawei.intent.action.PUSH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "EXTRA_INTENT_TYPE"

    const-string v5, "com.huawei.android.push.intent.HEARTBEAT_REQ"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "heartbeat_interval"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->setAlarmLoops(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 69
    .end local v0           #nextHeartBeatInterval:J
    :cond_0
    return-void
.end method
