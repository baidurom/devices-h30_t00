.class public Lcom/huawei/android/pushagent/model/channel/ChannelMgr;
.super Ljava/lang/Object;
.source "ChannelMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;
    }
.end annotation


# static fields
.field public static final CUR_CONNECT_ENTITY:Ljava/lang/String; = "curConnectEntity"

.field private static final TAG:Ljava/lang/String; = "PushLog2510"

.field private static g_channelMgr:Lcom/huawei/android/pushagent/model/channel/ChannelMgr;


# instance fields
.field private context:Landroid/content/Context;

.field curConnectType:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

.field pushConnect:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->g_channelMgr:Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Polling:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->curConnectType:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    .line 35
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->values()[Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->pushConnect:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    .line 52
    iput-object p1, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private static cancelDelayAlarm(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 220
    const-string v0, "PushLog2510"

    const-string v1, "enter ConnectMgrProcessor:cancelDelayAlarm"

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "com.huawei.action.CONNECT_PUSHSRV"

    invoke-static {p0, v0}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->cancelAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    const-string v0, "com.huawei.android.push.intent.HEARTBEAT_RSP_TIMEOUT"

    invoke-static {p0, v0}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->cancelAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.intent.action.PUSH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_INTENT_TYPE"

    const-string v2, "com.huawei.android.push.intent.HEARTBEAT_REQ"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "heartbeat_interval"

    const-wide v2, 0x9a7ec800L

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->cancelAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method public static getCurConnectMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->curConnectType:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    return-object v0
.end method

.method public static getCurHeartBeat(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnetEntity()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    const-class v1, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->g_channelMgr:Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->g_channelMgr:Lcom/huawei/android/pushagent/model/channel/ChannelMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :goto_0
    monitor-exit v1

    return-object v0

    .line 41
    :cond_0
    if-nez p0, :cond_1

    .line 42
    :try_start_1
    const-string v0, "PushLog2510"

    const-string v2, "when init ChannelMgr g_channelMgr and context all null!!"

    invoke-static {v0, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    invoke-direct {v0, p0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->g_channelMgr:Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    .line 47
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->g_channelMgr:Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    invoke-direct {v0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->init()Z

    .line 48
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->g_channelMgr:Lcom/huawei/android/pushagent/model/channel/ChannelMgr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPollingChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->pushConnect:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Polling:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getPushChannel()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->pushConnect:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    sget-object v1, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private init()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 55
    const-string v1, "PushLog2510"

    const-string v2, "begin to init ChannelMgr"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    const-string v2, "curConnectEntity"

    sget-object v3, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Polling:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v3}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 59
    .local v0, curConEntity:I
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in cfg curConEntity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-ltz v0, :cond_0

    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->values()[Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 62
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->values()[Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->curConnectType:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    .line 64
    :cond_0
    sget-object v1, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Polling:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->curConnectType:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isValidPolling()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isValidPush()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    sget-object v1, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    iput-object v1, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->curConnectType:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->pushConnect:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    sget-object v2, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v2}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v2

    new-instance v3, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-direct {v3, v5, v4}, Lcom/huawei/android/pushagent/model/channel/entity/push/PushConnectEntity;-><init>(Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;Landroid/content/Context;)V

    aput-object v3, v1, v2

    .line 73
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->pushConnect:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    sget-object v2, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Polling:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v2}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v2

    new-instance v3, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingConnectEntity;

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-direct {v3, v5, v4}, Lcom/huawei/android/pushagent/model/channel/entity/polling/PollingConnectEntity;-><init>(Lcom/huawei/android/pushagent/datatype/SocketConnectInfo;Landroid/content/Context;)V

    aput-object v3, v1, v2

    .line 75
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public closeAll()V
    .locals 5

    .prologue
    .line 113
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->cancelDelayAlarm(Landroid/content/Context;)V

    .line 114
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->pushConnect:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    .local v0, arr$:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 115
    .local v1, con:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
    invoke-virtual {v1}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->close()V

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v1           #con:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
    :cond_0
    return-void
.end method

.method public connect(Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;Z)V
    .locals 4
    .parameter "entityMode"
    .parameter "forceCon"

    .prologue
    .line 99
    const-string v1, "PushLog2510"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter ChannelMgr:connect(entity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", forceCon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-eqz p1, :cond_0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->pushConnect:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    invoke-virtual {p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->connect(Z)V

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v1, "PushLog2510"

    const-string v2, "entityMode is invalid!!"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/huawei/android/pushagent/datatype/PushException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Lcom/huawei/android/pushagent/datatype/PushException;
    const-string v1, "PushLog2510"

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/datatype/PushException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCurConnetEntity()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
    .locals 4

    .prologue
    .line 124
    const-string v0, "PushLog2510"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter getCurConnetEntity(curConnectType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->curConnectType:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ordinal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->curConnectType:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v2}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curConnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->pushConnect:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v3, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->curConnectType:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v3}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Polling:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->curConnectType:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isValidPolling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isValidPush()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "PushLog2510"

    const-string v1, "polling srv is not ready, push is ok, so change it to Push"

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->curConnectType:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->pushConnect:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->curConnectType:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getHeartBeatCfgFiles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 86
    .local v1, heartBeatCfgFiles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->pushConnect:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    .local v0, arr$:[Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 87
    .local v4, se:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
    iget-object v5, v4, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v5}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getCfgFileName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 88
    iget-object v5, v4, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v5}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->getCfgFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v4           #se:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
    :cond_1
    return-object v1
.end method

.method public notifyEvent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, action:Ljava/lang/String;
    const-string v4, "EXTRA_INTENT_TYPE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, intentType:Ljava/lang/String;
    const-string v4, "com.huawei.android.push.intent.HEARTBEAT_RSP_TIMEOUT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    const-string v4, "PushLog2510"

    const-string v5, "time out for wait heartbeat so reconnect"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurHeartBeat(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->ajustHearBeatInterval(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnetEntity()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->close()V

    .line 166
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v4

    if-eq v6, v4, :cond_0

    .line 168
    invoke-static {}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnectMode()Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    move-result-object v4

    sget-object v5, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    if-ne v4, v5, :cond_0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnetEntity()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->connect(Z)V
    :try_end_0
    .catch Lcom/huawei/android/pushagent/datatype/PushException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Lcom/huawei/android/pushagent/datatype/PushException;
    const-string v4, "PushLog2510"

    invoke-virtual {v1}, Lcom/huawei/android/pushagent/datatype/PushException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    .end local v1           #e:Lcom/huawei/android/pushagent/datatype/PushException;
    :cond_1
    const-string v4, "com.huawei.intent.action.PUSH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "com.huawei.android.push.intent.HEARTBEAT_REQ"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 178
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v4

    if-eq v6, v4, :cond_3

    .line 179
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnetEntity()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v2

    .line 180
    .local v2, en:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
    invoke-virtual {v2}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->hasConnection()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    iget-object v4, v2, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v4, v7}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->setIsHearBeatTimeReq(Z)V

    .line 182
    iget-object v4, v2, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->heartBeat:Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->sendHearBeat()V

    goto :goto_0

    .line 184
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.huawei.action.CONNECT_PUSHSRV"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 194
    .end local v2           #en:Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;
    :cond_3
    const-string v4, "PushLog2510"

    const-string v5, "when send heart beat, not net work"

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_4
    const-string v4, "com.huawei.android.push.intent.REFRESH_PUSH_CHANNEL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    :cond_5
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurConnetEntity()Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/channel/entity/ConnectEntity;->hasConnection()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 203
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getCurHeartBeat(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/channel/entity/HeartBeat;->sendHearBeat()V

    goto/16 :goto_0

    .line 204
    :cond_6
    iget-object v4, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v4

    if-eq v6, v4, :cond_7

    .line 205
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", but not Connect, go to connect!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.huawei.action.CONNECT_PUSHSRV"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/huawei/android/pushagent/PushService;->broadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 213
    :cond_7
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no net work, when recevice :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setCurConnectType(Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;)V
    .locals 5
    .parameter "curConnectType"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->curConnectType:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    .line 140
    sget-object v0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Polling:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isValidPolling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->isValidPush()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object p1, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ConnectEntity_Push:Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->context:Landroid/content/Context;

    new-instance v1, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v2, "curConnectEntity"

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr$ConnectEntityMode;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    .line 148
    return-void
.end method
