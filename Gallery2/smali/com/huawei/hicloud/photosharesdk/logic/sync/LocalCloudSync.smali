.class public Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "LocalCloudSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync$MyTimerTask;
    }
.end annotation


# static fields
.field public static final ALLFOLDERS:I = 0x1

.field public static final COMPARE:I = 0x3e8

.field public static final FOLDER_MINE:I = 0x4

.field public static final FOLDER_PUSH_SPECIAL:I = 0x5

.field public static final FOLDER_RECEIVED:I = 0x2

.field public static final FOLDER_SHARED:I = 0x3

.field public static final FROM_ALLSYNC_NORMAL:I = 0x0

.field public static final FROM_DOWNLOAD:I = 0x5

.field public static final FROM_PAUSESYNC:I = 0x7

.field public static final FROM_PUSH_SCOPE:I = 0x3

.field public static final FROM_SERVERS:I = 0x4

.field public static final FROM_STATECHANGE:I = 0x6

.field public static final FROM_SYNC_FORCE:I = 0x1

.field public static final FROM_TASKINFO:I = 0x8

.field public static final FROM_UI:I = 0x2

.field public static final PATHALLFOLDERS:Ljava/lang/String; = "/Photoshare"

.field public static final PATHMINE:Ljava/lang/String; = "/Photoshare/myphoto"

.field public static final PATHRECEIVE:Ljava/lang/String; = "/PhotoshareReceived"

.field public static final PATHSHARED:Ljava/lang/String; = "/PhotoshareShared"

.field public static final PRIORITY_HIGHER:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final TAG:Ljava/lang/String; = null

.field public static final TASKINFOSTART:I = 0x3ea

.field public static final TIMERCOMPARE:I = 0x3e9

.field private static final TIMERDELAY:I = 0x3e8

.field private static final TIMERPERIOD:I = 0x57b12c00

.field public static final UNKNOWN:I

.field private static mCompareHandler:Landroid/os/Handler;

.field private static mSyncTask:Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

.field private static mUnAcceptedNotifyStamp:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mSyncTask:Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mUnAcceptedNotifyStamp:Ljava/util/concurrent/ConcurrentHashMap;

    .line 481
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync$1;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/CloudHandlerThread;->getInstance()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mCompareHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mContext:Landroid/content/Context;

    .line 94
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimer:Ljava/util/Timer;

    .line 96
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimerTask:Ljava/util/TimerTask;

    .line 107
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->TAG:Ljava/lang/String;

    const-string v1, "LocalCloudSync Constructed begin"

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mContext:Landroid/content/Context;

    .line 112
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->TAG:Ljava/lang/String;

    const-string v1, "LocalCloudSync Constructed end"

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    return-void
.end method

.method static synthetic access$0()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mCompareHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;
    .locals 2

    .prologue
    .line 471
    const-class v1, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mSyncTask:Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;-><init>()V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mSyncTask:Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    .line 475
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mSyncTask:Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isNewInvitedNotified(Ljava/lang/String;)Z
    .locals 3
    .parameter "sharePath"

    .prologue
    .line 534
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mUnAcceptedNotifyStamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "isNewInvitedNotified:true"

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const/4 v0, 0x1

    .line 541
    :goto_0
    return v0

    .line 539
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mUnAcceptedNotifyStamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "isNewInvitedNotified result:false"

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->pause(I)V

    .line 123
    return-void
.end method

