.class public Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;
.super Ljava/lang/Object;
.source "IDMapMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PushLog2510"

.field private static g_IdMapMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    .line 28
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/16 v1, -0x2f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pushmessage/HeartBeatRspMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/16 v1, -0x25

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pushmessage/NewHeartBeatRspMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/16 v1, -0x2d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterRspMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/16 v1, -0x21

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterRspMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/16 v1, -0x23

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenRspMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/16 v1, -0x29

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterRspMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/16 v1, -0x60

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataReqMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/16 v1, -0x30

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pushmessage/HeartBeatReqMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/16 v1, -0x26

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pushmessage/NewHeartBeatReqMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/16 v1, -0x2e

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pushmessage/DeviceRegisterReqMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/16 v1, -0x22

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pushmessage/NewDeviceRegisterReqMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/16 v1, -0x24

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pushmessage/RegisterTokenReqMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/16 v1, -0x2a

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pushmessage/UnRegisterReqMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/16 v1, -0x5f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pushmessage/PushDataRspMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntityByCmdId(Ljava/lang/Byte;Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    .locals 5
    .parameter "cmdId"
    .parameter "ios"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    sget-object v2, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    sget-object v2, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    .line 50
    .local v0, pushMsg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    invoke-virtual {v0, p1}, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;

    move-result-object v1

    .line 51
    .local v1, pushMsgDecode:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    if-eqz v1, :cond_0

    .line 53
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after decode msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-object v1

    .line 55
    :cond_0
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " decode failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v0           #pushMsg:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    .end local v1           #pushMsgDecode:Lcom/huawei/android/pushagent/datatype/pushmessage/basic/PushMessage;
    :cond_1
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmdId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not exist, all:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huawei/android/pushagent/datatype/pushmessage/basic/IDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v2, Ljava/lang/InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmdId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not register"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
