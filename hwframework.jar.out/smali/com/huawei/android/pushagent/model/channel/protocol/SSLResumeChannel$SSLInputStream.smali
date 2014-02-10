.class Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel$SSLInputStream;
.super Ljava/io/InputStream;
.source "SSLResumeChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;


# direct methods
.method constructor <init>(Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel$SSLInputStream;->this$0:Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 191
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 203
    new-array v0, v1, [B

    aput-byte v2, v0, v3

    .line 204
    .local v0, b:[B
    invoke-virtual {p0, v0, v3, v1}, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel$SSLInputStream;->read([BII)I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 205
    const-string v1, "PushLog2510"

    const-string v2, "read -1"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    aget-byte v1, v0, v3

    return v1
.end method

.method public read([BII)I
    .locals 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 217
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel$SSLInputStream;->this$0:Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;

    #getter for: Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->readLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->access$000(Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel$SSLInputStream;->this$0:Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->hasConnection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const/4 v0, -0x1

    monitor-exit v7

    .line 231
    :goto_0
    return v0

    .line 221
    :cond_0
    if-nez p1, :cond_1

    .line 222
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "b == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 224
    :cond_1
    or-int v1, p3, p2

    if-ltz v1, :cond_2

    :try_start_1
    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_3

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 227
    :cond_3
    if-nez p3, :cond_4

    .line 228
    monitor-exit v7

    goto :goto_0

    .line 230
    :cond_4
    const-string v0, "PushLog2510"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read ssl socket, buffer length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel$SSLInputStream;->this$0:Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;

    #getter for: Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->sslNativePointer:I
    invoke-static {v0}, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->access$100(Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;)I

    move-result v0

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel$SSLInputStream;->this$0:Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;

    #getter for: Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->socketDescriptor:Ljava/io/FileDescriptor;
    invoke-static {v1}, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;->access$200(Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;)Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel$SSLInputStream;->this$0:Lcom/huawei/android/pushagent/model/channel/protocol/SSLResumeChannel;

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_read(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;[BIII)I

    move-result v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
