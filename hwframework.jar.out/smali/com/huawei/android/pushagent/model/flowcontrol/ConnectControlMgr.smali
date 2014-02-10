.class public Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;
.super Ljava/lang/Object;
.source "ConnectControlMgr.java"


# static fields
.field public static final ConnectControlStoreFile:Ljava/lang/String; = "PushConnectControl"

.field private static final TAG:Ljava/lang/String; = "PushLog2510"

.field private static final TRS_FIRST_FLOWCONTROL_DATA:Ljava/lang/String; = "trsFirstFlowControlData"

.field private static final TRS_FLOWCONTROL_DATA:Ljava/lang/String; = "trsFlowControlData"

.field private static final VOLUME_CONTROLDATA:Ljava/lang/String; = "volumeControlData"

.field private static final WIFI_TRS_FIRST_FLOWCONTROLDATA:Ljava/lang/String; = "wifiTrsFirstFlowControlData"

.field private static final WIFI_TRS_FLOWCONTROL_DATA:Ljava/lang/String; = "wifiTrsFlowControlData"

.field private static final WIFI_VOLUMECONTROL_DATA:Ljava/lang/String; = "wifiVolumeControlData"

.field private static g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;


# instance fields
.field context:Landroid/content/Context;

.field trsFirstFlowControl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;"
        }
    .end annotation
.end field

.field trsFlowControl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;"
        }
    .end annotation
.end field

.field volumeControl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;"
        }
    .end annotation
.end field

.field wifiTrsFirstFlowControl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;"
        }
    .end annotation
.end field

.field wifiTrsFlowControl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;"
        }
    .end annotation
.end field

.field wifiVolumeControl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFirstFlowControl:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFlowControl:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->volumeControl:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFirstFlowControl:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFlowControl:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiVolumeControl:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->load()Z

    .line 48
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFirstFlowControl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFlowControl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->volumeControl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFirstFlowControl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFlowControl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiVolumeControl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const-string v0, "PushLog2510"

    const-string v1, "Connect Control is not set, begin to config it"

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->config()Z

    .line 54
    :cond_0
    return-void
.end method

