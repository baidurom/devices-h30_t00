.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;
.super Ljava/lang/Object;
.source "PlayerStateSynWorker.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IPlayerStateWorker;


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$jni$DLNATransportInfo$DlnaTransportStateEnum:[I = null

.field private static final DLNA_PARA_TYPE_STRING:I = 0x0

.field private static final DLNA_SEEK_MODE_REL_TIME:I = 0x2

.field private static final OFFSET_TIME:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "PlayerStateSynWorker"

.field private static final TIME_OUT_LOCK:J = 0x1324L

.field private static final TRANSPORT_PLAYSPEED:Ljava/lang/String; = "1"


# instance fields
.field private deviceId:I

.field private errorTimes:I

.field protected isLastFailed:Z

.field private lastPlayStateValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

.field private lastSetplaytime:J

.field private lock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected manager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$jni$DLNATransportInfo$DlnaTransportStateEnum()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$jni$DLNATransportInfo$DlnaTransportStateEnum:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->values()[Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->NO_MEDIA_PRESENT:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->PAUSED_PLAYBACK:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->PAUSED_RECODING:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->PLAYING:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$jni$DLNATransportInfo$DlnaTransportStateEnum:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;I)V
    .locals 2
    .parameter "manager"
    .parameter "deviceId"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->isLastFailed:Z

    .line 88
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 93
    iput v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->errorTimes:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->deviceId:I

    .line 109
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->manager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;

    .line 110
    iput p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->deviceId:I

    .line 111
    return-void
.end method

.method private getTransportStateInfo(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    .locals 4
    .parameter "instanceId"

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, result:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v2

    .line 369
    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->deviceId:I

    invoke-virtual {v2, v3, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmcGetTransportInfo(II)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;

    move-result-object v1

    .line 370
    .local v1, transport:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;->getReturnValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 371
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    .end local v0           #result:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;-><init>()V

    .line 372
    .restart local v0       #result:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->$SWITCH_TABLE$com$huawei$android$multiscreen$dlna$sdk$jni$DLNATransportInfo$DlnaTransportStateEnum()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;->getTranState()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 389
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->setTransportState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;)V

    .line 393
    :cond_0
    :goto_0
    return-object v0

    .line 374
    :pswitch_0
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->NO_MEDIA_PRESENT:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->setTransportState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;)V

    goto :goto_0

    .line 377
    :pswitch_1
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PAUSED_PLAYBACK:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->setTransportState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;)V

    goto :goto_0

    .line 380
    :pswitch_2
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PAUSED_RECODING:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->setTransportState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;)V

    goto :goto_0

    .line 383
    :pswitch_3
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PLAYING:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->setTransportState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;)V

    goto :goto_0

    .line 386
    :pswitch_4
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->setTransportState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;)V

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private nofityChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)V
    .locals 3
    .parameter "transportInfo"

    .prologue
    .line 452
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->getTransportState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v1

    .line 454
    .local v1, transportState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lastPlayStateValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    if-nez v2, :cond_0

    .line 456
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->notifyChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)V

    .line 469
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lastPlayStateValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->getTransportState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v0

    .line 461
    .local v0, lastState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lastPlayStateValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    goto :goto_0

    .line 466
    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->notifyChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)V

    goto :goto_0
.end method

.method private notifyChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)V
    .locals 1
    .parameter "newTransportInfo"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lastPlayStateValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    .line 481
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->manager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;

    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;->performTransportStateChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)V

    .line 482
    return-void
.end method

