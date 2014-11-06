.class public abstract Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
.super Ljava/lang/Object;
.source "ConnectEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$1;,
        Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PushLog2510"


# instance fields
.field public channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

.field public conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

.field public context:Landroid/content/Context;

.field public heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

.field protected mWakeLockForThread:Landroid/os/PowerManager$WakeLock;

.field private pm:Landroid/os/PowerManager;

.field public socketThread:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;


# direct methods
.method public constructor <init>(Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;Landroid/content/Context;Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;Ljava/lang/String;)V
    .locals 1
    .parameter "method"
    .parameter "context"
    .parameter "heartBeat"
    .parameter "CfgFileName"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->mWakeLockForThread:Landroid/os/PowerManager$WakeLock;

    .line 38
    iput-object p2, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    .line 39
    iput-object p1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    .line 41
    iput-object p3, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    .line 42
    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->pm:Landroid/os/PowerManager;

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v1, :cond_0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v1}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->close()V

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->socketThread:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->socketThread:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->interrupt()V

    .line 149
    iput-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->socketThread:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;

    .line 152
    :cond_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call channel.close() cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public abstract connect(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/android/pushagent/datatype/PushException;
        }
    .end annotation
.end method

.method public abstract connect(ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/android/pushagent/datatype/PushException;
        }
    .end annotation
.end method

.method protected createSocketRoutine(II)Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;
    .locals 7
    .parameter "lastConnctIdx"
    .parameter "tryConnectTimes"

    .prologue
    const/16 v4, 0x1bb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;->values()[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->getConMethdIdx(II)I

    move-result v2

    aget-object v0, v1, v2

    .line 63
    .local v0, method:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;
    sget-object v1, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$1;->$SwitchMap$com$huawei$android$pushagent$model$channel$entity$ConnectEntity$CONNECT_METHOD:[I

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 73
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 65
    :pswitch_0
    new-instance v1, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v2, v2, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->ip:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget v3, v3, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->port:I

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v4, v4, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->conType:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;-><init>(Ljava/lang/String;IZLcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;)V

    goto :goto_0

    .line 67
    :pswitch_1
    new-instance v1, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v2, v2, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->ip:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v3, v3, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->conType:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;-><init>(Ljava/lang/String;IZLcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;)V

    goto :goto_0

    .line 69
    :pswitch_2
    new-instance v1, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v2, v2, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->ip:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v3, v3, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->conType:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    invoke-direct {v1, v2, v4, v6, v3}, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;-><init>(Ljava/lang/String;IZLcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;)V

    goto :goto_0

    .line 71
    :pswitch_3
    new-instance v1, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v2, v2, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->ip:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget v3, v3, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->port:I

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v4, v4, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->conType:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;-><init>(Ljava/lang/String;IZLcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getConMethdIdx(II)I
    .locals 2
    .parameter "lastConIdx"
    .parameter "tryConTimes"

    .prologue
    .line 78
    add-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;->values()[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity$CONNECT_METHOD;

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method public abstract getConnectEntityMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v0}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized getWakeLockForThread()V
    .locals 3

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->pm:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "mWakeLockForThread"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->mWakeLockForThread:Landroid/os/PowerManager$WakeLock;

    .line 85
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->mWakeLockForThread:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 86
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->mWakeLockForThread:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasConnection()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v0}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract initSocketConnectInfo()Z
.end method

.method public abstract notifyEvent(Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;Landroid/os/Bundle;)V
.end method

.method protected declared-synchronized releaseWakeLockForThread()V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->mWakeLockForThread:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->mWakeLockForThread:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->mWakeLockForThread:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized send(Lcom/huawei/android/pushagent/datatype/IPushMessage;)Z
    .locals 8
    .parameter "pushMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v3}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 99
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnectMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v3

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->getConnectEntityMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 100
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v3}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 107
    :goto_0
    const/4 v1, 0x0

    .line 108
    .local v1, sendData:[B
    if-eqz p1, :cond_2

    .line 109
    invoke-interface {p1}, Lcom/huawei/android/pushagent/datatype/IPushMessage;->encode()[B

    move-result-object v1

    .line 110
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read to Send:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_1
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_3

    .line 115
    :cond_0
    const-string v3, "PushLog2510"

    const-string v4, "when send PushMsg, encode Len is null"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v1           #sendData:[B
    :goto_2
    monitor-exit p0

    return v2

    .line 102
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v3}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getNextHeartBeatInterval(Z)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 112
    .restart local v1       #sendData:[B
    :cond_2
    :try_start_2
    const-string v3, "PushLog2510"

    const-string v4, "pushMsg = null, send fail"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_3
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read to Send:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/huawei/android/pushagent/utils/CommFun;->byte2HexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v3, v1}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->send([B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.android.push.intent.MSG_SENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "push_msg"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    .line 122
    const/4 v2, 0x1

    goto :goto_2

    .line 124
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    const-string v3, "PushLog2510"

    const-string v4, "call channel.send false!!"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 128
    .end local v1           #sendData:[B
    :cond_5
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "when send pushMsg, channel is null\uff0c curCls:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
