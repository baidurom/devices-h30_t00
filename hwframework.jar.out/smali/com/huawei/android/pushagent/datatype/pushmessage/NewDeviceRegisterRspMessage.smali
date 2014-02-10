.class public Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;
.super Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
.source "NewDeviceRegisterRspMessage.java"


# instance fields
.field private mResult:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;-><init>(B)V

    .line 11
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;->mResult:B

    .line 18
    return-void
.end method

.method public static getID()B
    .locals 1

    .prologue
    .line 14
    const/16 v0, -0x21

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
    .line 9
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 36
    .local v0, bReceived:[B
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 37
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;->mResult:B

    .line 39
    return-object p0
.end method

.method public encode()[B
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;->getCmdID()B

    move-result v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;->mResult:B

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getMsgType()Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NoNeedSrvRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    return-object v0
.end method

.method public getResult()B
    .locals 1

    .prologue
    .line 21
    iget-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;->mResult:B

    return v0
.end method

.method public setResult(B)V
    .locals 0
    .parameter "result"

    .prologue
    .line 25
    iput-byte p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;->mResult:B

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " cmdId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;->getHexCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;->mResult:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
