.class public Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;
.super Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
.source "DeviceRegisterReqMessage.java"


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mNetworkType:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;-><init>(B)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mNetworkType:B

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 1
    .parameter "devicdId"
    .parameter "netType"

    .prologue
    .line 24
    invoke-static {}, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->getID()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;-><init>(B)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    .line 14
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mNetworkType:B

    .line 25
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    .line 26
    iput-byte p2, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mNetworkType:B

    .line 27
    return-void
.end method

.method public static getID()B
    .locals 1

    .prologue
    .line 17
    const/16 v0, -0x2e

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
    .line 11
    invoke-virtual {p0, p1}, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

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
    .line 68
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 69
    .local v0, bReceived:[B
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 70
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    .line 71
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 72
    invoke-static {p1, v0}, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->fullRead(Ljava/io/InputStream;[B)V

    .line 73
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    iput-byte v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mNetworkType:B

    .line 75
    return-object p0
.end method

.method public encode()[B
    .locals 6

    .prologue
    .line 47
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encode error, reason mDeviceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 54
    .local v0, data:[B
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 55
    .local v1, deviceIdArr:[B
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 56
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->getCmdID()B

    move-result v4

    aput-byte v4, v0, v3

    .line 57
    const/4 v3, 0x0

    const/4 v4, 0x1

    array-length v5, v1

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    iget-byte v4, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mNetworkType:B

    aput-byte v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v1           #deviceIdArr:[B
    :catch_0
    move-exception v2

    .line 60
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "PushLog2510"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;->MSGType_NeedSrvRsp:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage$MSGType;

    return-object v0
.end method

.method public getNetworkType()B
    .locals 1

    .prologue
    .line 42
    iget-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mNetworkType:B

    return v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setNetworkType(B)V
    .locals 0
    .parameter "networkType"

    .prologue
    .line 38
    iput-byte p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mNetworkType:B

    .line 39
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

    const-string v1, " cmdId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->getHexCmdID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " mDeviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " mNetworkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;->mNetworkType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
