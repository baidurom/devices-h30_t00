.class public Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;
.super Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
.source "PushDataRspMessage.java"


# instance fields
.field private mMsgId:[B

.field private mPkgFlag:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;-><init>(B)V

    .line 23
    return-void
.end method

.method public constructor <init>([BB)V
    .locals 3
    .parameter "msgId"
    .parameter "flag"

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;-><init>()V

    .line 28
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->mMsgId:[B

    .line 29
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->mMsgId:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iput-byte p2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->mPkgFlag:B

    .line 31
    return-void
.end method

.method public static getID()B
    .locals 1

    .prologue
    .line 19
    const/16 v0, -0x5f

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
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 36
    .local v0, msgId:[B
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 37
    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->mMsgId:[B

    .line 39
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 40
    .local v1, pkgFlag:[B
    invoke-static {p1, v1}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 41
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    iput-byte v2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->mPkgFlag:B

    .line 43
    return-object p0
.end method

.method public encode()[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->mMsgId:[B

    if-nez v3, :cond_0

    .line 60
    const-string v3, "PushLog2510"

    const-string v4, "encode error, mMsgId is null "

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-object v2

    .line 65
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->getCmdID()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 67
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->mMsgId:[B

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 68
    iget-byte v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->mPkgFlag:B

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 69
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 70
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 71
    .local v1, e:Ljava/io/IOException;
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encode error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

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
    .line 80
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NoNeedSrvRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    return-object v0
.end method

.method public setFlag(B)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 54
    iput-byte p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->mPkgFlag:B

    .line 55
    return-void
.end method

.method public setMsgId([B)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 49
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->mMsgId:[B

    .line 50
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->mMsgId:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    return-void
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

    const-string v1, ",cmdId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->getHexCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",msgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->mMsgId:[B

    invoke-static {v1}, Lcom/huawei/android/pushagent/utils/CommFun;->byte2HexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;->mPkgFlag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
