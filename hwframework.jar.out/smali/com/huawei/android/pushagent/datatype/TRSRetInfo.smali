.class public Lcom/huawei/android/pushagent/datatype/TRSRetInfo;
.super Lcom/huawei/android/pushagent/datatype/Config;
.source "TRSRetInfo.java"


# static fields
.field private static final RESULT:Ljava/lang/String; = "result"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 276
    const-string v0, "PushRouteInfo"

    invoke-direct {p0, p1, v0}, Lcom/huawei/android/pushagent/datatype/Config;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "jsonStr"

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;-><init>(Landroid/content/Context;)V

    .line 284
    invoke-static {p2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->pareseJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    .line 285
    return-void
.end method

.method private getFlowControlMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .parameter "flowInterval"
    .parameter "flowVlomes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    const-string v0, "\\d{1,3}"

    .line 207
    .local v0, REGULAR_EXPRESSION:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v1, flowcControl:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 209
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 210
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 211
    .local v7, key:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 212
    const-wide/16 v9, 0x1

    invoke-virtual {p0, v7, v9, v10}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 213
    .local v2, flowcInterval:J
    invoke-virtual {v7, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, key2:Ljava/lang/String;
    const-wide/32 v9, 0x7fffffff

    invoke-virtual {p0, v8, v9, v10}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 215
    .local v4, flowcVlomes:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 218
    .end local v2           #flowcInterval:J
    .end local v4           #flowcVlomes:J
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #key2:Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public get3GMaxHeartbeat()J
    .locals 3

    .prologue
    .line 65
    const-string v0, "g3MaxHeartbeat"

    const-wide/16 v1, 0x708

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public get3GMinHeartbeat()J
    .locals 3

    .prologue
    .line 61
    const-string v0, "g3MinHeartbeat"

    const-wide/16 v1, 0x384

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getApnHeartBeatMap()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v1, apnHeartBeatMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "apn_"

    .line 223
    .local v0, APN:Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 225
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 226
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 227
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    iget-object v5, p0, Lcom/huawei/android/pushagent/datatype/Config;->cfg:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    .local v2, heartBeat:Ljava/lang/String;
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 237
    .end local v2           #heartBeat:Ljava/lang/String;
    .end local v4           #key:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getBelongId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    const-string v0, "belongId"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChkFailConnSrvTime()J
    .locals 3

    .prologue
    .line 102
    const-string v0, "chkFailConnSvr_time"

    const-wide/32 v1, 0x2a300

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnSuccItval()J
    .locals 3

    .prologue
    .line 93
    const-string v0, "connSuccItval"

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnTrsErrItval()J
    .locals 3

    .prologue
    .line 110
    const-string v0, "connTrsErrItval"

    const-wide/16 v1, 0x708

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnTrsItval()J
    .locals 3

    .prologue
    .line 106
    const-string v0, "connTrsItval"

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstQueryTRSDayTimes()J
    .locals 3

    .prologue
    .line 170
    const-string v0, "firstQueryTRSDayTimes"

    const-wide/16 v1, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstQueryTRSHourTimes()J
    .locals 3

    .prologue
    .line 174
    const-string v0, "firstQueryTRSHourTimes"

    const-wide/16 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlowControl()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    const-string v0, "flowcInterval"

    .line 183
    .local v0, flowInterval:Ljava/lang/String;
    const-string v1, "flowcVlomes"

    .line 184
    .local v1, flowVlomes:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getFlowControlMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    return-object v2
.end method

.method public getMaxQTRSTimes()J
    .locals 3

    .prologue
    .line 118
    const-string v0, "maxQTRS_times"

    const-wide/16 v1, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxQueryTRSDayTimes()J
    .locals 3

    .prologue
    .line 178
    const-string v0, "maxQueryTRSDayTimes"

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNoNetHeartbeat()J
    .locals 3

    .prologue
    .line 89
    const-string v0, "noNetHeartbeat"

    const-wide/16 v1, 0x708

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPollingId()I
    .locals 2

    .prologue
    .line 162
    const-string v0, "pollingId"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPollingInterval()J
    .locals 3

    .prologue
    .line 150
    const-string v0, "pollingInterval"

    const-wide/16 v1, 0x1c20

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPollingIp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    const-string v0, "pollingIp"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPollingPort()I
    .locals 2

    .prologue
    .line 158
    const-string v0, "pollingPort"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPush1StartInt()J
    .locals 3

    .prologue
    .line 134
    const-string v0, "push1StartInt"

    const-wide/16 v1, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPush2StartInt()J
    .locals 3

    .prologue
    .line 138
    const-string v0, "push2StartInt"

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPush3StartInt()J
    .locals 3

    .prologue
    .line 142
    const-string v0, "push3StartInt"

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPush4StartInt()J
    .locals 3

    .prologue
    .line 146
    const-string v0, "push4StartInt"

    const-wide/16 v1, 0x708

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPushLeastRunTime()J
    .locals 3

    .prologue
    .line 130
    const-string v0, "pushLeastRun_time"

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()I
    .locals 2

    .prologue
    .line 28
    const-string v0, "result"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getServerIP()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    const-string v0, "serverIp"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerPort()I
    .locals 2

    .prologue
    .line 41
    const-string v0, "serverPort"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getServerRec1Min()J
    .locals 3

    .prologue
    .line 69
    const-string v0, "serverRec1_min"

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServerRec2Min()J
    .locals 3

    .prologue
    .line 73
    const-string v0, "serverRec2_min"

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServerRec3Min()J
    .locals 3

    .prologue
    .line 77
    const-string v0, "serverRec3_min"

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServerRec4Min()J
    .locals 3

    .prologue
    .line 81
    const-string v0, "serverRec4_min"

    const-wide/16 v1, 0x708

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServercontinueConnTime()J
    .locals 3

    .prologue
    .line 97
    const-string v0, "servercontinueConnTime"

    const-wide/16 v1, 0xf

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getServiceRec5Min()J
    .locals 3

    .prologue
    .line 85
    const-string v0, "serverRec5_min"

    const-wide/16 v1, 0x708

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSocketConnTimeOut()J
    .locals 3

    .prologue
    .line 122
    const-string v0, "socketConnTimeOut"

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSocketReadTimeOut()J
    .locals 3

    .prologue
    .line 126
    const-string v0, "socketConnectReadOut"

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSrvMaxFailTimes()J
    .locals 3

    .prologue
    .line 114
    const-string v0, "SrvMaxFail_times"

    const-wide/16 v1, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTRSValidmax()J
    .locals 3

    .prologue
    .line 49
    const-string v0, "trsValid_max"

    const-wide/32 v1, 0x278d00

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTRSValidmin()J
    .locals 3

    .prologue
    .line 45
    const-string v0, "trsValid_min"

    const-wide/16 v1, 0x1c20

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTokenRegTimeOut()J
    .locals 3

    .prologue
    .line 166
    const-string v0, "tokenRegTimeOut"

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiFirstQueryTRSDayTimes()J
    .locals 3

    .prologue
    .line 188
    const-string v0, "wifiFirstQueryTRSDayTimes"

    const-wide/16 v1, 0x12

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiFirstQueryTRSHourTimes()J
    .locals 3

    .prologue
    .line 192
    const-string v0, "wifiFirstQueryTRSHourTimes"

    const-wide/16 v1, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiFlowControl()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    const-string v0, "wifiFlowcInterval"

    .line 201
    .local v0, flowInterval:Ljava/lang/String;
    const-string v1, "wifiFlowcVlomes"

    .line 202
    .local v1, flowVlomes:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getFlowControlMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    return-object v2
.end method

.method public getWifiMaxHeartbeat()J
    .locals 3

    .prologue
    .line 57
    const-string v0, "wifiMaxHeartbeat"

    const-wide/16 v1, 0x708

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiMaxQueryTRSDayTimes()J
    .locals 3

    .prologue
    .line 196
    const-string v0, "wifiMaxQueryTRSDayTimes"

    const-wide/16 v1, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiMinHeartbeat()J
    .locals 3

    .prologue
    .line 53
    const-string v0, "wifiMinHeartbeat"

    const-wide/16 v1, 0x708

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected isEqualBelongId(Ljava/lang/String;)Z
    .locals 4
    .parameter "belongId"

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getBelongId()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, oldBelongId:Ljava/lang/String;
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old belongId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current belongId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const/4 v1, 0x1

    .line 355
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEqualHeartBeatRange(Lcom/huawei/android/pushagent/datatype/TRSRetInfo;)Z
    .locals 4
    .parameter "retInfo"

    .prologue
    .line 336
    const-string v0, "PushLog2510"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiMinHeartbeat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getWifiMinHeartbeat()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",wifiMaxHeartbeat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getWifiMaxHeartbeat()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",3gMinHeartbeat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->get3GMinHeartbeat()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",3gMaxHeartbeat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->get3GMaxHeartbeat()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getWifiMinHeartbeat()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getWifiMinHeartbeat()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getWifiMaxHeartbeat()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getWifiMaxHeartbeat()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->get3GMinHeartbeat()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->get3GMinHeartbeat()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->get3GMaxHeartbeat()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->get3GMaxHeartbeat()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 344
    :cond_0
    const/4 v0, 0x0

    .line 346
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->isValidPush()Z

    move-result v0

    return v0
.end method

.method public isValidPolling()Z
    .locals 2

    .prologue
    .line 330
    const-string v0, ""

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getPollingIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getPollingPort()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getResult()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidPush()Z
    .locals 2

    .prologue
    .line 324
    const-string v0, ""

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getServerIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getServerPort()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/huawei/android/pushagent/datatype/TRSRetInfo;->getResult()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
