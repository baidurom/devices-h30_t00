.class public Lcom/android/gallery3d/app/DmrController;
.super Landroid/app/Activity;
.source "DmrController.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;
.implements Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;,
        Lcom/android/gallery3d/app/DmrController$ChangeVolumeTask;,
        Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;
    }
.end annotation


# static fields
.field private static final CHANGE_POSITION_DELAY:I = 0xc8

.field private static final CHANGE_VOLUME_DELAY:I = 0xc8

.field private static final KEY_DURATION:Ljava/lang/String; = "key-duration"

.field private static final KEY_PLAY_STATUS:Ljava/lang/String; = "key-play-status"

.field private static final KEY_POSITION:Ljava/lang/String; = "key-position"

.field private static final KEY_SEEK_INTERVAL:Ljava/lang/String; = "key-seek-interval"

.field private static final KEY_SYNC:Ljava/lang/String; = "key-sync"

.field private static final MSG_CHANGE_POSITION:I = 0x3

.field private static final MSG_CHANGE_STATUS:I = 0x2

.field private static final MSG_MOVIE_FINISHED:I = 0x5

.field private static final MSG_SYNC:I = 0x6

.field private static final MSG_UPDATE_STATUS:I = 0x1

.field private static final MSG_VOLUME_CHANGE:I = 0x4

.field private static final ONE_MINUTE:I = 0xea60

.field private static final ONE_SECOND:I = 0x3e8

.field private static final SYNC_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "AirSharing_Controller"

.field private static final TEN_SECONDS:I = 0x2710

.field private static final THREE_SECONDS:I = 0xbb8

.field private static final TIMEBAR_MAX:I = 0x3e8

.field private static final TWO_SECONDS:I = 0x7d0


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mChangeRemoteStatus:Ljava/lang/Runnable;

.field private mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

.field private mDragging:Z

.field private mDuration:Ljava/lang/String;

.field private mDurationText:Landroid/widget/TextView;

.field private mForwardButton:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

.field private mMultiScreenInfo:Landroid/widget/TextView;

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mPlayPause:Landroid/widget/ImageButton;

.field private mPlaying:Z

.field private mPosition:Ljava/lang/String;

.field private mPositionText:Landroid/widget/TextView;

.field private mProgress:I

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private final mRefreshMenu:Ljava/lang/Runnable;

.field private mRewindButton:Landroid/widget/ImageButton;

.field private mSeekInterval:I

.field private mState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

