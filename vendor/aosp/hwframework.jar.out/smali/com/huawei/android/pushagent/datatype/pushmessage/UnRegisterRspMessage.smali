.class public Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;
.super Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
.source "UnRegisterRspMessage.java"


# instance fields
.field private mResult:B

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;-><init>(B)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->mToken:Ljava/lang/String;

    .line 16
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->mResult:B

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->mToken:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static getID()B
    .locals 1

    .prologue
    .line 19
    const/16 v0, -0x29

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
    .line 13
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    const/16 v1, 0x20

    new-array v0, v1, [B

    .line 60
    .local v0, bReceived:[B
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 61
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->mToken:Ljava/lang/String;

    .line 63
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 64
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 66
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->mResult:B

    .line 68
    return-object p0
.end method

.method public encode()[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 38
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->mToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encode error, mToken = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->mToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    return-object v2

    .line 43
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->getCmdID()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 45
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->mToken:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 47
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 48
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encode error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMsgType()Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NoNeedSrvRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    return-object v0
.end method

.method public getResult()B
    .locals 1

    .prologue
    .line 31
    iget-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->mResult:B

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "mToken"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->mToken:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnRegisterRspMessage[token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;->mResult:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
