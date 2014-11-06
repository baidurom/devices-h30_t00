.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;
.super Ljava/lang/Object;
.source "SyncWorkerManager.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;


# static fields
.field private static final DLNA_PARA_TYPE_STRING:I = 0x0

.field private static final DLNA_SEEK_MODE_REL_TIME:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SyncWorkerManager"

.field private static final TRANSPORT_CHANNEL:I = 0x6

.field private static final instanceId:I


# instance fields
.field private currentMedia:Ljava/lang/String;

.field private deviceId:I

.field private isThreadRunning:Z

.field private playerStateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private playerStateWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;

.field private processWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;

.field private shoudRunning:Z

.field private startFlag:Z

.field private syncFailedListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private threadPlayingState:Ljava/lang/Thread;

.field private threadProcess:Ljava/lang/Thread;

.field private volumeWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IVolumeSyncWorker;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "deviceID"

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->deviceId:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateListenerList:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->syncFailedListenerList:Ljava/util/List;

    .line 130
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->deviceId:I

    .line 133
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;

    invoke-direct {v0, p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;I)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->processWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;

    .line 135
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;

    invoke-direct {v0, p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;I)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;

    .line 137
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/VolumeSyncWorker;

    invoke-direct {v0, p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/VolumeSyncWorker;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;I)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->volumeWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IVolumeSyncWorker;

    .line 138
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->runSyncProcess()V

    return-void
.end method

