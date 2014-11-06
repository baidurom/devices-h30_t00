.class public Lcom/android/hwcamera/PanoramaModule;
.super Lcom/android/hwcamera/AbstractCameraModule;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/hwcamera/OnShutterButtonListener;
.implements Lcom/android/hwcamera/ui/LayoutChangeNotifier$Listener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;,
        Lcom/android/hwcamera/PanoramaModule$FlipBitmapDrawable;,
        Lcom/android/hwcamera/PanoramaModule$PanoOrientationEventListener;,
        Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;
    }
.end annotation


# static fields
.field private static final CAPTURE_STATE_MOSAIC:I = 0x1

.field private static final CAPTURE_STATE_VIEWFINDER:I = 0x0

.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field public static final DEFAULT_BLEND_MODE:I = 0x3

.field public static final DEFAULT_CAPTURE_PIXELS:I = 0xa8c00

.field public static final DEFAULT_SWEEP_ANGLE:I = 0xa0

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field private static final GPS_TIME_FORMAT_STR:Ljava/lang/String; = "kk/1,mm/1,ss/1"

.field private static final MSG_CLEAR_SCREEN_DELAY:I = 0x4

.field private static final MSG_GENERATE_FINAL_MOSAIC_ERROR:I = 0x2

.field private static final MSG_LOW_RES_FINAL_MOSAIC_READY:I = 0x1

.field private static final MSG_RESET_TO_PREVIEW:I = 0x3

.field private static final PANNING_SPEED_THRESHOLD:F = 2.5f

.field private static final PREVIEW_ACTIVE:I = 0x1

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String; = "CAM PanoModule"


# instance fields
.field private mActivity:Lcom/android/hwcamera/CameraActivity;

.field private mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

.field private mCameraOrientation:I

.field private mCameraState:I

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mCancelComputation:Z

.field private mCaptureIndicator:Landroid/view/View;

.field private mCaptureLayout:Landroid/widget/LinearLayout;

.field private mCaptureState:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDateTimeStampFormat:Ljava/text/DateFormat;

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOkString:Ljava/lang/String;

.field private mDialogPanoramaFailedString:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mDialogWaitingPreviousString:Ljava/lang/String;

.field private mExitPanoButton:Landroid/widget/ImageView;

.field private mFirstTimeInitialized:Z

.field private mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

.field private mGPSDateStampFormat:Ljava/text/DateFormat;

.field private mGPSTimeStampFormat:Ljava/text/DateFormat;

.field private mHorizontalViewAngle:F

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mLeftIndicator:Landroid/view/View;

.field private mMainHandler:Landroid/os/Handler;

.field private mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;

.field private mMosaicFrameProcessorInitialized:Z

.field private mMosaicPreviewRenderer:Lcom/android/hwcamera/MosaicPreviewRenderer;

.field private mOnFrameAvailableRunnable:Ljava/lang/Runnable;

.field private mOrientationCompensation:I

.field private mOrientationEventListener:Lcom/android/hwcamera/PanoramaModule$PanoOrientationEventListener;

.field private mPanoLayout:Landroid/view/ViewGroup;

.field private mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPaused:Z

.field private mPreparePreviewString:Ljava/lang/String;

