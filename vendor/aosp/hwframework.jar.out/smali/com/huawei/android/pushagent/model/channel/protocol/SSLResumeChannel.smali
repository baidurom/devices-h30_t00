.class public Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;
.super Ljava/lang/Object;
.source "SSLResumeChannel.java"

# interfaces
.implements Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel;
.implements Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel$SSLInputStream;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PushLog2510"

.field public static defaultSSLPort:I


# instance fields
.field inputStream:Ljava/io/InputStream;

.field private mContext:Landroid/content/Context;

.field pfd:Landroid/os/ParcelFileDescriptor;

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/net/Socket;

.field private socketDescriptor:Ljava/io/FileDescriptor;

.field private final sslCtxNativePointer:I

.field private sslNativePointer:I

.field private sslSessionNativePointer:I

.field private trustManager:Ljavax/net/ssl/X509TrustManager;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x1bb

    sput v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->defaultSSLPort:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 38
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_CTX_new()I

    move-result v0

    iput v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslCtxNativePointer:I

    .line 39
    iput v2, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    .line 44
    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->writeLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->readLock:Ljava/lang/Object;

    .line 48
    iput v2, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslSessionNativePointer:I

    .line 49
    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socketDescriptor:Ljava/io/FileDescriptor;

    .line 50
    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 51
    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->inputStream:Ljava/io/InputStream;

    .line 54
    iput-object p1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->readLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    return v0
.end method

