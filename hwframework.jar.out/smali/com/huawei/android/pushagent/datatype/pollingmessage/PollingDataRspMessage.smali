.class public Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;
.super Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
.source "PollingDataRspMessage.java"


# instance fields
.field private mHasMsg:B

.field private mLength:S

.field private mMode:B

.field private mPollingInterval:S

.field private mRequestId:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;-><init>(B)V

    .line 28
    return-void
.end method

.method public constructor <init>(SSBBS)V
    .locals 1
    .parameter "length"
    .parameter "requestId"
    .parameter "mode"
    .parameter "hasMsg"
    .parameter "pollingInterval"

    .prologue
    .line 31
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;-><init>(B)V

    .line 32
    iput-short p1, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mLength:S

    .line 33
    iput-short p2, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mRequestId:S

    .line 34
    iput-byte p3, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mMode:B

    .line 35
    iput-byte p4, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mHasMsg:B

    .line 36
    iput-short p5, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mPollingInterval:S

    .line 37
    return-void
.end method

.method public static getID()B
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x2

    return v0
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
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
    .locals 7
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v5, 0x2

    :try_start_0
    new-array v4, v5, [B

    .line 66
    .local v4, requestId:[B
    invoke-static {p1, v4}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 67
    invoke-static {v4}, Lcom/huawei/android/pushagent/utils/CommFun;->byteArrayToShort([B)I

    move-result v5

    int-to-short v5, v5

    iput-short v5, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mRequestId:S

    .line 69
    const/4 v5, 0x1

    new-array v2, v5, [B

    .line 70
    .local v2, mode:[B
    invoke-static {p1, v2}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 71
    const/4 v5, 0x0

    aget-byte v5, v2, v5

    iput-byte v5, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mMode:B

    .line 73
    const/4 v5, 0x1

    new-array v1, v5, [B

    .line 74
    .local v1, hasMsg:[B
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 75
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    iput-byte v5, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mHasMsg:B

    .line 77
    const/4 v5, 0x2

    new-array v3, v5, [B

    .line 78
    .local v3, pollingInterval:[B
    invoke-static {p1, v3}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 79
    invoke-static {v3}, Lcom/huawei/android/pushagent/utils/CommFun;->byteArrayToShort([B)I

    move-result v5

    int-to-short v5, v5

    iput-short v5, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mPollingInterval:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1           #hasMsg:[B
    .end local v2           #mode:[B
    .end local v3           #pollingInterval:[B
    .end local v4           #requestId:[B
    :goto_0
    return-object p0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "PushLog2510"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public encode()[B
    .locals 5

    .prologue
    .line 92
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    iget-short v2, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mLength:S

    invoke-static {v2}, Lcom/huawei/android/pushagent/utils/CommFun;->shortToByteArray(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 94
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->getCmdID()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 95
    iget-short v2, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mRequestId:S

    invoke-static {v2}, Lcom/huawei/android/pushagent/utils/CommFun;->shortToByteArray(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 96
    iget-byte v2, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mMode:B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 97
    iget-byte v2, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mHasMsg:B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 98
    iget-short v2, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mPollingInterval:S

    invoke-static {v2}, Lcom/huawei/android/pushagent/utils/CommFun;->shortToByteArray(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 99
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PollingDataRspMessage encode : baos "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/pushagent/utils/CommFun;->byte2HexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 106
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v2

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "PushLog2510"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLength()S
    .locals 1

    .prologue
    .line 40
    iget-short v0, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mLength:S

    return v0
.end method

.method public getMode()B
    .locals 1

    .prologue
    .line 48
    iget-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mMode:B

    return v0
.end method

.method public getPollingInterval()S
    .locals 1

    .prologue
    .line 59
    iget-short v0, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mPollingInterval:S

    return v0
.end method

.method public getRequestId()S
    .locals 1

    .prologue
    .line 44
    iget-short v0, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mRequestId:S

    return v0
.end method

.method public getmHasMsg()B
    .locals 1

    .prologue
    .line 52
    iget-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mHasMsg:B

    return v0
.end method

.method public hasMsg()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 55
    iget-byte v1, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mHasMsg:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ",mLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mLength:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",cmdId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->getHexCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",mRequestId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mRequestId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",mMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mMode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",mHasMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mHasMsg:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",mPollingInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;->mPollingInterval:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
