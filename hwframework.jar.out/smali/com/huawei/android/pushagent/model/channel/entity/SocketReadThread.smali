.class public abstract Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;
.super Ljava/lang/Thread;
.source "SocketReadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$1;,
        Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "PushLog2510"


# instance fields
.field protected conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

.field protected conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;)V
    .locals 4
    .parameter "conEntity"

    .prologue
    const/4 v3, 0x0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketRead_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    .line 50
    iput-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->mContext:Landroid/content/Context;

    .line 51
    iput-object v3, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    .line 56
    iput-object p1, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    .line 57
    iget-object v0, p1, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p1, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->conInformation:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    .line 59
    return-void
.end method


# virtual methods
.method protected connectSync()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/android/pushagent/datatype/PushException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 106
    const/4 v4, 0x0

    .line 108
    .local v4, socket:Ljava/net/Socket;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 109
    .local v5, startTime:J
    const-string v8, "PushLog2510"

    const-string v9, "start to create socket"

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v8, v8, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->ip:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v8, v8, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->ip:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 112
    :cond_0
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the addr is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is invalid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    return v7

    .line 116
    :cond_1
    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v8, v8, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->conType:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    if-nez v8, :cond_3

    .line 117
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "config sslconetEntity.channelType cfgErr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v10, v10, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->conType:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cannot connect!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v5           #startTime:J
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call connectSync cause "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    if-eqz v4, :cond_2

    .line 178
    :try_start_1
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    :cond_2
    :goto_1
    new-instance v7, Lcom/huawei/android/pushagent/datatype/PushException;

    sget-object v8, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_Connect:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    invoke-direct {v7, v1, v8}, Lcom/huawei/android/pushagent/datatype/PushException;-><init>(Ljava/lang/Throwable;Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;)V

    throw v7

    .line 122
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #startTime:J
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v8, v8, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->ip:Ljava/lang/String;

    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget v9, v9, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->port:I

    iget-object v10, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-boolean v10, v10, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->useProxy:Z

    invoke-virtual {p0, v8, v9, v10}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->createSocket(Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4

    .line 123
    if-nez v4, :cond_4

    .line 124
    const-string v8, "PushLog2510"

    const-string v9, "call createSocket failed"

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_4
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "conetEntity.channelType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v10, v10, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->conType:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v8, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$1;->$SwitchMap$com$huawei$android$pushagent$model$channel$protocol$IPushChannel$ChannelType:[I

    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v9, v9, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->conType:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    invoke-virtual {v9}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 140
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "conetEntity.channelType is invalid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v10, v10, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->conType:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/huawei/android/pushagent/PushService;->getInstance()Lcom/huawei/android/pushagent/PushService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/android/pushagent/PushService;->stopService()V

    .line 142
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    goto/16 :goto_0

    .line 131
    :pswitch_0
    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    new-instance v9, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;

    iget-object v10, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;-><init>(Landroid/content/Context;)V

    iput-object v9, v8, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    .line 145
    :goto_2
    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v8, v8, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v8, v4}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->init(Ljava/net/Socket;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 146
    const-string v8, "PushLog2510"

    const-string v9, "call conetEntity.channel.init failed!!"

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    goto/16 :goto_0

    .line 134
    :pswitch_1
    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    new-instance v9, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;

    iget-object v10, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;-><init>(Landroid/content/Context;)V

    iput-object v9, v8, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    goto :goto_2

    .line 137
    :pswitch_2
    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    new-instance v9, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;

    iget-object v10, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;-><init>(Landroid/content/Context;)V

    iput-object v9, v8, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    goto :goto_2

    .line 150
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 151
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "connect cost "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms, result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v9, v9, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v9}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->hasConnection()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v7, v7, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v7}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->hasConnection()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 156
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget-object v7, v7, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->ip:Ljava/lang/String;

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conMethod:Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;

    iget v8, v8, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->port:I

    invoke-direct {v3, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 157
    .local v3, isAdress:Ljava/net/InetSocketAddress;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v0, bd:Landroid/os/Bundle;
    const-string v7, "server_ip"

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v7, "server_port"

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const-string v7, "client_ip"

    invoke-virtual {v4}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v7, "client_port"

    invoke-virtual {v4}, Ljava/net/Socket;->getLocalPort()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    const-string v7, "channelEntity"

    iget-object v8, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    invoke-virtual {v8}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->getConnectEntityMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    iget-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    sget-object v8, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->SocketEvent_CONNECTED:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    invoke-virtual {v7, v8, v0}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->notifyEvent(Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;Landroid/os/Bundle;)V

    .line 168
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 170
    .end local v0           #bd:Landroid/os/Bundle;
    .end local v3           #isAdress:Ljava/net/InetSocketAddress;
    :cond_6
    const-string v7, "PushLog2510"

    const-string v8, "Socket connect failed"

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v7, Lcom/huawei/android/pushagent/datatype/PushException;

    const-string v8, "create SSLSocket failed"

    sget-object v9, Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;->Err_Connect:Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;

    invoke-direct {v7, v8, v9}, Lcom/huawei/android/pushagent/datatype/PushException;-><init>(Ljava/lang/String;Lcom/huawei/android/pushagent/datatype/PushException$ErrorType;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 179
    .end local v5           #startTime:J
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 180
    .local v2, ex:Ljava/io/IOException;
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close socket cause:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected createSocket(Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 22
    .parameter "ip"
    .parameter "port"
    .parameter "useProxy"

    .prologue
    .line 192
    const/16 v17, 0x0

    .line 194
    .local v17, socket:Ljava/net/Socket;
    :try_start_0
    new-instance v18, Ljava/net/Socket;

    invoke-direct/range {v18 .. v18}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 195
    .end local v17           #socket:Ljava/net/Socket;
    .local v18, socket:Ljava/net/Socket;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getTcpNoDelay()Z

    .line 196
    const/16 v19, 0x1

    invoke-static/range {v18 .. v18}, Lcom/huawei/android/pushagent/utils/CommFun;->getSocketFd(Ljava/net/Socket;)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/pushagent/utils/CommFun;->ctrlSockets(II)I

    .line 198
    const/4 v14, 0x0

    .line 199
    .local v14, proxyIp:Ljava/lang/String;
    const/4 v15, -0x1

    .line 200
    .local v15, proxyPort:I
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 201
    const-string v19, "http.proxyHost"

    invoke-static/range {v19 .. v19}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 202
    const-string v19, "http.proxyPort"

    invoke-static/range {v19 .. v19}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 203
    .local v13, portStr:Ljava/lang/String;
    if-eqz v13, :cond_2

    .end local v13           #portStr:Ljava/lang/String;
    :goto_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 209
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v5

    .line 211
    .local v5, curNetType:I
    sget-object v19, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->SocketEvent_CONNECTING:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->notifyEvent(Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;Landroid/os/Bundle;)V

    .line 213
    const-string v19, "PushLog2510"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "enter createSocket("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", proxy:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v0, v15, :cond_4

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v0, v5, :cond_4

    const/4 v11, 0x1

    .line 217
    .local v11, isProxyValid:Z
    :goto_2
    const-string v19, "PushLog2510"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "useProxy is valid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    if-eqz p3, :cond_8

    if-eqz v11, :cond_8

    .line 226
    const-string v19, "PushLog2510"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "use Proxy "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to connect to push server."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v19, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v19

    invoke-direct {v0, v14, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getSocketConnTimeOut()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 231
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CONNECT "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 232
    .local v9, hostport:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " HTTP/1.1\r\nHost: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/OutputStream;->write([B)V

    .line 235
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 236
    .local v10, in:Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v19, 0x64

    move/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 237
    .local v7, got:Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 239
    .local v12, nlchars:I
    :cond_0
    const/4 v4, 0x0

    .line 240
    .local v4, c:C
    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v19

    move/from16 v0, v19

    int-to-char v4, v0

    .line 241
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    if-eqz v12, :cond_1

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v12, v0, :cond_5

    :cond_1
    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v4, v0, :cond_5

    .line 243
    add-int/lit8 v12, v12, 0x1

    .line 250
    :goto_3
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v12, v0, :cond_0

    .line 251
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 252
    .local v8, gotstr:Ljava/lang/String;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/StringReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 254
    .local v3, br:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 255
    .local v16, response:Ljava/lang/String;
    const-string v19, "PushLog2510"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "read data:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v4           #c:C
    .end local v7           #got:Ljava/lang/StringBuilder;
    .end local v8           #gotstr:Ljava/lang/String;
    .end local v9           #hostport:Ljava/lang/String;
    .end local v10           #in:Ljava/io/InputStream;
    .end local v12           #nlchars:I
    .end local v16           #response:Ljava/lang/String;
    :goto_4
    const-string v19, "PushLog2510"

    const-string v20, "write the lastcontectsucc_time to the pushConfig.xml file"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getSocketConnTimeOut()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/net/Socket;->setSoTimeout(I)V

    move-object/from16 v17, v18

    .line 284
    .end local v5           #curNetType:I
    .end local v11           #isProxyValid:Z
    .end local v14           #proxyIp:Ljava/lang/String;
    .end local v15           #proxyPort:I
    .end local v18           #socket:Ljava/net/Socket;
    .restart local v17       #socket:Ljava/net/Socket;
    :goto_5
    return-object v18

    .line 203
    .end local v17           #socket:Ljava/net/Socket;
    .restart local v13       #portStr:Ljava/lang/String;
    .restart local v14       #proxyIp:Ljava/lang/String;
    .restart local v15       #proxyPort:I
    .restart local v18       #socket:Ljava/net/Socket;
    :cond_2
    const-string v13, "-1"

    goto/16 :goto_0

    .line 205
    .end local v13           #portStr:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v15

    goto/16 :goto_1

    .line 215
    .restart local v5       #curNetType:I
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 244
    .restart local v4       #c:C
    .restart local v7       #got:Ljava/lang/StringBuilder;
    .restart local v9       #hostport:Ljava/lang/String;
    .restart local v10       #in:Ljava/io/InputStream;
    .restart local v11       #isProxyValid:Z
    .restart local v12       #nlchars:I
    :cond_5
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_6

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v12, v0, :cond_7

    :cond_6
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v4, v0, :cond_7

    .line 246
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 248
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 258
    .end local v4           #c:C
    .end local v7           #got:Ljava/lang/StringBuilder;
    .end local v9           #hostport:Ljava/lang/String;
    .end local v10           #in:Ljava/io/InputStream;
    .end local v12           #nlchars:I
    :cond_8
    const-string v19, "PushLog2510"

    const-string v20, "create socket without proxy"

    invoke-static/range {v19 .. v20}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v19, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getSocketConnTimeOut()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_4

    .line 267
    .end local v5           #curNetType:I
    .end local v11           #isProxyValid:Z
    .end local v14           #proxyIp:Ljava/lang/String;
    .end local v15           #proxyPort:I
    :catch_0
    move-exception v6

    move-object/from16 v17, v18

    .line 268
    .end local v18           #socket:Ljava/net/Socket;
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    .restart local v17       #socket:Ljava/net/Socket;
    :goto_6
    const-string v19, "PushLog2510"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "call getBytes cause:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :goto_7
    if-eqz v17, :cond_9

    .line 279
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 284
    :cond_9
    :goto_8
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 269
    :catch_1
    move-exception v6

    .line 270
    .local v6, e:Ljava/net/SocketException;
    :goto_9
    const-string v19, "PushLog2510"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "call setSoTimeout cause:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 271
    .end local v6           #e:Ljava/net/SocketException;
    :catch_2
    move-exception v6

    .line 272
    .local v6, e:Ljava/io/IOException;
    :goto_a
    const-string v19, "PushLog2510"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "call connect cause:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 273
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 274
    .local v6, e:Ljava/lang/Exception;
    :goto_b
    const-string v19, "PushLog2510"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "call createSocket cause:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 280
    .end local v6           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v6

    .line 281
    .local v6, e:Ljava/io/IOException;
    const-string v19, "PushLog2510"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "close socket cause:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 273
    .end local v6           #e:Ljava/io/IOException;
    .end local v17           #socket:Ljava/net/Socket;
    .restart local v18       #socket:Ljava/net/Socket;
    :catch_5
    move-exception v6

    move-object/from16 v17, v18

    .end local v18           #socket:Ljava/net/Socket;
    .restart local v17       #socket:Ljava/net/Socket;
    goto :goto_b

    .line 271
    .end local v17           #socket:Ljava/net/Socket;
    .restart local v18       #socket:Ljava/net/Socket;
    :catch_6
    move-exception v6

    move-object/from16 v17, v18

    .end local v18           #socket:Ljava/net/Socket;
    .restart local v17       #socket:Ljava/net/Socket;
    goto :goto_a

    .line 269
    .end local v17           #socket:Ljava/net/Socket;
    .restart local v18       #socket:Ljava/net/Socket;
    :catch_7
    move-exception v6

    move-object/from16 v17, v18

    .end local v18           #socket:Ljava/net/Socket;
    .restart local v17       #socket:Ljava/net/Socket;
    goto/16 :goto_9

    .line 267
    :catch_8
    move-exception v6

    goto/16 :goto_6
.end method

.method protected abstract getChannelType()I
.end method

.method protected notifyEvent(Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;Landroid/os/Bundle;)V
    .locals 1
    .parameter "event"
    .parameter "bd"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->notifyEvent(Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;Landroid/os/Bundle;)V

    .line 290
    return-void
.end method

.method protected abstract readSocket()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public run()V
    .locals 10

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 64
    .local v3, connectStartTime:J
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->connectSync()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 66
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->readSocket()V

    .line 68
    :cond_0
    const-string v6, "PushLog2510"

    const-string v7, "normal to quit."

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, bd:Landroid/os/Bundle;
    const-string v6, "connect_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 73
    sget-object v6, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->SocketEvent_CLOSE:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    invoke-virtual {p0, v6, v0}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->notifyEvent(Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v3

    .line 83
    .local v1, conTotalTime:J
    const-string v6, "PushLog2510"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total connect Time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " process quit, so close socket"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v6, v6, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v6, :cond_1

    .line 96
    :try_start_1
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v6, v6, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v6}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 101
    :cond_1
    :goto_0
    const-string v6, "PushLog2510"

    const-string v7, "connect thread exit!"

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void

    .line 74
    .end local v0           #bd:Landroid/os/Bundle;
    .end local v1           #conTotalTime:J
    :catch_0
    move-exception v5

    .line 75
    .local v5, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "PushLog2510"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connect cause :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .restart local v0       #bd:Landroid/os/Bundle;
    const-string v6, "push_exception"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v6, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;->SocketEvent_CLOSE:Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;

    invoke-virtual {p0, v6, v0}, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->notifyEvent(Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread$SocketEvent;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v3

    .line 83
    .restart local v1       #conTotalTime:J
    const-string v6, "PushLog2510"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total connect Time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " process quit, so close socket"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v6, v6, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v6, :cond_1

    .line 96
    :try_start_3
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v6, v6, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v6}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 97
    :catch_1
    move-exception v6

    goto :goto_0

    .line 82
    .end local v0           #bd:Landroid/os/Bundle;
    .end local v1           #conTotalTime:J
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v3

    .line 83
    .restart local v1       #conTotalTime:J
    const-string v7, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "total connect Time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " process quit, so close socket"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v7, v7, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    if-eqz v7, :cond_2

    .line 96
    :try_start_4
    iget-object v7, p0, Lcom/huawei/android/pushagent/model/channel/entity/SocketReadThread;->conetEntity:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v7, v7, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->channel:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;

    invoke-interface {v7}, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 100
    :cond_2
    :goto_1
    throw v6

    .line 97
    :catch_2
    move-exception v7

    goto :goto_1

    .restart local v0       #bd:Landroid/os/Bundle;
    :catch_3
    move-exception v6

    goto/16 :goto_0
.end method