.field private mPreviewArea:Lcom/android/hwcamera/ui/LayoutNotifyView;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressAngle:[F

.field private mProgressDirectionMatrix:Landroid/graphics/Matrix;

.field private mReview:Landroid/widget/ImageView;

.field private mReviewLayout:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mRotateDialog:Lcom/android/hwcamera/RotateDialogController;

.field private mSavingProgressBar:Lcom/android/hwcamera/PanoProgressBar;

.field private mShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mTimeTaken:J

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mUsingFrontCamera:Z

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/hwcamera/AbstractCameraModule;-><init>()V

    .line 121
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mProgressAngle:[F

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    .line 163
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    .line 1249
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/PanoramaModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/gallery3d/ui/GLRootView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mDialogOkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mRotateDialog:Lcom/android/hwcamera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/PanoramaModule;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/hwcamera/PanoramaModule;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/PanoramaModule;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/hwcamera/PanoramaModule;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/PanoramaModule;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/PanoramaModule;->stopCapture(ZZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/hwcamera/PanoramaModule;FFFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/hwcamera/PanoramaModule;->updateProgress(FFFF)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/hwcamera/PanoramaModule;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/hwcamera/PanoramaModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PanoramaModule;->showDirectionIndicators(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/MosaicPreviewRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/hwcamera/MosaicPreviewRenderer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/PanoramaModule;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/hwcamera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->cancelHighResComputation()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/hwcamera/PanoramaModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->switchToCameraMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/hwcamera/PanoramaModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/hwcamera/PanoramaModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/hwcamera/PanoramaModule;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/PanoProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mSavingProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/hwcamera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/hwcamera/PanoramaModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->getCaptureOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/hwcamera/PanoramaModule;[BIII)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/hwcamera/PanoramaModule;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/PanoramaModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureState:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/hwcamera/PanoramaModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/hwcamera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/hwcamera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/ui/LayoutNotifyView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewArea:Lcom/android/hwcamera/ui/LayoutNotifyView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/hwcamera/PanoramaModule;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/PanoramaModule;->configMosaicPreview(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/MosaicFrameProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->onBackgroundThreadFinished()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/hwcamera/PanoramaModule;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PanoramaModule;->showFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/hwcamera/PanoramaModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->resetToPreview()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/hwcamera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    return-object v0
.end method

.method private cancelHighResComputation()V
    .locals 2

    .prologue
    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCancelComputation:Z

    .line 869
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 870
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 871
    monitor-exit v1

    .line 872
    return-void

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 984
    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/hwcamera/MosaicFrameProcessor;->clear()V

    .line 989
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private configMosaicPreview(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->stopCameraPreview()V

    .line 447
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v2, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/hwcamera/CameraScreenNail;

    .line 448
    .local v1, screenNail:Lcom/android/hwcamera/CameraScreenNail;
    invoke-virtual {v1, p1, p2}, Lcom/android/hwcamera/CameraScreenNail;->setSize(II)V

    .line 449
    invoke-virtual {v1}, Lcom/android/hwcamera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-nez v2, :cond_2

    .line 450
    invoke-virtual {v1}, Lcom/android/hwcamera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 456
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    .line 458
    .local v0, isLandscape:Z
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/hwcamera/MosaicPreviewRenderer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/hwcamera/MosaicPreviewRenderer;

    invoke-virtual {v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->release()V

    .line 459
    :cond_0
    new-instance v2, Lcom/android/hwcamera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2, v0}, Lcom/android/hwcamera/MosaicPreviewRenderer;-><init>(Landroid/graphics/SurfaceTexture;IIZ)V

    iput-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/hwcamera/MosaicPreviewRenderer;

    .line 462
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/hwcamera/MosaicPreviewRenderer;

    invoke-virtual {v2}, Lcom/android/hwcamera/MosaicPreviewRenderer;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 463
    iget-boolean v2, p0, Lcom/android/hwcamera/PanoramaModule;->mPaused:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/hwcamera/PanoramaModule;->mThreadRunning:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-nez v2, :cond_1

    .line 464
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->resetToPreview()V

    .line 466
    :cond_1
    return-void

    .line 452
    .end local v0           #isLandscape:Z
    :cond_2
    invoke-virtual {v1}, Lcom/android/hwcamera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 453
    invoke-virtual {v1}, Lcom/android/hwcamera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 454
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->notifyScreenNailChanged()V

    goto :goto_0

    .line 456
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 443
    return-void
.end method

.method private createContentView()V
    .locals 4

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040047

    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 731
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 732
    .local v0, appRes:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    const v2, 0x7f10013f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    .line 733
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/PanoramaModule;->mIndicatorColor:I

    .line 734
    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/PanoramaModule;->mIndicatorColorFast:I

    .line 735
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    const v2, 0x7f10016b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    .line 736
    new-instance v1, Lcom/android/hwcamera/RotateDialogController;

    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f040071

    invoke-direct {v1, v2, v3}, Lcom/android/hwcamera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mRotateDialog:Lcom/android/hwcamera/RotateDialogController;

    .line 738
    invoke-direct {p0, v0}, Lcom/android/hwcamera/PanoramaModule;->setViews(Landroid/content/res/Resources;)V

    .line 739
    return-void
.end method

.method private findBestPreviewSize(Ljava/util/List;ZZ)Z
    .locals 9
    .parameter
    .parameter "need4To3"
    .parameter "needSmaller"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v4, 0xa8c00

    .line 375
    .local v4, pixelsDiff:I
    const/4 v2, 0x0

    .line 376
    .local v2, hasFound:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 377
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    .line 378
    .local v1, h:I
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    .line 380
    .local v6, w:I
    const v7, 0xa8c00

    mul-int v8, v1, v6

    sub-int v0, v7, v8

    .line 381
    .local v0, d:I
    if-eqz p3, :cond_1

    if-ltz v0, :cond_0

    .line 384
    :cond_1
    if-eqz p2, :cond_2

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v6, 0x3

    if-ne v7, v8, :cond_0

    .line 387
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 388
    if-ge v0, v4, :cond_0

    .line 389
    iput v6, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewWidth:I

    .line 390
    iput v1, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewHeight:I

    .line 391
    move v4, v0

    .line 392
    const/4 v2, 0x1

    goto :goto_0

    .line 395
    .end local v0           #d:I
    .end local v1           #h:I
    .end local v5           #size:Landroid/hardware/Camera$Size;
    .end local v6           #w:I
    :cond_3
    return v2
.end method

.method private getCaptureOrientation()I
    .locals 3

    .prologue
    .line 815
    iget-boolean v1, p0, Lcom/android/hwcamera/PanoramaModule;->mUsingFrontCamera:Z

    if-eqz v1, :cond_0

    .line 818
    iget v1, p0, Lcom/android/hwcamera/PanoramaModule;->mDeviceOrientationAtCapture:I

    iget v2, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraOrientation:I

    sub-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v0, v1, 0x168

    .line 822
    .local v0, orientation:I
    :goto_0
    return v0

    .line 820
    .end local v0           #orientation:I
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/PanoramaModule;->mDeviceOrientationAtCapture:I

    iget v2, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraOrientation:I

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .restart local v0       #orientation:I
    goto :goto_0
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter "orientation"

    .prologue
    .line 969
    sparse-switch p0, :sswitch_data_0

    .line 979
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 971
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 977
    :goto_0
    return-object v0

    .line 973
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 975
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 977
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 969
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private handleVirtualButtonDown(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1431
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1432
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 1433
    .local v0, virtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v0, :cond_0

    .line 1434
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/VirtualButton;->onVirtualButtonDown(Landroid/view/KeyEvent;)V

    .line 1435
    const/4 v1, 0x1

    .line 1438
    .end local v0           #virtualButton:Lcom/android/hwcamera/VirtualButton;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleVirtualButtonUp()Z
    .locals 2

    .prologue
    .line 1456
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1457
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 1458
    .local v0, virtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v0, :cond_0

    .line 1459
    invoke-virtual {v0}, Lcom/android/hwcamera/VirtualButton;->onVirtualButtonUp()V

    .line 1460
    const/4 v1, 0x1

    .line 1463
    .end local v0           #virtualButton:Lcom/android/hwcamera/VirtualButton;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideDirectionIndicators()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 488
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 490
    return-void
.end method

.method private hideTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 624
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewArea:Lcom/android/hwcamera/ui/LayoutNotifyView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/LayoutNotifyView;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    iget v1, p0, Lcom/android/hwcamera/PanoramaModule;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PanoProgressBar;->setIndicatorColor(I)V

    .line 629
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 630
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 631
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 994
    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;

    iget v1, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/hwcamera/PanoramaModule;->getPreviewBufSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/hwcamera/MosaicFrameProcessor;->initialize(III)V

    .line 997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method public static isGooglePanoramaSupported()Z
    .locals 1

    .prologue
    .line 1392
    const/4 v0, 0x1

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1246
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1247
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1239
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1240
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1241
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1242
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 863
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mThreadRunning:Z

    .line 864
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mRotateDialog:Lcom/android/hwcamera/RotateDialogController;

    invoke-virtual {v0}, Lcom/android/hwcamera/RotateDialogController;->dismissDialog()V

    .line 865
    return-void
.end method

.method private openCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;,
            Lcom/android/hwcamera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 366
    .local v0, cameraId:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v1, v0}, Lcom/android/hwcamera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 368
    invoke-static {v0}, Lcom/android/hwcamera/Util;->getCameraOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraOrientation:I

    .line 369
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/PanoramaModule;->mUsingFrontCamera:Z

    .line 370
    :cond_1
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 354
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->release()V

    .line 355
    iput-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraState:I

    .line 358
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 876
    iput v2, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureState:I

    .line 883
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 884
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f02015e

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 885
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 886
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/PanoProgressBar;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showUI()V

    .line 893
    invoke-virtual {p0}, Lcom/android/hwcamera/PanoramaModule;->showExitButton()V

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/android/hwcamera/MosaicFrameProcessor;->reset()V

    .line 896
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1235
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1236
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->reset()V

    .line 900
    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->startCameraPreview()V

    .line 901
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mThreadRunning:Z

    .line 859
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 860
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 12
    .parameter "jpegData"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 939
    if-eqz p1, :cond_0

    .line 940
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d00ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/hwcamera/PanoramaModule;->mTimeTaken:J

    invoke-static {v0, v2, v3}, Lcom/android/hwcamera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 942
    .local v1, filename:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/hwcamera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 943
    .local v7, filepath:Ljava/lang/String;
    invoke-static {v7, p1}, Lcom/android/hwcamera/storage/Storage;->writeFile(Ljava/lang/String;[B)V

    .line 947
    :try_start_0
    new-instance v11, Landroid/media/ExifInterface;

    invoke-direct {v11, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 948
    .local v11, exif:Landroid/media/ExifInterface;
    const-string v0, "GPSDateStamp"

    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mGPSDateStampFormat:Ljava/text/DateFormat;

    iget-wide v3, p0, Lcom/android/hwcamera/PanoramaModule;->mTimeTaken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const-string v0, "GPSTimeStamp"

    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    iget-wide v3, p0, Lcom/android/hwcamera/PanoramaModule;->mTimeTaken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string v0, "DateTime"

    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mDateTimeStampFormat:Ljava/text/DateFormat;

    iget-wide v3, p0, Lcom/android/hwcamera/PanoramaModule;->mTimeTaken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string v0, "Orientation"

    invoke-static/range {p4 .. p4}, Lcom/android/hwcamera/PanoramaModule;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-virtual {v11}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    .end local v11           #exif:Landroid/media/ExifInterface;
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v6, v2

    .line 962
    .local v6, jpegLength:I
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/android/hwcamera/PanoramaModule;->mTimeTaken:J

    const/4 v4, 0x0

    move/from16 v5, p4

    move v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/android/hwcamera/storage/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    .line 965
    .end local v1           #filename:Ljava/lang/String;
    .end local v6           #jpegLength:I
    .end local v7           #filepath:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 957
    .restart local v1       #filename:Ljava/lang/String;
    .restart local v7       #filepath:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 958
    .local v10, e:Ljava/io/IOException;
    const-string v0, "CAM PanoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set EXIF for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 965
    .end local v1           #filename:Ljava/lang/String;
    .end local v7           #filepath:Ljava/lang/String;
    .end local v10           #e:Ljava/io/IOException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setViews(Landroid/content/res/Resources;)V
    .locals 8
    .parameter "appRes"

    .prologue
    const v7, 0x7f0a000b

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 658
    iput v5, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureState:I

    .line 659
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    const v4, 0x7f1001dc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/PanoProgressBar;

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    .line 660
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PanoProgressBar;->setBackgroundColor(I)V

    .line 661
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    const v4, 0x7f0a000c

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PanoProgressBar;->setDoneColor(I)V

    .line 662
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    iget v4, p0, Lcom/android/hwcamera/PanoramaModule;->mIndicatorColor:I

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PanoProgressBar;->setIndicatorColor(I)V

    .line 663
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    new-instance v4, Lcom/android/hwcamera/PanoramaModule$5;

    invoke-direct {v4, p0}, Lcom/android/hwcamera/PanoramaModule$5;-><init>(Lcom/android/hwcamera/PanoramaModule;)V

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PanoProgressBar;->setOnDirectionChangeListener(Lcom/android/hwcamera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 673
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    const v4, 0x7f1001dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    .line 674
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    const v4, 0x7f1001de

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    .line 675
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 676
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 677
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    const v4, 0x7f1001e0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    .line 679
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    const v4, 0x7f1001da

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/ui/LayoutNotifyView;

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewArea:Lcom/android/hwcamera/ui/LayoutNotifyView;

    .line 680
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewArea:Lcom/android/hwcamera/ui/LayoutNotifyView;

    invoke-virtual {v3, p0}, Lcom/android/hwcamera/ui/LayoutNotifyView;->setOnLayoutChangeListener(Lcom/android/hwcamera/ui/LayoutChangeNotifier$Listener;)V

    .line 682
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    const v4, 0x7f100167

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/PanoProgressBar;

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mSavingProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    .line 683
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mSavingProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 684
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mSavingProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PanoProgressBar;->setMaxProgress(I)V

    .line 685
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mSavingProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PanoProgressBar;->setBackgroundColor(I)V

    .line 686
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mSavingProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    const v4, 0x7f0a000d

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PanoProgressBar;->setDoneColor(I)V

    .line 688
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    const v4, 0x7f1001d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    .line 690
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    const v4, 0x7f100164

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    .line 691
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    const v4, 0x7f100165

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    .line 692
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    const v4, 0x7f100168

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 693
    .local v0, cancelButton:Landroid/view/View;
    new-instance v3, Lcom/android/hwcamera/PanoramaModule$6;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/PanoramaModule$6;-><init>(Lcom/android/hwcamera/PanoramaModule;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 702
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v4, 0x7f02015e

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 703
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v3, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 705
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v2

    .line 706
    .local v2, virtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v2, :cond_0

    .line 707
    invoke-virtual {v2, p0}, Lcom/android/hwcamera/VirtualButton;->setOnVirtualButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 708
    invoke-virtual {v2, v6}, Lcom/android/hwcamera/VirtualButton;->enableVirtualButton(Z)V

    .line 711
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f10013e

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mExitPanoButton:Landroid/widget/ImageView;

    .line 712
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mExitPanoButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 713
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mExitPanoButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/hwcamera/PanoramaModule$7;

    invoke-direct {v4, p0}, Lcom/android/hwcamera/PanoramaModule$7;-><init>(Lcom/android/hwcamera/PanoramaModule;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->hideSwitcher()V

    .line 722
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_1

    .line 724
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    const v4, 0x7f100169

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ui/Rotatable;

    .line 725
    .local v1, view:Lcom/android/hwcamera/ui/Rotatable;
    const/16 v3, 0x10e

    invoke-interface {v1, v3, v5}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 727
    .end local v1           #view:Lcom/android/hwcamera/ui/Rotatable;
    :cond_1
    return-void
.end method

.method private setupCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;,
            Lcom/android/hwcamera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->openCamera()V

    .line 343
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 344
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/hwcamera/PanoramaModule;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 348
    invoke-direct {p0, v0}, Lcom/android/hwcamera/PanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .parameter "parameters"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 399
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 400
    .local v5, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v5, v10, v10}, Lcom/android/hwcamera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 401
    const-string v6, "CAM PanoModule"

    const-string v7, "No 4:3 ratio preview size supported."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-direct {p0, v5, v9, v10}, Lcom/android/hwcamera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 403
    const-string v6, "CAM PanoModule"

    const-string v7, "Can\'t find a supported preview size smaller than 960x720."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-direct {p0, v5, v9, v9}, Lcom/android/hwcamera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    .line 407
    :cond_0
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget v6, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewWidth:I

    iget v7, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 410
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 411
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 412
    .local v1, last:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v3, v6, v9

    .line 413
    .local v3, minFps:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v2, v6, v10

    .line 414
    .local v2, maxFps:I
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 415
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 418
    .local v4, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/hwcamera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 419
    iget-object v6, p0, Lcom/android/hwcamera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 426
    :goto_0
    const-string v6, "recording-hint"

    const-string v7, "false"

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/hwcamera/PanoramaModule;->mHorizontalViewAngle:F

    .line 429
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/android/hwcamera/PanoramaModule;->mVerticalViewAngle:F

    .line 431
    iget-object v6, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/hwcamera/CameraActivity;->tryMuteSoundPlayer()Z

    .line 432
    return-void

    .line 422
    :cond_1
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set the focus mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " becuase the mode is not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDirectionIndicators(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 493
    packed-switch p1, :pswitch_data_0

    .line 511
    :goto_0
    return-void

    .line 495
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 499
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 503
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    const/16 v4, 0x8

    .line 922
    if-eqz p1, :cond_0

    .line 923
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->getCaptureOrientation()I

    move-result v0

    .line 924
    .local v0, orientation:I
    const/16 v1, 0xb4

    if-lt v0, v1, :cond_1

    .line 926
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/hwcamera/PanoramaModule$FlipBitmapDrawable;

    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/android/hwcamera/PanoramaModule$FlipBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 933
    .end local v0           #orientation:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 934
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 935
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 936
    return-void

    .line 929
    .restart local v0       #orientation:I
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private showTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 615
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewArea:Lcom/android/hwcamera/ui/LayoutNotifyView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/LayoutNotifyView;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    iget v1, p0, Lcom/android/hwcamera/PanoramaModule;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PanoProgressBar;->setIndicatorColor(I)V

    .line 619
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 620
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 621
    return-void
.end method

.method private startCameraPreview()V
    .locals 2

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1198
    iget v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->stopCameraPreview()V

    .line 1203
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1205
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1206
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1208
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1209
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraState:I

    goto :goto_0
.end method

.method private stopCameraPreview()V
    .locals 2

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1214
    const-string v0, "CAM PanoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopPreview()V

    .line 1217
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraState:I

    .line 1218
    return-void
.end method

.method private stopCapture(ZZ)V
    .locals 3
    .parameter "aborted"
    .parameter "byUser"

    .prologue
    const/4 v2, 0x0

    .line 577
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureState:I

    .line 578
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 579
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->hideTooFastIndication()V

    .line 580
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->hideDirectionIndicators()V

    .line 582
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PanoProgressBar;->setProgress(I)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/MosaicFrameProcessor;->setProgressListener(Lcom/android/hwcamera/MosaicFrameProcessor$ProgressListener;)V

    .line 585
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->stopCameraPreview()V

    .line 587
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 589
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mRotateDialog:Lcom/android/hwcamera/RotateDialogController;

    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mPreparePreviewString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideUI()V

    .line 594
    new-instance v0, Lcom/android/hwcamera/PanoramaModule$4;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/PanoramaModule$4;-><init>(Lcom/android/hwcamera/PanoramaModule;)V

    invoke-direct {p0, v0}, Lcom/android/hwcamera/PanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 611
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->keepScreenOnAwhile()V

    .line 612
    return-void
.end method

.method private switchToCameraMode()Z
    .locals 1

    .prologue
    .line 1396
    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1398
    :goto_0
    return v0

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->switchFromGooglePano2Photo()V

    .line 1398
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateProgress(FFFF)V
    .locals 5
    .parameter "panningRateXInDegree"
    .parameter "panningRateYInDegree"
    .parameter "progressHorizontalAngle"
    .parameter "progressVerticalAngle"

    .prologue
    const/high16 v2, 0x4020

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 635
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 637
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 639
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->showTooFastIndication()V

    .line 646
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mProgressAngle:[F

    aput p3, v1, v3

    .line 647
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mProgressAngle:[F

    aput p4, v1, v4

    .line 648
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mProgressAngle:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 650
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mProgressAngle:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v3

    float-to-int v0, v1

    .line 654
    .local v0, angleInMajorDirection:I
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/PanoProgressBar;->setProgress(I)V

    .line 655
    return-void

    .line 641
    .end local v0           #angleInMajorDirection:I
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->hideTooFastIndication()V

    goto :goto_0

    .line 650
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v4

    float-to-int v0, v1

    goto :goto_1
.end method


# virtual methods
.method public canGotoGallery()Z
    .locals 1

    .prologue
    .line 1347
    const/4 v0, 0x1

    return v0
.end method

.method public collapseCameraControls()Z
    .locals 1

    .prologue
    .line 1319
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public doSmileCapture(I)V
    .locals 0
    .parameter "smileScore"

    .prologue
    .line 1360
    return-void
.end method

.method public flashModeInLowBattery()V
    .locals 0

    .prologue
    .line 1364
    return-void
.end method

.method public generateFinalMosaic(Z)Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;
    .locals 13
    .parameter "highRes"

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 1144
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;

    invoke-virtual {v2, p1}, Lcom/android/hwcamera/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v8

    .line 1145
    .local v8, mosaicReturnCode:I
    const/4 v2, -0x2

    if-ne v8, v2, :cond_0

    .line 1180
    :goto_0
    return-object v5

    .line 1147
    :cond_0
    const/4 v2, -0x1

    if-ne v8, v2, :cond_1

    .line 1148
    new-instance v5, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5}, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;-><init>()V

    goto :goto_0

    .line 1151
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;

    invoke-virtual {v2}, Lcom/android/hwcamera/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1152
    .local v1, imageData:[B
    if-nez v1, :cond_2

    .line 1153
    const-string v2, "CAM PanoModule"

    const-string v5, "getFinalMosaicNV21() returned null."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    new-instance v5, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5}, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;-><init>()V

    goto :goto_0

    .line 1157
    :cond_2
    array-length v2, v1

    add-int/lit8 v7, v2, -0x8

    .line 1158
    .local v7, len:I
    add-int/lit8 v2, v7, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x3

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v3, v2, v10

    .line 1160
    .local v3, width:I
    add-int/lit8 v2, v7, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x5

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x6

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x7

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v4, v2, v10

    .line 1162
    .local v4, height:I
    const-string v2, "CAM PanoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ImLength = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", W = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", H = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1166
    :cond_3
    const-string v2, "CAM PanoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "width|height <= 0!!, len = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", W = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", H = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    new-instance v5, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5}, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;-><init>()V

    goto/16 :goto_0

    .line 1171
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1172
    .local v0, yuvimage:Landroid/graphics/YuvImage;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1173
    .local v9, out:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v9}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1175
    :try_start_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    new-instance v5, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v5, v2, v3, v4}, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;-><init>([BII)V

    goto/16 :goto_0

    .line 1176
    :catch_0
    move-exception v6

    .line 1177
    .local v6, e:Ljava/lang/Exception;
    const-string v2, "CAM PanoModule"

    const-string v5, "Exception in storing final mosaic"

    invoke-static {v2, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1178
    new-instance v5, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5}, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;-><init>()V

    goto/16 :goto_0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 435
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 436
    .local v0, pixelInfo:Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 438
    iget v1, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public hideExitButton()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mExitPanoButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mExitPanoButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    :cond_0
    return-void
.end method

.method public init(Lcom/android/hwcamera/CameraActivity;Landroid/view/View;Z)V
    .locals 6
    .parameter "activity"
    .parameter "parent"
    .parameter "reuseScreenNail"

    .prologue
    const/4 v5, 0x1

    .line 231
    iput-object p1, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 233
    instance-of v3, p2, Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    .line 234
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 237
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    iput-object p2, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    .line 239
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->createContentView()V

    .line 241
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 242
    if-eqz p3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3, v5}, Lcom/android/hwcamera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 249
    :goto_0
    new-instance v3, Lcom/android/hwcamera/PanoramaModule$1;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/PanoramaModule$1;-><init>(Lcom/android/hwcamera/PanoramaModule;)V

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    .line 270
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy:MM:dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 271
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "kk/1,mm/1,ss/1"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    .line 272
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 273
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 274
    .local v2, tzUTC:Ljava/util/TimeZone;
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 275
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 277
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 278
    .local v1, pm:Landroid/os/PowerManager;
    const-string v3, "Panorama"

    invoke-virtual {v1, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 280
    new-instance v3, Lcom/android/hwcamera/PanoramaModule$PanoOrientationEventListener;

    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v3, v4}, Lcom/android/hwcamera/PanoramaModule$PanoOrientationEventListener;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mOrientationEventListener:Lcom/android/hwcamera/PanoramaModule$PanoOrientationEventListener;

    .line 282
    invoke-static {}, Lcom/android/hwcamera/MosaicFrameProcessor;->getInstance()Lcom/android/hwcamera/MosaicFrameProcessor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;

    .line 284
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 285
    .local v0, appRes:Landroid/content/res/Resources;
    const v3, 0x7f0d00bd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mPreparePreviewString:Ljava/lang/String;

    .line 286
    const v3, 0x7f0d00bf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mDialogTitle:Ljava/lang/String;

    .line 287
    const v3, 0x7f0d00b6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mDialogOkString:Ljava/lang/String;

    .line 288
    const v3, 0x7f0d00be

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    .line 289
    const v3, 0x7f0d0016

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    .line 291
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/GLRootView;

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    .line 293
    new-instance v3, Lcom/android/hwcamera/PanoramaModule$2;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/PanoramaModule$2;-><init>(Lcom/android/hwcamera/PanoramaModule;)V

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    .line 334
    return-void

    .line 245
    .end local v0           #appRes:Landroid/content/res/Resources;
    .end local v1           #pm:Landroid/os/PowerManager;
    .end local v2           #tzUTC:Ljava/util/TimeZone;
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3, v5}, Lcom/android/hwcamera/CameraActivity;->createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    goto/16 :goto_0
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 1295
    return-void
.end method

.method public needBackground()Z
    .locals 1

    .prologue
    .line 1333
    const/4 v0, 0x0

    return v0
.end method

.method public needColorEffect()Z
    .locals 1

    .prologue
    .line 1382
    const/4 v0, 0x0

    return v0
.end method

.method public needMenu()Z
    .locals 1

    .prologue
    .line 1328
    const/4 v0, 0x0

    return v0
.end method

.method public needsBeautyProgress()Z
    .locals 1

    .prologue
    .line 1376
    const/4 v0, 0x0

    return v0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 1324
    const/4 v0, 0x0

    return v0
.end method

.method public needsThumbnail()Z
    .locals 1

    .prologue
    .line 1342
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1299
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1229
    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 1311
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 1048
    const/4 v1, 0x0

    .line 1049
    .local v1, lowResReview:Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Lcom/android/hwcamera/PanoramaModule;->mThreadRunning:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1052
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1055
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1056
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1057
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040069

    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1059
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1060
    const v2, 0x7f040046

    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1062
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/hwcamera/PanoramaModule;->setViews(Landroid/content/res/Resources;)V

    .line 1063
    iget-boolean v2, p0, Lcom/android/hwcamera/PanoramaModule;->mThreadRunning:Z

    if-eqz v2, :cond_1

    .line 1064
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1065
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1066
    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    :cond_1
    return-void

    .line 1052
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onFaceDetected([Lcom/android/hwcamera/facedetect/event/Face;)V
    .locals 0
    .parameter "facesDatas"

    .prologue
    .line 1352
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mFirstTimeInitialized:Z

    .line 485
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 0
    .parameter "full"

    .prologue
    .line 1281
    if-eqz p1, :cond_0

    .line 1282
    invoke-virtual {p0}, Lcom/android/hwcamera/PanoramaModule;->showExitButton()V

    .line 1286
    :goto_0
    return-void

    .line 1284
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/PanoramaModule;->hideExitButton()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1404
    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1405
    const/4 v0, 0x1

    .line 1427
    :goto_0
    return v0

    .line 1408
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1427
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1410
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1411
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->handleVirtualButtonUp()Z

    move-result v0

    goto :goto_0

    .line 1415
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1416
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->handleVirtualButtonUp()Z

    move-result v0

    goto :goto_0

    .line 1425
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/hwcamera/PanoramaModule;->handleVirtualButtonDown(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1408
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_0
        0x4f -> :sswitch_2
        0x55 -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1443
    sparse-switch p1, :sswitch_data_0

    .line 1452
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1450
    :sswitch_0
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->handleVirtualButtonUp()Z

    move-result v0

    goto :goto_0

    .line 1443
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 6
    .parameter "v"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 473
    const-string v0, "CAM PanoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p4, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p5, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/hwcamera/CameraActivity;->onLayoutChange(Landroid/view/View;IIII)V

    .line 475
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/PanoramaModule;->configMosaicPreview(II)V

    .line 476
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1075
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/PanoramaModule;->mDeviceOrientation:I

    invoke-static {p1, v1}, Lcom/android/hwcamera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/PanoramaModule;->mDeviceOrientation:I

    .line 1079
    iget v1, p0, Lcom/android/hwcamera/PanoramaModule;->mDeviceOrientation:I

    iget-object v2, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v2}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    add-int v0, v1, v2

    .line 1081
    .local v0, orientationCompensation:I
    iget v1, p0, Lcom/android/hwcamera/PanoramaModule;->mOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 1082
    iput v0, p0, Lcom/android/hwcamera/PanoramaModule;->mOrientationCompensation:I

    .line 1083
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1007
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mOrientationEventListener:Lcom/android/hwcamera/PanoramaModule$PanoOrientationEventListener;

    invoke-virtual {v1}, Lcom/android/hwcamera/PanoramaModule$PanoOrientationEventListener;->disable()V

    .line 1008
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 1043
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureState:I

    if-ne v1, v2, :cond_1

    .line 1015
    invoke-direct {p0, v2, v2}, Lcom/android/hwcamera/PanoramaModule;->stopCapture(ZZ)V

    .line 1017
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->reset()V

    .line 1020
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->releaseCamera()V

    .line 1021
    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 1025
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/hwcamera/MosaicPreviewRenderer;

    if-eqz v1, :cond_2

    .line 1026
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/hwcamera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/android/hwcamera/MosaicPreviewRenderer;->release()V

    .line 1027
    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/android/hwcamera/MosaicPreviewRenderer;

    .line 1030
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V

    .line 1031
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_3

    .line 1032
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1033
    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1035
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->resetScreenOn()V

    .line 1037
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v1, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/hwcamera/CameraScreenNail;

    .line 1038
    .local v0, screenNail:Lcom/android/hwcamera/CameraScreenNail;
    invoke-virtual {v0}, Lcom/android/hwcamera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1039
    invoke-virtual {v0}, Lcom/android/hwcamera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1041
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mExitPanoButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mExitPanoButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1042
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method

.method public onPauseBeforeSuper()V
    .locals 1

    .prologue
    .line 1002
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPaused:Z

    .line 1003
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 1307
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1094
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mOrientationEventListener:Lcom/android/hwcamera/PanoramaModule$PanoOrientationEventListener;

    invoke-virtual {v3}, Lcom/android/hwcamera/PanoramaModule$PanoOrientationEventListener;->enable()V

    .line 1096
    iput v5, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureState:I

    .line 1099
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->setupCamera()V
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/hwcamera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1109
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRotateDialog:Lcom/android/hwcamera/RotateDialogController;

    invoke-virtual {v3}, Lcom/android/hwcamera/RotateDialogController;->dismissDialog()V

    .line 1110
    iget-boolean v3, p0, Lcom/android/hwcamera/PanoramaModule;->mThreadRunning:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;

    invoke-virtual {v3}, Lcom/android/hwcamera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1111
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1112
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRotateDialog:Lcom/android/hwcamera/RotateDialogController;

    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 1115
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->hideUI()V

    .line 1116
    new-instance v3, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;

    invoke-direct {v3, p0, v6}, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;-><init>(Lcom/android/hwcamera/PanoramaModule;Lcom/android/hwcamera/PanoramaModule$1;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PanoramaModule$WaitProcessorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1128
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->keepScreenOnAwhile()V

    .line 1131
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v3}, Lcom/android/hwcamera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/hwcamera/ui/PopupManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/hwcamera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1132
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 1133
    :goto_1
    return-void

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0071

    invoke-static {v3, v4}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1103
    .end local v0           #e:Lcom/android/hwcamera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 1104
    .local v0, e:Lcom/android/hwcamera/CameraDisabledException;
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0072

    invoke-static {v3, v4}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_1

    .line 1118
    .end local v0           #e:Lcom/android/hwcamera/CameraDisabledException;
    :cond_1
    iget-boolean v3, p0, Lcom/android/hwcamera/PanoramaModule;->mThreadRunning:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1121
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    .line 1122
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewArea:Lcom/android/hwcamera/ui/LayoutNotifyView;

    invoke-virtual {v3}, Lcom/android/hwcamera/ui/LayoutNotifyView;->getWidth()I

    move-result v2

    .line 1123
    .local v2, w:I
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mPreviewArea:Lcom/android/hwcamera/ui/LayoutNotifyView;

    invoke-virtual {v3}, Lcom/android/hwcamera/ui/LayoutNotifyView;->getHeight()I

    move-result v1

    .line 1124
    .local v1, h:I
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1125
    invoke-direct {p0, v2, v1}, Lcom/android/hwcamera/PanoramaModule;->configMosaicPreview(II)V

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 1089
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPaused:Z

    .line 1090
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .prologue
    .line 1338
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 751
    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PanoramaModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 756
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/CameraActivity;->playSound(I)V

    .line 758
    invoke-virtual {p0}, Lcom/android/hwcamera/PanoramaModule;->startCapture()V

    goto :goto_0

    .line 761
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->playSound(I)V

    .line 763
    const/4 v0, 0x0

    invoke-direct {p0, v0, v4}, Lcom/android/hwcamera/PanoramaModule;->stopCapture(ZZ)V

    goto :goto_0

    .line 754
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 775
    return-void
.end method

.method public onShutterButtonLongClick(Z)Z
    .locals 1
    .parameter "pressed"

    .prologue
    .line 744
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1303
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1291
    return-void
.end method

.method public onTargetDetected(Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)V
    .locals 0
    .parameter "fouceTargetData"

    .prologue
    .line 1368
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1222
    iget v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->keepScreenOnAwhile()V

    .line 1223
    :cond_0
    return-void
.end method

.method public reportProgress()V
    .locals 3

    .prologue
    .line 778
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mSavingProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    invoke-virtual {v1}, Lcom/android/hwcamera/PanoProgressBar;->reset()V

    .line 779
    iget-object v1, p0, Lcom/android/hwcamera/PanoramaModule;->mSavingProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 780
    new-instance v0, Lcom/android/hwcamera/PanoramaModule$8;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/PanoramaModule$8;-><init>(Lcom/android/hwcamera/PanoramaModule;)V

    .line 804
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 805
    return-void
.end method

.method public saveHighResMosaic(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 826
    new-instance v0, Lcom/android/hwcamera/PanoramaModule$9;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/PanoramaModule$9;-><init>(Lcom/android/hwcamera/PanoramaModule;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/android/hwcamera/PanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 854
    invoke-virtual {p0}, Lcom/android/hwcamera/PanoramaModule;->reportProgress()V

    .line 855
    return-void
.end method

.method public setBeautyProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 1372
    return-void
.end method

.method setupProgressDirectionMatrix()V
    .locals 5

    .prologue
    .line 568
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v3}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 569
    .local v1, degrees:I
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 570
    .local v0, cameraId:I
    invoke-static {v1, v0}, Lcom/android/hwcamera/Util;->getDisplayOrientation(II)I

    move-result v2

    .line 571
    .local v2, orientation:I
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 572
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 573
    return-void
.end method

.method public showExitButton()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mExitPanoButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mExitPanoButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    :cond_0
    return-void
.end method

.method public startCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 523
    iput-boolean v2, p0, Lcom/android/hwcamera/PanoramaModule;->mCancelComputation:Z

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/PanoramaModule;->mTimeTaken:J

    .line 525
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 527
    invoke-virtual {p0}, Lcom/android/hwcamera/PanoramaModule;->hideExitButton()V

    .line 528
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideThumbnail()V

    .line 529
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f02022d

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 530
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureState:I

    .line 531
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 532
    invoke-direct {p0, v2}, Lcom/android/hwcamera/PanoramaModule;->showDirectionIndicators(I)V

    .line 534
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mMosaicFrameProcessor:Lcom/android/hwcamera/MosaicFrameProcessor;

    new-instance v1, Lcom/android/hwcamera/PanoramaModule$3;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PanoramaModule$3;-><init>(Lcom/android/hwcamera/PanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/MosaicFrameProcessor;->setProgressListener(Lcom/android/hwcamera/MosaicFrameProcessor$ProgressListener;)V

    .line 555
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/PanoProgressBar;->reset()V

    .line 558
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 559
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PanoProgressBar;->setMaxProgress(I)V

    .line 560
    iget-object v0, p0, Lcom/android/hwcamera/PanoramaModule;->mPanoProgressBar:Lcom/android/hwcamera/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/PanoProgressBar;->setVisibility(I)V

    .line 561
    iget v0, p0, Lcom/android/hwcamera/PanoramaModule;->mDeviceOrientation:I

    iput v0, p0, Lcom/android/hwcamera/PanoramaModule;->mDeviceOrientationAtCapture:I

    .line 562
    invoke-direct {p0}, Lcom/android/hwcamera/PanoramaModule;->keepScreenOn()V

    .line 564
    invoke-virtual {p0}, Lcom/android/hwcamera/PanoramaModule;->setupProgressDirectionMatrix()V

    .line 565
    return-void
.end method

.method public updateCameraAppView()V
    .locals 0

    .prologue
    .line 1315
    return-void
.end method

.method public updateCameraFocusParameters(Z)V
    .locals 0
    .parameter "isForce"

    .prologue
    .line 1356
    return-void
.end method

.method public updateColorEffect(Ljava/lang/String;)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 1389
    return-void
.end method