.method static synthetic access$1(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->runSyncPlayingState()V

    return-void
.end method

.method static synthetic access$2(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;)I
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->deviceId:I

    return v0
.end method

.method static synthetic access$3(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IVolumeSyncWorker;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->volumeWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IVolumeSyncWorker;

    return-object v0
.end method

.method private checkStart()V
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->isThreadRunning:Z

    if-nez v0, :cond_0

    .line 659
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->startFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->shoudRunning:Z

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->start()V

    .line 663
    :cond_0
    return-void
.end method

.method private checkStop()V
    .locals 2

    .prologue
    .line 670
    iget-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->isThreadRunning:Z

    if-eqz v1, :cond_1

    .line 671
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->startFlag:Z

    .line 672
    .local v0, oldStartFlag:Z
    iget-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->startFlag:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->shoudRunning:Z

    if-nez v1, :cond_1

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->close()V

    .line 674
    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->startFlag:Z

    .line 677
    .end local v0           #oldStartFlag:Z
    :cond_1
    return-void
.end method

.method private getVolumeFromAction()V
    .locals 3

    .prologue
    .line 633
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$5;

    invoke-direct {v1, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$5;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;)V

    .line 649
    const-string v2, "getVolumeFromAction"

    .line 633
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 650
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 651
    return-void
.end method

.method private playStateAndProcessStop()Z
    .locals 2

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->syncWorkerThreadStop()V

    .line 691
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;->stop(I)Z

    move-result v0

    return v0
.end method

.method private runSyncPlayingState()V
    .locals 4

    .prologue
    .line 526
    :goto_0
    iget-boolean v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->isThreadRunning:Z

    if-nez v2, :cond_0

    .line 538
    return-void

    .line 529
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;->runSync(I)V

    .line 531
    const-wide/16 v2, 0x258

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "SyncWorkerManager"

    const-string v3, "runSyncPlayingState happened InterruptedException"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 534
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 535
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->sendFaildMessage(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private runSyncProcess()V
    .locals 4

    .prologue
    .line 508
    :goto_0
    iget-boolean v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->isThreadRunning:Z

    if-nez v2, :cond_0

    .line 520
    return-void

    .line 510
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->processWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;->runSync(I)V

    .line 513
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "SyncWorkerManager"

    const-string v3, "runSyncProcess happened InterruptedException"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 516
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 517
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->sendFaildMessage(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private startPlayingStateThread()V
    .locals 4

    .prologue
    .line 591
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadPlayingState:Ljava/lang/Thread;

    if-nez v2, :cond_0

    .line 592
    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$3;

    const-string v3, "runSyncPlayingState"

    invoke-direct {v2, p0, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$3;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadPlayingState:Ljava/lang/Thread;

    .line 604
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadPlayingState:Ljava/lang/Thread;

    .line 605
    new-instance v3, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$4;

    invoke-direct {v3, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$4;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;)V

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 616
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadPlayingState:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 617
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadPlayingState:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 627
    :cond_1
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v1

    .line 620
    .local v1, llex:Ljava/lang/IllegalArgumentException;
    const-string v2, "SyncWorkerManager"

    .line 621
    const-string v3, "threadPlayingState.start has IllegalArgumentException"

    .line 620
    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    .end local v1           #llex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 623
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SyncWorkerManager"

    .line 624
    const-string v3, "threadPlayingState.start has Exception"

    .line 623
    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startProcessThread()V
    .locals 3

    .prologue
    .line 545
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadProcess:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 546
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$1;

    const-string v2, "runSyncProcess"

    invoke-direct {v1, p0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$1;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadProcess:Ljava/lang/Thread;

    .line 560
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadProcess:Ljava/lang/Thread;

    .line 561
    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$2;

    invoke-direct {v2, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager$2;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;)V

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 572
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadProcess:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 573
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadProcess:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 584
    :cond_1
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, e:Ljava/lang/IllegalThreadStateException;
    const-string v1, "SyncWorkerManager"

    .line 578
    const-string v2, "threadProcess.start has IllegalThreadStateException"

    .line 577
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    .end local v0           #e:Ljava/lang/IllegalThreadStateException;
    :catch_1
    move-exception v0

    .line 581
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SyncWorkerManager"

    .line 582
    const-string v2, "threadProcess.start has Exception"

    .line 581
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private syncWorkerThreadStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 704
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadPlayingState:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadPlayingState:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 714
    :goto_0
    iput-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadPlayingState:Ljava/lang/Thread;

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadProcess:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 718
    :try_start_1
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadProcess:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 726
    :goto_1
    iput-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->threadProcess:Ljava/lang/Thread;

    .line 728
    :cond_1
    return-void

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "SyncWorkerManager"

    .line 709
    const-string v2, "syncWorkerThreadStop:threadPlayingState has SecurityException"

    .line 708
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 710
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 711
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "SyncWorkerManager"

    .line 712
    const-string v2, "syncWorkerThreadStop:threadPlayingState has Throwable"

    .line 711
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 719
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 720
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "SyncWorkerManager"

    .line 721
    const-string v2, "syncWorkerThreadStop:threadProcess has SecurityException"

    .line 720
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 722
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 723
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "SyncWorkerManager"

    .line 724
    const-string v2, "syncWorkerThreadStop:threadProcess has Throwable"

    .line 723
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addFaildListener(Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->syncFailedListenerList:Ljava/util/List;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->syncFailedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addStateChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateListenerList:Ljava/util/List;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 472
    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->isThreadRunning:Z

    .line 473
    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->startFlag:Z

    .line 476
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->syncWorkerThreadStop()V

    .line 477
    return-void
.end method

.method public getCurrentMedia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->currentMedia:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->processWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;->getPositionInfo(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTransportInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;->getPlayerState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->volumeWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IVolumeSyncWorker;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IVolumeSyncWorker;->getVolumeInfo(II)Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public isShoudRunning()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->shoudRunning:Z

    return v0
.end method

.method public pause()Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;->pause(I)Z

    move-result v0

    return v0
.end method

.method public performFaild(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;)V
    .locals 7
    .parameter "type"
    .parameter "value"

    .prologue
    .line 417
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->syncFailedListenerList:Ljava/util/List;

    monitor-enter v4

    .line 418
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->syncFailedListenerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    monitor-exit v4

    .line 433
    return-void

    .line 419
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;

    .line 420
    .local v1, item:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;
    if-nez v1, :cond_1

    .line 421
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 417
    .end local v1           #item:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 424
    .restart local v1       #item:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;>;"
    :cond_1
    :try_start_1
    const-string v3, "SyncWorkerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "performFaild:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-interface {v1, p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;->OnFaild(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 428
    const-string v3, "SyncWorkerManager"

    const-string v5, "performFaild"

    invoke-static {v3, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public performMediaChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)V
    .locals 7
    .parameter "media"

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateListenerList:Ljava/util/List;

    monitor-enter v4

    .line 398
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateListenerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 397
    monitor-exit v4

    goto :goto_0

    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 399
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;>;"
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    .line 400
    .local v1, item:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;
    if-nez v1, :cond_2

    .line 401
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 404
    :cond_2
    :try_start_2
    const-string v3, "SyncWorkerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "performMediaChanged:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;->onMediaChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 408
    const-string v3, "SyncWorkerManager"

    const-string v5, "performMediaChanged"

    invoke-static {v3, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public performPositionChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;)V
    .locals 7
    .parameter "position"

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateListenerList:Ljava/util/List;

    monitor-enter v4

    .line 324
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateListenerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 323
    monitor-exit v4

    goto :goto_0

    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 325
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;>;"
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    .line 326
    .local v1, item:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;
    if-nez v1, :cond_2

    .line 327
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 330
    :cond_2
    :try_start_2
    const-string v3, "SyncWorkerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "performPositionChanged:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;->onPositionChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 335
    const-string v3, "SyncWorkerManager"

    const-string v5, "performPositionChanged"

    invoke-static {v3, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public performTransportStateChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)V
    .locals 7
    .parameter "transportinfo"

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateListenerList:Ljava/util/List;

    monitor-enter v4

    .line 348
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateListenerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 347
    monitor-exit v4

    goto :goto_0

    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 349
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;>;"
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    .line 350
    .local v1, item:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;
    if-nez v1, :cond_2

    .line 351
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 354
    :cond_2
    :try_start_2
    const-string v3, "SyncWorkerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "performTransportStateChanged:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;->onTransportStateChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 359
    const-string v3, "SyncWorkerManager"

    const-string v5, "performTransportStateChanged"

    invoke-static {v3, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public performVolumeChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;)V
    .locals 7
    .parameter "volume"

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateListenerList:Ljava/util/List;

    monitor-enter v4

    .line 373
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateListenerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 372
    monitor-exit v4

    goto :goto_0

    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 374
    .restart local v2       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;>;"
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    .line 375
    .local v1, item:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;
    if-nez v1, :cond_2

    .line 376
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 379
    :cond_2
    :try_start_2
    const-string v3, "SyncWorkerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "performVolumeChanged:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;->onVolumeChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 384
    const-string v3, "SyncWorkerManager"

    const-string v5, "performVolumeChanged"

    invoke-static {v3, v5, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public play()Z
    .locals 3

    .prologue
    .line 238
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;->play(I)Z

    move-result v0

    .line 239
    .local v0, result:Z
    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->setShoudRunning(Z)V

    .line 240
    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->processWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;->startProcessSync()V

    .line 243
    :cond_0
    return v0
.end method

.method public push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;Ljava/lang/String;)Z
    .locals 6
    .parameter "media"
    .parameter "localPositionTime"

    .prologue
    const/4 v2, 0x0

    .line 208
    if-nez p1, :cond_1

    move v1, v2

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 212
    :cond_1
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->processWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;->lockProcess()Z

    move-result v0

    .line 213
    .local v0, locked:Z
    const/4 v1, 0x0

    .line 214
    .local v1, result:Z
    if-eqz v0, :cond_3

    .line 215
    const-string v3, "SyncWorkerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "play:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->deviceId:I

    if-ltz v3, :cond_2

    .line 217
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;

    invoke-interface {v3, v2, p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;->push(ILcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;Ljava/lang/String;)Z

    move-result v1

    .line 220
    :cond_2
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->processWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;->unlockProcess()V

    .line 222
    :cond_3
    if-eqz v1, :cond_4

    .line 223
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->processWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;->startProcessSync()V

    .line 225
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->processWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;

    invoke-interface {v2, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;->notifyPlay(Ljava/lang/String;)V

    .line 228
    :cond_4
    invoke-virtual {p0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->setShoudRunning(Z)V

    .line 229
    if-eqz v1, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->getVolumeFromAction()V

    goto :goto_0
.end method

.method public removeFaildListener(Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->syncFailedListenerList:Ljava/util/List;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->syncFailedListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 175
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeStateChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateListenerList:Ljava/util/List;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playerStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public seek(Ljava/lang/String;)Z
    .locals 3
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->processWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;

    const/4 v1, 0x2

    invoke-interface {v0, v2, v1, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;->seek(IIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendFaildMessage(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 462
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;-><init>()V

    .line 463
    .local v0, message:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->setLastValue(Ljava/lang/Object;)V

    .line 464
    const-string v1, "Sync Faild"

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->setMessage(Ljava/lang/String;)V

    .line 465
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;->System:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;

    invoke-virtual {p0, v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->performFaild(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;)V

    .line 466
    return-void
.end method

.method public setCurrentMedia(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 447
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->currentMedia:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setLocalNextUri(Ljava/lang/String;)Z
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v1

    .line 270
    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->deviceId:I

    .line 269
    invoke-virtual {v1, v2, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmcSetNextLocalFileTransferURI(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 273
    :cond_0
    return v0
.end method

.method public setNextUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
    .locals 5
    .parameter "media"

    .prologue
    const/4 v0, 0x0

    .line 279
    if-eqz p1, :cond_0

    .line 280
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v1

    .line 281
    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->deviceId:I

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getMetaData()Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmcSetNextAVTransportURI(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 282
    const/4 v0, 0x1

    .line 287
    :cond_0
    return v0
.end method

.method public setShoudRunning(Z)V
    .locals 0
    .parameter "shoudRunning"

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->shoudRunning:Z

    .line 496
    if-eqz p1, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->checkStart()V

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->checkStop()V

    goto :goto_0
.end method

.method public setVolume(I)Z
    .locals 3
    .parameter "desiredVolume"

    .prologue
    const/4 v0, 0x0

    .line 259
    if-gez p1, :cond_0

    .line 263
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->volumeWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IVolumeSyncWorker;

    const/4 v2, 0x6

    invoke-interface {v1, v0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IVolumeSyncWorker;->setVolume(III)Z

    move-result v0

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 182
    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->startFlag:Z

    .line 184
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->deviceId:I

    if-gez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->isThreadRunning:Z

    if-nez v0, :cond_0

    .line 192
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->shoudRunning:Z

    if-eqz v0, :cond_0

    .line 195
    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->isThreadRunning:Z

    .line 200
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->startProcessThread()V

    .line 202
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->startPlayingStateThread()V

    goto :goto_0
.end method

.method public startProcessSync()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->processWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;->startProcessSync()V

    .line 443
    return-void
.end method

.method public stop()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->isThreadRunning:Z

    .line 294
    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->startFlag:Z

    .line 295
    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->shoudRunning:Z

    .line 297
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->playStateAndProcessStop()Z

    move-result v0

    return v0
.end method

.method public stopProcessSync()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/SyncWorkerManager;->processWorker:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;->stopProcessSync()V

    .line 438
    return-void
.end method