.method private declared-synchronized addFlow(Ljava/util/List;J)Z
    .locals 5
    .parameter
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .local p1, controlList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    const/4 v2, 0x1

    .line 296
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 305
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 299
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;

    .line 300
    .local v0, fc:Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;
    invoke-interface {v0, p2, p3}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;->addFlow(J)Z

    move-result v3

    if-nez v3, :cond_2

    .line 301
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " control info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    const/4 v2, 0x0

    goto :goto_0

    .line 296
    .end local v0           #fc:Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private canApply(Ljava/util/List;J)Z
    .locals 6
    .parameter
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .local p1, controlList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    const/4 v2, 0x1

    .line 280
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 281
    :cond_0
    const-string v3, "PushLog2510"

    const-string v4, "there is no volome control"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_1
    :goto_0
    return v2

    .line 284
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;

    .line 285
    .local v0, fc:Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;
    invoke-interface {v0, p2, p3}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;->canApply(J)Z

    move-result v3

    if-nez v3, :cond_3

    .line 286
    const-string v2, "PushLog2510"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " not pass:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x0

    goto :goto_0

    .line 289
    :cond_3
    const-string v3, "PushLog2510"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " pass:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private canApplyPushSrv(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, volumeControl:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    const-wide/16 v1, 0x1

    .line 423
    invoke-direct {p0, p1, v1, v2}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->canApply(Ljava/util/List;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    const-string v0, "PushLog2510"

    const-string v1, "volumeControl not allow to pass!!"

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    .line 431
    :goto_0
    return v0

    .line 429
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->addFlow(Ljava/util/List;J)Z

    .line 430
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->save()Z

    .line 431
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canApplyTrs(Ljava/util/List;Ljava/util/List;)Z
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, firstFlowControlList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    .local p2, flowControlList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v5, 0x1

    .line 397
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    const-string v4, "lastQueryTRSsucc_time"

    invoke-static {v3, v4, v7, v8}, Lcom/huawei/android/pushagent/model/config/SystemConfigMgr;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 400
    .local v0, lastQueryTrsSucctime:J
    cmp-long v3, v7, v0

    if-nez v3, :cond_1

    .line 401
    invoke-direct {p0, p1, v5, v6}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->canApply(Ljava/util/List;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    const-string v3, "PushLog2510"

    const-string v4, "trsFirstFlowControl not allowed to pass!!"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_0
    return v2

    .line 406
    :cond_0
    invoke-direct {p0, p1, v5, v6}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->addFlow(Ljava/util/List;J)Z

    .line 418
    :goto_1
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->save()Z

    .line 419
    const/4 v2, 0x1

    goto :goto_0

    .line 410
    :cond_1
    invoke-direct {p0, p2, v5, v6}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->canApply(Ljava/util/List;J)Z

    move-result v3

    if-nez v3, :cond_2

    .line 411
    const-string v3, "PushLog2510"

    const-string v4, "trsFlowControl not allowed to pass!!"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_2
    invoke-direct {p0, p2, v5, v6}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->addFlow(Ljava/util/List;J)Z

    goto :goto_1
.end method

.method private canConnectPushSrv(I)Z
    .locals 2
    .parameter "times"

    .prologue
    .line 272
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiVolumeControl:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->canApplyPushSrv(Ljava/util/List;)Z

    move-result v0

    .line 275
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->volumeControl:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->canApplyPushSrv(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized canConnectPushSrv(Landroid/content/Context;I)Z
    .locals 3
    .parameter "context"
    .parameter "times"

    .prologue
    .line 68
    const-class v1, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    .line 69
    sget-object v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "PushLog2510"

    const-string v2, "cannot get ConnectControlMgr instance, may be system err!!"

    invoke-static {v0, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    invoke-direct {v0, p1}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->canConnectPushSrv(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private canQueryTRS()Z
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/android/pushagent/utils/CommFun;->getAvailableNetwork(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFirstFlowControl:Ljava/util/List;

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFlowControl:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->canApplyTrs(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFirstFlowControl:Ljava/util/List;

    iget-object v1, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFlowControl:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->canApplyTrs(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized canQueryTRS(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    const-class v1, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    .line 58
    sget-object v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "PushLog2510"

    const-string v2, "cannot get ConnectControlMgr instance, may be system err!!"

    invoke-static {v0, v2}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    invoke-direct {v0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->canQueryTRS()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private config()Z
    .locals 15

    .prologue
    const-wide/32 v13, 0x36ee80

    const-wide/16 v11, 0x3e8

    const-wide/32 v9, 0x5265c00

    .line 196
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFirstFlowControl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 197
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFirstFlowControl:Ljava/util/List;

    new-instance v3, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getFirstQueryTRSDayTimes()J

    move-result-wide v4

    invoke-direct {v3, v9, v10, v4, v5}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFirstFlowControl:Ljava/util/List;

    new-instance v3, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getFirstQueryTRSHourTimes()J

    move-result-wide v4

    invoke-direct {v3, v13, v14, v4, v5}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFlowControl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 210
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFlowControl:Ljava/util/List;

    new-instance v3, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getMaxQueryTRSDayTimes()J

    move-result-wide v4

    invoke-direct {v3, v9, v10, v4, v5}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->volumeControl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 230
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getFlowControl()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 231
    .local v1, mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->volumeControl:Ljava/util/List;

    new-instance v4, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long/2addr v5, v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    .end local v1           #mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFirstFlowControl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 237
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFirstFlowControl:Ljava/util/List;

    new-instance v3, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getWifiFirstQueryTRSDayTimes()J

    move-result-wide v4

    invoke-direct {v3, v9, v10, v4, v5}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFirstFlowControl:Ljava/util/List;

    new-instance v3, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getWifiFirstQueryTRSHourTimes()J

    move-result-wide v4

    invoke-direct {v3, v13, v14, v4, v5}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFlowControl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 250
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFlowControl:Ljava/util/List;

    new-instance v3, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    iget-object v4, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getWifiMaxQueryTRSDayTimes()J

    move-result-wide v4

    invoke-direct {v3, v9, v10, v4, v5}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiVolumeControl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 255
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getWifiFlowControl()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 256
    .restart local v1       #mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiVolumeControl:Ljava/util/List;

    new-instance v4, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long/2addr v5, v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 258
    .end local v1           #mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_1
    invoke-direct {p0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->save()Z

    .line 259
    const/4 v2, 0x1

    return v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    const-class v1, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    invoke-direct {v0, p0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    .line 80
    :cond_0
    sget-object v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isEqualIContorlList(Ljava/util/List;Ljava/util/List;)Z
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list1:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    .local p2, list2:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 91
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v5

    .line 93
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_3

    :cond_2
    move v5, v6

    .line 94
    goto :goto_0

    .line 96
    :cond_3
    const/4 v0, 0x0

    .line 98
    .local v0, cfgEqual:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;

    .line 99
    .local v3, l1:Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;
    const/4 v0, 0x0

    .line 100
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;

    .line 101
    .local v4, l2:Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;
    invoke-interface {v3, v4}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;->isSetEqual(Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 102
    const/4 v0, 0x1

    .line 106
    .end local v4           #l2:Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;
    :cond_6
    if-nez v0, :cond_4

    move v5, v6

    .line 107
    goto :goto_0
.end method

.method private isEualCurTRSCfg()Z
    .locals 9

    .prologue
    .line 115
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 116
    .local v2, trsCfgList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    new-instance v3, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getFirstQueryTRSDayTimes()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v3, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    const-wide/32 v4, 0x36ee80

    iget-object v6, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getFirstQueryTRSHourTimes()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFirstFlowControl:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->isEqualIContorlList(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    const-string v3, "PushLog2510"

    const-string v4, "trsFirstFlowControl cfg is change!"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v3, 0x0

    .line 186
    :goto_0
    return v3

    .line 130
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    .end local v2           #trsCfgList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 131
    .restart local v2       #trsCfgList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    new-instance v3, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getMaxQueryTRSDayTimes()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFlowControl:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->isEqualIContorlList(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    const-string v3, "PushLog2510"

    const-string v4, "trsFlowControl cfg is change!!"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v3, 0x0

    goto :goto_0

    .line 140
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    .end local v2           #trsCfgList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 141
    .restart local v2       #trsCfgList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getFlowControl()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 142
    .local v1, mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v4, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    .end local v1           #mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_2
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->volumeControl:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->isEqualIContorlList(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 146
    const-string v3, "PushLog2510"

    const-string v4, "flowcControl cfg is change!!"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v3, 0x0

    goto :goto_0

    .line 151
    :cond_3
    new-instance v2, Ljava/util/LinkedList;

    .end local v2           #trsCfgList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 152
    .restart local v2       #trsCfgList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    new-instance v3, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getWifiFirstQueryTRSDayTimes()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v3, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    const-wide/32 v4, 0x36ee80

    iget-object v6, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getWifiFirstQueryTRSHourTimes()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFirstFlowControl:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->isEqualIContorlList(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 161
    const-string v3, "PushLog2510"

    const-string v4, "wifiTrsFirstFlowControl cfg is change!"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 166
    :cond_4
    new-instance v2, Ljava/util/LinkedList;

    .end local v2           #trsCfgList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 167
    .restart local v2       #trsCfgList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    new-instance v3, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getWifiMaxQueryTRSDayTimes()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFlowControl:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->isEqualIContorlList(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 171
    const-string v3, "PushLog2510"

    const-string v4, "wifiTrsFlowControl cfg is change!!"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 176
    :cond_5
    new-instance v2, Ljava/util/LinkedList;

    .end local v2           #trsCfgList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 177
    .restart local v2       #trsCfgList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/config/PushRouteInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/pushagent/model/config/PushRouteInfo;->getWifiFlowControl()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 178
    .restart local v1       #mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v4, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>(JJ)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 181
    .end local v1           #mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_6
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiVolumeControl:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->isEqualIContorlList(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 182
    const-string v3, "PushLog2510"

    const-string v4, "wifiVolumeControl cfg is change!!"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 185
    :cond_7
    const-string v3, "PushLog2510"

    const-string v4, "cur control is equal trs cfg"

    invoke-static {v3, v4}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private load()Z
    .locals 4

    .prologue
    .line 342
    :try_start_0
    new-instance v1, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    const-string v3, "PushConnectControl"

    invoke-direct {v1, v2, v3}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 344
    .local v1, sp:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFirstFlowControl:Ljava/util/List;

    const-string v3, "trsFirstFlowControlData"

    invoke-direct {p0, v1, v2, v3}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->loadFlowDataFromFile(Lcom/huawei/android/pushagent/utils/tools/PushPreferences;Ljava/util/List;Ljava/lang/String;)Z

    .line 345
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFlowControl:Ljava/util/List;

    const-string v3, "trsFlowControlData"

    invoke-direct {p0, v1, v2, v3}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->loadFlowDataFromFile(Lcom/huawei/android/pushagent/utils/tools/PushPreferences;Ljava/util/List;Ljava/lang/String;)Z

    .line 346
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->volumeControl:Ljava/util/List;

    const-string v3, "volumeControlData"

    invoke-direct {p0, v1, v2, v3}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->loadFlowDataFromFile(Lcom/huawei/android/pushagent/utils/tools/PushPreferences;Ljava/util/List;Ljava/lang/String;)Z

    .line 348
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFirstFlowControl:Ljava/util/List;

    const-string v3, "wifiTrsFirstFlowControlData"

    invoke-direct {p0, v1, v2, v3}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->loadFlowDataFromFile(Lcom/huawei/android/pushagent/utils/tools/PushPreferences;Ljava/util/List;Ljava/lang/String;)Z

    .line 349
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFlowControl:Ljava/util/List;

    const-string v3, "wifiTrsFlowControlData"

    invoke-direct {p0, v1, v2, v3}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->loadFlowDataFromFile(Lcom/huawei/android/pushagent/utils/tools/PushPreferences;Ljava/util/List;Ljava/lang/String;)Z

    .line 350
    iget-object v2, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiVolumeControl:Ljava/util/List;

    const-string v3, "wifiVolumeControlData"

    invoke-direct {p0, v1, v2, v3}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->loadFlowDataFromFile(Lcom/huawei/android/pushagent/utils/tools/PushPreferences;Ljava/util/List;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    const/4 v2, 0x1

    .line 354
    .end local v1           #sp:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    :goto_0
    return v2

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PushLog2510"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadFlowDataFromFile(Lcom/huawei/android/pushagent/utils/tools/PushPreferences;Ljava/util/List;Ljava/lang/String;)Z
    .locals 11
    .parameter "sp"
    .parameter
    .parameter "controlKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/pushagent/utils/tools/PushPreferences;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 359
    .local p2, flowControlList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    const-string v1, "\\|"

    .line 360
    .local v1, dataSplit:Ljava/lang/String;
    const/4 v5, 0x0

    .line 362
    .local v5, infos:[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 363
    invoke-virtual {p1, p3}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, info:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 365
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not set"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_0
    const/4 v8, 0x1

    :goto_0
    return v8

    .line 367
    :cond_1
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 369
    if-eqz v5, :cond_2

    array-length v8, v5

    if-nez v8, :cond_3

    .line 370
    :cond_2
    const-string v8, "PushLog2510"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " len 0, maybe system err"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v8, 0x0

    goto :goto_0

    .line 373
    :cond_3
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v7, v0, v3

    .line 374
    .local v7, s:Ljava/lang/String;
    new-instance v2, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;

    invoke-direct {v2}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;-><init>()V

    .line 375
    .local v2, fc:Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;
    invoke-virtual {v2, v7}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/FlowSimpleControl;->loadFromString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 376
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static reload(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->getInstance(Landroid/content/Context;)Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    .line 85
    sget-object v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    invoke-direct {v0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->isEualCurTRSCfg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const-string v0, "PushLog2510"

    const-string v1, "TRS cfg change, need reload"

    invoke-static {v0, v1}, Lcom/huawei/android/pushagent/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->g_ConnectControlMgr:Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;

    invoke-direct {v0}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->config()Z

    .line 89
    :cond_0
    return-void
.end method

.method private save()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 310
    :try_start_0
    new-instance v1, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;

    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->context:Landroid/content/Context;

    const-string v4, "PushConnectControl"

    invoke-direct {v1, v3, v4}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    .local v1, sp:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFirstFlowControl:Ljava/util/List;

    const-string v4, "wifiTrsFirstFlowControlData"

    invoke-direct {p0, v1, v3, v4}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->saveFlowDataToFile(Lcom/huawei/android/pushagent/utils/tools/PushPreferences;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 336
    .end local v1           #sp:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    :cond_0
    :goto_0
    return v2

    .line 316
    .restart local v1       #sp:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    :cond_1
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFlowControl:Ljava/util/List;

    const-string v4, "wifiTrsFlowControlData"

    invoke-direct {p0, v1, v3, v4}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->saveFlowDataToFile(Lcom/huawei/android/pushagent/utils/tools/PushPreferences;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiVolumeControl:Ljava/util/List;

    const-string v4, "wifiVolumeControlData"

    invoke-direct {p0, v1, v3, v4}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->saveFlowDataToFile(Lcom/huawei/android/pushagent/utils/tools/PushPreferences;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFirstFlowControl:Ljava/util/List;

    const-string v4, "trsFirstFlowControlData"

    invoke-direct {p0, v1, v3, v4}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->saveFlowDataToFile(Lcom/huawei/android/pushagent/utils/tools/PushPreferences;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFlowControl:Ljava/util/List;

    const-string v4, "trsFlowControlData"

    invoke-direct {p0, v1, v3, v4}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->saveFlowDataToFile(Lcom/huawei/android/pushagent/utils/tools/PushPreferences;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    iget-object v3, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->volumeControl:Ljava/util/List;

    const-string v4, "volumeControlData"

    invoke-direct {p0, v1, v3, v4}, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->saveFlowDataToFile(Lcom/huawei/android/pushagent/utils/tools/PushPreferences;Ljava/util/List;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    const/4 v2, 0x1

    goto :goto_0

    .line 334
    .end local v1           #sp:Lcom/huawei/android/pushagent/utils/tools/PushPreferences;
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PushLog2510"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private saveFlowDataToFile(Lcom/huawei/android/pushagent/utils/tools/PushPreferences;Ljava/util/List;Ljava/lang/String;)Z
    .locals 7
    .parameter "sp"
    .parameter
    .parameter "controlKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/pushagent/utils/tools/PushPreferences;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 384
    .local p2, flowControlList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;>;"
    const-string v0, "|"

    .line 385
    .local v0, dataSplit:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 386
    .local v3, infoBuf:Ljava/lang/StringBuffer;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;

    .line 387
    .local v1, f:Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;
    invoke-interface {v1}, Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;->saveToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 389
    .end local v1           #f:Lcom/huawei/android/pushagent/model/flowcontrol/tools/IFlowControl;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p3, v4}, Lcom/huawei/android/pushagent/utils/tools/PushPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 390
    const-string v4, "PushLog2510"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/pushagent/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v4, 0x0

    .line 393
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clearMemory()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFirstFlowControl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 436
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->trsFlowControl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 437
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->volumeControl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 438
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFirstFlowControl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 439
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiTrsFlowControl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 440
    iget-object v0, p0, Lcom/huawei/android/pushagent/model/flowcontrol/ConnectControlMgr;->wifiVolumeControl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 441
    return-void
.end method
