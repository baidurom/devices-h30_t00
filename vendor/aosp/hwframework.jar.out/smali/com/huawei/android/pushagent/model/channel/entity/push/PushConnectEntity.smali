.class public Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;
.super Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
.source "PushConnectEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity$1;
    }
.end annotation


# static fields
.field public static final BETWEEN_TWO_CONTECT_TIME:I = 0x493e0

.field public static final MAX_3G_TRY_CONNECT_INTERVAL:I = 0x6ddd00

.field public static final MAX_3G_TRY_CONNECT_TIMES:I = 0x6


# instance fields
.field hasRegistFlag:Z


# direct methods
.method public constructor <init>(Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;Landroid/content/Context;)V
    .locals 2
    .parameter "method"
    .parameter "context"

    .prologue
    .line 36
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;

    invoke-direct {v0, p2}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushHeartBeat;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;-><init>(Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;Landroid/content/Context;Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;->hasRegistFlag:Z

    .line 38
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;->initSocketConnectInfo()Z

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized connect(Z)V
    .locals 1
    .parameter "isForceToConnPushSrv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/android/pushagent/datatype/PushException;
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;->connect(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(ZZ)V
    .locals 15
    .parameter "isForceToConnPushSrv"
    .parameter "hasMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/android/pushagent/datatype/PushException;
        }
    .end annotation

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enter PushConnectEntity:connect(isForceToConnPushSrv:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v9}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->updateHeartBeatReq()V

    .line 61
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_1

    .line 187
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 66
    const-string v9, "PushLog2510"

    const-string v10, "no network, so cannot connect"

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v9, Lcom/huawei/android/pushagent/datatype/PushException;

    invoke-direct {v9, v1}, Lcom/huawei/android/pushagent/datatype/PushException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 69
    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    const-string v10, "cloudpush_isNoDelayConnect"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 70
    const/16 p1, 0x1

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;->hasConnection()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 73
    if-eqz p1, :cond_4

    .line 74
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasConnect, but isForceToConnPushSrv:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", so send heartBeat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v9}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->sendHearBeat()V

    goto :goto_0

    .line 78
    :cond_4
    const-string v9, "PushLog2510"

    const-string v10, "aready connect, need not connect more"

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_5
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    const-string v10, "tryConnectPushSevTimes"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 87
    .local v8, tryConnectPushSevTimes:I
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    const-string v10, "lastConnectPushSevTime"

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    .line 90
    .local v3, lastConnectPushSevTime:J
    if-nez p1, :cond_8

    .line 91
    const/4 v9, 0x6

    if-le v8, v9, :cond_7

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    const-wide/32 v11, 0x6ddd00

    cmp-long v9, v9, v11

    if-gez v9, :cond_6

    .line 93
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.huawei.action.CONNECT_PUSHSRV"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/32 v11, 0x6ddd00

    add-long/2addr v11, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->setDelayAlarm(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 99
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "can\'t connect Push Service when the connect more than 6 times in 7200 sec, lastConnectPushSevTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_6
    const/4 v8, 0x0

    .line 109
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    new-instance v10, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v11, "tryConnectPushSevTimes"

    const-class v12, Ljava/lang/Integer;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    .line 115
    :cond_7
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    const-string v10, "lastcontectsucc_time"

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v5

    .line 118
    .local v5, last_connected_time:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    iget-object v11, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getConnSuccItval()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    cmp-long v9, v9, v11

    if-gez v9, :cond_9

    .line 120
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.huawei.action.CONNECT_PUSHSRV"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getConnSuccItval()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    add-long/2addr v11, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->setDelayAlarm(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 125
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "can\'t connect Push Service when the connectting time more later "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getConnSuccItval()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "sec than last_connected_time,last_connected_time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    .end local v5           #last_connected_time:J
    :cond_8
    const-string v9, "PushLog2510"

    const-string v10, "Force to Connect PushSErver"

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_9
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->socketThread:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->socketThread:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;

    invoke-virtual {v9}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->isAlive()Z

    move-result v9

    if-nez v9, :cond_d

    .line 139
    :cond_a
    const-string v9, "PushLog2510"

    const-string v10, "begin to create new socket, so close socket"

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;->getWakeLockForThread()V

    .line 141
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;->close()V

    .line 142
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IS_NODELAY_CONNECT:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    const-string v12, "cloudpush_isNoDelayConnect"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " hasMsg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    const-string v10, "cloudpush_isNoDelayConnect"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_b

    .line 148
    if-nez p2, :cond_b

    .line 150
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->canConnectPushSrv(Landroid/content/Context;I)Z

    move-result v9

    if-nez v9, :cond_b

    .line 151
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v9

    sget-object v10, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Polling:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v9, v10}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->setCurConnectType(Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;)V

    .line 152
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v9

    sget-object v10, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Polling:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->connect(Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;Z)V

    goto/16 :goto_0

    .line 157
    :cond_b
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;->hasRegistFlag:Z

    .line 158
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    const-string v10, "lastConnectPushSrvMethodIdx"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 162
    .local v2, lastConnctIdx:I
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPushSrvAddr(Z)Ljava/net/InetSocketAddress;

    move-result-object v7

    .line 164
    .local v7, srvAddr:Ljava/net/InetSocketAddress;
    if-eqz v7, :cond_c

    .line 166
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get pushSrvAddr:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->ip:Ljava/lang/String;

    .line 168
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    iput v10, v9, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->port:I

    .line 169
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v10, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getChannelType(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    move-result-object v10

    iput-object v10, v9, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->conType:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    .line 174
    invoke-virtual {p0, v2, v8}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;->createSocketRoutine(II)Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    .line 175
    new-instance v9, Lcom/huawei/android/pushagent/model/channel/entity/push/PushSocketReadThread;

    invoke-direct {v9, p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushSocketReadThread;-><init>(Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;)V

    iput-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->socketThread:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;

    .line 176
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->socketThread:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;

    invoke-virtual {v9}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->start()V

    .line 178
    if-nez v8, :cond_0

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 180
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    new-instance v10, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v11, "lastConnectPushSevTime"

    const-class v12, Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    goto/16 :goto_0

    .line 171
    :cond_c
    const-string v9, "PushLog2510"

    const-string v10, "no valid pushSrvAddr, just wait!!"

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .end local v2           #lastConnctIdx:I
    .end local v7           #srvAddr:Ljava/net/InetSocketAddress;
    :cond_d
    const-string v9, "PushLog2510"

    const-string v10, "It is in connecting..."

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public getConnectEntityMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    return-object v0
.end method

.method public initSocketConnectInfo()Z
    .locals 5

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    const-string v1, ""

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getChannelType(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;-><init>(Ljava/lang/String;IZLcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;)V

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    .line 45
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public notifyEvent(Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;Landroid/os/Bundle;)V
    .locals 15
    .parameter "event"
    .parameter "bd"

    .prologue
    .line 195
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    const-string v10, "tryConnectPushSevTimes"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 198
    .local v8, tryConnectPushSevTimes:I
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    const-string v10, "lastConnectPushSrvMethodIdx"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 202
    .local v4, lastConnctIdx:I
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enter PushConnectEntity:notifyEvent("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", bd:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tryConnectPushSevTimes:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " lastConnctIdx:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v9, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity$1;->$SwitchMap$com$huawei$android$pushagent$model$channel$entity$SocketReadThread$SocketEvent:[I

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 208
    :pswitch_0
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.huawei.android.push.intent.CONNECTING"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v9}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->delayHeartBeatReq()V

    .line 213
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->setLastHeartBeatTime(J)V

    .line 214
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->notifyConnectResult(Z)V

    .line 216
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    new-instance v10, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v11, "lastcontectsucc_time"

    const-class v12, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    .line 220
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.huawei.android.push.intent.CONNECTED"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, in:Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 222
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 224
    :cond_1
    invoke-static {v1}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 227
    .end local v1           #in:Landroid/content/Intent;
    :pswitch_2
    const-string v9, "connect_mode"

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;->getConnectEntityMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.huawei.android.push.intent.CHANNEL_CLOSED"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 230
    .local v3, intent_close:Landroid/content/Intent;
    invoke-static {v3}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    .line 232
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnectMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v9

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;->getConnectEntityMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v10

    if-ne v9, v10, :cond_2

    .line 233
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getConnectPushSrvInterval()J

    move-result-wide v6

    .line 236
    .local v6, nextStartTime:J
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.huawei.action.CONNECT_PUSHSRV"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "connect_times"

    iget-object v12, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v12

    iget v12, v12, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->connectTimes:I

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    iget-object v11, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-static {v9, v10, v6, v7}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->setDelayAlarm(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 242
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->notifyConnectResult(Z)V

    .line 244
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    const-string v10, "com.huawei.android.push.intent.HEARTBEAT_RSP_TIMEOUT"

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->cancelAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    .end local v6           #nextStartTime:J
    :cond_2
    iget-boolean v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;->hasRegistFlag:Z

    if-nez v9, :cond_0

    .line 248
    add-int/lit8 v8, v8, 0x1

    .line 249
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "channel is not Regist, tryConnectPushSevTimes add to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    new-instance v10, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v11, "tryConnectPushSevTimes"

    const-class v12, Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    .line 255
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    new-instance v10, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v11, "lastConnectPushSrvMethodIdx"

    const-class v12, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    goto/16 :goto_0

    .line 264
    .end local v3           #intent_close:Landroid/content/Intent;
    :pswitch_3
    const-string v9, "push_msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/pushagent/datatype/IPushMessage;

    .line 265
    .local v5, msg:Lcom/huawei/android/pushagent/datatype/IPushMessage;
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "received pushSrv Msg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-interface {v5}, Lcom/huawei/android/pushagent/datatype/IPushMessage;->getCmdID()B

    move-result v9

    const/16 v10, -0x2d

    if-eq v9, v10, :cond_3

    invoke-interface {v5}, Lcom/huawei/android/pushagent/datatype/IPushMessage;->getCmdID()B

    move-result v9

    const/16 v10, -0x21

    if-ne v9, v10, :cond_5

    .line 268
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;->hasRegistFlag:Z

    .line 269
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    new-instance v10, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v11, "lastConnectPushSrvMethodIdx"

    const-class v12, Ljava/lang/Integer;

    invoke-virtual {p0, v8, v4}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;->getConMethdIdx(II)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    .line 274
    const/4 v8, 0x0

    .line 275
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    new-instance v10, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v11, "tryConnectPushSevTimes"

    const-class v12, Ljava/lang/Integer;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    .line 285
    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v9}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->delayHeartBeatReq()V

    .line 286
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.huawei.android.push.intent.MSG_RECEIVED"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "push_msg"

    invoke-virtual {v2, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 289
    const-string v9, "PushLog2510"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SocketEvent_MSG_RECEIVED"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",msg is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {v2}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 280
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    instance-of v9, v5, Lcom/huawei/android/pushagent/datatype/pushmessage/HeartBeatRspMessage;

    if-nez v9, :cond_6

    instance-of v9, v5, Lcom/huawei/android/pushagent/datatype/pushmessage/NewHeartBeatRspMessage;

    if-eqz v9, :cond_4

    .line 282
    :cond_6
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    const-string v10, "com.huawei.android.push.intent.HEARTBEAT_RSP_TIMEOUT"

    invoke-static {v9, v10}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->cancelAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->ajustHearBeatInterval(Z)V

    goto :goto_1

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
