.class public Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingConnectEntity;
.super Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
.source "PollingConnectEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingConnectEntity$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;Landroid/content/Context;)V
    .locals 2
    .parameter "method"
    .parameter "context"

    .prologue
    .line 29
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;

    invoke-direct {v0, p2}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingHeartBeat;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingConnectEntity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;-><init>(Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;Landroid/content/Context;Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingConnectEntity;->initSocketConnectInfo()Z

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized connect(Z)V
    .locals 7
    .parameter "forceCon"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/android/pushagent/datatype/PushException;
        }
    .end annotation

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter PollingConnectEntity:connect(forceCon:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->updateHeartBeatReq()V

    .line 51
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isValidPolling()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 113
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingConnectEntity;->hasConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const-string v1, "PushLog2510"

    const-string v2, "Polling aready connect, just wait Rsp!"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 69
    :cond_1
    if-nez p1, :cond_2

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v3}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getLastHeartBeatTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getNextHeartBeatInterval(Z)J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 72
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot connect, heartBeatInterval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getNextHeartBeatInterval(Z)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastCntTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getLastHeartBeatTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 78
    const-string v1, "PushLog2510"

    const-string v2, "no network, so cannot connect Polling"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->socketThread:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->socketThread:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 88
    :cond_4
    const-string v1, "PushLog2510"

    const-string v2, "begin to create new socket, so close socket"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingConnectEntity;->getWakeLockForThread()V

    .line 90
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingConnectEntity;->close()V

    .line 95
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPollingSrvAddr(Z)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 97
    .local v0, srvAddr:Ljava/net/InetSocketAddress;
    if-eqz v0, :cond_5

    .line 98
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get pollingSrvAddr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->ip:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, v1, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->port:I

    .line 105
    new-instance v1, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingSocketReadThread;

    invoke-direct {v1, p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingSocketReadThread;-><init>(Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;)V

    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->socketThread:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;

    .line 106
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->socketThread:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->start()V

    goto/16 :goto_0

    .line 102
    :cond_5
    const-string v1, "PushLog2510"

    const-string v2, "no valid pollingSrvAddr, just wait!!"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    .end local v0           #srvAddr:Ljava/net/InetSocketAddress;
    :cond_6
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aready in connect, just wait!! srvSocket:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->socketThread:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;

    invoke-virtual {v3}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized connect(ZZ)V
    .locals 1
    .parameter "forceCon"
    .parameter "hasMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/android/pushagent/datatype/PushException;
        }
    .end annotation

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingConnectEntity;->connect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnectEntityMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Polling:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    return-object v0
.end method

.method public initSocketConnectInfo()Z
    .locals 5

    .prologue
    .line 36
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    const-string v1, ""

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->ChannelType_Normal:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;-><init>(Ljava/lang/String;IZLcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;)V

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    .line 40
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public notifyEvent(Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;Landroid/os/Bundle;)V
    .locals 9
    .parameter "event"
    .parameter "bd"

    .prologue
    .line 118
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter PollingConnectEntity:notifyEvent("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",bd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v4, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingConnectEntity$1;->$SwitchMap$com$huawei$android$pushagent$model$channel$entity$SocketReadThread$SocketEvent:[I

    invoke-virtual {p1}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->delayHeartBeatReq()V

    .line 124
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->setLastHeartBeatTime(J)V

    .line 126
    :try_start_0
    new-instance v4, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;

    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPollingId()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingConnectEntity;->send(Lcom/huawei/android/pushagent/datatype/IPushMessage;)Z

    .line 128
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v4}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getSocketReadTimeOut()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call send cause:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_1
    const-string v4, "push_msg"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/pushagent/datatype/IPushMessage;

    .line 138
    .local v3, msg:Lcom/huawei/android/pushagent/datatype/IPushMessage;
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received polling Msg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    instance-of v4, v3, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 140
    check-cast v0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;

    .line 141
    .local v0, dataRspMsg:Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;
    invoke-virtual {v0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->getMode()B

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->getMode()B

    move-result v4

    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->values()[Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v5

    array-length v5, v5

    if-le v4, v5, :cond_2

    .line 142
    :cond_1
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->getMode()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot be recongnized"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_2
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->values()[Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v4

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->getMode()B

    move-result v5

    aget-object v2, v4, v5

    .line 148
    .local v2, en:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->setCurConnectType(Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;)V

    .line 149
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->getPollingInterval()S

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->setNextHeartBeatInterval(J)Z

    .line 151
    invoke-virtual {v0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->hasMsg()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    if-ne v2, v4, :cond_4

    .line 153
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->hasMsg()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->connect(ZZ)V
    :try_end_1
    .catch Lcom/huawei/android/pushagent/datatype/PushException; {:try_start_1 .. :try_end_1} :catch_2

    .line 159
    :cond_4
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v4}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 160
    :catch_1
    move-exception v1

    .line 161
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call channel close cause:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 154
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 155
    .local v1, e:Lcom/huawei/android/pushagent/datatype/PushException;
    const-string v4, "PushLog2510"

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/datatype/PushException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
