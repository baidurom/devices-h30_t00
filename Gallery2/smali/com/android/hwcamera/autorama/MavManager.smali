.class public Lcom/android/hwcamera/autorama/MavManager;
.super Ljava/lang/Object;
.source "MavManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;,
        Lcom/android/hwcamera/autorama/MavManager$MavHandler;
    }
.end annotation


# static fields
.field private static final DO_MAV_CAPTURE_MSG:I = 0xd2

.field private static final DO_MAV_SHOW_MSG:I = 0xd4

.field private static final DO_MAV_STOP_MSG:I = 0xd3

.field private static final ENABLE_MAV_BUTTON:I = 0xd7

.field private static final MAV_FINAL_IMAGE_READY_MSG:I = 0xd5

.field private static final MTK_IDLE:I = 0x0

.field private static final MTK_MERGING:I = 0x2

.field private static final MTK_STARTED:I = 0x1

.field public static final NUM_MAV_CAPTURE:I = 0x19

.field private static final SHUTTER_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "MavManager"


# instance fields
.field private mActivity:Lcom/android/hwcamera/CameraActivity;

.field private mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

.field private mCaptureState:I

.field private mCurrentNum:I

.field private mFileSaver:Lcom/android/hwcamera/autorama/FileSaver;

.field private mFileSaverListener:Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;

.field private mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

.field private mIsShooting:Z

.field private mLock:Ljava/lang/Object;

.field private final mMavFrameCallback:Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;

.field protected final mMavHandler:Landroid/os/Handler;

.field private mOnHardwareStop:Ljava/lang/Runnable;

.field private mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPhotoModule:Lcom/android/hwcamera/PhotoModule;

.field private mSaveRequest:Lcom/android/hwcamera/autorama/MTKSaveRequest;