.method private notifyFailed()V
    .locals 3

    .prologue
    .line 436
    iget-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->isLastFailed:Z

    if-nez v1, :cond_0

    .line 437
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->isLastFailed:Z

    .line 439
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;-><init>()V

    .line 440
    .local v0, faildMessage:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lastPlayStateValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->setLastValue(Ljava/lang/Object;)V

    .line 441
    const-string v1, "call JNI->getPlayStateInfo faild"

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->setMessage(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->manager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;->System:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;

    invoke-interface {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;->performFaild(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;)V

    .line 444
    .end local v0           #faildMessage:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;
    :cond_0
    return-void
.end method

.method private syncPlayStateCheck(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)V
    .locals 6
    .parameter "transportInfo"

    .prologue
    .line 405
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->getTransportState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PLAYING:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->getTransportState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v2

    .line 407
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    .line 406
    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->getTransportState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v2

    .line 409
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PAUSED_PLAYBACK:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    .line 408
    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->getTransportState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v2

    .line 413
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    .line 412
    invoke-virtual {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 416
    .local v0, nowTime:J
    const-string v2, "PlayerStateSynWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stop between play time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    iget-wide v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lastSetplaytime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-wide v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lastSetplaytime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 430
    .end local v0           #nowTime:J
    :cond_1
    :goto_0
    return-void

    .line 427
    :cond_2
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->nofityChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public getLastValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lastPlayStateValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    return-object v0
.end method

.method public getPlayerState(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    .locals 1
    .parameter "instanceId"

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->getTransportStateInfo(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    move-result-object v0

    .line 349
    .local v0, info:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    return-object v0
.end method

.method public pause(I)Z
    .locals 8
    .parameter "instanceId"

    .prologue
    .line 313
    const/4 v3, 0x0

    .line 314
    .local v3, result:Z
    const/4 v2, 0x0

    .line 317
    .local v2, isLocked:Z
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v5, 0x1324

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 318
    if-nez v2, :cond_1

    .line 336
    if-eqz v2, :cond_0

    .line 337
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 319
    :cond_0
    const/4 v4, 0x0

    .line 341
    :goto_0
    return v4

    .line 325
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v4

    iget v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->deviceId:I

    invoke-virtual {v4, v5, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmcPause(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_2

    .line 327
    const/4 v3, 0x1

    .line 336
    :cond_2
    if-eqz v2, :cond_3

    .line 337
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 340
    :cond_3
    :goto_1
    const-string v4, "PlayerStateSynWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pause:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 341
    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, iex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "PlayerStateSynWorker"

    const-string v5, "pause() has InterruptedException"

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    if-eqz v2, :cond_3

    .line 337
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 332
    .end local v1           #iex:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "PlayerStateSynWorker"

    const-string v5, "pause() has Exception"

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 336
    if-eqz v2, :cond_3

    .line 337
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 334
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 336
    if-eqz v2, :cond_4

    .line 337
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 339
    :cond_4
    throw v4
.end method

.method public play(I)Z
    .locals 7
    .parameter "instanceId"

    .prologue
    .line 248
    const/4 v2, 0x0

    .line 249
    .local v2, result:Z
    const/4 v1, 0x0

    .line 252
    .local v1, isLocked:Z
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x1324

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 253
    if-nez v1, :cond_1

    .line 275
    if-eqz v1, :cond_0

    .line 276
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 254
    :cond_0
    const/4 v3, 0x0

    .line 280
    :goto_0
    return v3

    .line 258
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v3

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->deviceId:I

    .line 259
    const-string v5, "1"

    .line 258
    invoke-virtual {v3, v4, p1, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDMCSendPlay(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 260
    const/4 v2, 0x1

    .line 263
    :cond_2
    const-string v3, "PlayerStateSynWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "play:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->manager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;

    invoke-interface {v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;->getCurrentMedia()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-eqz v2, :cond_3

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lastSetplaytime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    :cond_3
    if-eqz v1, :cond_4

    .line 276
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 279
    :cond_4
    :goto_1
    const-string v3, "PlayerStateSynWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "play:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 280
    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "PlayerStateSynWorker"

    const-string v4, "play() has InterruptedException"

    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    if-eqz v1, :cond_4

    .line 276
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 271
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 272
    .local v0, ie:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "PlayerStateSynWorker"

    const-string v4, "play() has Exception"

    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    if-eqz v1, :cond_4

    .line 276
    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 273
    .end local v0           #ie:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 275
    if-eqz v1, :cond_5

    .line 276
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 278
    :cond_5
    throw v3
.end method

.method public push(ILcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;Ljava/lang/String;)Z
    .locals 12
    .parameter "instanceId"
    .parameter "media"
    .parameter "localPositionTime"

    .prologue
    .line 165
    const/4 v8, 0x0

    .line 168
    .local v8, isLocked:Z
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v1, 0x1324

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 171
    if-nez v8, :cond_1

    .line 236
    if-eqz v8, :cond_0

    .line 237
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 172
    :cond_0
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    .line 179
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->deviceId:I

    invoke-virtual {v0, v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDMCSendStop(II)I

    .line 180
    const/4 v9, 0x0

    .line 181
    .local v9, mediaUrl:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->isLocalFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v0

    .line 183
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->deviceId:I

    .line 184
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v0, v1, p1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmcSetPrivateAVTransportURI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 185
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->manager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;

    invoke-interface {v0, v9}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;->setCurrentMedia(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lastSetplaytime:J

    .line 204
    :goto_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->deviceId:I

    const-string v2, "1"

    invoke-virtual {v0, v1, p1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDMCSendPlay(IILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    .line 205
    .local v11, ret:I
    if-eqz v11, :cond_9

    .line 236
    if-eqz v8, :cond_2

    .line 237
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 207
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    .end local v11           #ret:I
    :cond_3
    if-eqz v8, :cond_4

    .line 237
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 189
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 192
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v0

    .line 193
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->deviceId:I

    .line 194
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getMetaData()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDMCSendSetTransportUri(IILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 195
    .restart local v11       #ret:I
    if-nez v11, :cond_7

    .line 196
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    .line 197
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->manager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;

    invoke-interface {v0, v9}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;->setCurrentMedia(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lastSetplaytime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 232
    .end local v9           #mediaUrl:Ljava/lang/String;
    .end local v11           #ret:I
    :catch_0
    move-exception v0

    .line 236
    if-eqz v8, :cond_6

    .line 237
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 240
    :cond_6
    :goto_2
    const-string v0, "PlayerStateSynWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "play:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    const-string v2, "result: true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lastSetplaytime:J

    .line 243
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 236
    .restart local v9       #mediaUrl:Ljava/lang/String;
    .restart local v11       #ret:I
    :cond_7
    if-eqz v8, :cond_8

    .line 237
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 200
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 210
    :cond_9
    const-wide/16 v0, 0x0

    :try_start_3
    invoke-static {p3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/Util;->timeStr2TimeSecond(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getMediaInfoType()Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    if-eq v0, v1, :cond_a

    .line 211
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getMediaInfoType()Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->FOLDER:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    if-eq v0, v1, :cond_a

    .line 212
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    const/4 v0, 0x6

    if-lt v7, v0, :cond_b

    .line 236
    .end local v7           #i:I
    :cond_a
    if-eqz v8, :cond_6

    .line 237
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    .line 213
    .restart local v7       #i:I
    :cond_b
    :try_start_4
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->getTransportStateInfo(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    move-result-object v10

    .line 214
    .local v10, playState:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->getTransportState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PLAYING:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    if-ne v0, v1, :cond_f

    .line 215
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v0

    .line 216
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->deviceId:I

    const/4 v3, 0x2

    .line 217
    const/4 v4, 0x0

    move v2, p1

    move-object v5, p3

    .line 215
    invoke-virtual/range {v0 .. v5}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmcSeek(IIIILjava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v11

    .line 218
    if-eqz v11, :cond_d

    .line 236
    if-eqz v8, :cond_c

    .line 237
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 219
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 236
    :cond_d
    if-eqz v8, :cond_e

    .line 237
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 225
    :cond_f
    const-wide/16 v0, 0x1f4

    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 212
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 226
    :catch_1
    move-exception v6

    .line 227
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v0, "PlayerStateSynWorker"

    const-string v1, "push() happened InterruptedException"

    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 234
    .end local v6           #e:Ljava/lang/InterruptedException;
    .end local v7           #i:I
    .end local v9           #mediaUrl:Ljava/lang/String;
    .end local v10           #playState:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    .end local v11           #ret:I
    :catchall_0
    move-exception v0

    .line 236
    if-eqz v8, :cond_10

    .line 237
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 239
    :cond_10
    throw v0
.end method

.method public runSync(I)V
    .locals 8
    .parameter "instanceId"

    .prologue
    .line 116
    const/4 v3, 0x0

    .line 119
    .local v3, isLocked:Z
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v5, 0x1324

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 120
    if-nez v3, :cond_1

    .line 154
    if-eqz v3, :cond_0

    .line 155
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    :try_start_1
    const-string v4, "PlayerStateSynWorker"

    const-string v5, "runSync->begin,getTransportInfo"

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->getTransportStateInfo(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    move-result-object v2

    .line 128
    .local v2, info:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    const-string v4, "PlayerStateSynWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "runSync,getPlayerState:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-eqz v2, :cond_3

    .line 131
    const/4 v4, 0x0

    iput v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->errorTimes:I

    .line 132
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->isLastFailed:Z

    .line 134
    invoke-direct {p0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->syncPlayStateCheck(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 155
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 138
    :cond_3
    :try_start_2
    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->errorTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->errorTimes:I

    .line 139
    const-string v4, "PlayerStateSynWorker"

    const-string v5, "\u83b7\u53d6\u64ad\u653e\u72b6\u6001\u51fa\u9519"

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->errorTimes:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    .line 143
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->notifyFailed()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 148
    .end local v2           #info:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    :catch_0
    move-exception v1

    .line 149
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "PlayerStateSynWorker"

    const-string v5, "PlayerStateSynWorke.runSync hanppened InterruptedException"

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    if-eqz v3, :cond_0

    .line 155
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 150
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "PlayerStateSynWorker"

    const-string v5, "PlayerStateSynWorke.runSync hanppened Exception"

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    if-eqz v3, :cond_0

    .line 155
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 152
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 154
    if-eqz v3, :cond_4

    .line 155
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 157
    :cond_4
    throw v4
.end method

.method public stop(I)Z
    .locals 8
    .parameter "instanceId"

    .prologue
    .line 285
    const/4 v3, 0x0

    .line 286
    .local v3, result:Z
    const/4 v2, 0x0

    .line 289
    .local v2, isLocked:Z
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v5, 0x1324

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 290
    if-nez v2, :cond_1

    .line 303
    if-eqz v2, :cond_0

    .line 304
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 291
    :cond_0
    const/4 v4, 0x0

    .line 308
    :goto_0
    return v4

    .line 293
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v4

    iget v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->deviceId:I

    invoke-virtual {v4, v5, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDMCSendStop(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_2

    .line 295
    const/4 v3, 0x1

    .line 303
    :cond_2
    if-eqz v2, :cond_3

    .line 304
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 307
    :cond_3
    :goto_1
    const-string v4, "PlayerStateSynWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sendStop:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 308
    goto :goto_0

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, iex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "PlayerStateSynWorker"

    const-string v5, "stop() has InterruptedException"

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    if-eqz v2, :cond_3

    .line 304
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 299
    .end local v1           #iex:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "PlayerStateSynWorker"

    const-string v5, "stop() has Exception"

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    if-eqz v2, :cond_3

    .line 304
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 301
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 303
    if-eqz v2, :cond_4

    .line 304
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/PlayerStateSynWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 306
    :cond_4
    throw v4
.end method
