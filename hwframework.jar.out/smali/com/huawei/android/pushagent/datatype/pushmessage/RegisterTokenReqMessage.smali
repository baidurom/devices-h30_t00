.class public Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;
.super Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
.source "RegisterTokenReqMessage.java"


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;-><init>(B)V

    .line 16
    iput-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mDeviceId:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mPackageName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "deviceId"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;-><init>(B)V

    .line 16
    iput-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mDeviceId:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mPackageName:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mDeviceId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mPackageName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static getID()B
    .locals 1

    .prologue
    .line 21
    const/16 v0, -0x24

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
    .line 14
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 79
    .local v0, bReceived:[B
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 80
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mDeviceId:Ljava/lang/String;

    .line 82
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 83
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 84
    invoke-static {v0}, Lcom/huawei/android/pushagent/utils/CommFun;->byteArrayToShort([B)I

    move-result v1

    .line 86
    .local v1, len:I
    new-array v0, v1, [B

    .line 87
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 88
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mPackageName:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public encode()[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 54
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encode error mDeviceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-object v2

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encode error mPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
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

    .line 63
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->getCmdID()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mDeviceId:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 66
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/huawei/android/pushagent/utils/CommFun;->shortToByteArray(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 67
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mPackageName:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 69
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NeedSrv_Immdia_Rsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mDeviceId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mPackageName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "RegisterTokenReqMessage["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
