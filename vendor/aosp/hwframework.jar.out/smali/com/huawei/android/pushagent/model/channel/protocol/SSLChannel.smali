.class public Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;
.super Ljava/lang/Object;
.source "SSLChannel.java"

# interfaces
.implements Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;


# static fields
.field private static final TAG:Ljava/lang/String; = "PushLog2510"


# instance fields
.field private dis:Ljava/io/InputStream;

.field private dos:Ljava/io/OutputStream;

.field private mContext:Landroid/content/Context;

.field private mSSLSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 34
    iput-object p1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    const-string v1, "PushLog2510"

    const-string v2, "enter SSLPushChannel:close()"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dis:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dis:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    :cond_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dis:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dos:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dos:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 72
    :cond_1
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dos:Ljava/io/OutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    :goto_1
    :try_start_5
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 82
    :cond_2
    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    :goto_2
    monitor-exit p0

    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close dis error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 62
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dis:Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 54
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 62
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_9
    iput-object v2, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dis:Ljava/io/InputStream;

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_a
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close dos error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 72
    const/4 v1, 0x0

    :try_start_b
    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dos:Ljava/io/OutputStream;

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dos:Ljava/io/OutputStream;

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 79
    :catch_2
    move-exception v0

    .line 80
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_c
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close socket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 82
    const/4 v1, 0x0

    :try_start_d
    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    goto :goto_2

    .end local v0           #e:Ljava/io/IOException;
    :catchall_3
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
.end method

.method public getChannelType()Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->ChannelType_SSL:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dis:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, inetAddress:Ljava/net/InetAddress;
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 93
    :cond_0
    return-object v0
.end method

.method public getPeerAddress()Ljava/net/SocketAddress;
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, socketAddress:Ljava/net/SocketAddress;
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 101
    :cond_0
    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public hasConnection()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dis:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dos:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/net/Socket;)Z
    .locals 12
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 126
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    if-nez v6, :cond_1

    .line 127
    :cond_0
    const-string v6, "PushLog2510"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "when init SSL Channel, socket is not ready:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 182
    :goto_0
    return v6

    .line 130
    :cond_1
    const-string v6, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enter SSLChannel:init("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 136
    .local v3, sslContext:Ljavax/net/ssl/SSLContext;
    const-string v6, "X509"

    invoke-static {v6}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    .line 141
    .local v5, trustManager:Ljavax/net/ssl/TrustManagerFactory;
    const-string v6, "BKS"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 147
    .local v4, trustKeyStore:Ljava/security/KeyStore;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lcom/huawei/android/pushagent/utils/tools/PushCredential;->getCer()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 148
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 149
    const-string v6, "123456"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 151
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 154
    invoke-virtual {v5, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 157
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v6

    invoke-virtual {v3, v11, v6, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 160
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 161
    .local v1, ipAddress:Ljava/net/InetAddress;
    if-nez v1, :cond_2

    move v6, v7

    .line 162
    goto :goto_0

    .line 164
    :cond_2
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v6

    invoke-direct {v0, v1, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 165
    .local v0, inetSocketAddressServ:Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v10

    invoke-virtual {v6, p1, v9, v10, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/SSLSocket;

    iput-object v6, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 167
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v6, :cond_3

    .line 169
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-static {}, Lcom/huawei/android/pushagent/utils/PushConst$Certificate;->getClientCipherSuites()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 170
    const-string v6, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "server ip:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",server port:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",socket ip:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v10}, Ljavax/net/ssl/SSLSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",socket port:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v10}, Ljavax/net/ssl/SSLSocket;->getLocalPort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",pkgName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dis:Ljava/io/InputStream;

    .line 177
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dos:Ljava/io/OutputStream;

    .line 179
    iget-object v6, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v6, v7}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    move v6, v8

    .line 180
    goto/16 :goto_0

    :cond_3
    move v6, v7

    .line 182
    goto/16 :goto_0
.end method

.method public send([B)Z
    .locals 4
    .parameter "dataToSend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dos:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dos:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 109
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->dos:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 110
    const/4 v1, 0x1

    .line 118
    :goto_0
    return v1

    .line 112
    :cond_0
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "when send msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dos is null, or msg is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call send cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/protocol/SSLChannel;->close()V

    goto :goto_1
.end method
