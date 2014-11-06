.class public Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;
.super Lcom/huawei/gallery3d/multiscreen/MultiScreen;
.source "MultiScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;,
        Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;,
        Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;,
        Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$StopControlTask;
    }
.end annotation


# static fields
.field private static final CONNECT_SERVICE_DELAY:I = 0x1f4

.field private static final DEFAULT_VIDEO_POSITION:I = 0x1f4

.field private static final MSG_CONNECT_SERVICE:I = 0x5

.field private static final MSG_DISCONNECT_SERVICE:I = 0x6

.field private static final MSG_INIT_DMC:I = 0x1

.field private static final MSG_MIRROR_FAILED:I = 0xe

.field private static final MSG_MIRROR_SUCESS:I = 0xd

.field private static final MSG_PUSH_FAILED:I = 0xc

.field private static final MSG_PUSH_SUCESS:I = 0xb

.field private static final MSG_SERVICE_DOWN:I = 0x2

.field private static final MSG_UPDATE_DLNA_ITEM:I = 0x3

.field private static final MSG_UPDATE_NEAR_ITEM:I = 0x4

.field private static final PACKAGE_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AirSharing_MultiScreenManager"

.field private static instance:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

.field private static mHomePressed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mIsDlnaAvailable:Z

.field private static mIsInController:Z

.field private static mIsNetworkAvailable:Z

.field private static mRebindCount:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMediaType:I

.field private mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

.field private mDevStatusCallback:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;

.field private mEntryFromThird:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsPushView:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mOperationHandler:Landroid/os/Handler;

.field private mPushMedia:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;

.field private mServStateCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

.field private mVideoPosition:I

.field private mVideoUri:Landroid/net/Uri;