.method public pauseSync(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 150
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->resume(I)V

    .line 159
    return-void
.end method

.method public start()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x3e8

    .line 308
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->start(I)V

    .line 310
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$DirHelpUtil$SwitchHelperUtil;->readSwitchInfoFromFile(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    move-result-object v7

    .line 311
    .local v7, switchInfo:Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getTimerSwitch()Z

    move-result v6

    .line 312
    .local v6, isTimer:Z
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getPeriod()J

    move-result-wide v0

    mul-long v4, v0, v2

    .line 313
    .local v4, period:J
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->TAG:Ljava/lang/String;

    const-string v1, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isTimer:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",period:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v1, v8}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    if-eqz v6, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimer:Ljava/util/Timer;

    .line 317
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync$MyTimerTask;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync$MyTimerTask;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimerTask:Ljava/util/TimerTask;

    .line 318
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 320
    :cond_0
    return-void
.end method

.method public declared-synchronized startSync(ILjava/lang/String;I)V
    .locals 3
    .parameter "folderType"
    .parameter "serverPath"
    .parameter "invokedFrom"

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startSync3 folderType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",serverPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",invokedFrom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 292
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :goto_0
    monitor-exit p0

    return-void

    .line 299
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSync(ILjava/lang/String;II)V
    .locals 8
    .parameter "scopeType"
    .parameter "sharePath"
    .parameter "changeType"
    .parameter "invokedFrom"

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startSync1 scopeType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sharePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",changeType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 188
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",invokedFrom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-static {v0, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    const/4 v6, 0x0

    .line 190
    .local v6, paramFolderType:Ljava/lang/String;
    move-object v7, p2

    .line 191
    .local v7, paramSharePath:Ljava/lang/String;
    if-nez p1, :cond_2

    .line 193
    const-string v6, "3"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 196
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 198
    if-eqz v7, :cond_4

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 199
    const-string v0, "/Photoshare/myphoto"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    const-string v6, "0"

    .line 223
    :cond_3
    :goto_1
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .local v1, syncPool:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v0

    const-wide/16 v2, -0x1

    .line 225
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 224
    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallablePoolSerial(Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    .end local v1           #syncPool:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;
    .end local v6           #paramFolderType:Ljava/lang/String;
    .end local v7           #paramSharePath:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    .restart local v6       #paramFolderType:Ljava/lang/String;
    .restart local v7       #paramSharePath:Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 205
    const-string v6, "4"

    goto :goto_1

    .line 209
    :cond_5
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_1

    .line 210
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startSync:scopeType error!scopeType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 216
    const-string v6, "1"

    goto :goto_1

    .line 218
    :cond_7
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 220
    const-string v6, "2"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized startSync(ILjava/lang/String;IZ)V
    .locals 8
    .parameter "folderType"
    .parameter "serverPath"
    .parameter "invokedFrom"
    .parameter "isPriority"

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startSync2 folderType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",serverPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",invokedFrom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isPriority:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v0, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    const/4 v7, 0x0

    .line 251
    .local v7, paramfolderType:Ljava/lang/String;
    move-object v6, p2

    .line 253
    .local v6, paramSharePath:Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 255
    const-string v7, "3"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :goto_0
    monitor-exit p0

    return-void

    .line 258
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 260
    :try_start_1
    const-string v7, "0"

    .line 271
    :cond_2
    :goto_1
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;

    const/4 v0, 0x0

    invoke-direct {v1, v7, v0, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .local v1, syncPool:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v0

    const-wide/16 v2, -0x1

    .line 273
    const/4 v5, 0x0

    move v4, p4

    .line 272
    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallablePoolSerial(Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    .end local v1           #syncPool:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncPool;
    .end local v6           #paramSharePath:Ljava/lang/String;
    .end local v7           #paramfolderType:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 262
    .restart local v6       #paramSharePath:Ljava/lang/String;
    .restart local v7       #paramfolderType:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 264
    :try_start_2
    const-string v7, "1"

    goto :goto_1

    .line 266
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 268
    const-string v7, "2"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->stop(I)V

    .line 328
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 331
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimer:Ljava/util/Timer;

    .line 332
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 333
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimerTask:Ljava/util/TimerTask;

    .line 335
    :cond_0
    return-void
.end method

.method public stopSync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->stopNow(I)V

    .line 343
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 346
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimer:Ljava/util/Timer;

    .line 347
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 348
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->mTimerTask:Ljava/util/TimerTask;

    .line 461
    :cond_0
    return-void
.end method