.field private mTimeBar:Landroid/widget/SeekBar;

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mVolumeReceiver:Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mPosition:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mDuration:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 202
    new-instance v0, Lcom/android/gallery3d/app/DmrController$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/DmrController$1;-><init>(Lcom/android/gallery3d/app/DmrController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mChangeRemoteStatus:Ljava/lang/Runnable;

    .line 215
    new-instance v0, Lcom/android/gallery3d/app/DmrController$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/DmrController$2;-><init>(Lcom/android/gallery3d/app/DmrController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mRefreshMenu:Ljava/lang/Runnable;

    .line 224
    new-instance v0, Lcom/android/gallery3d/app/DmrController$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/DmrController$3;-><init>(Lcom/android/gallery3d/app/DmrController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mProgressChecker:Ljava/lang/Runnable;

    .line 231
    new-instance v0, Lcom/android/gallery3d/app/DmrController$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/DmrController$4;-><init>(Lcom/android/gallery3d/app/DmrController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    .line 260
    new-instance v0, Lcom/android/gallery3d/app/DmrController$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/DmrController$5;-><init>(Lcom/android/gallery3d/app/DmrController;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/DmrController;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/DmrController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/DmrController;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mRewindButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/DmrController;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mForwardButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/DmrController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/DmrController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/DmrController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->playMovie()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/DmrController;)Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/DmrController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->showPlaying()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/DmrController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->showPaused()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/DmrController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mChangeRemoteStatus:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/DmrController;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/DmrController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->onMovieFinished()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/gallery3d/app/DmrController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/app/DmrController;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/DmrController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mDuration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/DmrController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/app/DmrController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/app/DmrController;->mPosition:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/DmrController;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/DmrController;->showInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/DmrController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/gallery3d/app/DmrController;->mPlaying:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/DmrController;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mTimeBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/DmrController;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mPlayPause:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private changeRemotePosition(I)V
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v3, 0x3

    .line 481
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 485
    return-void
.end method

.method private forward()V
    .locals 4

    .prologue
    .line 526
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 527
    .local v0, progress:I
    rsub-int v1, v0, 0x3e8

    iget v2, p0, Lcom/android/gallery3d/app/DmrController;->mSeekInterval:I

    if-ge v1, v2, :cond_0

    const/16 v0, 0x3e8

    .line 529
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 530
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 531
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/DmrController;->changeRemotePosition(I)V

    .line 532
    return-void

    .line 527
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/DmrController;->mSeekInterval:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 550
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getInstance()Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getDeviceMediaManager()Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v1

    .line 552
    .local v1, manager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    const v2, 0x7f0d03c8

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/DmrController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, deviceName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 554
    invoke-virtual {v1}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->getDmrName()Ljava/lang/String;

    move-result-object v0

    .line 556
    :cond_0
    return-object v0
.end method

.method private initButton()V
    .locals 2

    .prologue
    .line 337
    const v0, 0x7f100135

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/DmrController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mTimeBar:Landroid/widget/SeekBar;

    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mTimeBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 339
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 340
    const v0, 0x7f10013a

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/DmrController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mPlayPause:Landroid/widget/ImageButton;

    .line 341
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    const v0, 0x7f10013b

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/DmrController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mRewindButton:Landroid/widget/ImageButton;

    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mRewindButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    const v0, 0x7f10013c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/DmrController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mForwardButton:Landroid/widget/ImageButton;

    .line 345
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    const v0, 0x7f100137

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/DmrController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mPositionText:Landroid/widget/TextView;

    .line 347
    const v0, 0x7f100138

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/DmrController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mDurationText:Landroid/widget/TextView;

    .line 349
    const v0, 0x7f100133

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/DmrController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mMultiScreenInfo:Landroid/widget/TextView;

    .line 351
    return-void
.end method

.method private initDmrController(Landroid/os/Bundle;II)V
    .locals 5
    .parameter "savedInstanceState"
    .parameter "audioVolume"
    .parameter "maxVolume"

    .prologue
    const/4 v4, 0x0

    .line 354
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getInstance()Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getDeviceMediaManager()Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;

    move-result-object v0

    .line 355
    .local v0, manager:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
    if-nez v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->getController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    .line 357
    if-eqz p1, :cond_2

    .line 358
    const-string v1, "key-position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mPosition:Ljava/lang/String;

    .line 359
    const-string v1, "key-duration"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mDuration:Ljava/lang/String;

    .line 360
    const-string v1, "key-play-status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/DmrController;->mPlaying:Z

    .line 361
    const-string v1, "key-seek-interval"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/DmrController;->mSeekInterval:I

    .line 362
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v2, "key-sync"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    .line 363
    const-string v1, "AirSharing_Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recreated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/DmrController;->mPlaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-boolean v1, p0, Lcom/android/gallery3d/app/DmrController;->mPlaying:Z

    if-eqz v1, :cond_1

    .line 365
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->showPlaying()V

    .line 375
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mTimeBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 376
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mPlayPause:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 377
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mRewindButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 378
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mForwardButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 379
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    invoke-interface {v1, p0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->startSync(Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;)V

    goto/16 :goto_0

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->showPaused()V

    goto :goto_1

    .line 370
    :cond_2
    const-string v1, "AirSharing_Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first created should be false : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/DmrController;->mPlaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    .line 372
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->showPlaying()V

    .line 373
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    mul-int/lit8 v2, p2, 0x64

    div-int/2addr v2, p3

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->setVolume(I)Z

    goto :goto_1
.end method

.method private initWindowLayout()V
    .locals 4

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DmrController;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 327
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 328
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 329
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 330
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DmrController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DmrController;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 334
    :cond_0
    return-void
.end method

.method private initializeActionBar(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/16 v4, 0x9

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 384
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->formatUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mUri:Landroid/net/Uri;

    .line 385
    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 386
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/DmrController;->startActivity(Landroid/content/Intent;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DmrController;->finish()V

    .line 445
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DmrController;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    .line 393
    .local v8, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v8, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 396
    invoke-virtual {v8, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 397
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DmrController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 398
    .local v11, backDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8, v11}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 402
    .local v12, title:Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar_title"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 403
    .local v10, actionbarTitleId:I
    invoke-virtual {p0, v10}, Lcom/android/gallery3d/app/DmrController;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 404
    .local v9, actionBarTitle:Landroid/widget/TextView;
    const/4 v3, -0x1

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 405
    if-eqz v12, :cond_2

    .line 406
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iput-object v12, p0, Lcom/android/gallery3d/app/DmrController;->mTitle:Ljava/lang/String;

    .line 443
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/DmrController;->showInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_2
    const-string v3, "file"

    iget-object v4, p0, Lcom/android/gallery3d/app/DmrController;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 410
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iput-object v12, p0, Lcom/android/gallery3d/app/DmrController;->mTitle:Ljava/lang/String;

    goto :goto_1

    .line 416
    :cond_3
    new-instance v0, Lcom/android/gallery3d/app/DmrController$6;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/DmrController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3, v9}, Lcom/android/gallery3d/app/DmrController$6;-><init>(Lcom/android/gallery3d/app/DmrController;Landroid/content/ContentResolver;Landroid/widget/TextView;)V

    .line 438
    .local v0, queryHandler:Landroid/content/AsyncQueryHandler;
    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mUri:Landroid/net/Uri;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "_display_name"

    aput-object v5, v4, v1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onMovieFinished()V
    .locals 1

    .prologue
    .line 535
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getInstance()Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->onMovieFinished()V

    .line 536
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DmrController;->finish()V

    .line 537
    return-void
.end method

.method private pause()V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->showPaused()V

    .line 505
    return-void
.end method

.method private play()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->showPlaying()V

    .line 501
    return-void
.end method

.method private playMovie()V
    .locals 7

    .prologue
    .line 580
    iget-object v4, p0, Lcom/android/gallery3d/app/DmrController;->mPosition:Ljava/lang/String;

    invoke-static {v4}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->timeStr2Int(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v2, v4, 0x3e8

    .line 582
    .local v2, position:I
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/android/gallery3d/app/DmrController;->mUri:Landroid/net/Uri;

    const-string v6, "video/*"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "treat-up-as-back"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "video-position"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 587
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/DmrController;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v4, 0x7f0d029b

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/DmrController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 592
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private playPause()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 488
    iget-boolean v0, p0, Lcom/android/gallery3d/app/DmrController;->mPlaying:Z

    if-eqz v0, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->pause()V

    .line 493
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->setProgress()I

    .line 494
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 497
    return-void

    .line 491
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->play()V

    goto :goto_0
.end method

.method private rewind()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 518
    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 519
    .local v0, progress:I
    iget v2, p0, Lcom/android/gallery3d/app/DmrController;->mSeekInterval:I

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 520
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 521
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 522
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/DmrController;->changeRemotePosition(I)V

    .line 523
    return-void

    .line 519
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/app/DmrController;->mSeekInterval:I

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method private setNotification()V
    .locals 8

    .prologue
    const v7, 0x7f0202f2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 560
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/gallery3d/app/DmrController;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 562
    .local v1, pIntent:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController;->mNotificationMgr:Landroid/app/NotificationManager;

    if-nez v2, :cond_0

    .line 563
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/DmrController;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/gallery3d/app/DmrController;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 565
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 566
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 567
    const v2, 0x7f0d03c3

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/app/DmrController;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 569
    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 570
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 571
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 572
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 574
    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 576
    return-void
.end method

.method private setProgress()I
    .locals 5

    .prologue
    .line 448
    iget-boolean v3, p0, Lcom/android/gallery3d/app/DmrController;->mDragging:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    .line 449
    :cond_0
    const/4 v3, 0x0

    .line 461
    :goto_0
    return v3

    .line 451
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mPositionText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/gallery3d/app/DmrController;->mPosition:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mDurationText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/gallery3d/app/DmrController;->mDuration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mDuration:Ljava/lang/String;

    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->timeStr2Int(Ljava/lang/String;)I

    move-result v0

    .line 454
    .local v0, duration:I
    const/4 v2, 0x0

    .line 455
    .local v2, progress:F
    if-eqz v0, :cond_2

    .line 456
    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mPosition:Ljava/lang/String;

    invoke-static {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->timeStr2Int(Ljava/lang/String;)I

    move-result v1

    .line 457
    .local v1, position:I
    int-to-float v3, v1

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 459
    .end local v1           #position:I
    :cond_2
    const/high16 v3, 0x447a

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/gallery3d/app/DmrController;->mProgress:I

    .line 460
    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mTimeBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/gallery3d/app/DmrController;->mProgress:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 461
    iget v3, p0, Lcom/android/gallery3d/app/DmrController;->mProgress:I

    goto :goto_0
.end method

.method private setSeekInterval(Ljava/lang/String;)V
    .locals 6
    .parameter "trackDur"

    .prologue
    const/high16 v5, 0x447a

    .line 465
    invoke-static {p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->timeStr2Int(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v0, v2, 0x3e8

    .line 466
    .local v0, duration:I
    const-string v2, "AirSharing_Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v1, 0x0

    .line 468
    .local v1, seekInterval:F
    const/16 v2, 0x2710

    if-gt v0, v2, :cond_0

    .line 469
    const/high16 v1, 0x44fa

    .line 475
    :goto_0
    const-string v2, "AirSharing_Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seekInterval = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    mul-float v2, v1, v5

    int-to-float v3, v0

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/app/DmrController;->mSeekInterval:I

    .line 477
    const-string v2, "AirSharing_Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Seek Interval = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/app/DmrController;->mSeekInterval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void

    .line 470
    :cond_0
    const v2, 0xea60

    if-le v0, v2, :cond_1

    .line 471
    const/high16 v2, 0x4000

    int-to-float v3, v0

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    const v4, 0x476a6000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float v1, v2, v5

    goto :goto_0

    .line 473
    :cond_1
    const v1, 0x453b8000

    goto :goto_0
.end method

.method private showInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 541
    if-nez p1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mMultiScreenInfo:Landroid/widget/TextView;

    const v1, 0x7f0d03c3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/gallery3d/app/DmrController;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mMultiScreenInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mMultiScreenInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showPaused()V
    .locals 2

    .prologue
    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/DmrController;->mPlaying:Z

    .line 514
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mPlayPause:Landroid/widget/ImageButton;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 515
    return-void
.end method

.method private showPlaying()V
    .locals 2

    .prologue
    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/DmrController;->mPlaying:Z

    .line 509
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mPlayPause:Landroid/widget/ImageButton;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 510
    return-void
.end method


# virtual methods
.method public OnFaild(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;)V
    .locals 3
    .parameter "type"
    .parameter "msg"

    .prologue
    .line 714
    const-string v0, "AirSharing_Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 622
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getInstance()Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->onControlBackPressed()V

    .line 623
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 624
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/android/gallery3d/app/DmrController;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 740
    :pswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->playPause()V

    goto :goto_0

    .line 743
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->rewind()V

    goto :goto_0

    .line 746
    :pswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->forward()V

    goto :goto_0

    .line 738
    :pswitch_data_0
    .packed-switch 0x7f10013a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x3

    .line 304
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 305
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/DmrController;->requestWindowFeature(I)Z

    .line 306
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/DmrController;->requestWindowFeature(I)Z

    .line 307
    const v3, 0x7f04003f

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/DmrController;->setContentView(I)V

    .line 309
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DmrController;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 310
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->initWindowLayout()V

    .line 311
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->initButton()V

    .line 313
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/DmrController;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mAudioManager:Landroid/media/AudioManager;

    .line 314
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/DmrController;->setVolumeControlStream(I)V

    .line 315
    new-instance v3, Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;-><init>(Lcom/android/gallery3d/app/DmrController;Lcom/android/gallery3d/app/DmrController$1;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mVolumeReceiver:Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;

    .line 316
    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mVolumeReceiver:Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;->register()V

    .line 317
    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 318
    .local v0, audioVolume:I
    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 320
    .local v2, maxVolume:I
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/DmrController;->initializeActionBar(Landroid/content/Intent;)V

    .line 321
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getInstance()Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/DmrController;->mListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    invoke-virtual {v3, v4}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->addListener(Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;)V

    .line 322
    invoke-direct {p0, p1, v0, v2}, Lcom/android/gallery3d/app/DmrController;->initDmrController(Landroid/os/Bundle;II)V

    .line 323
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 628
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 629
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DmrController;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f12000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 630
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 658
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mNotificationMgr:Landroid/app/NotificationManager;

    const v1, 0x7f0202f2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->stopSync()V

    .line 664
    :cond_1
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getInstance()Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->removeListener(Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;)V

    .line 665
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mVolumeReceiver:Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/DmrController$VolumeChangedReceiver;->unregister()V

    .line 666
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 667
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mRewindButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 671
    return-void
.end method

.method public onMediaChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 674
    const-string v0, "AirSharing_Controller"

    const-string v1, "onMediaChanged"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-string v0, "AirSharing_Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v0, "AirSharing_Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 635
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 636
    .local v0, id:I
    const v2, 0x7f100270

    if-ne v0, v2, :cond_0

    .line 637
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getInstance()Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/gallery3d/app/DmrController;->mPosition:Ljava/lang/String;

    invoke-static {v4}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->timeStr2Int(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->onOptionItemSelected(Landroid/net/Uri;I)V

    .line 643
    :goto_0
    return v1

    .line 639
    :cond_0
    const v2, 0x102002c

    if-ne v0, v2, :cond_1

    .line 640
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DmrController;->onBackPressed()V

    goto :goto_0

    .line 643
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/DmrController;->mIsActive:Z

    .line 609
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 610
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 611
    return-void
.end method

.method public onPositionChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 682
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mRefreshMenu:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 683
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getTrackDur()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/DmrController;->setSeekInterval(Ljava/lang/String;)V

    .line 685
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getRelTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mPosition:Ljava/lang/String;

    .line 686
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;->getTrackDur()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mDuration:Ljava/lang/String;

    .line 687
    const-string v0, "AirSharing_Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController;->mPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController;->mDuration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 719
    const-string v0, "AirSharing_Controller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/DmrController;->mIsActive:Z

    .line 599
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mNotificationMgr:Landroid/app/NotificationManager;

    const v1, 0x7f0202f2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 604
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 648
    const-string v0, "key-position"

    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mPosition:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v0, "key-duration"

    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mDuration:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v0, "key-play-status"

    iget-boolean v1, p0, Lcom/android/gallery3d/app/DmrController;->mPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 651
    const-string v0, "key-seek-interval"

    iget v1, p0, Lcom/android/gallery3d/app/DmrController;->mSeekInterval:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    const-string v0, "key-sync"

    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 653
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 654
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 723
    const-string v0, "AirSharing_Controller"

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/DmrController;->mDragging:Z

    .line 725
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 728
    const-string v1, "AirSharing_Controller"

    const-string v2, "onStopTrackingTouch"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/DmrController;->mDragging:Z

    .line 730
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 732
    .local v0, progress:I
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/DmrController;->changeRemotePosition(I)V

    .line 734
    .end local v0           #progress:I
    :cond_0
    return-void
.end method

.method public onTransportStateChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    .line 691
    if-nez p1, :cond_1

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    const-string v1, "AirSharing_Controller"

    const-string v2, "onTransportStateChanged"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->getTransportState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v0

    .line 694
    .local v0, status:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;
    iput-object v0, p0, Lcom/android/gallery3d/app/DmrController;->mState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    .line 695
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 696
    const-string v1, "AirSharing_Controller"

    const-string v2, "status : STOPPED"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 698
    :cond_2
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PLAYING:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController;->mState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 699
    const-string v1, "AirSharing_Controller"

    const-string v2, "status : PLAYING"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 701
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 702
    :cond_3
    sget-object v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PAUSED_PLAYBACK:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController;->mState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    const-string v1, "AirSharing_Controller"

    const-string v2, "status : PAUSED_PLAYBACK"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 705
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/android/gallery3d/app/DmrController;->setNotification()V

    .line 616
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->getInstance()Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenManager;->onLeaveControl()V

    .line 617
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 618
    return-void
.end method

.method public onVolumeChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 711
    return-void
.end method