.field private mStopping:Z


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraActivity;Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/FocusOverlayManager;Lcom/android/hwcamera/CameraManager$CameraProxy;)V
    .locals 4
    .parameter "Context"
    .parameter "photoModule"
    .parameter "FocusManager"
    .parameter "CameraDevice"

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v2, p0, Lcom/android/hwcamera/autorama/MavManager;->mStopping:Z

    .line 41
    new-instance v0, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;-><init>(Lcom/android/hwcamera/autorama/MavManager;Lcom/android/hwcamera/autorama/MavManager$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mMavFrameCallback:Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mLock:Ljava/lang/Object;

    .line 46
    iput-boolean v2, p0, Lcom/android/hwcamera/autorama/MavManager;->mIsShooting:Z

    .line 122
    new-instance v0, Lcom/android/hwcamera/autorama/MavManager$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/autorama/MavManager$1;-><init>(Lcom/android/hwcamera/autorama/MavManager;)V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mFileSaverListener:Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;

    .line 113
    iput-object p1, p0, Lcom/android/hwcamera/autorama/MavManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 114
    iput-object p2, p0, Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    .line 115
    iput-object p3, p0, Lcom/android/hwcamera/autorama/MavManager;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    .line 116
    iput-object p4, p0, Lcom/android/hwcamera/autorama/MavManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 117
    new-instance v0, Lcom/android/hwcamera/autorama/MavManager$MavHandler;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/autorama/MavManager$MavHandler;-><init>(Lcom/android/hwcamera/autorama/MavManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mMavHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/android/hwcamera/autorama/FileSaver;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/autorama/FileSaver;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mFileSaver:Lcom/android/hwcamera/autorama/FileSaver;

    .line 119
    new-instance v0, Lcom/android/hwcamera/autorama/PanoramaViewManager;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    iget-object v2, p0, Lcom/android/hwcamera/autorama/MavManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/autorama/PanoramaViewManager;-><init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/CameraActivity;I)V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    .line 120
    return-void
.end method

.method static synthetic access$100(Lcom/android/hwcamera/autorama/MavManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCurrentNum:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/autorama/MavManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$108(Lcom/android/hwcamera/autorama/MavManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCurrentNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mCurrentNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/autorama/MavManager;)Lcom/android/hwcamera/autorama/PanoramaViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/autorama/MavManager;)Lcom/android/hwcamera/PhotoModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/autorama/MavManager;)Lcom/android/hwcamera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/autorama/MavManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/hwcamera/autorama/MavManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/hwcamera/autorama/MavManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/hwcamera/autorama/MavManager;->onHardwareStopped(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/hwcamera/autorama/MavManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/hwcamera/autorama/MavManager;->doStop(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/hwcamera/autorama/MavManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mOnHardwareStop:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/hwcamera/autorama/MavManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/hwcamera/autorama/MavManager;->mOnHardwareStop:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/hwcamera/autorama/MavManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/hwcamera/autorama/MavManager;->mStopping:Z

    return p1
.end method

.method private doStart()V
    .locals 3

    .prologue
    .line 196
    const-string v0, "MavManager"

    const-string v1, "doStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/hwcamera/autorama/MavManager;->mMavFrameCallback:Lcom/android/hwcamera/autorama/MavManager$MavFrameCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->startMav(ILandroid/hardware/Camera$MAVCallback;)V

    .line 198
    return-void
.end method

.method private doStop(Z)V
    .locals 3
    .parameter "isMerge"

    .prologue
    .line 256
    const-string v0, "MavManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStop isMerge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopMav(I)V

    .line 259
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCaptureDone(Z)V
    .locals 3
    .parameter "isMerge"

    .prologue
    .line 211
    const-string v0, "MavManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call onCaptureDone is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I

    .line 214
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->isSnapShotInProgressState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->getIdleState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 218
    :cond_0
    if-eqz p1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mSaveRequest:Lcom/android/hwcamera/autorama/MTKSaveRequest;

    invoke-interface {v0}, Lcom/android/hwcamera/autorama/MTKSaveRequest;->addRequest()V

    .line 220
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mSaveRequest:Lcom/android/hwcamera/autorama/MTKSaveRequest;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mFileSaverListener:Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;

    invoke-interface {v0, v1}, Lcom/android/hwcamera/autorama/MTKSaveRequest;->setListener(Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/autorama/MavManager;->resetCapture()V

    goto :goto_0
.end method

.method private onHardwareStopped(Z)V
    .locals 3
    .parameter "isMerge"

    .prologue
    .line 201
    const-string v0, "MavManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHardwareStopped isMerge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopMavCallback()V

    .line 206
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/hwcamera/autorama/MavManager;->onCaptureDone(Z)V

    .line 207
    return-void
.end method

.method private resetCapture()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->isSnapShotInProgressState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->getIdleState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 313
    :cond_0
    return-void
.end method

.method private stopAsync(Z)V
    .locals 4
    .parameter "isMerge"

    .prologue
    .line 227
    const-string v1, "MavManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAsync mStopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/hwcamera/autorama/MavManager;->mStopping:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-boolean v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mStopping:Z

    if-eqz v1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 232
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mStopping:Z

    .line 233
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/hwcamera/autorama/MavManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/hwcamera/autorama/MavManager$2;-><init>(Lcom/android/hwcamera/autorama/MavManager;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 252
    .local v0, stopThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public finishMavShooting(Z)V
    .locals 2
    .parameter "save_image"

    .prologue
    const/4 v1, 0x0

    .line 372
    iput-boolean v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mIsShooting:Z

    .line 374
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/autorama/MavManager;->stopCapture(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->updatePictureRemainsText()V

    .line 378
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showUI()V

    .line 381
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showQuickRecordButton()V

    .line 382
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 385
    if-nez p1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->showMAVHint()V

    .line 387
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 390
    :cond_0
    return-void
.end method

.method public getFileSaver()Lcom/android/hwcamera/autorama/FileSaver;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mFileSaver:Lcom/android/hwcamera/autorama/FileSaver;

    return-object v0
.end method

.method public getPanoramaView()Lcom/android/hwcamera/autorama/PanoramaViewManager;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    return-object v0
.end method

.method public initMav()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "MavManager"

    const-string v1, "initMav"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->setPanoramaState(I)V

    .line 160
    return-void
.end method

.method public onCameraClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/autorama/MavManager;->stopCapture(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->getIdleState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 322
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {v2}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->setPanoramaState(I)V

    .line 323
    return-void
.end method

.method public onClickShootingButton()V
    .locals 3

    .prologue
    .line 330
    const-string v0, "MavManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickShootingButton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/autorama/MavManager;->mIsShooting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-boolean v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mIsShooting:Z

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/autorama/MavManager;->finishMavShooting(Z)V

    .line 341
    :goto_0
    monitor-exit v1

    .line 342
    :goto_1
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->isOnPanoramaIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    const-string v0, "MavManager"

    const-string v2, "onClickShootingButton Panorama Manager need to init"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    monitor-exit v1

    goto :goto_1

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 339
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/MavManager;->startMavShooting()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onMediaEject()V
    .locals 2

    .prologue
    .line 302
    const-string v0, "MavManager"

    const-string v1, "call onMediaEject"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/autorama/MavManager;->finishMavShooting(Z)V

    .line 307
    :cond_0
    return-void
.end method

.method public preparePhotoRequest(II)V
    .locals 2
    .parameter "type"
    .parameter "pictureType"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mFileSaver:Lcom/android/hwcamera/autorama/FileSaver;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/autorama/FileSaver;->preparePhotoRequest(II)Lcom/android/hwcamera/autorama/MTKSaveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mSaveRequest:Lcom/android/hwcamera/autorama/MTKSaveRequest;

    .line 171
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mSaveRequest:Lcom/android/hwcamera/autorama/MTKSaveRequest;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mSaveRequest:Lcom/android/hwcamera/autorama/MTKSaveRequest;

    invoke-interface {v1}, Lcom/android/hwcamera/autorama/MTKSaveRequest;->getTempFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setCapturePath(Ljava/lang/String;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 178
    :cond_1
    return-void
.end method

.method public startCapture()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    const-string v2, "MavManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startCapture mCaptureState is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget v2, p0, Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/hwcamera/autorama/MavManager;->mStopping:Z

    if-nez v2, :cond_0

    .line 184
    iput v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I

    .line 185
    iput v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mCurrentNum:I

    .line 186
    invoke-direct {p0}, Lcom/android/hwcamera/autorama/MavManager;->doStart()V

    .line 187
    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mMavHandler:Landroid/os/Handler;

    const/16 v2, 0xd4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 192
    :goto_0
    return v0

    .line 190
    :cond_0
    const-string v0, "MavManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start mCaptureState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 192
    goto :goto_0
.end method

.method public startMav()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "MavManager"

    const-string v1, "startMav"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->setPanoramaState(I)V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCurrentNum:I

    .line 166
    return-void
.end method

.method public startMavShooting()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 345
    const-string v0, "MavManager"

    const-string v1, "startMavShooting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iput-boolean v4, p0, Lcom/android/hwcamera/autorama/MavManager;->mIsShooting:Z

    .line 347
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideUIExceptShutter()V

    .line 348
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideQuickRecordButton()V

    .line 349
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showBackGround()V

    .line 351
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 352
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->resetController()V

    .line 353
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mMavHandler:Landroid/os/Handler;

    const/16 v1, 0xd7

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 355
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v5}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->playSound(I)V

    .line 359
    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/MavManager;->startMav()V

    .line 361
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 363
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 366
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->resetTouchFocus()V

    .line 367
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v4}, Lcom/android/hwcamera/autorama/MavManager;->preparePhotoRequest(II)V

    .line 368
    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/MavManager;->startCapture()Z

    .line 369
    return-void
.end method

.method public stop(Z)V
    .locals 4
    .parameter "isMerge"

    .prologue
    const/16 v3, 0xd4

    .line 287
    const-string v0, "MavManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop mCaptureState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 289
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCaptureState:I

    .line 290
    if-nez p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopMavCallback()V

    .line 293
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/hwcamera/autorama/MavManager;->stopAsync(Z)V

    .line 294
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mMavHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mMavHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    :cond_1
    :goto_1
    return-void

    .line 289
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->onRelease()V

    goto :goto_1
.end method

.method public stopCapture(Z)V
    .locals 5
    .parameter "isMerge"

    .prologue
    const/4 v4, 0x0

    .line 262
    const-string v0, "MavManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCapture isMerge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 264
    const-string v0, "MavManager"

    const-string v1, "stopCapture failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 278
    if-nez p1, :cond_2

    .line 279
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mMavHandler:Landroid/os/Handler;

    const/16 v1, 0xd7

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 282
    :cond_2
    iput-boolean v4, p0, Lcom/android/hwcamera/autorama/MavManager;->mIsShooting:Z

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/autorama/MavManager;->stop(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->setPanoramaState(I)V

    goto :goto_0
.end method
