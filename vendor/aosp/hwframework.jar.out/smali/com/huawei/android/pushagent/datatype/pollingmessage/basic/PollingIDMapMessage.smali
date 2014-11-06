.class public Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingIDMapMessage;
.super Ljava/lang/Object;
.source "PollingIDMapMessage.java"


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
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingIDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    .line 16
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingIDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataReqMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingIDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-class v2, Lcom/huawei/android/pushagent/datatype/pollingmessage/PollingDataRspMessage;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntityByCmdId(Ljava/lang/Byte;Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
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
    .line 22
    sget-object v2, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingIDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    sget-object v2, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingIDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;

    .line 25
    .local v0, pollingMsg:Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
    invoke-virtual {v0, p1}, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;->decode(Ljava/io/InputStream;)Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;

    move-result-object v1

    .line 26
    .local v1, pollingMsgDecode:Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
    if-eqz v1, :cond_0

    .line 28
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

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_0
    return-object v1

    .line 30
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

    .line 34
    .end local v0           #pollingMsg:Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
    .end local v1           #pollingMsgDecode:Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingMessage;
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

    sget-object v4, Lcom/huawei/android/pushagent/datatype/pollingmessage/basic/PollingIDMapMessage;->g_IdMapMessage:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
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
