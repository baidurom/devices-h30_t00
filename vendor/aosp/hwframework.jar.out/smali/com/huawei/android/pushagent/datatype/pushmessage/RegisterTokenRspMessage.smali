.class public Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;
.super Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
.source "RegisterTokenRspMessage.java"


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mResult:B

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;-><init>(B)V

    .line 14
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mResult:B

    .line 15
    iput-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mToken:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mPackageName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "result"
    .parameter "token"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;-><init>(B)V

    .line 14
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mResult:B

    .line 15
    iput-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mToken:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mPackageName:Ljava/lang/String;

    .line 28
    iput-byte p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mResult:B

    .line 29
    iput-object p2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mToken:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mPackageName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static getID()B
    .locals 1

    .prologue
    .line 19
    const/16 v0, -0x23

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
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    .locals 7
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 80
    const/4 v4, 0x1

    new-array v0, v4, [B

    .line 81
    .local v0, bReceived:[B
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 82
    aget-byte v4, v0, v5

    iput-byte v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mResult:B

    .line 83
    aget-byte v4, v0, v5

    if-eqz v4, :cond_0

    .line 84
    iput-object v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mPackageName:Ljava/lang/String;

    .line 85
    iput-object v6, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mToken:Ljava/lang/String;

    .line 88
    :cond_0
    const/16 v4, 0x20

    new-array v0, v4, [B

    .line 89
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 90
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mToken:Ljava/lang/String;

    .line 92
    const/4 v4, 0x2

    new-array v2, v4, [B

    .line 93
    .local v2, bReceivedPackageNameLen:[B
    invoke-static {p1, v2}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 94
    invoke-static {v2}, Lcom/huawei/android/pushagent/utils/CommFun;->byteArrayToShort([B)I

    move-result v3

    .line 96
    .local v3, receivedPackageNameLen:I
    new-array v1, v3, [B

    .line 97
    .local v1, bReceivedPackageName:[B
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 98
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mPackageName:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public encode()[B
    .locals 5

    .prologue
    .line 60
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->getCmdID()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 63
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 64
    iget-object v2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mToken:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 65
    iget-object v2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/huawei/android/pushagent/utils/CommFun;->shortToByteArray(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 66
    iget-object v2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mPackageName:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 70
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 75
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v2

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encode error,e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMsgType()Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NoNeedSrvRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()B
    .locals 1

    .prologue
    .line 54
    iget-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mResult:B

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mPackageName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setResult(B)V
    .locals 0
    .parameter "result"

    .prologue
    .line 50
    iput-byte p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mResult:B

    .line 51
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mToken:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "RegisterTokenRspMessage["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mResult:B

    invoke-static {v1}, Lcom/huawei/android/pushagent/utils/CommFun;->byte2HexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
