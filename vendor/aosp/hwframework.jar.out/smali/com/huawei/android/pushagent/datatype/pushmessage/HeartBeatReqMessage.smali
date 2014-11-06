.class public Lcom/huawei/android/pushagent/datatype/pushmessage/HeartBeatReqMessage;
.super Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
.source "HeartBeatReqMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/HeartBeatReqMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;-><init>(B)V

    .line 13
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter "nextHeartBeatToServer"

    .prologue
    .line 20
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/HeartBeatReqMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;-><init>(B)V

    .line 21
    return-void
.end method

.method public static getID()B
    .locals 1

    .prologue
    .line 16
    const/16 v0, -0x30

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pushmessage/HeartBeatReqMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

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
    .line 36
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 37
    .local v0, bReceived:[B
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/HeartBeatReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 39
    return-object p0
.end method

.method public encode()[B
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/HeartBeatReqMessage;->getCmdID()B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getMsgType()Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NeedSrv_Immdia_Rsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " cmdId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/HeartBeatReqMessage;->getHexCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
