.class public Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;
.super Ljava/lang/Object;
.source "NormalChannel.java"

# interfaces
.implements Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;


# static fields
.field private static final TAG:Ljava/lang/String; = "PushLog2510"


# instance fields
.field socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 48
    :cond_0
    return-void
.end method

.method public getChannelType()Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->ChannelType_Normal:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/io/IOException;
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call socket.getInputStream cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeerAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public hasConnection()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/net/Socket;)Z
    .locals 3
    .parameter "socket"

    .prologue
    .line 32
    const-string v0, "PushLog2510"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter NormalChannel:init("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const-string v0, "PushLog2510"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "when init SSL Channel, socket is not ready:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    .line 38
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public send([B)Z
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    const-string v0, "PushLog2510"

    const-string v1, "when call send, socket is not ready!!"

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 57
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/NormalChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 58
    const/4 v0, 0x1

    goto :goto_0
.end method