.method static synthetic access$200(Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;)Ljava/io/FileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socketDescriptor:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method private static initX509TrustManager(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;
    .locals 11
    .parameter "context"

    .prologue
    .line 277
    :try_start_0
    const-string v8, "X509"

    invoke-static {v8}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v7

    .line 282
    .local v7, trustManagerFac:Ljavax/net/ssl/TrustManagerFactory;
    const-string v8, "BKS"

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 287
    .local v6, trustKeyStore:Ljava/security/KeyStore;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lcom/huawei/android/pushagent/utils/tools/PushCredential;->getCer()[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 288
    .local v3, is:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 289
    const-string v8, "123456"

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 291
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 292
    invoke-virtual {v7, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 294
    invoke-virtual {v7}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .local v0, arr$:[Ljavax/net/ssl/TrustManager;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 295
    .local v5, tm:Ljavax/net/ssl/TrustManager;
    instance-of v8, v5, Ljavax/net/ssl/X509TrustManager;

    if-eqz v8, :cond_0

    .line 296
    check-cast v5, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v0           #arr$:[Ljavax/net/ssl/TrustManager;
    .end local v2           #i$:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #len$:I
    .end local v5           #tm:Ljavax/net/ssl/TrustManager;
    .end local v6           #trustKeyStore:Ljava/security/KeyStore;
    .end local v7           #trustManagerFac:Ljavax/net/ssl/TrustManagerFactory;
    :goto_1
    return-object v5

    .line 294
    .restart local v0       #arr$:[Ljavax/net/ssl/TrustManager;
    .restart local v2       #i$:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #len$:I
    .restart local v5       #tm:Ljavax/net/ssl/TrustManager;
    .restart local v6       #trustKeyStore:Ljava/security/KeyStore;
    .restart local v7       #trustManagerFac:Ljavax/net/ssl/TrustManagerFactory;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    .end local v0           #arr$:[Ljavax/net/ssl/TrustManager;
    .end local v2           #i$:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #len$:I
    .end local v5           #tm:Ljavax/net/ssl/TrustManager;
    .end local v6           #trustKeyStore:Ljava/security/KeyStore;
    .end local v7           #trustManagerFac:Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v1

    .line 300
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Init X509TrustManager fail "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clientCertificateRequested([B[[B)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 265
    return-void
.end method

.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    const-string v1, "PushLog2510"

    const-string v2, "enter SSLPushChannel:close()"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :try_start_1
    iget v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    if-eqz v1, :cond_0

    .line 169
    iget v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_interrupt(I)V

    .line 170
    iget v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socketDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1, v2, p0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_shutdown(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;)V

    .line 171
    iget v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_free(I)V

    .line 172
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    .line 173
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close ssl, sslSessionNativePointer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslSessionNativePointer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->hasConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;

    .line 179
    const-string v1, "PushLog2510"

    const-string v2, "socket closed"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :goto_0
    monitor-exit p0

    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/io/IOException;
    :try_start_3
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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 165
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 184
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getChannelType()Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;->ChannelType_SSL_Resume:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    return-object v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel$SSLInputStream;

    invoke-direct {v0, p0}, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel$SSLInputStream;-><init>(Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;)V

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->inputStream:Ljava/io/InputStream;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeerAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getsslSessionNativePointer()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 323
    :try_start_0
    iget v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socketDescriptor:Ljava/io/FileDescriptor;

    const v3, 0x5265c00

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_do_handshake(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;IZ[B)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 342
    :goto_0
    return v0

    .line 325
    :catch_0
    move-exception v7

    .line 327
    .local v7, e:Ljava/lang/NoSuchMethodError;
    :try_start_1
    const-string v0, "org.apache.harmony.xnet.provider.jsse.NativeCrypto"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 328
    .local v6, NativeCrypto_Class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v0, "SSL_do_handshake"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/io/FileDescriptor;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, [B

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 331
    .local v9, methods:Ljava/lang/reflect/Method;
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socketDescriptor:Ljava/io/FileDescriptor;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 v1, 0x3

    const v2, 0x5265c00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-virtual {v9, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v0

    goto :goto_0

    .line 333
    .end local v6           #NativeCrypto_Class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v9           #methods:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v8

    .line 334
    .local v8, ee:Ljava/lang/ClassNotFoundException;
    const-string v0, "PushLog2510"

    invoke-virtual {v8}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v8           #ee:Ljava/lang/ClassNotFoundException;
    :goto_1
    move v0, v10

    .line 342
    goto :goto_0

    .line 335
    :catch_2
    move-exception v8

    .line 336
    .local v8, ee:Ljava/lang/NullPointerException;
    const-string v0, "PushLog2510"

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 337
    .end local v8           #ee:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v8

    .line 338
    .local v8, ee:Ljava/lang/IllegalArgumentException;
    const-string v0, "PushLog2510"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 339
    .end local v8           #ee:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v8

    .line 340
    .local v8, ee:Ljava/lang/Exception;
    const-string v0, "PushLog2510"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public handshakeCompleted()V
    .locals 2

    .prologue
    .line 272
    const-string v0, "PushLog2510"

    const-string v1, "hand shake completed"

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public hasConnection()Z
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslSessionNativePointer:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/net/Socket;)Z
    .locals 17
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isConnected()Z

    move-result v13

    if-nez v13, :cond_1

    .line 59
    :cond_0
    const-string v13, "PushLog2510"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "when init SSL Channel, socket is not ready:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v13, 0x0

    .line 125
    :goto_0
    return v13

    .line 62
    :cond_1
    const-string v13, "PushLog2510"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "enter SSLResumeChannel:init("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->trustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v13, :cond_2

    .line 64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->initX509TrustManager(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 67
    :cond_2
    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    .line 69
    .local v8, secureRandom:Ljava/security/SecureRandom;
    const/16 v13, 0x400

    invoke-virtual {v8, v13}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v13

    invoke-static {v13}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RAND_seed([B)V

    .line 70
    move-object/from16 v0, p0

    iget v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslCtxNativePointer:I

    invoke-static {v13}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_new(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    .line 71
    const-string v13, "PushLog2510"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ssl new id is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledProtocols(I[Ljava/lang/String;)V

    .line 73
    const/4 v13, 0x1

    new-array v2, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "AES128-SHA"

    aput-object v14, v2, v13

    .line 74
    .local v2, CLIENT_CIPHER_SUITES:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    invoke-static {v13, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledCipherSuites(I[Ljava/lang/String;)V

    .line 75
    move-object/from16 v0, p0

    iget v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    const-wide/16 v14, 0x4000

    invoke-static {v13, v14, v15}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_clear_options(IJ)J

    .line 77
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 78
    .local v3, address:Ljava/net/InetAddress;
    if-nez v3, :cond_3

    .line 79
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 81
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_tlsext_host_name(ILjava/lang/String;)V

    .line 82
    const-string v13, "PushLog2510"

    const-string v14, "ssl init over successfully"

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 85
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socketDescriptor:Ljava/io/FileDescriptor;

    .line 86
    const-string v13, "PushLog2510"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "socketDescriptor :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socketDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    move-object/from16 v0, p0

    iget v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslSessionNativePointer:I

    if-eqz v13, :cond_4

    .line 89
    const-string v13, "PushLog2510"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "set session, native pointer is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslSessionNativePointer:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, p0

    iget v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslSessionNativePointer:I

    invoke-static {v13, v14}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_session(II)V

    .line 93
    :cond_4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->getsslSessionNativePointer()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslSessionNativePointer:I

    .line 97
    const-string v13, "PushLog2510"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "set session, get new sslsessionpointer is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslSessionNativePointer:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    const-wide/16 v11, 0x0

    .line 111
    .local v11, time:J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslSessionNativePointer:I

    if-eqz v13, :cond_5

    .line 112
    move-object/from16 v0, p0

    iget v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslSessionNativePointer:I

    invoke-static {v13}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_get_time(I)J

    move-result-wide v11

    .line 114
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 115
    .local v4, currenttime:J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslSessionNativePointer:I

    invoke-static {v13}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_session_id(I)[B

    move-result-object v10

    .line 116
    .local v10, sessionIdByte:[B
    const-string v9, ""

    .line 117
    .local v9, sessionId:Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 118
    new-instance v9, Ljava/lang/String;

    .end local v9           #sessionId:Ljava/lang/String;
    const-string v13, "UTF-8"

    invoke-direct {v9, v10, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 122
    .restart local v9       #sessionId:Ljava/lang/String;
    :goto_1
    const-string v13, "PushLog2510"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " SSL_SESSION_get_time:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " sessionTime:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v4, v11

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " sessionId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 102
    .end local v4           #currenttime:J
    .end local v9           #sessionId:Ljava/lang/String;
    .end local v10           #sessionIdByte:[B
    .end local v11           #time:J
    :catch_0
    move-exception v6

    .line 103
    .local v6, e:Ljava/security/cert/CertificateException;
    const-string v13, "PushLog2510"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CertificateException "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v7, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 105
    .local v7, exception:Ljavax/net/ssl/SSLHandshakeException;
    invoke-virtual {v7, v6}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 106
    throw v7

    .line 120
    .end local v6           #e:Ljava/security/cert/CertificateException;
    .end local v7           #exception:Ljavax/net/ssl/SSLHandshakeException;
    .restart local v4       #currenttime:J
    .restart local v9       #sessionId:Ljava/lang/String;
    .restart local v10       #sessionIdByte:[B
    .restart local v11       #time:J
    :cond_6
    const-string v13, "PushLog2510"

    const-string v14, "sessionIdBytes is null"

    invoke-static {v13, v14}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public send([B)Z
    .locals 10
    .parameter "dataToSend"

    .prologue
    const/4 v8, 0x0

    .line 140
    iget-object v9, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->writeLock:Ljava/lang/Object;

    monitor-enter v9

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->hasConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string v0, "PushLog2510"

    const-string v1, "when in send not connect!"

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    iget v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socketDescriptor:Ljava/io/FileDescriptor;

    const/4 v4, 0x0

    array-length v5, p1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_write(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;[BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    const/4 v0, 0x1

    :try_start_1
    monitor-exit v9

    .line 159
    :goto_0
    return v0

    .line 154
    :catch_0
    move-exception v7

    .line 155
    .local v7, ie:Ljava/io/IOException;
    const-string v0, "PushLog2510"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->close()V

    .line 158
    monitor-exit v9

    move v0, v8

    .line 159
    goto :goto_0

    .line 158
    .end local v7           #ie:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public verifyCertificateChain([[BLjava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 258
    return-void
.end method
