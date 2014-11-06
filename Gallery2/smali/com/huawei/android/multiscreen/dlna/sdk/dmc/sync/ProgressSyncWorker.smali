.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;
.super Ljava/lang/Object;
.source "ProgressSyncWorker.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;


# static fields
.field private static final OFFSET_TIME:J = 0x3e8L

.field private static TAG:Ljava/lang/String; = null

.field private static final TIME_OUT_LOCK:J = 0x1324L


# instance fields
.field private deviceId:I

.field errorTimes:I

.field private isFirstNonZeroFromPlay:Z

.field protected isLastFailed:Z

.field private lastSeekTime:J

.field private lastSeekValue:I

.field private lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

.field private lock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected manager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;

.field private processFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "ProgressSyncWorker"

    sput-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;I)V
    .locals 2
    .parameter "manager"
    .parameter "deviceId"

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->isLastFailed:Z

    .line 66
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->processFlag:Z

    .line 83
    iput v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->errorTimes:I

    .line 88
    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->isFirstNonZeroFromPlay:Z

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->deviceId:I

    .line 104
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->manager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;

    .line 105
    iput p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->deviceId:I

    .line 106
    return-void
.end method

.method private isDifferentBetweenLastTime(Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;)Z
    .locals 5
    .parameter "positionInfo"

    .prologue
    const/4 v3, 0x1

    .line 363
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    if-nez v4, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v3

    .line 367
    :cond_1
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getRelTime()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, lastRelTime:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getTrackDur()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, lastTrackDur:Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getTrackURI()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, lastTrackURI:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 372
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 376
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getTrackURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getRelTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 384
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getTrackDur()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 387
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isNeedFilter(Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;)Z
    .locals 10
    .parameter "positionInfo"

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v1, 0x1

    .line 333
    .line 334
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getRelTime()Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/Util;->timeStr2TimeSecond(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    mul-int/lit16 v0, v2, 0x3e8

    .line 335
    .local v0, currentSeek:I
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isNeedFilter,\u65f6\u95f4\u504f\u5dee\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSeekTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u8fdb\u5ea6\u504f\u5dee\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSeekValue:I

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSeekValue:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSeekTime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-gez v2, :cond_0

    .line 342
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isNeedFilter,\u65f6\u95f4\u548c\u8fdb\u5ea6\u504f\u5dee\u4e3a1\u79d2\u5185\uff0c\u8fc7\u6ee4\u5185\u5bb9\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    return v1

    .line 346
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->isFirstNonZeroFromPlay:Z

    if-nez v2, :cond_1

    .line 347
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isNeedFilter,\u64ad\u653e\u4e4b\u540e\u4e3a0\u7684\u8fdb\u5ea6\u8fc7\u6ee4\uff0c\u8fc7\u6ee4\u5185\u5bb9\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_1
    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->isFirstNonZeroFromPlay:Z

    .line 353
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;)V
    .locals 1
    .parameter "newPositionInfo"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    .line 323
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->manager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;

    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;->performPositionChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;)V

    .line 324
    return-void
.end method


# virtual methods
.method public getLastValue()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    return-object v0
.end method

