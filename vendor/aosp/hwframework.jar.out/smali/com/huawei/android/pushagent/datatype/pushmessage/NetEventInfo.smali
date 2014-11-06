.class public Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;
.super Ljava/lang/Object;
.source "NetEventInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private netEvent:B

.field private netEventTime:J

.field private netType:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetEvent()B
    .locals 1

    .prologue
    .line 30
    iget-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->netEvent:B

    return v0
.end method

.method public getNetEventTime()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->netEventTime:J

    return-wide v0
.end method

.method public getNetType()B
    .locals 1

    .prologue
    .line 24
    iget-byte v0, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->netType:B

    return v0
.end method

.method public setNetEvent(B)V
    .locals 0
    .parameter "netEvent"

    .prologue
    .line 33
    iput-byte p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->netEvent:B

    .line 34
    return-void
.end method

.method public setNetEventTime(J)V
    .locals 0
    .parameter "netEventTime"

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->netEventTime:J

    .line 22
    return-void
.end method

.method public setNetType(B)V
    .locals 0
    .parameter "netType"

    .prologue
    .line 27
    iput-byte p1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->netType:B

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " netEventTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->netEventTime:J

    const-string v3, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-static {v1, v2, v3}, Lcom/huawei/android/pushagent/utils/CommFun;->getTimeString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " netType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->netType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " netEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/huawei/android/pushagent/datatype/pushmessage/NetEventInfo;->netEvent:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
