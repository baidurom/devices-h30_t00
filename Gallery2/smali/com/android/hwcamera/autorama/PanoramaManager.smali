.class public Lcom/android/hwcamera/autorama/PanoramaManager;
.super Ljava/lang/Object;
.source "PanoramaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMAMVCallback;,
        Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;,
        Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;
    }
.end annotation


# static fields
.field public static final BACK_NUM_AUTORAMA_CAPTURE:I = 0xf

.field private static final DO_PANORAMA_CAPTURE_MSG:I = 0x6e

.field private static final DO_PANORAMA_FRAME_MSG:I = 0x6f

.field private static final DO_PANORAMA_SAVE:I = 0x72

.field private static final DO_PANORAMA_SHOW_MSG:I = 0x70

.field private static final ENABLE_PANORAMA_BUTTON:I = 0x73

.field public static final FRONT_NUM_AUTORAMA_CAPTURE:I = 0x3

.field private static final MTK_IDLE:I = 0x0

.field private static final MTK_MERGING:I = 0x2

.field private static final MTK_STARTED:I = 0x1

.field private static final PANO_FINAL_IMAGE_READY_MSG:I = 0x71

.field private static final TAG:Ljava/lang/String; = "PanoramaManager"


# instance fields
.field private final mAUTORAMACallback:Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;

.field private final mAUTORAMAMVCallback:Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMAMVCallback;

.field private mActivity:Lcom/android/hwcamera/CameraActivity;

.field private mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

.field private mCaptureState:I

.field private mCurrentNum:I

.field private mFileSaver:Lcom/android/hwcamera/autorama/FileSaver;

.field private mFileSaverListener:Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;

.field private mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

.field private mIsShooting:Z

.field private mLock:Ljava/lang/Object;

.field private mOnHardwareStop:Ljava/lang/Runnable;

.field private mPanoMaxNum:I

.field protected final mPanoramaHandler:Landroid/os/Handler;

.field private mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPhotoModule:Lcom/android/hwcamera/PhotoModule;

.field private mRestartCaptureView:Ljava/lang/Runnable;

.field private mSaveRequest:Lcom/android/hwcamera/autorama/MTKSaveRequest;

.field private mShowingCollimatedDrawable:Z