.method public bridge synthetic getLastValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->getLastValue()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPositionInfo(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    .locals 4
    .parameter "instanceId"

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 208
    .local v1, result:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v2

    .line 209
    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->deviceId:I

    invoke-virtual {v2, v3, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmcGetPositionInfo(II)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;

    move-result-object v0

    .line 210
    .local v0, position:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->getReturnValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 211
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    .end local v1           #result:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;-><init>()V

    .line 212
    .restart local v1       #result:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->getRelTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->setRelTime(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->getTrackDur()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->setTrackDur(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->getTrackMetaData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->setTrackMetaData(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->getTrackURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->setTrackURI(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-object v1
.end method

.method public lockProcess()Z
    .locals 6

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 175
    .local v1, isLocked:Z
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x1324

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    .line 178
    const-string v3, "lockProcess has InterruptedException"

    .line 177
    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyPlay(Ljava/lang/String;)V
    .locals 1
    .parameter "positionTime"

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->isFirstNonZeroFromPlay:Z

    .line 192
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    .line 194
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->setRelTime(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public notifySeek(I)V
    .locals 2
    .parameter "seekValue"

    .prologue
    .line 199
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSeekValue:I

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSeekTime:J

    .line 201
    return-void
.end method

.method public runSync(I)V
    .locals 9
    .parameter "instanceId"

    .prologue
    .line 223
    const/4 v3, 0x0

    .line 225
    .local v3, isLocked:Z
    :try_start_0
    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    const-string v6, "runSync->begin,in thread"

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v6, 0x1324

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 229
    if-nez v3, :cond_2

    .line 307
    :cond_0
    if-eqz v3, :cond_1

    .line 308
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    :try_start_1
    iget-boolean v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->processFlag:Z

    if-eqz v5, :cond_0

    .line 237
    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    const-string v6, "runSync->begin,getPositionInfo"

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->getPositionInfo(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    move-result-object v4

    .line 244
    .local v4, positionInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    if-eqz v4, :cond_8

    .line 245
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->isLastFailed:Z

    .line 246
    const/4 v5, 0x0

    iput v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->errorTimes:I

    .line 247
    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "runSync->getPositionInfo:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getTrackURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "runSync->getPositionInfo:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getRelTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->isDifferentBetweenLastTime(Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 252
    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getTrackURI()Ljava/lang/String;

    move-result-object v5

    .line 253
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->manager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;

    invoke-interface {v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;->getCurrentMedia()Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 256
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;-><init>()V

    .line 257
    .local v1, faildMessage:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    invoke-virtual {v1, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->setLastValue(Ljava/lang/Object;)V

    .line 258
    const-string v5, "call JNI->DeviceSteal faild"

    invoke-virtual {v1, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->setMessage(Ljava/lang/String;)V

    .line 259
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->manager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;

    .line 261
    invoke-virtual {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getTrackMetaData()Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-static {v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/Util;->parseMediaInfoFromXml(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v6

    .line 259
    invoke-interface {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;->performMediaChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)V

    .line 263
    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "runSync\u9000\u51fa\u8f6e\u8bad\uff0c\u539f\u56e0\u662f\u5a92\u4f53\u4fe1\u606f\u4e0d\u4e00\u81f4\uff0c\u88ab\u5176\u4ed6dmc\u62a2\u5360"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    iget-object v7, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->manager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;

    invoke-interface {v7}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;->getCurrentMedia()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 263
    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v1           #faildMessage:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;
    :cond_3
    iget-boolean v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->processFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_4

    .line 307
    if-eqz v3, :cond_1

    .line 308
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 271
    :cond_4
    :try_start_2
    invoke-direct {p0, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->isNeedFilter(Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    if-eqz v5, :cond_5

    .line 307
    if-eqz v3, :cond_1

    .line 308
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 275
    :cond_5
    :try_start_3
    invoke-direct {p0, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->notifyChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 307
    :cond_6
    :goto_1
    if-eqz v3, :cond_1

    .line 308
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 278
    :cond_7
    :try_start_4
    iput-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 301
    .end local v4           #positionInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    :catch_0
    move-exception v2

    .line 302
    .local v2, iex:Ljava/lang/InterruptedException;
    :try_start_5
    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    const-string v6, "runSync() happened InterruptedException"

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 307
    if-eqz v3, :cond_1

    .line 308
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 283
    .end local v2           #iex:Ljava/lang/InterruptedException;
    .restart local v4       #positionInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    :cond_8
    :try_start_6
    iget v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->errorTimes:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->errorTimes:I

    .line 284
    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    const-string v6, "\u83b7\u53d6\u64ad\u653e\u8fdb\u5ea6\u51fa\u9519"

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->errorTimes:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_6

    .line 287
    iget-boolean v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->isLastFailed:Z

    if-nez v5, :cond_6

    .line 288
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->isLastFailed:Z

    .line 290
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;-><init>()V

    .line 291
    .restart local v1       #faildMessage:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    invoke-virtual {v1, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->setLastValue(Ljava/lang/Object;)V

    .line 293
    const-string v5, "call JNI->getPositionInfo faild"

    invoke-virtual {v1, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->setMessage(Ljava/lang/String;)V

    .line 294
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->manager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;

    sget-object v6, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;->System:Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;

    invoke-interface {v5, v6, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;->performFaild(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 303
    .end local v1           #faildMessage:Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;
    .end local v4           #positionInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    :catch_1
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    const-string v6, "runSync() happened Exception"

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 307
    if-eqz v3, :cond_1

    .line 308
    iget-object v5, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 305
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 307
    if-eqz v3, :cond_9

    .line 308
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 310
    :cond_9
    throw v5
.end method

.method public seek(IIILjava/lang/String;)Z
    .locals 10
    .parameter "instanceId"
    .parameter "seekMode"
    .parameter "dataType"
    .parameter "target"

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->processFlag:Z

    .line 119
    invoke-static {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/Util;->timeStr2TimeSecond(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit16 v9, v0, 0x3e8

    .line 121
    .local v9, seekIntValue:I
    const/4 v8, 0x0

    .line 122
    .local v8, result:Z
    const/4 v7, 0x0

    .line 125
    .local v7, isLocked:Z
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v1, 0x1324

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 126
    if-nez v7, :cond_1

    .line 149
    if-eqz v7, :cond_0

    .line 150
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 131
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->deviceId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmcSeek(IIIILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 133
    const/4 v8, 0x1

    .line 138
    :cond_2
    if-eqz v8, :cond_3

    .line 140
    invoke-virtual {p0, v9}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->notifySeek(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :cond_3
    if-eqz v7, :cond_4

    .line 150
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    :cond_4
    :goto_1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seek:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u8fdb\u5ea6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 155
    goto :goto_0

    .line 142
    :catch_0
    move-exception v6

    .line 143
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    const-string v1, "seek() has InterruptedException"

    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    if-eqz v7, :cond_4

    .line 150
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 144
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v6

    .line 145
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->TAG:Ljava/lang/String;

    .line 146
    const-string v1, "seek() has Exception"

    .line 145
    invoke-static {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    if-eqz v7, :cond_4

    .line 150
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 147
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 149
    if-eqz v7, :cond_5

    .line 150
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 152
    :cond_5
    throw v0
.end method

.method public startProcessSync()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->processFlag:Z

    .line 168
    return-void
.end method

.method public stopProcessSync()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->processFlag:Z

    .line 162
    return-void
.end method

.method public unlockProcess()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ProgressSyncWorker;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 187
    return-void
.end method
