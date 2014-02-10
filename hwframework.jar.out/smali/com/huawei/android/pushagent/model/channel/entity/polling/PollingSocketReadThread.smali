.class public Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingSocketReadThread;
.super Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;
.source "PollingSocketReadThread.java"


# direct methods
.method public constructor <init>(Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;)V
    .locals 0
    .parameter "conEntity"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;-><init>(Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected getChannelType()I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Polling:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v0

    return v0
.end method

.method protected readSocket()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 32
    :try_start_0
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v5, v5, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v5, v5, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v5}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v5

    if-nez v5, :cond_2

    .line 33
    :cond_0
    const-string v5, "PushLog2510"

    const-string v6, "no socket when in readSSLSocket"

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v5, v5, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v5, :cond_1

    .line 68
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v5, v5, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v5}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->close()V

    .line 69
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iput-object v8, v5, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v5, v5, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v5}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v4

    .line 37
    .local v4, socket:Ljava/net/Socket;
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "socket timeout is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/Socket;->getSoTimeout()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v5, v5, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v5}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 39
    .local v1, dis:Ljava/io/InputStream;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingSocketReadThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v5, v5, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v5}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->hasConnection()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    if-eqz v5, :cond_4

    .line 41
    const/4 v3, 0x0

    .line 42
    .local v3, msg:Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
    if-eqz v1, :cond_5

    .line 43
    :try_start_2
    invoke-static {v1}, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;->decodeMessge(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;

    move-result-object v3

    .line 48
    :goto_2
    if-eqz v3, :cond_3

    .line 49
    invoke-static {}, Lcom/huawei/android/pushagent/utils/CommFun;->powerLow()V

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, bd:Landroid/os/Bundle;
    const-string v5, "push_msg"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 52
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    sget-object v6, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->SocketEvent_MSG_RECEIVED:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    invoke-virtual {v5, v6, v0}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->notifyEvent(Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 56
    .end local v0           #bd:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 57
    .local v2, e:Ljava/net/SocketException;
    :try_start_3
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SocketException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 67
    .end local v2           #e:Ljava/net/SocketException;
    .end local v3           #msg:Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
    :cond_4
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v5, v5, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v5, :cond_1

    .line 68
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v5, v5, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v5}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->close()V

    .line 69
    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iput-object v8, v5, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    goto/16 :goto_0

    .line 45
    .restart local v3       #msg:Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
    :cond_5
    :try_start_4
    const-string v5, "PushLog2510"

    const-string v6, "InputStream is null, get pollingMessage failed"

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 59
    :catch_1
    move-exception v2

    .line 60
    .local v2, e:Ljava/lang/Exception;
    :try_start_5
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call getEntityByCmdId cause:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 64
    .end local v1           #dis:Ljava/io/InputStream;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #msg:Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
    .end local v4           #socket:Ljava/net/Socket;
    :catch_2
    move-exception v2

    .line 65
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_6
    new-instance v5, Lcom/huawei/android/pushagent/datatype/PushException;

    sget-object v6, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_Read:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    invoke-direct {v5, v2, v6}, Lcom/huawei/android/pushagent/datatype/PushException;-><init>(Ljava/lang/Throwable;Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 67
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v6, v6, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v6, :cond_6

    .line 68
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v6, v6, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v6}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->close()V

    .line 69
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iput-object v8, v6, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    :cond_6
    throw v5
.end method
