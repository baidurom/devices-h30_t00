.class public Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;
.super Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
.source "PollingDataReqMessage.java"


# static fields
.field private static final LENGTH:S = 0x7s


# instance fields
.field private mLength:S

.field private mPollingId:I

.field private mRequestId:S


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "pollingId"

    .prologue
    .line 28
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;-><init>(B)V

    .line 29
    invoke-static {}, Lcom/huawei/android/pushagent/utils/CommFun;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mRequestId:S

    .line 30
    iput p1, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mPollingId:I

    .line 31
    const/4 v0, 0x7

    iput-short v0, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mLength:S

    .line 32
    return-void
.end method

.method public constructor <init>(SI)V
    .locals 1
    .parameter "requestId"
    .parameter "pollingId"

    .prologue
    .line 21
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;-><init>(B)V

    .line 22
    iput-short p1, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mRequestId:S

    .line 23
    iput p2, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mPollingId:I

    .line 24
    const/4 v0, 0x7

    iput-short v0, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mLength:S

    .line 25
    return-void
.end method

.method private static getID()B
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

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
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
    .locals 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v3, 0x2

    :try_start_0
    new-array v2, v3, [B

    .line 70
    .local v2, requestId:[B
    invoke-static {p1, v2}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 71
    invoke-static {v2}, Lcom/huawei/android/pushagent/utils/CommFun;->byteArrayToShort([B)I

    move-result v3

    int-to-short v3, v3

    iput-short v3, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mRequestId:S

    .line 73
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 74
    .local v1, pollingId:[B
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 75
    invoke-static {v1}, Lcom/huawei/android/pushagent/utils/CommFun;->byteArrayToInt([B)I

    move-result v3

    iput v3, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mPollingId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1           #pollingId:[B
    .end local v2           #requestId:[B
    :goto_0
    return-object p0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PushLog2510"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public encode()[B
    .locals 5

    .prologue
    .line 52
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 53
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    iget-short v2, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mLength:S

    invoke-static {v2}, Lcom/huawei/android/pushagent/utils/CommFun;->shortToByteArray(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 54
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->getCmdID()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    iget-short v2, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mRequestId:S

    invoke-static {v2}, Lcom/huawei/android/pushagent/utils/CommFun;->shortToByteArray(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 56
    iget v2, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mPollingId:I

    invoke-static {v2}, Lcom/huawei/android/pushagent/utils/CommFun;->intToByteArray(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 57
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PollingDataReqMessage encode : baos "

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

    .line 59
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 63
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v2

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "PushLog2510"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLength()S
    .locals 1

    .prologue
    .line 38
    iget-short v0, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mLength:S

    return v0
.end method

.method public getPollingId()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mPollingId:I

    return v0
.end method

.method public getRequestId()S
    .locals 1

    .prologue
    .line 42
    iget-short v0, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mRequestId:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " mLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mLength:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " cmdId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->getHexCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " mRequestId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v1, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mRequestId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " mPollingId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;->mPollingId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
