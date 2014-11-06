.class public Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;
.super Ljava/lang/Object;
.source "SocketConnectInfo.java"


# instance fields
.field public conType:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

.field public ip:Ljava/lang/String;

.field public port:I

.field public useProxy:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;)V
    .locals 0
    .parameter "ip"
    .parameter "port"
    .parameter "useProxy"
    .parameter "type"

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->ip:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->port:I

    .line 10
    iput-boolean p3, p0, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->useProxy:Z

    .line 11
    iput-object p4, p0, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->conType:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    .line 12
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " useProxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->useProxy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " conType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;->conType:Lcom/huawei/android/pushagent/model/channel/protocol/IPushChannel$ChannelType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
