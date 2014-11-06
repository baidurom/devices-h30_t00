.class public interface abstract Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;
.super Ljava/lang/Object;
.source "IPushChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;,
        Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelState;
    }
.end annotation


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getChannelType()Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getLocalAddress()Ljava/net/InetAddress;
.end method

.method public abstract getPeerAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getSocket()Ljava/net/Socket;
.end method

.method public abstract hasConnection()Z
.end method

.method public abstract init(Ljava/net/Socket;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract send([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