.field private mWifiReceiver:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    const-class v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->PACKAGE_NAME:Ljava/lang/String;

    .line 85
    sput-boolean v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsNetworkAvailable:Z

    .line 86
    sput-boolean v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsDlnaAvailable:Z

    .line 87
    sput-boolean v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsInController:Z

    .line 91
    const/4 v0, 0x1

    sput v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mRebindCount:I

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHomePressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 312
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;-><init>()V

    .line 88
    iput-boolean v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsPushView:Z

    .line 89
    iput-boolean v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mEntryFromThird:Z

    .line 90
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoPosition:I

    .line 119
    new-instance v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;-><init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;

    .line 1123
    new-instance v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;

    invoke-direct {v0, p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$2;-><init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevStatusCallback:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;

    .line 1169
    new-instance v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$3;

    invoke-direct {v0, p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$3;-><init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mServStateCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

    .line 1210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->initDmcManager()V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->connectService()V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsPushView:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mCurrentMediaType:I

    return v0
.end method

.method static synthetic access$1300(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mPushMedia:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoPosition:I

    return v0
.end method

.method static synthetic access$1602(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->disconnectService()V

    return-void
.end method

.method static synthetic access$2000(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getPushMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->startControlActivity()V

    return-void
.end method

.method static synthetic access$2210()I
    .locals 2

    .prologue
    .line 66
    sget v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mRebindCount:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mRebindCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->resetSelf()V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->rebindService()V

    return-void
.end method

.method static synthetic access$500(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->updateDlnaMenuItem()V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-boolean p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsNetworkAvailable:Z

    return p0
.end method

.method static synthetic access$900(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelShowTips()V
    .locals 3

    .prologue
    .line 961
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 962
    .local v1, l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->onHideTips(Z)V

    goto :goto_0

    .line 964
    .end local v1           #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    :cond_0
    return-void
.end method

.method private connectService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 336
    const-string v1, "AirSharing_MultiScreenManager"

    const-string v2, "Multi-screen ServiceManager is null when pending to connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mServStateCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->setBindCompleteCallback(Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;)V

    .line 340
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->bindService(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;)Z

    move-result v0

    .line 341
    .local v0, bindResult:Z
    if-eqz v0, :cond_1

    .line 342
    const-string v1, "AirSharing_MultiScreenManager"

    const-string v2, "bind Multi-screen Service succcessfully!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    sget-object v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isServiceAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 344
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->registerServiceBroadcast()V

    goto :goto_0

    .line 346
    :cond_1
    const-string v1, "AirSharing_MultiScreenManager"

    const-string v2, "bind Multi-screen Service throw exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget-object v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isServiceAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    goto :goto_0
.end method

.method private disconnectService()V
    .locals 3

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 353
    const-string v1, "AirSharing_MultiScreenManager"

    const-string v2, "Multi-screen ServiceManager is null when pending to disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->unregisterServiceBroadcast()V

    .line 357
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->resetSelf()V

    .line 358
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->unbindService()Z

    move-result v0

    .line 359
    .local v0, unbindResult:Z
    if-eqz v0, :cond_1

    .line 360
    const-string v1, "AirSharing_MultiScreenManager"

    const-string v2, "unbind Multi-screen Service succcessfully!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :cond_1
    const-string v1, "AirSharing_MultiScreenManager"

    const-string v2, "unbind Multi-screen Service throw exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isServiceAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    goto :goto_0
.end method

.method private exitControl()V
    .locals 4

    .prologue
    .line 664
    new-instance v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$StopControlTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$StopControlTask;-><init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    invoke-virtual {v3}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->getController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$StopControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 665
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;
    .locals 2

    .prologue
    .line 306
    const-class v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->instance:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    invoke-direct {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;-><init>()V

    sput-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->instance:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    .line 309
    :cond_0
    sget-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->instance:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPushMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    .locals 5

    .prologue
    .line 819
    const/4 v2, 0x0

    .line 820
    .local v2, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mPushMedia:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 821
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mPushMedia:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 824
    .restart local v2       #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    instance-of v3, v2, Lcom/android/gallery3d/data/DmsImage;

    if-eqz v3, :cond_2

    .line 825
    check-cast v2, Lcom/android/gallery3d/data/DmsImage;

    .end local v2           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/DmsImage;->getMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v1

    .line 852
    :cond_1
    :goto_0
    return-object v1

    .line 826
    .restart local v2       #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    instance-of v3, v2, Lcom/android/gallery3d/data/DmsVideo;

    if-eqz v3, :cond_3

    .line 827
    check-cast v2, Lcom/android/gallery3d/data/DmsVideo;

    .end local v2           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/DmsVideo;->getMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v1

    goto :goto_0

    .line 830
    .restart local v2       #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    :cond_3
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;-><init>()V

    .line 831
    .local v1, mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    iget v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mCurrentMediaType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 832
    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    invoke-virtual {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setMediaInfoType(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 833
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getVideoInfoFromUri(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, infoPackage:[Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 836
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setName(Ljava/lang/String;)V

    .line 837
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setMimeType(Ljava/lang/String;)V

    .line 838
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_4
    const-string v3, "AirSharing_MultiScreenManager"

    const-string v4, "Video Info is null back from database"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 844
    .end local v0           #infoPackage:[Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_1

    .line 845
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setName(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setMimeType(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getDlnaMediaType(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setMediaInfoType(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V

    .line 849
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initDmcManager()V
    .locals 3

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 385
    const-string v1, "AirSharing_MultiScreenManager"

    const-string v2, "DmcManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MultiScreenOperationManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_1
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mOperationHandler:Landroid/os/Handler;

    .line 395
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    if-eqz v1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    invoke-virtual {v1}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->clearCallback()V

    .line 398
    :cond_2
    new-instance v1, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    invoke-direct {v1}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;-><init>()V

    iput-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    .line 399
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevStatusCallback:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;

    invoke-virtual {v1, v2}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->setDeviceMediaStatusCallback(Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;)V

    .line 401
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    invoke-virtual {v1}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->hasDmsDevices()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 402
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 405
    :cond_3
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    invoke-virtual {v1}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->hasDmrDevices()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 406
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 408
    :cond_4
    const-string v1, "AirSharing_MultiScreenManager"

    const-string v2, "DmcManager init done!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirroring()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirrorConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-boolean v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mEntryFromThird:Z

    if-eqz v1, :cond_0

    .line 410
    const/16 v1, 0x1f4

    invoke-virtual {p0, v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->addPendingPushTask(I)V

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/IllegalThreadStateException;
    const-string v1, "AirSharing_MultiScreenManager"

    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initMultiScreenManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->setContext(Landroid/content/Context;)V

    .line 327
    new-instance v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;

    invoke-direct {v1, p0, v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;-><init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;)V

    iput-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mWifiReceiver:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;

    .line 328
    new-instance v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;

    invoke-direct {v1, p0, v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;-><init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$1;)V

    iput-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mReceiver:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;

    .line 329
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 330
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mWifiReceiver:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    return-void
.end method

.method private outPhoneView()V
    .locals 2

    .prologue
    .line 924
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "outPhoneView called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsPushView:Z

    .line 926
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->setPhoneView(I)V

    .line 927
    return-void
.end method

.method private rebindService()V
    .locals 4

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    if-nez v1, :cond_1

    .line 369
    const-string v1, "AirSharing_MultiScreenManager"

    const-string v2, "Multi-screen ServiceManager is null when pending to rebind"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    sget v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mRebindCount:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 373
    sget v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mRebindCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mRebindCount:I

    .line 374
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mServStateCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->setBindCompleteCallback(Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;)V

    .line 375
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    sget-object v2, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->DMS_DMC:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->bindService(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;)Z

    move-result v0

    .line 376
    .local v0, bindResult:Z
    const-string v1, "AirSharing_MultiScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService @ rebind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-nez v0, :cond_0

    .line 378
    sget-object v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isServiceAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    .line 379
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->rebindService()V

    goto :goto_0
.end method

.method private registerServiceBroadcast()V
    .locals 3

    .prologue
    .line 415
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 416
    .local v0, intentFilter2:Landroid/content/IntentFilter;
    const-string v1, "com.huawei.android.multiscreen.broadcast.DEVICE_SELECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string v1, "com.huawei.android.multiscreen.broadcast.USER_DISCONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string v1, "com.huawei.android.multiscreen.broadcast.MIRROR_SCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    const-string v1, "com.huawei.android.multiscreen.broadcast.DLNA_PUSHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mReceiver:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    return-void
.end method

.method private resetSelf()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 432
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 433
    .local v1, l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->onCurrentDeviceDown(Ljava/lang/String;)V

    .line 434
    invoke-interface {v1, v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->updateSharingAroundItem(Z)V

    .line 435
    invoke-interface {v1, v3, v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->updateAirSaringItem(ZZ)V

    goto :goto_0

    .line 437
    .end local v1           #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    :cond_0
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    if-eqz v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    invoke-virtual {v2}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->clearCallback()V

    .line 439
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_2

    .line 442
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 444
    :cond_2
    return-void
.end method

.method private setPhoneView(I)V
    .locals 3
    .parameter "phoneView"

    .prologue
    .line 918
    const-string v0, "AirSharing_MultiScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhoneView called! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->setPhoneView(I)V

    .line 920
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsPushView:Z

    .line 921
    return-void
.end method

.method private startControlActivity()V
    .locals 7

    .prologue
    .line 941
    iget-object v4, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 942
    .local v3, l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    invoke-interface {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->onControllerLaunched()V

    goto :goto_0

    .line 945
    .end local v3           #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 946
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/gallery3d/app/DmrController;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 950
    iget-object v4, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    .end local v2           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0d029b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private startSelectDevicePage()V
    .locals 4

    .prologue
    .line 510
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 511
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 512
    const/high16 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 513
    const-string v2, "com.huawei.android.multiscreen.intent.action.ACTION_DEVICE_SELECTOR"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    const-string v2, "com.huawei.android.multiscreen.DEVICE_SELECTOR_CALLER"

    sget-object v3, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    :try_start_0
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "AirSharing_MultiScreenManager"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterServiceBroadcast()V
    .locals 2

    .prologue
    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mReceiver:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateDlnaMenuItem()V
    .locals 4

    .prologue
    .line 718
    sget-boolean v2, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsNetworkAvailable:Z

    if-nez v2, :cond_0

    .line 719
    const-string v2, "AirSharing_MultiScreenManager"

    const-string v3, "Wifi off"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    if-nez v2, :cond_2

    .line 739
    :cond_1
    return-void

    .line 724
    :cond_2
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    invoke-virtual {v2}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->rendererExist()Z

    move-result v2

    if-nez v2, :cond_3

    .line 725
    const-string v2, "AirSharing_MultiScreenManager"

    const-string v3, "No Dmr Device in Network"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->cancelShowTips()V

    .line 728
    :cond_3
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 729
    .local v1, l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    sget-boolean v2, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsNetworkAvailable:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    invoke-virtual {v2}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->rendererExist()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isCasting()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->updateAirSaringItem(ZZ)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 733
    .end local v1           #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    :cond_5
    sget-boolean v2, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsNetworkAvailable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    invoke-virtual {v2}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->rendererExist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 735
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 736
    .restart local v1       #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isCasting()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->onShowTips(Z)V

    goto :goto_2
.end method

.method private updateNearMenuItem()V
    .locals 4

    .prologue
    .line 745
    sget-boolean v2, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsNetworkAvailable:Z

    if-nez v2, :cond_0

    .line 746
    const-string v2, "AirSharing_MultiScreenManager"

    const-string v3, "Wifi on"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_0
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    if-nez v2, :cond_2

    .line 757
    :cond_1
    return-void

    .line 751
    :cond_2
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    invoke-virtual {v2}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->hasDmsDevices()Z

    move-result v2

    if-nez v2, :cond_3

    .line 752
    const-string v2, "AirSharing_MultiScreenManager"

    const-string v3, "No Dms Device in Network"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_3
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 755
    .local v1, l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    sget-boolean v2, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsNetworkAvailable:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    invoke-virtual {v2}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->hasDmsDevices()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1, v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->updateSharingAroundItem(Z)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    return-void
.end method

.method public addPendingPushTask()V
    .locals 3

    .prologue
    .line 981
    sget-boolean v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsNetworkAvailable:Z

    if-nez v0, :cond_0

    .line 982
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "abandon push task for Dlna Stack dirty!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :goto_0
    return-void

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mOperationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;-><init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public addPendingPushTask(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 995
    sget-boolean v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsNetworkAvailable:Z

    if-nez v0, :cond_0

    .line 996
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "abandon push task for Dlna Stack dirty!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :goto_0
    return-void

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mOperationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;

    invoke-direct {v1, p0, p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;-><init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getDeviceMediaManager()Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    return-object v0
.end method

.method public getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v0

    return-object v0
.end method

.method public getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;
    .locals 1

    .prologue
    .line 448
    invoke-static {}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getInstance()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    return-object v0
.end method

.method public homePressed()Z
    .locals 3

    .prologue
    .line 901
    sget-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHomePressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public isCasting()Z
    .locals 4

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->isCasting()Z

    move-result v0

    .line 792
    .local v0, castStatus:Z
    const-string v1, "AirSharing_MultiScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get Cast Status from Service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return v0
.end method

.method public isDlnaSP()Z
    .locals 2

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->isSupportDLNA()Z

    move-result v0

    .line 783
    .local v0, isDlnaSP:Z
    return v0
.end method

.method public isDlnaing()Z
    .locals 1

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirroring()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirrorConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsInController:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHomePressed()Z
    .locals 3

    .prologue
    .line 910
    sget-object v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mHomePressed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public isMirrorConnecting()Z
    .locals 1

    .prologue
    .line 773
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->isMirrorConnecting()Z

    move-result v0

    return v0
.end method

.method public isMirrorSP()Z
    .locals 2

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->isSupportMirror()Z

    move-result v0

    .line 778
    .local v0, isMirrorSP:Z
    return v0
.end method

.method public isMirroring()Z
    .locals 1

    .prologue
    .line 769
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->isMirroring()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->outPhoneView()V

    .line 559
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isCasting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirrorSP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->pushDefaultImage()Z

    .line 562
    :cond_0
    return-void
.end method

.method public onControlBackPressed()V
    .locals 2

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->exitControl()V

    .line 632
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirrorSP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->startMirror()V

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isDlnaSP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    const-string v0, "file"

    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->pushDefaultImage()Z

    goto :goto_0

    .line 640
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->addPendingPushTask()V

    goto :goto_0
.end method

.method public onCreateActionBar(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->updateDlnaMenuItem()V

    .line 469
    return-void
.end method

.method public onCreateNearActionBar(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 687
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 688
    .local v1, l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->updateSharingAroundItem(Z)V

    goto :goto_0

    .line 691
    .end local v1           #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    :cond_0
    return-void
.end method

.method public onCreateOptionMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->onCreateActionBar(Landroid/view/Menu;)V

    .line 477
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->outPhoneView()V

    .line 621
    return-void
.end method

.method public onDlnaDestroy()V
    .locals 2

    .prologue
    .line 1228
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->exitDlna()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1229
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "getDlnaServiceManager() exitDlna FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->unbindService()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1232
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "getDlnaServiceManager() unbind FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_1
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mReceiver:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1235
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mWifiReceiver:Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$WifiStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1236
    return-void
.end method

.method public onItemSelected(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .parameter "pushItem"

    .prologue
    .line 501
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoPosition:I

    .line 502
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->startSelectDevicePage()V

    .line 503
    return-void
.end method

.method public onLeaveControl()V
    .locals 0

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->outPhoneView()V

    .line 658
    return-void
.end method

.method public onMovieFinished()V
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirrorSP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->startMirror()V

    .line 649
    :cond_0
    return-void
.end method

.method public onNearDestroy()V
    .locals 0

    .prologue
    .line 710
    return-void
.end method

.method public onNearItemSelected()V
    .locals 0

    .prologue
    .line 694
    return-void
.end method

.method public onNearPause()V
    .locals 0

    .prologue
    .line 698
    return-void
.end method

.method public onNearResume()V
    .locals 0

    .prologue
    .line 702
    return-void
.end method

.method public onNearStop()V
    .locals 0

    .prologue
    .line 706
    return-void
.end method

.method public onOptionItemSelected(Landroid/net/Uri;I)V
    .locals 4
    .parameter "uri"
    .parameter "position"

    .prologue
    const/4 v3, 0x4

    .line 487
    const-string v0, "AirSharing_MultiScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " selected position is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iput-object p1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoUri:Landroid/net/Uri;

    .line 489
    iput v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mCurrentMediaType:I

    .line 490
    iput p2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoPosition:I

    .line 491
    invoke-direct {p0, v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->setPhoneView(I)V

    .line 492
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->startSelectDevicePage()V

    .line 493
    return-void
.end method

.method public onRefreshButtonClicked()V
    .locals 3

    .prologue
    .line 529
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;

    .line 530
    .local v1, l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    invoke-interface {v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;->onRefreshing()V

    goto :goto_0

    .line 532
    .end local v1           #l:Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;
    :cond_0
    return-void
.end method

.method public onReplayMovie()V
    .locals 1

    .prologue
    .line 672
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoPosition:I

    .line 673
    iget v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoPosition:I

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->addPendingPushTask(I)V

    .line 674
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->updateDlnaMenuItem()V

    .line 542
    return-void
.end method

.method public onResume(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x4

    .line 585
    const-string v0, "AirSharing_MultiScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDlnaResume called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iput-object p1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoUri:Landroid/net/Uri;

    .line 587
    invoke-direct {p0, v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->setPhoneView(I)V

    .line 588
    iput v3, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mCurrentMediaType:I

    .line 591
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mDevManager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    if-nez v0, :cond_0

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mEntryFromThird:Z

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isCasting()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getRenderingDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->excessBitRate(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 597
    iget v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoPosition:I

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->addPendingPushTask(I)V

    .line 599
    :cond_1
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->updateDlnaMenuItem()V

    .line 600
    return-void
.end method

.method public onSingleTapUp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 880
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isCasting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getCurrentDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirrorSP()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->excessBitRate(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 882
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->startMirror()V

    .line 890
    :cond_0
    :goto_0
    return v0

    .line 885
    :cond_1
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoPosition:I

    .line 886
    iget v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoPosition:I

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->addPendingPushTask(I)V

    .line 887
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onUpPressed()V
    .locals 0

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->onBackPressed()V

    .line 550
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->outPhoneView()V

    .line 571
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isCasting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirrorSP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->pushDefaultImage()Z

    .line 574
    :cond_0
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->cancelShowTips()V

    .line 575
    return-void
.end method

.method public onUserLeaveHint(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->outPhoneView()V

    .line 611
    iput p1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoPosition:I

    .line 612
    return-void
.end method

.method public prepareMediaItem(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 3
    .parameter "mediaItem"

    .prologue
    const/4 v2, 0x4

    .line 802
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mPushMedia:Ljava/lang/ref/WeakReference;

    .line 803
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mCurrentMediaType:I

    .line 804
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 805
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mVideoUri:Landroid/net/Uri;

    .line 806
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "prepareMediaItem VIDEO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-direct {p0, v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->setPhoneView(I)V

    .line 812
    :goto_0
    return-void

    .line 809
    :cond_0
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "prepareMediaItem IMAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->setPhoneView(I)V

    goto :goto_0
.end method

.method public removeListener(Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1220
    return-void
.end method

.method public searchDevice()V
    .locals 1

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->searchDevice()V

    .line 935
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    iput-object p1, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mContext:Landroid/content/Context;

    .line 322
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->initMultiScreenManager()V

    goto :goto_0
.end method

.method public startMirror()V
    .locals 3

    .prologue
    .line 971
    sget-boolean v0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mIsNetworkAvailable:Z

    if-nez v0, :cond_0

    .line 975
    :goto_0
    return-void

    .line 972
    :cond_0
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "startMirror called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mOperationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 974
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->mOperationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager$MultiScreenTask;-><init>(Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;Z)V
    .locals 1
    .parameter "mediaItem"
    .parameter "shouldPush"

    .prologue
    .line 861
    if-nez p1, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    invoke-virtual {p0, p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->prepareMediaItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 863
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isCasting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getServManager()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getRenderingDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirrorSP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 866
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->isMirroring()Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->startMirror()V

    goto :goto_0

    .line 870
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->addPendingPushTask()V

    goto :goto_0
.end method
