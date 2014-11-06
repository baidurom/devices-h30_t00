.class public Lcom/huawei/android/pushagent/model/channel/entity/push/PushSocketReadThread;
.super Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;
.source "PushSocketReadThread.java"


# direct methods
.method public constructor <init>(Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;)V
    .locals 0
    .parameter "conEntity"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;-><init>(Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected getChannelType()I
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v0

    return v0
.end method

.method protected readSocket()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, -0x1

    const-wide/16 v14, 0x2710

    .line 35
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v10}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v10

    if-nez v10, :cond_2

    .line 36
    :cond_0
    const-string v10, "PushLog2510"

    const-string v11, "no socket when in readSSLSocket"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v10, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v10}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->close()V

    :cond_1
    return-void

    .line 39
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v10}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v9

    .line 40
    .local v9, socket:Ljava/net/Socket;
    if-eqz v9, :cond_3

    .line 41
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "socket timeout is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/net/Socket;->getSoTimeout()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_3
    const/4 v3, -0x1

    .line 45
    .local v3, cmdId:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v10}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 46
    .local v4, dis:Ljava/io/InputStream;
    const/4 v6, -0x1

    .line 47
    .local v6, hasReadCMDIdByOldMsg:I
    :cond_4
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushSocketReadThread;->isInterrupted()Z

    move-result v10

    if-nez v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v10}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->hasConnection()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 52
    if-eq v6, v13, :cond_7

    .line 53
    move v3, v6

    .line 54
    const/4 v6, -0x1

    .line 63
    :goto_1
    if-ne v13, v3, :cond_a

    .line 64
    const-string v10, "PushLog2510"

    const-string v11, "read -1 data, socket may be close"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 134
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v10, :cond_6

    .line 135
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v10}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->close()V

    .line 139
    :cond_6
    new-instance v10, Lcom/huawei/android/pushagent/datatype/PushException;

    const-string v11, " read normal Exit"

    sget-object v12, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_Read:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    invoke-direct {v10, v11, v12}, Lcom/huawei/android/pushagent/datatype/PushException;-><init>(Ljava/lang/String;Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;)V

    throw v10

    .line 56
    :cond_7
    if-eqz v4, :cond_9

    .line 57
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 58
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->mContext:Landroid/content/Context;

    const-wide/16 v11, 0x1388

    invoke-static {v10, v11, v12}, Lcom/huawei/android/pushagent/utils/CommFun;->wakeSystem(Landroid/content/Context;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 127
    .end local v3           #cmdId:I
    .end local v4           #dis:Ljava/io/InputStream;
    .end local v6           #hasReadCMDIdByOldMsg:I
    .end local v9           #socket:Ljava/net/Socket;
    :catch_0
    move-exception v5

    .line 128
    .local v5, e:Ljava/net/SocketException;
    :try_start_3
    new-instance v10, Lcom/huawei/android/pushagent/datatype/PushException;

    sget-object v11, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_Read:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    invoke-direct {v10, v5, v11}, Lcom/huawei/android/pushagent/datatype/PushException;-><init>(Ljava/lang/Throwable;Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    .end local v5           #e:Ljava/net/SocketException;
    :catchall_0
    move-exception v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v11, v11, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v11, :cond_8

    .line 135
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v11, v11, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v11}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->close()V

    :cond_8
    throw v10

    .line 60
    .restart local v3       #cmdId:I
    .restart local v4       #dis:Ljava/io/InputStream;
    .restart local v6       #hasReadCMDIdByOldMsg:I
    .restart local v9       #socket:Ljava/net/Socket;
    :cond_9
    :try_start_4
    const-string v10, "PushLog2510"

    const-string v11, "inputstream is null, cannot get cmdId"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 129
    .end local v3           #cmdId:I
    .end local v4           #dis:Ljava/io/InputStream;
    .end local v6           #hasReadCMDIdByOldMsg:I
    .end local v9           #socket:Ljava/net/Socket;
    :catch_1
    move-exception v5

    .line 130
    .local v5, e:Ljava/io/IOException;
    :try_start_5
    new-instance v10, Lcom/huawei/android/pushagent/datatype/PushException;

    sget-object v11, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_Read:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    invoke-direct {v10, v5, v11}, Lcom/huawei/android/pushagent/datatype/PushException;-><init>(Ljava/lang/Throwable;Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;)V

    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 68
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #cmdId:I
    .restart local v4       #dis:Ljava/io/InputStream;
    .restart local v6       #hasReadCMDIdByOldMsg:I
    .restart local v9       #socket:Ljava/net/Socket;
    :cond_a
    const/4 v10, 0x1

    :try_start_6
    new-array v10, v10, [B

    const/4 v11, 0x0

    int-to-byte v12, v3

    aput-byte v12, v10, v11

    invoke-static {v10}, Lcom/huawei/android/pushagent/utils/CommFun;->byte2HexString([B)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, cmd:Ljava/lang/String;
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "received a msg cmdId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 74
    const/4 v7, 0x0

    .line 75
    .local v7, msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    :try_start_7
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getID()B

    move-result v10

    int-to-byte v11, v3

    if-ne v10, v11, :cond_d

    .line 76
    const-string v10, "PushLog2510"

    const-string v11, "is PushDataReqMessage set read TimeOut 100"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    if-eqz v9, :cond_c

    .line 79
    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 83
    :goto_2
    int-to-byte v10, v3

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->getEntityByCmdId(Ljava/lang/Byte;Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    move-result-object v7

    .line 85
    if-eqz v7, :cond_b

    .line 86
    move-object v0, v7

    check-cast v0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;

    move-object v8, v0

    .line 87
    .local v8, psDataMsg:Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;
    invoke-virtual {v8}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getmNextCMDID()B

    move-result v10

    if-eq v10, v13, :cond_b

    .line 88
    const-string v10, "PushLog2510"

    const-string v11, "is get next cmdId, so set it"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v8}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;->getmNextCMDID()B

    move-result v6

    .line 98
    .end local v8           #psDataMsg:Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;
    :cond_b
    :goto_3
    if-eqz v7, :cond_e

    .line 99
    invoke-static {}, Lcom/huawei/android/pushagent/utils/CommFun;->powerLow()V

    .line 100
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v1, bd:Landroid/os/Bundle;
    const-string v10, "push_msg"

    invoke-virtual {v1, v10, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    sget-object v11, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->SocketEvent_MSG_RECEIVED:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    invoke-virtual {v10, v11, v1}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->notifyEvent(Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;Landroid/os/Bundle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 115
    .end local v1           #bd:Landroid/os/Bundle;
    :goto_4
    if-eqz v9, :cond_4

    .line 117
    :try_start_8
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnectMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    invoke-virtual {v11}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->getConnectEntityMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v11

    if-ne v10, v11, :cond_f

    .line 118
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v10}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 131
    .end local v2           #cmd:Ljava/lang/String;
    .end local v3           #cmdId:I
    .end local v4           #dis:Ljava/io/InputStream;
    .end local v6           #hasReadCMDIdByOldMsg:I
    .end local v7           #msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    .end local v9           #socket:Ljava/net/Socket;
    :catch_2
    move-exception v5

    .line 132
    .local v5, e:Ljava/lang/Exception;
    :try_start_9
    new-instance v10, Lcom/huawei/android/pushagent/datatype/PushException;

    sget-object v11, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_Read:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    invoke-direct {v10, v5, v11}, Lcom/huawei/android/pushagent/datatype/PushException;-><init>(Ljava/lang/Throwable;Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;)V

    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 81
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #cmd:Ljava/lang/String;
    .restart local v3       #cmdId:I
    .restart local v4       #dis:Ljava/io/InputStream;
    .restart local v6       #hasReadCMDIdByOldMsg:I
    .restart local v7       #msg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    .restart local v9       #socket:Ljava/net/Socket;
    :cond_c
    :try_start_a
    const-string v10, "PushLog2510"

    const-string v11, "socket is null"

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/InstantiationException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_2

    .line 108
    :catch_3
    move-exception v5

    .line 109
    .local v5, e:Ljava/lang/InstantiationException;
    :try_start_b
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "call getEntityByCmdId(cmd:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cause InstantiationException"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 115
    if-eqz v9, :cond_4

    .line 117
    :try_start_c
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnectMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    invoke-virtual {v11}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->getConnectEntityMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v11

    if-ne v10, v11, :cond_10

    .line 118
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v10}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_0

    .line 94
    .end local v5           #e:Ljava/lang/InstantiationException;
    :cond_d
    int-to-byte v10, v3

    :try_start_d
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->getEntityByCmdId(Ljava/lang/Byte;Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    move-result-object v7

    goto/16 :goto_3

    .line 106
    :cond_e
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "received invalid msg, cmdId"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/InstantiationException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_4

    .line 111
    :catch_4
    move-exception v5

    .line 112
    .local v5, e:Ljava/lang/Exception;
    :try_start_e
    const-string v10, "PushLog2510"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "call getEntityByCmdId(cmd:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 115
    if-eqz v9, :cond_4

    .line 117
    :try_start_f
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnectMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    invoke-virtual {v11}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->getConnectEntityMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v11

    if-ne v10, v11, :cond_11

    .line 118
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v10}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/net/Socket;->setSoTimeout(I)V

    goto/16 :goto_0

    .line 120
    .end local v5           #e:Ljava/lang/Exception;
    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v10}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v11, v11, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getNextHeartBeatInterval(Z)J

    move-result-wide v11

    add-long/2addr v11, v14

    long-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/net/Socket;->setSoTimeout(I)V

    goto/16 :goto_0

    .local v5, e:Ljava/lang/InstantiationException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v10}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v11, v11, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getNextHeartBeatInterval(Z)J

    move-result-wide v11

    add-long/2addr v11, v14

    long-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/net/Socket;->setSoTimeout(I)V

    goto/16 :goto_0

    .local v5, e:Ljava/lang/Exception;
    :cond_11
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v10, v10, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v10}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v11, v11, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getNextHeartBeatInterval(Z)J

    move-result-wide v11

    add-long/2addr v11, v14

    long-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/net/Socket;->setSoTimeout(I)V

    goto/16 :goto_0

    .line 115
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    if-eqz v9, :cond_12

    .line 117
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnectMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    invoke-virtual {v12}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->getConnectEntityMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v12

    if-ne v11, v12, :cond_13

    .line 118
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v11, v11, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v11}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 120
    :cond_12
    :goto_5
    throw v10

    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v11, v11, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v11}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->getSocket()Ljava/net/Socket;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v12, v12, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getNextHeartBeatInterval(Z)J

    move-result-wide v12

    add-long/2addr v12, v14

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_5
.end method
