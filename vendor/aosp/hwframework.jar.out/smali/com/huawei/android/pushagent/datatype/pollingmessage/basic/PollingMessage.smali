.class public abstract Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
.super Ljava/lang/Object;
.source "PollingMessage.java"

# interfaces
.implements Lcom/huawei/android/pushagent/datatype/IPushMessage;


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "PushLog2510"


# instance fields
.field protected mCmdId:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;->mCmdId:B

    .line 26
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter "cmdId"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;->mCmdId:B

    .line 28
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;->setCmdId(B)V

    .line 29
    return-void
.end method

.method public static decodeMessge(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
    .locals 8
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v5, 0x2

    new-array v2, v5, [B

    .line 60
    .local v2, length:[B
    invoke-static {p0, v2}, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 61
    invoke-static {v2}, Lcom/huawei/android/pushagent/utils/CommFun;->byteArrayToShort([B)I

    move-result v5

    int-to-short v3, v5

    .line 64
    .local v3, mLength:S
    new-array v0, v3, [B

    .line 65
    .local v0, PollingData:[B
    invoke-static {p0, v0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 66
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 67
    .local v4, memIs:Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v1, v5

    .line 68
    .local v1, cmdId:B
    const-string v5, "PushLog2510"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmdId: 0X"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " len:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingIDMapMessage;->getEntityByCmdId(Ljava/lang/Byte;Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;

    move-result-object v5

    return-object v5
.end method

.method public static fullRead(Ljava/io/InputStream;[B)V
    .locals 4
    .parameter "is"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, readLen:I
    const/4 v0, -0x1

    .line 45
    .local v0, len:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 46
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 48
    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    .line 49
    new-instance v2, Ljava/io/IOException;

    const-string v3, "read -1 reached"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/IPushMessage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;

    move-result-object v0

    return-object v0
.end method

.method public abstract decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract encode()[B
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;->encode()[B

    move-result-object v0

    return-object v0
.end method

.method public getCmdID()B
    .locals 1

    .prologue
    .line 35
    iget-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;->mCmdId:B

    return v0
.end method

.method public getHexCmdID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;->mCmdId:B

    aput-byte v2, v0, v1

    invoke-static {v0}, Lcom/huawei/android/pushagent/utils/CommFun;->byte2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCmdId(B)V
    .locals 0
    .parameter "cmdId"

    .prologue
    .line 39
    iput-byte p1, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;->mCmdId:B

    .line 40
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method