.field private mStopping:Z


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraActivity;Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/FocusOverlayManager;Lcom/android/hwcamera/CameraManager$CameraProxy;)V
    .locals 4
    .parameter "Context"
    .parameter "photoModule"
    .parameter "FocusManager"
    .parameter "CameraDevice"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mStopping:Z

    .line 38
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoMaxNum:I

    .line 43
    new-instance v0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;-><init>(Lcom/android/hwcamera/autorama/PanoramaManager;Lcom/android/hwcamera/autorama/PanoramaManager$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mAUTORAMACallback:Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;

    .line 44
    new-instance v0, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMAMVCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMAMVCallback;-><init>(Lcom/android/hwcamera/autorama/PanoramaManager;Lcom/android/hwcamera/autorama/PanoramaManager$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mAUTORAMAMVCallback:Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMAMVCallback;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mLock:Ljava/lang/Object;

    .line 49
    iput-boolean v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mIsShooting:Z

    .line 137
    new-instance v0, Lcom/android/hwcamera/autorama/PanoramaManager$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/autorama/PanoramaManager$1;-><init>(Lcom/android/hwcamera/autorama/PanoramaManager;)V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mFileSaverListener:Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;

    .line 124
    iput-object p1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 125
    iput-object p2, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    .line 126
    iput-object p3, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    .line 127
    iput-object p4, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 128
    new-instance v0, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/autorama/PanoramaManager$PanoramaHandler;-><init>(Lcom/android/hwcamera/autorama/PanoramaManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    .line 130
    new-instance v0, Lcom/android/hwcamera/autorama/FileSaver;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/autorama/FileSaver;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mFileSaver:Lcom/android/hwcamera/autorama/FileSaver;

    .line 132
    new-instance v0, Lcom/android/hwcamera/autorama/PanoramaViewManager;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/autorama/PanoramaViewManager;-><init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/CameraActivity;I)V

    iput-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    .line 135
    return-void
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/autorama/PanoramaManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/hwcamera/autorama/PanoramaManager;->doStop(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/hwcamera/autorama/PanoramaManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mStopping:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/autorama/PanoramaManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/autorama/PanoramaManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCurrentNum:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/hwcamera/autorama/PanoramaManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCurrentNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCurrentNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/autorama/PanoramaManager;)Lcom/android/hwcamera/autorama/PanoramaViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/autorama/PanoramaManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mRestartCaptureView:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/hwcamera/autorama/PanoramaManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mRestartCaptureView:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/hwcamera/autorama/PanoramaManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mShowingCollimatedDrawable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/hwcamera/autorama/PanoramaManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mShowingCollimatedDrawable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/hwcamera/autorama/PanoramaManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoMaxNum:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/autorama/PanoramaManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/hwcamera/autorama/PanoramaManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/hwcamera/autorama/PanoramaManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/hwcamera/autorama/PanoramaManager;->onHardwareStopped(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/hwcamera/autorama/PanoramaManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mOnHardwareStop:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/hwcamera/autorama/PanoramaManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mOnHardwareStop:Ljava/lang/Runnable;

    return-object p1
.end method

.method private doStart()V
    .locals 4

    .prologue
    .line 240
    const-string v0, "PanoramaManager"

    const-string v1, "doStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoMaxNum:I

    iget-object v2, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mAUTORAMACallback:Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMACallback;

    iget-object v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mAUTORAMAMVCallback:Lcom/android/hwcamera/autorama/PanoramaManager$AUTORAMAMVCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraManager$CameraProxy;->startMTKPanorama(ILandroid/hardware/Camera$AUTORAMACallback;Landroid/hardware/Camera$AUTORAMAMVCallback;)V

    .line 244
    return-void
.end method

.method private doStop(Z)V
    .locals 3
    .parameter "isMerge"

    .prologue
    .line 303
    const-string v0, "PanoramaManager"

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

    .line 304
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopMTKPanorama(I)V

    .line 306
    return-void

    .line 304
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCaptureDone(Z)V
    .locals 3
    .parameter "isMerge"

    .prologue
    .line 257
    const-string v0, "PanoramaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call onCaptureDone is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I

    .line 260
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->isSnapShotInProgressState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->getIdleState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 264
    :cond_0
    if-eqz p1, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mSaveRequest:Lcom/android/hwcamera/autorama/MTKSaveRequest;

    invoke-interface {v0}, Lcom/android/hwcamera/autorama/MTKSaveRequest;->addRequest()V

    .line 266
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mSaveRequest:Lcom/android/hwcamera/autorama/MTKSaveRequest;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mFileSaverListener:Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;

    invoke-interface {v0, v1}, Lcom/android/hwcamera/autorama/MTKSaveRequest;->setListener(Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;)V

    .line 267
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/autorama/PanoramaManager;->resetCapture()V

    goto :goto_0
.end method

.method private onHardwareStopped(Z)V
    .locals 3
    .parameter "isMerge"

    .prologue
    .line 247
    const-string v0, "PanoramaManager"

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

    .line 248
    if-eqz p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopMTKPanoramaCallback()V

    .line 252
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/hwcamera/autorama/PanoramaManager;->onCaptureDone(Z)V

    .line 253
    return-void
.end method

.method private resetCapture()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->isSnapShotInProgressState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->getIdleState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showUI()V

    .line 369
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showQuickRecordButton()V

    .line 370
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 372
    return-void
.end method

.method private stopAsync(Z)V
    .locals 4
    .parameter "isMerge"

    .prologue
    .line 274
    const-string v1, "PanoramaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAsync mStopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mStopping:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-boolean v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mStopping:Z

    if-eqz v1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mStopping:Z

    .line 280
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/hwcamera/autorama/PanoramaManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/hwcamera/autorama/PanoramaManager$2;-><init>(Lcom/android/hwcamera/autorama/PanoramaManager;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 299
    .local v0, stopThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public finishPanoramaShooting(Z)V
    .locals 2
    .parameter "save_image"

    .prologue
    const/4 v1, 0x0

    .line 432
    iput-boolean v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mIsShooting:Z

    .line 434
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 436
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/autorama/PanoramaManager;->stopCapture(Z)V

    .line 437
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->updatePictureRemainsText()V

    .line 438
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showUI()V

    .line 440
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showQuickRecordButton()V

    .line 441
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 443
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 445
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->showMTKPanoramaHint()V

    .line 447
    return-void
.end method

.method public getFileSaver()Lcom/android/hwcamera/autorama/FileSaver;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mFileSaver:Lcom/android/hwcamera/autorama/FileSaver;

    return-object v0
.end method

.method public getPanoramaView()Lcom/android/hwcamera/autorama/PanoramaViewManager;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    return-object v0
.end method

.method public initMTKPanorama()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "PanoramaManager"

    const-string v1, "initMTKPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->setPanoramaState(I)V

    .line 196
    return-void
.end method

.method public onCameraClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 379
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/autorama/PanoramaManager;->stopCapture(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->getIdleState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 382
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {v2}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->setPanoramaState(I)V

    .line 384
    return-void
.end method

.method public onClickShootingButton()V
    .locals 3

    .prologue
    .line 391
    const-string v0, "PanoramaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickShootingButton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mIsShooting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-boolean v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mIsShooting:Z

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->finishPanoramaShooting(Z)V

    .line 404
    :goto_0
    monitor-exit v1

    .line 405
    :goto_1
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->isOnPanoramaIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    const-string v0, "PanoramaManager"

    const-string v2, "onClickShootingButton Panorama Manager need to init"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    monitor-exit v1

    goto :goto_1

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 402
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/PanoramaManager;->startPanoramaShooting()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onMediaEject()V
    .locals 2

    .prologue
    .line 357
    const-string v0, "PanoramaManager"

    const-string v1, "call onMediaEject"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->finishPanoramaShooting(Z)V

    .line 362
    :cond_0
    return-void
.end method

.method public preparePhotoRequest(II)V
    .locals 2
    .parameter "type"
    .parameter "pictureType"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mFileSaver:Lcom/android/hwcamera/autorama/FileSaver;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/autorama/FileSaver;->preparePhotoRequest(II)Lcom/android/hwcamera/autorama/MTKSaveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mSaveRequest:Lcom/android/hwcamera/autorama/MTKSaveRequest;

    .line 214
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mSaveRequest:Lcom/android/hwcamera/autorama/MTKSaveRequest;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mSaveRequest:Lcom/android/hwcamera/autorama/MTKSaveRequest;

    invoke-interface {v1}, Lcom/android/hwcamera/autorama/MTKSaveRequest;->getTempFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setCapturePath(Ljava/lang/String;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 221
    :cond_1
    return-void
.end method

.method public startCapture()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 225
    const-string v2, "PanoramaManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startCapture mCaptureState is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget v2, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mStopping:Z

    if-nez v2, :cond_0

    .line 227
    iput v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I

    .line 228
    iput v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCurrentNum:I

    .line 229
    iput-boolean v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mShowingCollimatedDrawable:Z

    .line 230
    invoke-direct {p0}, Lcom/android/hwcamera/autorama/PanoramaManager;->doStart()V

    .line 231
    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    :goto_0
    return v0

    .line 234
    :cond_0
    const-string v0, "PanoramaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start mCaptureState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 236
    goto :goto_0
.end method

.method public startMTKPanorama()V
    .locals 2

    .prologue
    .line 199
    const-string v0, "PanoramaManager"

    const-string v1, "startMTKPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->setPanoramaState(I)V

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCurrentNum:I

    .line 203
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoMaxNum:I

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoMaxNum:I

    goto :goto_0
.end method

.method public startPanoramaShooting()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 408
    const-string v0, "PanoramaManager"

    const-string v1, "startPanoramaShooting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iput-boolean v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mIsShooting:Z

    .line 410
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideUIExceptShutter()V

    .line 411
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideQuickRecordButton()V

    .line 412
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showBackGround()V

    .line 414
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    const v1, 0x7f02022d

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 416
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 419
    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/PanoramaManager;->startMTKPanorama()V

    .line 421
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 423
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->resetTouchFocus()V

    .line 427
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/hwcamera/autorama/PanoramaManager;->preparePhotoRequest(II)V

    .line 428
    invoke-virtual {p0}, Lcom/android/hwcamera/autorama/PanoramaManager;->startCapture()Z

    .line 429
    return-void
.end method

.method public stop(Z)V
    .locals 4
    .parameter "isMerge"

    .prologue
    const/16 v3, 0x70

    .line 340
    const-string v0, "PanoramaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop mCaptureState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 342
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCaptureState:I

    .line 343
    if-nez p1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopMTKPanoramaCallback()V

    .line 346
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/hwcamera/autorama/PanoramaManager;->stopAsync(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    :cond_1
    :goto_1
    return-void

    .line 342
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->onRelease()V

    goto :goto_1
.end method

.method public stopCapture(Z)V
    .locals 4
    .parameter "isMerge"

    .prologue
    const/4 v3, 0x0

    .line 309
    const-string v0, "PanoramaManager"

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

    .line 310
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 311
    const-string v0, "PanoramaManager"

    const-string v1, "stopCapture failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 326
    iput-boolean v3, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mIsShooting:Z

    .line 327
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->animateFlash()V

    .line 336
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/autorama/PanoramaManager;->stop(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaView:Lcom/android/hwcamera/autorama/PanoramaViewManager;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->setPanoramaState(I)V

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
