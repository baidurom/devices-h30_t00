.class public Lcom/huawei/android/pushagent/PushService;
.super Lcom/huawei/android/microkernel/MKService;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static g_Service:Lcom/huawei/android/pushagent/PushService;


# instance fields
.field private context:Landroid/content/Context;

.field private innerReceiver:Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;

.field private mReceiverDispatcher:Lcom/huawei/android/pushagent/ReceiverDispatcher;

.field private mReceivers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/huawei/android/pushagent/model/PushVirtualReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceStartTime:J

.field private needExitService:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "PushLog2510"

    sput-object v0, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/pushagent/PushService;->g_Service:Lcom/huawei/android/pushagent/PushService;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Lcom/huawei/android/microkernel/MKService;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/pushagent/PushService;->mReceivers:Ljava/util/LinkedList;

    .line 36
    iput-object v2, p0, Lcom/huawei/android/pushagent/PushService;->innerReceiver:Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/android/pushagent/PushService;->mServiceStartTime:J

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/pushagent/PushService;->needExitService:Z

    .line 44
    iput-object v2, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    .line 269
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static broadcast(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 130
    :try_start_0
    invoke-static {}, Lcom/huawei/android/pushagent/PushService;->getInstance()Lcom/huawei/android/pushagent/PushService;

    move-result-object v1

    .line 131
    .local v1, pushService:Lcom/huawei/android/pushagent/PushService;
    if-nez v1, :cond_0

    .line 132
    sget-object v2, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    const-string v3, "sendBroadcast error, pushService is null"

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v1           #pushService:Lcom/huawei/android/pushagent/PushService;
    :goto_0
    return-void

    .line 135
    .restart local v1       #pushService:Lcom/huawei/android/pushagent/PushService;
    :cond_0
    sget-object v2, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast(),and mReceivers  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huawei/android/pushagent/PushService;->g_Service:Lcom/huawei/android/pushagent/PushService;

    iget-object v4, v4, Lcom/huawei/android/pushagent/PushService;->mReceivers:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {v1, p0}, Lcom/huawei/android/pushagent/PushService;->broadcastToProcess(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v1           #pushService:Lcom/huawei/android/pushagent/PushService;
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call PushService:broadcast() cause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized broadcastToProcess(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 170
    monitor-enter p0

    if-nez p1, :cond_1

    .line 171
    :try_start_0
    sget-object v2, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    const-string v3, "when broadcastToProcess, intent is null"

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
    monitor-exit p0

    return-void

    .line 174
    :cond_1
    :try_start_1
    sget-object v2, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastToProcess, intent is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/huawei/android/pushagent/PushService;->mReceivers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/pushagent/model/PushVirtualReceiver;

    .line 176
    .local v1, receiver:Lcom/huawei/android/pushagent/model/PushVirtualReceiver;
    iget-object v2, p0, Lcom/huawei/android/pushagent/PushService;->mReceiverDispatcher:Lcom/huawei/android/pushagent/ReceiverDispatcher;

    invoke-virtual {v2, v1, p1}, Lcom/huawei/android/pushagent/ReceiverDispatcher;->dispatchIntent(Lcom/huawei/android/pushagent/model/PushVirtualReceiver;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #receiver:Lcom/huawei/android/pushagent/model/PushVirtualReceiver;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private cancelDelayAlarm()V
    .locals 5

    .prologue
    .line 316
    iget-object v0, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    const-string v1, "com.huawei.android.push.intent.inner.START_SERVICE"

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->cancelAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    const-string v1, "com.huawei.android.push.intent.HEARTBEAT_RSP_TIMEOUT"

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->cancelAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.intent.action.PUSH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "EXTRA_INTENT_TYPE"

    const-string v3, "com.huawei.android.push.intent.HEARTBEAT_REQ"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "heartbeat_interval"

    const-wide v3, 0x9a7ec800L

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->cancelAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    .line 324
    return-void
.end method

.method public static exitProcess()V
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/huawei/android/pushagent/PushService;->g_Service:Lcom/huawei/android/pushagent/PushService;

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/huawei/android/pushagent/PushService;->g_Service:Lcom/huawei/android/pushagent/PushService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/huawei/android/pushagent/PushService;->needExitService:Z

    .line 183
    sget-object v0, Lcom/huawei/android/pushagent/PushService;->g_Service:Lcom/huawei/android/pushagent/PushService;

    invoke-virtual {v0}, Lcom/huawei/android/pushagent/PushService;->stopService()V

    .line 186
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/android/pushagent/PushService;
    .locals 2

    .prologue
    .line 124
    const-class v0, Lcom/huawei/android/pushagent/PushService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/android/pushagent/PushService;->g_Service:Lcom/huawei/android/pushagent/PushService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initProcess()V
    .locals 4

    .prologue
    .line 110
    :try_start_0
    sget-object v1, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initProcess(),and mReceivers  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/pushagent/PushService;->mReceivers:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;

    iget-object v2, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/android/pushagent/model/connectmgr/ConnectMgrProcessor;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/huawei/android/pushagent/PushService;->registerMyReceiver(Lcom/huawei/android/pushagent/model/PushVirtualReceiver;Landroid/content/IntentFilter;)V

    .line 112
    new-instance v1, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;

    iget-object v2, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/android/pushagent/model/pushcommand/PushCommandProcessor;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/huawei/android/pushagent/PushService;->registerMyReceiver(Lcom/huawei/android/pushagent/model/PushVirtualReceiver;Landroid/content/IntentFilter;)V

    .line 113
    new-instance v1, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;

    iget-object v2, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/android/pushagent/model/recorder/ChannelRecorder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/huawei/android/pushagent/PushService;->registerMyReceiver(Lcom/huawei/android/pushagent/model/PushVirtualReceiver;Landroid/content/IntentFilter;)V

    .line 114
    new-instance v1, Lcom/huawei/android/pushagent/model/recorder/SystemConfig;

    iget-object v2, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/android/pushagent/model/recorder/SystemConfig;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/huawei/android/pushagent/PushService;->registerMyReceiver(Lcom/huawei/android/pushagent/model/PushVirtualReceiver;Landroid/content/IntentFilter;)V

    .line 115
    iget-object v1, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/huawei/android/pushagent/PushService;->registerInnnerReceiver(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception:registerMyReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/PushService;->stopService()V

    goto :goto_0
.end method

.method private registerInnnerReceiver(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 283
    iget-object v2, p0, Lcom/huawei/android/pushagent/PushService;->innerReceiver:Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;

    if-nez v2, :cond_0

    .line 284
    new-instance v2, Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;

    invoke-direct {v2}, Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;-><init>()V

    iput-object v2, p0, Lcom/huawei/android/pushagent/PushService;->innerReceiver:Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;

    .line 286
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v1, innerPushFilter:Landroid/content/IntentFilter;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/huawei/android/pushagent/utils/PushIntents;->getAction()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 288
    invoke-static {}, Lcom/huawei/android/pushagent/utils/PushIntents;->getAction()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/huawei/android/pushagent/PushService;->innerReceiver:Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    const-string v2, "android"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    invoke-direct {p0, p1}, Lcom/huawei/android/pushagent/PushService;->registerPushEventReceiver(Landroid/content/Context;)V

    .line 295
    :cond_2
    return-void
.end method

.method private registerMyReceiver(Lcom/huawei/android/pushagent/model/PushVirtualReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "receiver"
    .parameter "intentFilter"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/huawei/android/pushagent/PushService;->mReceivers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method private registerPushEventReceiver(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 298
    iget-object v3, p0, Lcom/huawei/android/pushagent/PushService;->innerReceiver:Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;

    if-nez v3, :cond_0

    .line 299
    new-instance v3, Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;

    invoke-direct {v3}, Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;-><init>()V

    iput-object v3, p0, Lcom/huawei/android/pushagent/PushService;->innerReceiver:Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;

    .line 301
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 302
    .local v1, innerPushFilter:Landroid/content/IntentFilter;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/huawei/android/pushagent/utils/PushIntents;->getEventAction()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 303
    invoke-static {}, Lcom/huawei/android/pushagent/utils/PushIntents;->getEventAction()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v2, packageFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 311
    iget-object v3, p0, Lcom/huawei/android/pushagent/PushService;->innerReceiver:Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    iget-object v3, p0, Lcom/huawei/android/pushagent/PushService;->innerReceiver:Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    return-void
.end method

.method private static setService(Lcom/huawei/android/pushagent/PushService;)V
    .locals 0
    .parameter "pushservice"

    .prologue
    .line 103
    sput-object p0, Lcom/huawei/android/pushagent/PushService;->g_Service:Lcom/huawei/android/pushagent/PushService;

    .line 104
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 329
    iget-object p0, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    .line 335
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 330
    .restart local p0
    :cond_1
    invoke-static {}, Lcom/huawei/android/pushagent/PushService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Lcom/huawei/android/pushagent/PushService;->getAppContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 53
    iget-object v3, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/PushService;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    .line 56
    :cond_0
    new-instance v3, Lcom/huawei/android/pushagent/PushService$1;

    invoke-direct {v3, p0}, Lcom/huawei/android/pushagent/PushService$1;-><init>(Lcom/huawei/android/pushagent/PushService;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 61
    invoke-super {p0}, Lcom/huawei/android/microkernel/MKService;->onCreate()V

    .line 64
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/android/pushagent/utils/Log;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    sget-object v3, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    const-string v4, "PushService:onCreate()"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/huawei/android/pushagent/PushService;->mServiceStartTime:J

    .line 74
    :try_start_1
    new-instance v3, Lcom/huawei/android/pushagent/ReceiverDispatcher;

    iget-object v4, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/huawei/android/pushagent/ReceiverDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/huawei/android/pushagent/PushService;->mReceiverDispatcher:Lcom/huawei/android/pushagent/ReceiverDispatcher;

    .line 75
    iget-object v3, p0, Lcom/huawei/android/pushagent/PushService;->mReceiverDispatcher:Lcom/huawei/android/pushagent/ReceiverDispatcher;

    invoke-virtual {v3}, Lcom/huawei/android/pushagent/ReceiverDispatcher;->start()V

    .line 77
    const/4 v1, 0x0

    .local v1, times:I
    move v2, v1

    .line 78
    .end local v1           #times:I
    .local v2, times:I
    :goto_0
    iget-object v3, p0, Lcom/huawei/android/pushagent/PushService;->mReceiverDispatcher:Lcom/huawei/android/pushagent/ReceiverDispatcher;

    iget-object v3, v3, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mHandler:Landroid/os/Handler;

    if-nez v3, :cond_2

    .line 79
    add-int/lit8 v1, v2, 0x1

    .end local v2           #times:I
    .restart local v1       #times:I
    const/16 v3, 0x50

    if-le v2, v3, :cond_1

    .line 80
    sget-object v3, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call mReceiverDispatcher run after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but handler is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/PushService;->stopService()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .end local v1           #times:I
    :goto_1
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:Log.init: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/PushService;->stopService()V

    goto :goto_1

    .line 85
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #times:I
    :cond_1
    const-wide/16 v3, 0x64

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 86
    rem-int/lit8 v3, v1, 0xa

    if-nez v3, :cond_3

    .line 87
    sget-object v3, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wait hander created: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .end local v1           #times:I
    .restart local v2       #times:I
    goto :goto_0

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/android/pushagent/model/channel/ChannelMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/channel/ChannelMgr;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 97
    invoke-static {p0}, Lcom/huawei/android/pushagent/PushService;->setService(Lcom/huawei/android/pushagent/PushService;)V

    .line 99
    invoke-direct {p0}, Lcom/huawei/android/pushagent/PushService;->initProcess()V

    goto :goto_1

    .line 91
    .end local v2           #times:I
    :catch_1
    move-exception v0

    .line 92
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v3, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create ReceiverDispatcher thread or get channelMgr exception ,stopself, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    invoke-virtual {p0}, Lcom/huawei/android/pushagent/PushService;->stopService()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #times:I
    :cond_3
    move v2, v1

    .end local v1           #times:I
    .restart local v2       #times:I
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 12

    .prologue
    .line 191
    :try_start_0
    sget-object v7, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enter PushService:onDestroy(), needExitService is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/huawei/android/pushagent/PushService;->g_Service:Lcom/huawei/android/pushagent/PushService;

    iget-boolean v9, v9, Lcom/huawei/android/pushagent/PushService;->needExitService:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :try_start_1
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.huawei.intent.action.PUSH_OFF"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "Remote_Package_Name"

    iget-object v9, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/android/pushagent/PushService;->broadcastToProcess(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    :goto_0
    const-wide/16 v7, 0x3e8

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    :try_start_3
    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->innerReceiver:Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;

    if-eqz v7, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/huawei/android/pushagent/PushService;->cancelDelayAlarm()V

    .line 207
    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/huawei/android/pushagent/PushService;->innerReceiver:Lcom/huawei/android/pushagent/PushService$PushInnerReceiver;

    invoke-virtual {v7, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 214
    :cond_0
    :goto_1
    :try_start_4
    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->mReceiverDispatcher:Lcom/huawei/android/pushagent/ReceiverDispatcher;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->mReceiverDispatcher:Lcom/huawei/android/pushagent/ReceiverDispatcher;

    iget-object v7, v7, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_1

    .line 216
    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->mReceiverDispatcher:Lcom/huawei/android/pushagent/ReceiverDispatcher;

    iget-object v7, v7, Lcom/huawei/android/pushagent/ReceiverDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->quit()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 222
    :cond_1
    :goto_2
    :try_start_5
    iget-boolean v7, p0, Lcom/huawei/android/pushagent/PushService;->needExitService:Z

    if-nez v7, :cond_3

    .line 224
    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    const-string v8, "run_time_less_times"

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v5

    .line 226
    .local v5, run_time_less_times:J
    const-wide/16 v1, 0x0

    .line 228
    .local v1, next_start_interval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/huawei/android/pushagent/PushService;->mServiceStartTime:J

    sub-long v3, v7, v9

    .line 229
    .local v3, run_seconds:J
    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPushLeastRunTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    cmp-long v7, v3, v7

    if-lez v7, :cond_4

    .line 230
    const-wide/16 v5, 0x0

    .line 235
    :goto_3
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_5

    .line 236
    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPush1StartInt()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v1, v7, v9

    .line 244
    :cond_2
    :goto_4
    sget-object v7, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "next start time will be "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    div-long v9, v1, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " seconds later"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " run_time_less_times is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "times"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    new-instance v8, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;

    const-string v9, "run_time_less_times"

    const-class v10, Ljava/lang/Long;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/huawei/android/pushagent/datatype/CFG_TYPE;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {v7, v8}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->setValue(Landroid/content/Context;Lcom/huawei/android/pushagent/datatype/CFG_TYPE;)V

    .line 251
    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/huawei/android/pushagent/utils/CommFun;->isFrameworkPushExist(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 252
    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "android"

    const-string v10, "com.huawei.android.pushagentproxy.PushService"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {v7, v8, v1, v2}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->setDelayNotifyService(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 261
    .end local v1           #next_start_interval:J
    .end local v3           #run_seconds:J
    .end local v5           #run_time_less_times:J
    :cond_3
    :goto_5
    invoke-super {p0}, Lcom/huawei/android/microkernel/MKService;->onDestroy()V

    .line 266
    :goto_6
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Exception;
    sget-object v7, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call PushService:onDestroy() in broadcastToProcess cause "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 263
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 264
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v7, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call PushService:onDestroy() cause "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 209
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 210
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_6
    sget-object v7, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call PushService:onDestroy() in unregisterInnerReceiver cause "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 218
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 219
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v7, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call PushService:onDestroy() in unregisterReceiver cause "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 232
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #next_start_interval:J
    .restart local v3       #run_seconds:J
    .restart local v5       #run_time_less_times:J
    :cond_4
    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    goto/16 :goto_3

    .line 237
    :cond_5
    const-wide/16 v7, 0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_6

    .line 238
    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPush2StartInt()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v1, v7, v9

    goto/16 :goto_4

    .line 239
    :cond_6
    const-wide/16 v7, 0x2

    cmp-long v7, v5, v7

    if-nez v7, :cond_7

    .line 240
    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPush3StartInt()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v1, v7, v9

    goto/16 :goto_4

    .line 241
    :cond_7
    const-wide/16 v7, 0x3

    cmp-long v7, v5, v7

    if-ltz v7, :cond_2

    .line 242
    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getPush4StartInt()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v1, v7, v9

    goto/16 :goto_4

    .line 254
    :cond_8
    iget-object v7, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.huawei.intent.action.PUSH_ON"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {v7, v8, v1, v2}, Lcom/huawei/android/pushagent/utils/tools/AlarmTools;->setDelayAlarm(Landroid/content/Context;Landroid/content/Intent;J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 150
    :try_start_0
    sget-object v1, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    const-string v2, "PushService onStartCommand"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/huawei/android/microkernel/MKService;->onStartCommand(Landroid/content/Intent;II)I

    .line 152
    if-eqz p1, :cond_0

    .line 154
    sget-object v1, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand, intent is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/huawei/android/pushagent/PushService;->broadcastToProcess(Landroid/content/Intent;)V

    .line 162
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 157
    :cond_0
    sget-object v1, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    const-string v2, "onStartCommand, intent is null ,mybe restart service called by android system"

    invoke-static {v1, v2}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/huawei/android/pushagent/PushService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call PushService:onStartCommand() cause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setParam(Landroid/app/Service;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "service"
    .parameter "bd"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/huawei/android/pushagent/PushService;->context:Landroid/content/Context;

    .line 48
    const/4 v0, 0x1

    return v0
.end method
