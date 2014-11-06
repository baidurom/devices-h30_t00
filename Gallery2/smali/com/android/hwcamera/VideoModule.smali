.class public Lcom/android/hwcamera/VideoModule;
.super Lcom/android/hwcamera/AbstractCameraModule;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/hwcamera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/hwcamera/OnShutterButtonListener;
.implements Lcom/android/hwcamera/FocusOverlayManager$Listener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/hwcamera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/hwcamera/EffectsRecorder$EffectsListener;
.implements Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;,
        Lcom/android/hwcamera/VideoModule$VideoNamer;,
        Lcom/android/hwcamera/VideoModule$JpegPictureCallback;,
        Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;,
        Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;,
        Lcom/android/hwcamera/VideoModule$MainHandler;,
        Lcom/android/hwcamera/VideoModule$CameraOpenThread;,
        Lcom/android/hwcamera/VideoModule$AutoFocusMoveCallback;,
        Lcom/android/hwcamera/VideoModule$AutoFocusCallback;
    }
.end annotation


# static fields
.field private static final CHECK_DISPLAY_ROTATION:I = 0x3

.field private static final CLEAR_SCREEN_DELAY:I = 0x4

.field private static final CUSTOM_MAX_FILESIZE:J = 0x46000L

.field private static final EFFECT_BG_FROM_GALLERY:Ljava/lang/String; = "gallery"

.field private static final ENABLE_FOCUS_UI_SHOW:I = 0x14

.field private static final ENABLE_PAUSE_SHUTTER_BUTTON_MSG:I = 0xd

.field private static final ENABLE_PAUSE_SHUTTER_BUTTON_TIMEOUT:J = 0x2bcL

.field private static final ENABLE_SHUTTER_BUTTON:I = 0x6

.field private static final ENABLE_VIDEO_STOP_BUTTON_MSG:I = 0xc

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final HIDE_SURFACE_VIEW:I = 0xa

.field private static final IDLE:I = 0x0

.field private static final MARGIN_BOTTOM:I = 0x70

.field private static final MARGIN_RIGHT:I = 0x20

.field private static final MARGIN_TOP:I = 0x1b

.field private static final MIN_THUMB_SIZE:I = 0x40

.field private static final PAUSING:I = 0x2

.field private static final RECORDING:I = 0x1

.field private static final RECORD_TIME_VIEW_HEIGHT:I = 0x17

.field private static final REQUEST_EFFECT_BACKDROPPER:I = 0x3e8

.field private static final RESUME_VIDEO_RECORDING_MSG:I = 0xb

.field private static final RESUME_VIDEO_RECORDING_TIMEOUT:J = 0x2bcL

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SHOW_TAP_TO_SNAPSHOT_TOAST:I = 0x7

.field private static final SHOW_VOLUM_SNAP_SHOT_HINT:I = 0x13

.field private static final SHUTTER_BUTTON_TIMEOUT:J = 0x898L

.field private static final START_RECORDING_TIME:I = 0x11

.field private static final START_RECORDING_TIME_TIMEOUT:J = 0x1f4L

.field private static final START_SHOW_TARGAET_IMAGE:I = 0xe

.field private static final START_TARGET_TRACKING_UI:I = 0x602

.field private static final STERO_MIN_VIDEO_SIZE:I = 0x2d0

.field private static final STOP_TARGET_TRACKING_UI:I = 0x601

.field private static final SWITCH_CAMERA:I = 0x8

.field private static final SWITCH_CAMERA_START_ANIMATION:I = 0x9

.field private static final TAG:Ljava/lang/String; = "CAM_VideoModule"

.field private static final TOAST_HINTS_MSG:I = 0x10

.field private static final UPDATE_RECORD_TIME:I = 0x5

.field private static final VIDEO_CODE_RATE:F = 1.07f

.field private static final VIDEO_STOP_BUTTON_TIMEOUT:J = 0x3e8L


# instance fields
.field private doVideoRecordRunnable:Ljava/lang/Runnable;

.field private mActivity:Lcom/android/hwcamera/CameraActivity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mAutoFocusCallback:Lcom/android/hwcamera/VideoModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/hwcamera/VideoModule$AutoFocusMoveCallback;

.field private mAvailableStorageSpace:J

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field private mCaptureTimeLapse:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectType:I

.field private mEffectUriFromGallery:Ljava/lang/String;

.field private mEffectsDisplayResult:Z

.field private mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

.field private final mErrorCallback:Lcom/android/hwcamera/CameraErrorCallback;

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

.field private mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

.field private mFrameDrawnListener:Lcom/android/hwcamera/CameraScreenNail$OnFrameDrawnListener;

.field private mGestures:Lcom/android/hwcamera/PreviewGestures;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAutoFoucsMovingEnabled:Z

.field private mIsNeedCount:Z

.field private mIsSupportPauseAndResume:Z

.field private mIsVideoCaptureIntent:Z

.field private mIsVideoSnapshotSupported:Z

.field private mLabelsLinearLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

.field private mLocationManager:Lcom/android/hwcamera/LocationManager;

.field private mMaxFileSizeLimit:J

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMenuController:Lcom/android/hwcamera/settings/MenuController;

.field private mMeteringAreaSupported:Z

.field private mNeedLowBatteryCallBack:Z

.field private mOnResumeTime:J

.field private mOnStopShutterButtonListner:Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;

.field private mOrientation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field private mPendingSwitchCameraId:I

.field private mPrefVideoEffectDefault:Ljava/lang/String;

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

.field private mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mRecordingIndicator:Landroid/widget/ImageView;

.field private mRecordingStartTime:J

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRecordingTotalTime:J

.field private mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

.field private mResetEffect:Z

.field private mRestoreFlash:Z

.field private mReviewBitmap:Landroid/graphics/Bitmap;

.field private mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

.field private mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewPlayButton:Lcom/android/hwcamera/ui/RotateImageView;

.field private mReviewRetakeButton:Lcom/android/hwcamera/ui/RotateImageView;

.field private mRootView:Landroid/view/View;

.field private mShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private mSnapshotInProgress:Z

.field private mStartTragetTracking:Z

.field private mStopShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceViewReady:Z

.field private mSwitchingCamera:Z

.field private mTargetView:Lcom/android/hwcamera/ui/TargetView;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTimeLapseLabel:Landroid/view/View;

.field private mTipsService:Lcom/android/hwcamera/tips/TipsService;

.field private mTwinkleAnimation:Landroid/animation/ValueAnimator;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoNamer:Lcom/android/hwcamera/VideoModule$VideoNamer;

.field private mVideoSnapshotShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private mVideoSnapshotShutterButtonLayout:Landroid/view/View;

.field private mVideoSnapshotShutterButtonListner:Lcom/android/hwcamera/OnShutterButtonListener;

.field private mVideoState:I

.field private mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

.field private mZoomController:Lcom/android/hwcamera/ZoomController;

.field private mZoomMax:I

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

.field private mZoomValue:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Lcom/android/hwcamera/AbstractCameraModule;-><init>()V

    .line 191
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mSnapshotInProgress:Z

    .line 195
    new-instance v0, Lcom/android/hwcamera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/hwcamera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mErrorCallback:Lcom/android/hwcamera/CameraErrorCallback;

    .line 214
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoSnapshotSupported:Z

    .line 219
    new-instance v0, Lcom/android/hwcamera/VideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoModule$1;-><init>(Lcom/android/hwcamera/VideoModule;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mVideoSnapshotShutterButtonListner:Lcom/android/hwcamera/OnShutterButtonListener;

    .line 268
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mIsSupportPauseAndResume:Z

    .line 269
    iput v2, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    .line 280
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoModule;->mIsNeedCount:Z

    .line 299
    iput v2, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    .line 300
    iput-object v3, p0, Lcom/android/hwcamera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 301
    iput-object v3, p0, Lcom/android/hwcamera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 303
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoModule;->mResetEffect:Z

    .line 324
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/VideoModule;->mMaxFileSizeLimit:J

    .line 327
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mCaptureTimeLapse:Z

    .line 329
    iput v2, p0, Lcom/android/hwcamera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 335
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mPreviewing:Z

    .line 355
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mStartTragetTracking:Z

    .line 357
    new-instance v0, Lcom/android/hwcamera/VideoModule$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoModule$MainHandler;-><init>(Lcom/android/hwcamera/VideoModule;Lcom/android/hwcamera/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    .line 360
    iput v2, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    .line 369
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mNeedLowBatteryCallBack:Z

    .line 371
    invoke-static {}, Lcom/android/hwcamera/CustomConfiguration;->getInstance()Lcom/android/hwcamera/CustomConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    .line 387
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoModule;->mIsAutoFoucsMovingEnabled:Z

    .line 388
    new-instance v0, Lcom/android/hwcamera/VideoModule$AutoFocusCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoModule$AutoFocusCallback;-><init>(Lcom/android/hwcamera/VideoModule;Lcom/android/hwcamera/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mAutoFocusCallback:Lcom/android/hwcamera/VideoModule$AutoFocusCallback;

    .line 389
    new-instance v0, Lcom/android/hwcamera/VideoModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoModule$AutoFocusMoveCallback;-><init>(Lcom/android/hwcamera/VideoModule;Lcom/android/hwcamera/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mAutoFocusMoveCallback:Lcom/android/hwcamera/VideoModule$AutoFocusMoveCallback;

    .line 1412
    new-instance v0, Lcom/android/hwcamera/VideoModule$6;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoModule$6;-><init>(Lcom/android/hwcamera/VideoModule;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->doVideoRecordRunnable:Ljava/lang/Runnable;

    .line 3984
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mSnapshotInProgress:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/hwcamera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/hwcamera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/FocusOverlayManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mIsAutoFoucsMovingEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->openCamera()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/hwcamera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/hwcamera/VideoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/hwcamera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/hwcamera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/hwcamera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/VideoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/android/hwcamera/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/android/hwcamera/VideoModule;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->showTapToSnapshotToast()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ui/PreviewSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/tips/TipsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ui/TargetView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mStopShutterButton:Lcom/android/hwcamera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/hwcamera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->resumeVideoRecording()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/hwcamera/VideoModule;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/hwcamera/VideoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/android/hwcamera/VideoModule;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/android/hwcamera/VideoModule;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoModule;->enableAutoFoucsMoving(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->readVideoPreferences()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/hwcamera/VideoModule;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoModule;->showRecordingUI(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->pauseVideoRecording()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/hwcamera/VideoModule;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mRecordingIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/hwcamera/VideoModule;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/settings/MenuController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/hwcamera/VideoModule;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->restoreDefaults()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/hwcamera/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomValue:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/hwcamera/VideoModule;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/hwcamera/VideoModule;->mZoomValue:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/hwcamera/VideoModule;[BLandroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/VideoModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4602(Lcom/android/hwcamera/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoModule;->mSurfaceViewReady:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/hwcamera/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->stopPreview()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ZoomController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/PreviewGestures;
    .locals 1
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    return-object v0
.end method

.method private addVideoToMediaStore()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 2070
    const/4 v3, 0x0

    .line 2071
    .local v3, fail:Z
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v6, :cond_3

    .line 2072
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_size"

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2074
    iget-wide v0, p0, Lcom/android/hwcamera/VideoModule;->mRecordingTotalTime:J

    .line 2075
    .local v0, duration:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_4

    .line 2076
    iget-boolean v6, p0, Lcom/android/hwcamera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v6, :cond_0

    .line 2077
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 2079
    :cond_0
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2084
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mVideoNamer:Lcom/android/hwcamera/VideoModule$VideoNamer;

    invoke-virtual {v6}, Lcom/android/hwcamera/VideoModule$VideoNamer;->getUri()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2085
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v8}, Lcom/android/hwcamera/CameraActivity;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 2091
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_data"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2093
    .local v4, finalName:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2094
    iput-object v4, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2097
    :cond_1
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_data"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2100
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v6}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 2101
    .local v5, loc:Landroid/location/Location;
    if-eqz v5, :cond_2

    .line 2102
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "latitude"

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2103
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "longitude"

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2107
    :cond_2
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "notifyMtp"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2109
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2111
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.hardware.action.NEW_VIDEO"

    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2121
    const-string v6, "CAM_VideoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current video URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    .end local v0           #duration:J
    .end local v4           #finalName:Ljava/lang/String;
    .end local v5           #loc:Landroid/location/Location;
    :cond_3
    :goto_1
    iput-object v11, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2125
    return v3

    .line 2081
    .restart local v0       #duration:J
    :cond_4
    const-string v6, "CAM_VideoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Video duration <= 0 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2113
    :catch_0
    move-exception v2

    .line 2116
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "CAM_VideoModule"

    const-string v7, "failed to add video to media store"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2117
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2118
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2119
    const/4 v3, 0x1

    .line 2121
    const-string v6, "CAM_VideoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current video URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    const-string v7, "CAM_VideoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current video URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v6
.end method

.method private changeFlashModeForVideo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "flashmode"

    .prologue
    .line 2964
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "torch"

    .line 2966
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 2965
    .restart local p1
    :cond_1
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "off"

    goto :goto_0
.end method

.method private checkAvailableStorageSpace()Z
    .locals 5

    .prologue
    .line 2776
    :try_start_0
    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getAvailableSpace()J

    move-result-wide v1

    const-wide/32 v3, 0x1400000

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/hwcamera/VideoModule;->mAvailableStorageSpace:J

    .line 2777
    iget-wide v1, p0, Lcom/android/hwcamera/VideoModule;->mAvailableStorageSpace:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 2778
    const/4 v1, 0x1

    .line 2783
    :goto_0
    return v1

    .line 2780
    :catch_0
    move-exception v0

    .line 2781
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to getWidth available space"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkQualityAndStartPreview()V
    .locals 3

    .prologue
    .line 3549
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->readVideoPreferences()V

    .line 3550
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoModule;->showTimeLapseUI(Z)V

    .line 3551
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3552
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_1

    .line 3554
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 3557
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->startPreview()V

    .line 3558
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1755
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1756
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1757
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1758
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1762
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private clearVideoNamer()V
    .locals 1

    .prologue
    .line 3901
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mVideoNamer:Lcom/android/hwcamera/VideoModule$VideoNamer;

    if-eqz v0, :cond_0

    .line 3902
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mVideoNamer:Lcom/android/hwcamera/VideoModule$VideoNamer;

    invoke-virtual {v0}, Lcom/android/hwcamera/VideoModule$VideoNamer;->finish()V

    .line 3903
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mVideoNamer:Lcom/android/hwcamera/VideoModule$VideoNamer;

    .line 3905
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 1

    .prologue
    .line 1500
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoModule;->closeCamera(Z)V

    .line 1501
    return-void
.end method

.method private closeCamera(Z)V
    .locals 4
    .parameter "closeEffectsAlso"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1515
    const-string v0, "CAM_VideoModule"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1517
    const-string v0, "CAM_VideoModule"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :goto_0
    return-void

    .line 1521
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->stopTargetTracking()V

    .line 1523
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 1526
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/hwcamera/EffectsRecorder;->disconnectCamera()V

    .line 1528
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->closeEffects()V

    .line 1529
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1530
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1531
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->release()V

    .line 1532
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iput-object v2, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 1533
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoModule;->mPreviewing:Z

    .line 1534
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoModule;->mSnapshotInProgress:Z

    .line 1535
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->onCameraReleased()V

    goto :goto_0
.end method

.method private closeEffects()V
    .locals 2

    .prologue
    .line 1486
    const-string v0, "CAM_VideoModule"

    const-string v1, "Closing effects"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    .line 1488
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    if-nez v0, :cond_0

    .line 1489
    const-string v0, "CAM_VideoModule"

    const-string v1, "Effects are already closed. Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :goto_0
    return-void

    .line 1494
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/hwcamera/EffectsRecorder;->release()V

    .line 1495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 3882
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 3884
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3888
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3890
    :cond_0
    return-void

    .line 3885
    :catch_0
    move-exception v0

    .line 3886
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CAM_VideoModule"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private collapseCameraControlsForGoogle()Z
    .locals 1

    .prologue
    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, ret:Z
    return v0
.end method

.method private collapseCameraControlsForUs()Z
    .locals 2

    .prologue
    .line 837
    const/4 v0, 0x0

    .line 838
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v1}, Lcom/android/hwcamera/settings/MenuController;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v1}, Lcom/android/hwcamera/settings/MenuController;->popupDismissed()V

    .line 840
    const/4 v0, 0x1

    .line 842
    :cond_0
    return v0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 2
    .parameter "outputFileFormat"

    .prologue
    .line 3868
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-static {}, Lcom/android/hwcamera/CustomConfiguration;->getVideoFormat()Ljava/lang/String;

    move-result-object v0

    .line 3869
    .local v0, format:Ljava/lang/String;
    const-string v1, "3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3870
    const-string v1, ".3gp"

    .line 3877
    :goto_0
    return-object v1

    .line 3871
    :cond_0
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3872
    const-string v1, ".mp4"

    goto :goto_0

    .line 3874
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 3875
    const-string v1, ".mp4"

    goto :goto_0

    .line 3877
    :cond_2
    const-string v1, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 3861
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3862
    const-string v0, "video/mp4"

    .line 3864
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 4
    .parameter "dateTaken"

    .prologue
    .line 635
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 636
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d00b9

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 639
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 641
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2130
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 2132
    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2133
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2134
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2135
    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2138
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->updateStorageSpaceWhenStorageIsFull()V

    .line 2139
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 2142
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2144
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2145
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :cond_0
    return-void
.end method

.method private doGpsRecord()V
    .locals 5

    .prologue
    .line 3305
    const/4 v0, 0x0

    .line 3306
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_recordlocation_key"

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0115

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3309
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_recordlocation_key"

    const-string v3, "off"

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 3311
    const/4 v0, 0x1

    .line 3314
    :cond_0
    if-nez v0, :cond_2

    .line 3316
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    if-eqz v1, :cond_1

    .line 3317
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 3324
    :cond_1
    :goto_0
    return-void

    .line 3323
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initGpsDialog()V

    goto :goto_0
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 1742
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1744
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1745
    const/4 v0, -0x1

    .line 1746
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1750
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/hwcamera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1751
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->finish()V

    .line 1752
    return-void

    .line 1748
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private doUpdateFlashModeUI()V
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getFlashEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoModule;->updateFlashUI(Z)V

    .line 885
    :cond_0
    return-void
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 3256
    iget v0, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableAutoFoucsMoving(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 4191
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoModule;->mIsAutoFoucsMovingEnabled:Z

    .line 4192
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v0}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->clear()V

    .line 4194
    :cond_0
    return-void
.end method

.method private enableCameraControls(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 863
    return-void
.end method

.method private enableHdrMovieIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1282
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-nez v0, :cond_1

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x438

    if-lt v0, v1, :cond_2

    .line 1284
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_hdr_movie_key"

    aput-object v2, v1, v3

    const-string v2, "off"

    aput-object v2, v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/android/hwcamera/settings/MenuController;->overrideSettings(Z[Ljava/lang/String;)V

    goto :goto_0

    .line 1286
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "pref_hdr_movie_key"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/settings/MenuController;->clearOverrideSettings([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/hwcamera/PreferenceGroup;)Lcom/android/hwcamera/PreferenceGroup;
    .locals 2
    .parameter "screen"

    .prologue
    .line 2151
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2152
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2153
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/hwcamera/CameraSettings;->removePreferenceFromScreen(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)V

    .line 2157
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2158
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/hwcamera/CameraSettings;->removePreferenceFromScreen(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)V

    .line 2161
    :cond_1
    return-object p1
.end method

.method private generateVideoFilename(I)V
    .locals 11
    .parameter "outputFileFormat"

    .prologue
    .line 2048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2049
    .local v0, dateTaken:J
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v5

    .line 2051
    .local v5, title:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2052
    .local v2, filename:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    .line 2053
    .local v3, mime:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2054
    .local v4, path:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2055
    .local v6, tmpPath:Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2056
    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_display_name"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2059
    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "mime_type"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_data"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "resolution"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mVideoNamer:Lcom/android/hwcamera/VideoModule$VideoNamer;

    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v9}, Lcom/android/hwcamera/VideoModule$VideoNamer;->prepareUri(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 2065
    iput-object v6, p0, Lcom/android/hwcamera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 2066
    const-string v7, "CAM_VideoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New video filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1299
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v6, v6, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1300
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v6, :cond_0

    .line 1332
    :goto_0
    return-void

    .line 1301
    :cond_0
    sget-boolean v6, Lcom/android/gallery3d/common/ApiHelper;->HAS_GET_SUPPORTED_VIDEO_SIZE:Z

    if-eqz v6, :cond_6

    .line 1302
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1303
    :cond_1
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewWidth:I

    .line 1304
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewHeight:I

    .line 1330
    :cond_2
    :goto_1
    const-string v6, "CAM_VideoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDesiredPreviewWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". mDesiredPreviewHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1306
    :cond_3
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 1307
    .local v5, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1308
    .local v2, preferred:Landroid/hardware/Camera$Size;
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v6, v7

    .line 1309
    .local v3, product:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1311
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1312
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 1313
    .local v4, size:Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    if-le v6, v3, :cond_4

    .line 1314
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1317
    .end local v4           #size:Landroid/hardware/Camera$Size;
    :cond_5
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v7, v7

    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    invoke-static {v6, v5, v7, v8}, Lcom/android/hwcamera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1320
    .local v1, optimalSize:Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_2

    .line 1321
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewWidth:I

    .line 1322
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    iput v6, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_1

    .line 1327
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .end local v1           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v2           #preferred:Landroid/hardware/Camera$Size;
    .end local v3           #product:I
    .end local v5           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_6
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v6, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewWidth:I

    .line 1328
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v6, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_1
.end method

.method private static getLowVideoQuality()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 889
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

    if-eqz v0, :cond_0

    .line 890
    const/4 v0, 0x4

    .line 892
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPreferredCameraId(Lcom/android/hwcamera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 646
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 651
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 2676
    long-to-double v2, p1

    iget v4, p0, Lcom/android/hwcamera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 2677
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private getTotalAvailableRecordingTime()J
    .locals 11

    .prologue
    const-wide/16 v5, 0x0

    .line 2761
    :try_start_0
    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->audioBitRate:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    const v8, 0x3f88f5c3

    mul-float/2addr v7, v8

    float-to-long v7, v7

    const-wide/16 v9, 0x8

    div-long v0, v7, v9

    .line 2763
    .local v0, bitRate:J
    iget-wide v7, p0, Lcom/android/hwcamera/VideoModule;->mAvailableStorageSpace:J

    div-long v3, v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2765
    .local v3, remaining:J
    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    move-wide v3, v5

    .line 2769
    .end local v0           #bitRate:J
    .end local v3           #remaining:J
    :cond_0
    :goto_0
    return-wide v3

    .line 2767
    :catch_0
    move-exception v2

    .line 2768
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "CAM_VideoModule"

    const-string v8, "Fail to calculate remaining time"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v3, v5

    .line 2769
    goto :goto_0
.end method

.method private handleVirtualButtonDown(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1695
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1696
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 1697
    .local v0, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v0, :cond_0

    .line 1698
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/VirtualButton;->onVirtualButtonDown(Landroid/view/KeyEvent;)V

    .line 1699
    const/4 v1, 0x1

    .line 1702
    .end local v0           #mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleVirtualButtonUp()Z
    .locals 2

    .prologue
    .line 1726
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1727
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 1728
    .local v0, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v0, :cond_0

    .line 1729
    invoke-virtual {v0}, Lcom/android/hwcamera/VirtualButton;->onVirtualButtonUp()V

    .line 1730
    const/4 v1, 0x1

    .line 1733
    .end local v0           #mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasWindowFocus()Z
    .locals 1

    .prologue
    .line 4306
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method private hideAlert()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2446
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/VideoModule;->mReviewBitmap:Landroid/graphics/Bitmap;

    .line 2448
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2449
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 2450
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 2451
    .local v0, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v0, :cond_0

    .line 2452
    invoke-virtual {v0, v3}, Lcom/android/hwcamera/VirtualButton;->enableVirtualButton(Z)V

    .line 2454
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->showMenu()V

    .line 2455
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 2456
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 2457
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mReviewPlayButton:Lcom/android/hwcamera/ui/RotateImageView;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 2458
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mReviewRetakeButton:Lcom/android/hwcamera/ui/RotateImageView;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 2460
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 2462
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v1, :cond_1

    .line 2463
    invoke-direct {p0, v3}, Lcom/android/hwcamera/VideoModule;->showTimeLapseUI(Z)V

    .line 2466
    :cond_1
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mRestoreFlash:Z

    if-eqz v1, :cond_2

    .line 2467
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mRestoreFlash:Z

    .line 2468
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2472
    :cond_2
    :goto_0
    return-void

    .line 2469
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setCameraParameters()V

    goto :goto_0
.end method

.method private hideVideoCaptureButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2386
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mVideoSnapshotShutterButton:Lcom/android/hwcamera/ShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mVideoSnapshotShutterButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2387
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mVideoSnapshotShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2388
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mVideoSnapshotShutterButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2391
    :cond_0
    return-void
.end method

.method private initGps()V
    .locals 5

    .prologue
    .line 3662
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_recordlocation_key"

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0115

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3664
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 3666
    return-void
.end method

.method private initGpsDialog()V
    .locals 4

    .prologue
    .line 3271
    new-instance v1, Lcom/android/hwcamera/VideoModule$11;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoModule$11;-><init>(Lcom/android/hwcamera/VideoModule;)V

    .line 3286
    .local v1, positiveRunable:Ljava/lang/Runnable;
    new-instance v0, Lcom/android/hwcamera/VideoModule$12;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoModule$12;-><init>(Lcom/android/hwcamera/VideoModule;)V

    .line 3300
    .local v0, negativeRunable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d0112

    invoke-static {v2, v3, v1, v0, v0}, Lcom/android/hwcamera/Util;->initGpsDialog(Landroid/app/Activity;ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mAlertDialog:Landroid/app/AlertDialog;

    .line 3302
    return-void
.end method

.method private initRestoreDailog()V
    .locals 6

    .prologue
    .line 3375
    new-instance v3, Lcom/android/hwcamera/VideoModule$13;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/VideoModule$13;-><init>(Lcom/android/hwcamera/VideoModule;)V

    .line 3382
    .local v3, positiveRunable:Ljava/lang/Runnable;
    new-instance v4, Lcom/android/hwcamera/VideoModule$14;

    invoke-direct {v4, p0}, Lcom/android/hwcamera/VideoModule$14;-><init>(Lcom/android/hwcamera/VideoModule;)V

    .line 3388
    .local v4, naRunable:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f0d00d5

    const v2, 0x7f0d00d6

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/hwcamera/Util;->initDailog(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mAlertDialog:Landroid/app/AlertDialog;

    .line 3389
    return-void
.end method

.method private initTwinkleAnimation()V
    .locals 3

    .prologue
    .line 1189
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    .line 1190
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1191
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1192
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1193
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/VideoModule$4;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoModule$4;-><init>(Lcom/android/hwcamera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1203
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1204
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/VideoModule$5;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoModule$5;-><init>(Lcom/android/hwcamera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1215
    return-void

    .line 1189
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private initializeCapabilities()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusAreaSupported:Z

    .line 453
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mMeteringAreaSupported:Z

    .line 454
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoSnapshotSupported:Z

    .line 455
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 2

    .prologue
    .line 3073
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 3074
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideSwitcher()V

    .line 3078
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f1001f6

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    .line 3079
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f1001f8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    .line 3080
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f1001e8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewPlayButton:Lcom/android/hwcamera/ui/RotateImageView;

    .line 3081
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f1001f7

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewRetakeButton:Lcom/android/hwcamera/ui/RotateImageView;

    .line 3083
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/hwcamera/VideoModule$7;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoModule$7;-><init>(Lcom/android/hwcamera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3094
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/hwcamera/VideoModule$8;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoModule$8;-><init>(Lcom/android/hwcamera/VideoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3106
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewPlayButton:Lcom/android/hwcamera/ui/RotateImageView;

    new-instance v1, Lcom/android/hwcamera/VideoModule$9;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoModule$9;-><init>(Lcom/android/hwcamera/VideoModule;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3118
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewRetakeButton:Lcom/android/hwcamera/ui/RotateImageView;

    new-instance v1, Lcom/android/hwcamera/VideoModule$10;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoModule$10;-><init>(Lcom/android/hwcamera/VideoModule;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3132
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/hwcamera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 3133
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v0, Lcom/android/hwcamera/ui/TwoStateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 3136
    :cond_0
    return-void
.end method

.method private initializeEffectsPreview()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 1930
    const-string v5, "CAM_VideoModule"

    const-string v6, "initializeEffectsPreview"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v5, v5, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v5, :cond_0

    .line 1972
    :goto_0
    return-void

    .line 1934
    :cond_0
    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v8, :cond_2

    const/4 v0, 0x1

    .line 1937
    .local v0, inLandscape:Z
    :goto_1
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    iget v6, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    aget-object v1, v5, v6

    .line 1939
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectsDisplayResult:Z

    .line 1940
    new-instance v4, Lcom/android/hwcamera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v4, v5}, Lcom/android/hwcamera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    .line 1944
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    iget v5, p0, Lcom/android/hwcamera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setCameraDisplayOrientation(I)V

    .line 1945
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v5, v5, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setCamera(Lcom/android/hwcamera/CameraManager$CameraProxy;)V

    .line 1946
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setCameraFacing(I)V

    .line 1947
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1948
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v4, p0}, Lcom/android/hwcamera/EffectsRecorder;->setEffectsListener(Lcom/android/hwcamera/EffectsRecorder$EffectsListener;)V

    .line 1949
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v4, p0}, Lcom/android/hwcamera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1950
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v4, p0}, Lcom/android/hwcamera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1956
    const/4 v2, 0x0

    .line 1957
    .local v2, orientation:I
    iget v4, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 1958
    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    .line 1960
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v4, v2}, Lcom/android/hwcamera/EffectsRecorder;->setOrientationHint(I)V

    .line 1962
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v3, v4, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v3, Lcom/android/hwcamera/CameraScreenNail;

    .line 1963
    .local v3, screenNail:Lcom/android/hwcamera/CameraScreenNail;
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraScreenNail;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraScreenNail;->getHeight()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/hwcamera/EffectsRecorder;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 1966
    iget v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "gallery"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1968
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    iget v5, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/hwcamera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0

    .end local v0           #inLandscape:Z
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v2           #orientation:I
    .end local v3           #screenNail:Lcom/android/hwcamera/CameraScreenNail;
    :cond_2
    move v0, v4

    .line 1934
    goto/16 :goto_1

    .line 1970
    .restart local v0       #inLandscape:Z
    .restart local v1       #info:Landroid/hardware/Camera$CameraInfo;
    .restart local v2       #orientation:I
    .restart local v3       #screenNail:Lcom/android/hwcamera/CameraScreenNail;
    :cond_3
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    iget v5, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/hwcamera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private initializeEffectsRecording()V
    .locals 13

    .prologue
    .line 1975
    const-string v8, "CAM_VideoModule"

    const-string v9, "initializeEffectsRecording"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/hwcamera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1978
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1980
    .local v4, myExtras:Landroid/os/Bundle;
    const-wide/16 v5, 0x0

    .line 1981
    .local v5, requestedSizeLimit:J
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->closeVideoFileDescriptor()V

    .line 1982
    iget-boolean v8, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_1

    if-eqz v4, :cond_1

    .line 1983
    const-string v8, "output"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1984
    .local v7, saveUri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 1986
    :try_start_0
    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "rw"

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/hwcamera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1988
    iput-object v7, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1994
    :cond_0
    :goto_0
    const-string v8, "android.intent.extra.sizeLimit"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1997
    .end local v7           #saveUri:Landroid/net/Uri;
    :cond_1
    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 2001
    iget-boolean v8, p0, Lcom/android/hwcamera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v8, :cond_3

    .line 2002
    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    const-wide v9, 0x408f400000000000L

    iget v11, p0, Lcom/android/hwcamera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/hwcamera/EffectsRecorder;->setCaptureRate(D)V

    .line 2008
    :goto_1
    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_4

    .line 2009
    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/EffectsRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 2016
    :goto_2
    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/hwcamera/CameraActivity;->getStorageSpace()J

    move-result-wide v8

    const-wide/32 v10, 0x1400000

    sub-long v2, v8, v10

    .line 2017
    .local v2, maxFileSize:J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_2

    cmp-long v8, v5, v2

    if-gez v8, :cond_2

    .line 2018
    move-wide v2, v5

    .line 2020
    :cond_2
    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v8, v2, v3}, Lcom/android/hwcamera/EffectsRecorder;->setMaxFileSize(J)V

    .line 2021
    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    iget v9, p0, Lcom/android/hwcamera/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/EffectsRecorder;->setMaxDuration(I)V

    .line 2022
    return-void

    .line 1989
    .end local v2           #maxFileSize:J
    .restart local v7       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1991
    .local v0, ex:Ljava/io/FileNotFoundException;
    const-string v8, "CAM_VideoModule"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2004
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .end local v7           #saveUri:Landroid/net/Uri;
    :cond_3
    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/hwcamera/EffectsRecorder;->setCaptureRate(D)V

    goto :goto_1

    .line 2011
    :cond_4
    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v8}, Lcom/android/hwcamera/VideoModule;->generateVideoFilename(I)V

    .line 2012
    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private initializeFocusManager()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 464
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->removeMessages()V

    .line 477
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    .line 478
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->setFocusIndicator(Lcom/android/hwcamera/ui/indicator/FocusIndicator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_1
    return-void

    .line 467
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    aget-object v9, v0, v1

    .line 468
    .local v9, info:Landroid/hardware/Camera$CameraInfo;
    iget v0, v9, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v5, :cond_1

    .line 469
    .local v5, mirror:Z
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, defaultFocusModes:[Ljava/lang/String;
    new-instance v0, Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->getFocusPolicyService()Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/hwcamera/FocusOverlayManager;-><init>(Lcom/android/hwcamera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/hwcamera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/hwcamera/focuspolicy/FocusPolicyService;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    goto :goto_0

    .line 468
    .end local v2           #defaultFocusModes:[Ljava/lang/String;
    .end local v5           #mirror:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 479
    .end local v9           #info:Landroid/hardware/Camera$CameraInfo;
    :catch_0
    move-exception v8

    .line 480
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "CAM_VideoModule"

    const-string v1, "got exception when get focus_indicator_rotate_layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initializeMiscControls()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3139
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100011

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/PreviewFrameLayout;

    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    .line 3140
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v4}, Lcom/android/hwcamera/PreviewFrameLayout;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/FocusOverlayManager;->setPreviewSize(II)V

    .line 3141
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    .line 3142
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/PreviewFrameLayout;->setOnLayoutChangeListener(Lcom/android/hwcamera/ui/LayoutChangeNotifier$Listener;)V

    .line 3143
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v2, p0}, Lcom/android/hwcamera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/hwcamera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 3144
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1001e7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    .line 3145
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1001e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/ui/TargetView;

    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    .line 3147
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 3148
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v3, 0x7f02014f

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 3149
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v2, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 3150
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v2}, Lcom/android/hwcamera/ShutterButton;->requestFocus()Z

    .line 3152
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f100213

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mVideoSnapshotShutterButtonLayout:Landroid/view/View;

    .line 3154
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f100214

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/ShutterButton;

    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mVideoSnapshotShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 3155
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mVideoSnapshotShutterButton:Lcom/android/hwcamera/ShutterButton;

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mVideoSnapshotShutterButtonListner:Lcom/android/hwcamera/OnShutterButtonListener;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 3157
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 3158
    .local v0, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v0, :cond_1

    .line 3159
    invoke-virtual {v0, p0}, Lcom/android/hwcamera/VirtualButton;->setOnVirtualButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 3160
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/VirtualButton;->enableVirtualButton(Z)V

    .line 3169
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3170
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v2, v5}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 3171
    if-eqz v0, :cond_2

    .line 3172
    invoke-virtual {v0, v5}, Lcom/android/hwcamera/VirtualButton;->enableVirtualButton(Z)V

    .line 3174
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mStopShutterButton:Lcom/android/hwcamera/ShutterButton;

    if-eqz v2, :cond_3

    .line 3175
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mStopShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v2, v5}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 3179
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100219

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    .line 3180
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f10021b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    .line 3183
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f100218

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/ui/RotateLinearLayout;

    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mLabelsLinearLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    .line 3184
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f10021a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mRecordingIndicator:Landroid/widget/ImageView;

    .line 3186
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1001d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ui/RotateTextView;

    .line 3187
    .local v1, remainPicText:Lcom/android/hwcamera/ui/RotateTextView;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ui/RotateTextView;->setVisibility(I)V

    .line 3192
    return-void
.end method

.method private initializeOverlay()V
    .locals 3

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1001e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    .line 680
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-nez v0, :cond_0

    .line 681
    new-instance v0, Lcom/android/hwcamera/settings/MenuController;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/settings/MenuController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    .line 682
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/settings/MenuController;->setListener(Lcom/android/hwcamera/CameraPreference$OnPreferenceChangedListener;)V

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RenderOverlay;->remove(Lcom/android/hwcamera/ui/RenderOverlay$Renderer;)V

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    if-nez v0, :cond_2

    .line 690
    new-instance v0, Lcom/android/hwcamera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/ui/ZoomRenderer;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    .line 693
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RenderOverlay;->addRenderer(Lcom/android/hwcamera/ui/RenderOverlay$Renderer;)V

    .line 694
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-nez v0, :cond_3

    .line 695
    new-instance v0, Lcom/android/hwcamera/PreviewGestures;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/hwcamera/PreviewGestures;-><init>(Lcom/android/hwcamera/CameraActivity;Lcom/android/hwcamera/CameraModule;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    .line 697
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreviewGestures;->setRenderOverlay(Lcom/android/hwcamera/ui/RenderOverlay;)V

    .line 698
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v0}, Lcom/android/hwcamera/PreviewGestures;->clearTouchReceivers()V

    .line 699
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100027

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 700
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100028

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 701
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f10002c

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 702
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f10021e

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 705
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 706
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    if-eqz v0, :cond_4

    .line 707
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 709
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    if-eqz v0, :cond_5

    .line 710
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 712
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewPlayButton:Lcom/android/hwcamera/ui/RotateImageView;

    if-eqz v0, :cond_6

    .line 713
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mReviewPlayButton:Lcom/android/hwcamera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 716
    :cond_6
    return-void
.end method

.method private initializeRecorder()V
    .locals 18

    .prologue
    .line 1790
    const-string v13, "CAM_VideoModule"

    const-string v14, "initializeRecorder"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v13, v13, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v13, :cond_1

    .line 1911
    :cond_0
    :goto_0
    return-void

    .line 1794
    :cond_1
    sget-boolean v13, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v13, :cond_2

    sget-boolean v13, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v13, :cond_2

    .line 1799
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 1800
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/hwcamera/VideoModule;->mSurfaceViewReady:Z

    if-eqz v13, :cond_0

    .line 1803
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/hwcamera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1804
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 1806
    .local v10, myExtras:Landroid/os/Bundle;
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->closeVideoFileDescriptor()V

    .line 1807
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v13, :cond_4

    if-eqz v10, :cond_4

    .line 1808
    const-string v13, "output"

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 1809
    .local v12, saveUri:Landroid/net/Uri;
    if-eqz v12, :cond_3

    .line 1811
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "rw"

    invoke-virtual {v13, v12, v14}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1813
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1819
    :cond_3
    :goto_1
    const-string v13, "android.intent.extra.sizeLimit"

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/hwcamera/VideoModule;->mMaxFileSizeLimit:J

    .line 1821
    .end local v12           #saveUri:Landroid/net/Uri;
    :cond_4
    new-instance v13, Landroid/media/MediaRecorder;

    invoke-direct {v13}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1823
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->setupMediaRecorderPreviewDisplay()V

    .line 1825
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v13, v13, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v13}, Lcom/android/hwcamera/CameraManager$CameraProxy;->unlock()V

    .line 1826
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v14, v14, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v14}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1827
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/hwcamera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v13, :cond_5

    .line 1828
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1830
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1832
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/hwcamera/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1833
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/hwcamera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v13, :cond_6

    .line 1834
    const-wide v13, 0x408f400000000000L

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/hwcamera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v15, v15

    div-double v4, v13, v15

    .line 1835
    .local v4, fps:D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v13, v4, v5}, Lcom/android/hwcamera/VideoModule;->setCaptureRate(Landroid/media/MediaRecorder;D)V

    .line 1837
    .end local v4           #fps:D
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v13, :cond_7

    .line 1839
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1840
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->isNeedStereo()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1841
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v14, v13, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v17, "audio"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/hwcamera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Lcom/android/hwcamera/CameraManager$CameraProxy;->enableVideoRecordStereo(ZILandroid/media/AudioManager;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1851
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->setRecordLocation()V

    .line 1856
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v13, :cond_a

    .line 1857
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/hwcamera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1864
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/hwcamera/CameraActivity;->getStorageSpace()J

    move-result-wide v13

    const-wide/32 v15, 0x300000

    add-long/2addr v13, v15

    const-wide/32 v15, 0x1400000

    sub-long v8, v13, v15

    .line 1865
    .local v8, maxFileSize:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/hwcamera/VideoModule;->mMaxFileSizeLimit:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_b

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/hwcamera/VideoModule;->mMaxFileSizeLimit:J

    cmp-long v13, v13, v8

    if-gez v13, :cond_b

    .line 1866
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/hwcamera/VideoModule;->mMaxFileSizeLimit:J

    .line 1874
    :cond_8
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13, v8, v9}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1887
    :goto_4
    const/4 v11, 0x0

    .line 1888
    .local v11, rotation:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_9

    .line 1889
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    aget-object v6, v13, v14

    .line 1890
    .local v6, info:Landroid/hardware/Camera$CameraInfo;
    iget v13, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    .line 1891
    iget v13, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    sub-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x168

    rem-int/lit16 v11, v13, 0x168

    .line 1896
    .end local v6           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13, v11}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1899
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1909
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1814
    .end local v8           #maxFileSize:J
    .end local v11           #rotation:I
    .restart local v12       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1816
    .local v2, ex:Ljava/io/FileNotFoundException;
    const-string v13, "CAM_VideoModule"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1844
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    .end local v12           #saveUri:Landroid/net/Uri;
    :catch_1
    move-exception v3

    .line 1845
    .local v3, exception:Ljava/lang/RuntimeException;
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->releaseMediaRecorder()V

    .line 1846
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v14, v13, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v17, "audio"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/hwcamera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13}, Lcom/android/hwcamera/CameraManager$CameraProxy;->enableVideoRecordStereo(ZILandroid/media/AudioManager;)V

    goto/16 :goto_0

    .line 1859
    .end local v3           #exception:Ljava/lang/RuntimeException;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->fileFormat:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/hwcamera/VideoModule;->generateVideoFilename(I)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/hwcamera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1867
    .restart local v8       #maxFileSize:J
    :cond_b
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v14, v14, Landroid/media/CamcorderProfile;->quality:I

    if-ne v13, v14, :cond_8

    .line 1868
    const-wide/32 v13, 0x46000

    cmp-long v13, v13, v8

    if-gez v13, :cond_8

    .line 1869
    const-wide/32 v8, 0x46000

    goto/16 :goto_3

    .line 1893
    .restart local v6       #info:Landroid/hardware/Camera$CameraInfo;
    .restart local v11       #rotation:I
    :cond_c
    iget v13, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    add-int/2addr v13, v14

    rem-int/lit16 v11, v13, 0x168

    goto/16 :goto_5

    .line 1900
    .end local v6           #info:Landroid/hardware/Camera$CameraInfo;
    :catch_2
    move-exception v1

    .line 1901
    .local v1, e:Ljava/io/IOException;
    const-string v13, "CAM_VideoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "prepare failed for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1902
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->releaseMediaRecorder()V

    goto/16 :goto_0

    .line 1875
    .end local v1           #e:Ljava/io/IOException;
    .end local v11           #rotation:I
    :catch_3
    move-exception v13

    goto/16 :goto_4
.end method

.method private initializeSurfaceView()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1001ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/PreviewSurfaceView;

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    .line 657
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_2

    .line 658
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;-><init>(Lcom/android/hwcamera/VideoModule;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 662
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 675
    :cond_1
    :goto_0
    return-void

    .line 663
    :cond_2
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    if-nez v0, :cond_3

    .line 665
    new-instance v0, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;-><init>(Lcom/android/hwcamera/VideoModule;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    .line 666
    new-instance v0, Lcom/android/hwcamera/VideoModule$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoModule$2;-><init>(Lcom/android/hwcamera/VideoModule;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFrameDrawnListener:Lcom/android/hwcamera/CameraScreenNail$OnFrameDrawnListener;

    .line 673
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mSurfaceViewCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method private initializeTipsService()V
    .locals 3

    .prologue
    const v2, 0x7f100030

    .line 626
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Lcom/android/hwcamera/tips/TipsService;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/tips/TipsService;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    .line 628
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/tips/TipsService;->init(Lcom/android/hwcamera/ui/RotateLayout;)V

    .line 632
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/tips/TipsService;->setTipsLayout(Lcom/android/hwcamera/ui/RotateLayout;)V

    goto :goto_0
.end method

.method private initializeVideoControl()V
    .locals 3

    .prologue
    .line 866
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->loadCameraPreferences()V

    .line 868
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initGps()V

    .line 869
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/settings/MenuController;->initialize(Lcom/android/hwcamera/PreferenceGroup;I)V

    .line 871
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/settings/MenuController;->setOnMenuStatedChangelistener(Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;)V

    .line 873
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->doUpdateFlashModeUI()V

    .line 874
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    :cond_1
    return-void
.end method

.method private initializeZoom()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3576
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3603
    :goto_0
    return-void

    .line 3577
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomMax:I

    .line 3578
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomRatios:Ljava/util/List;

    .line 3579
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_zoom_value_key"

    invoke-virtual {v0, v1, v3}, Lcom/android/hwcamera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomValue:I

    .line 3582
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    if-eqz v0, :cond_1

    .line 3583
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 3584
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ZoomRenderer;->setZoom(I)V

    .line 3585
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomRatios:Ljava/util/List;

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mZoomValue:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 3586
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ZoomRenderer;->setZoomRatios(Ljava/util/List;)V

    .line 3587
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/ui/ZoomRenderer;->setVisible(Z)V

    .line 3590
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    if-nez v0, :cond_2

    .line 3591
    new-instance v0, Lcom/android/hwcamera/ui/ZoomBar;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mZoomMax:I

    invoke-direct {v0, v1, v2}, Lcom/android/hwcamera/ui/ZoomBar;-><init>(Lcom/android/hwcamera/CameraActivity;I)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    .line 3592
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ZoomBar;->setZoom(I)V

    .line 3593
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ZoomBar;->hide()V

    .line 3596
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    if-nez v0, :cond_3

    .line 3598
    new-instance v0, Lcom/android/hwcamera/ZoomController;

    new-instance v1, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;-><init>(Lcom/android/hwcamera/VideoModule;Lcom/android/hwcamera/VideoModule$1;)V

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/hwcamera/ZoomController;-><init>(Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;Lcom/android/hwcamera/ui/ZoomRenderer;Lcom/android/hwcamera/ui/ZoomBar;Lcom/android/hwcamera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    .line 3600
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreviewGestures;->setOnScaleGestureListener(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 3602
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v0}, Lcom/android/hwcamera/ZoomController;->hide()V

    goto/16 :goto_0
.end method

.method private isNeedShowVolumSnapShotHint()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4285
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mIsNeedCount:Z

    if-nez v2, :cond_1

    .line 4286
    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mIsNeedCount:Z

    .line 4291
    :cond_0
    :goto_0
    return v1

    .line 4289
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isVolumSnapShotHintShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4290
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v3, "key_countS_of_no_use_volum_snap_shot"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->increaseCountsByKey(Ljava/lang/String;)V

    .line 4291
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v3, "key_countS_of_no_use_volum_snap_shot"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->getCountsByKey(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private isNeedStereo()Z
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-virtual {v0}, Lcom/android/hwcamera/CustomConfiguration;->isStereoSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2788
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1737
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1738
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2625
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2626
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 2618
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2619
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2620
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2621
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 5

    .prologue
    .line 824
    new-instance v0, Lcom/android/hwcamera/CameraSettings;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/hwcamera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 827
    .local v0, settings:Lcom/android/hwcamera/CameraSettings;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraSettings;->getPreferenceGroup(I)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoModule;->filterPreferenceScreenByIntent(Lcom/android/hwcamera/PreferenceGroup;)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 829
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 2629
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 2630
    .local v10, seconds:J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 2631
    .local v2, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 2632
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 2633
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 2635
    .local v8, remainderSeconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2638
    .local v12, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 2639
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 2640
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2642
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2644
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2648
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 2649
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2651
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2652
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2655
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 2656
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2658
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2661
    if-eqz p2, :cond_5

    .line 2662
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2663
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 2664
    .local v4, remainderCentiSeconds:J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 2665
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2667
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2670
    .end local v4           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onStopVideoRecording()V
    .locals 2

    .prologue
    .line 1036
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->onStopVideoRecordingOnPause()V

    .line 1037
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->onSwitchChanged(Z)Z

    .line 1038
    :cond_0
    return-void
.end method

.method private onStopVideoRecordingOnPause()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1041
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mEffectsDisplayResult:Z

    .line 1042
    iget v3, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    if-ne v3, v1, :cond_0

    .line 1043
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1045
    :cond_0
    iget v3, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1046
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mRecordingIndicator:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1048
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->stopVideoRecording()Z

    move-result v0

    .line 1049
    .local v0, recordFail:Z
    iget-boolean v3, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v3, :cond_7

    .line 1050
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v3}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->clear()V

    .line 1051
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1052
    iget-boolean v3, p0, Lcom/android/hwcamera/VideoModule;->mQuickCapture:Z

    if-eqz v3, :cond_6

    .line 1053
    if-nez v0, :cond_5

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoModule;->doReturnToCaller(Z)V

    .line 1071
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mNeedLowBatteryCallBack:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    if-nez v1, :cond_4

    .line 1072
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->flashModeInLowBattery()V

    .line 1073
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mNeedLowBatteryCallBack:Z

    .line 1075
    :cond_4
    return-void

    :cond_5
    move v1, v2

    .line 1053
    goto :goto_0

    .line 1054
    :cond_6
    if-nez v0, :cond_3

    .line 1055
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->showAlert()V

    goto :goto_1

    .line 1058
    :cond_7
    if-nez v0, :cond_3

    .line 1060
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_8

    .line 1069
    :cond_8
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->updateThumbnail()V

    goto :goto_1
.end method

.method private openCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget v3, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 488
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 489
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeCapabilities()V

    .line 490
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeFocusManager()V

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/android/hwcamera/PreviewFrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/FocusOverlayManager;->setPreviewSize(II)V
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/hwcamera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 497
    :cond_1
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iput-boolean v4, v1, Lcom/android/hwcamera/ActivityBase;->mOpenCameraFail:Z

    goto :goto_0

    .line 494
    .end local v0           #e:Lcom/android/hwcamera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 495
    .local v0, e:Lcom/android/hwcamera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iput-boolean v4, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDisabled:Z

    goto :goto_0
.end method

.method private pauseAudioPlayback()V
    .locals 4

    .prologue
    .line 2203
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2204
    .local v0, toGoogleMusic:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2205
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2208
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mediacenter.mediaplayerservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2209
    .local v1, toHWMusic:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2210
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2211
    return-void
.end method

.method private pauseVideoRecording()V
    .locals 7

    .prologue
    .line 1132
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->pause(Ljava/lang/Object;)V

    .line 1133
    iget-wide v1, p0, Lcom/android/hwcamera/VideoModule;->mRecordingTotalTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/hwcamera/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/hwcamera/VideoModule;->mRecordingTotalTime:J

    .line 1134
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    .line 1135
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1136
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mRecordingIndicator:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    :goto_0
    return-void

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CAM_VideoModule"

    const-string v2, "Could not pause media recorder."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processHintsOnSnapShot()V
    .locals 1

    .prologue
    .line 4282
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->isNeedShowVolumSnapShotHint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->showHintsOnStopRecord()V

    .line 4283
    :cond_0
    return-void
.end method

.method private processPreference(Lcom/android/hwcamera/CameraPreference;)Z
    .locals 11
    .parameter "pref"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 3327
    instance-of v8, p1, Lcom/android/hwcamera/IconListPreference;

    if-nez v8, :cond_1

    .line 3359
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v1, p1

    .line 3329
    check-cast v1, Lcom/android/hwcamera/IconListPreference;

    .line 3331
    .local v1, ilpref:Lcom/android/hwcamera/IconListPreference;
    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v8, v1}, Lcom/android/hwcamera/CameraActivity;->processPreference(Lcom/android/hwcamera/IconListPreference;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    goto :goto_0

    .line 3333
    :cond_2
    invoke-virtual {v1}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "pref_camera_id_key"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3335
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v8, "pref_camera_id_key"

    invoke-virtual {v6, v8}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 3337
    .local v0, camPref:Lcom/android/hwcamera/ListPreference;
    if-eqz v0, :cond_3

    .line 3338
    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 3339
    .local v2, index:I
    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 3340
    .local v5, values:[Ljava/lang/CharSequence;
    aget-object v6, v5, v2

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3341
    .local v3, newCameraId:I
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoModule;->onCameraPickerClicked(I)V

    .end local v2           #index:I
    .end local v3           #newCameraId:I
    .end local v5           #values:[Ljava/lang/CharSequence;
    :cond_3
    move v6, v7

    .line 3343
    goto :goto_0

    .line 3345
    .end local v0           #camPref:Lcom/android/hwcamera/ListPreference;
    :cond_4
    const-string v8, "pref_camera_restore_key"

    invoke-virtual {v1}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3346
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initRestoreDailog()V

    move v6, v7

    .line 3347
    goto :goto_0

    .line 3349
    :cond_5
    const-string v8, "pref_camera_recordlocation_key"

    invoke-virtual {v1}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3350
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->doGpsRecord()V

    move v6, v7

    .line 3351
    goto :goto_0

    .line 3354
    :cond_6
    const-string v7, "pref_video_target_tracking_key"

    invoke-virtual {v1}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3355
    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v8, "pref_video_target_tracking_key"

    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v10, 0x7f0d0123

    invoke-virtual {v9, v10}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3356
    .local v4, value:Ljava/lang/String;
    const-string v7, "on"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x10

    const v9, 0x7f0d015b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method private processPreferences(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/hwcamera/CameraPreference;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3260
    .local p1, prefs:Ljava/util/List;,"Ljava/util/List<+Lcom/android/hwcamera/CameraPreference;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 3261
    :cond_0
    const/4 v2, 0x0

    .line 3267
    :cond_1
    return v2

    .line 3263
    :cond_2
    const/4 v2, 0x1

    .line 3264
    .local v2, ret:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/CameraPreference;

    .line 3265
    .local v1, pref:Lcom/android/hwcamera/CameraPreference;
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoModule;->processPreference(Lcom/android/hwcamera/CameraPreference;)Z

    move-result v3

    and-int/2addr v2, v3

    goto :goto_0
.end method

.method private readVideoPreferences()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 1225
    iget v9, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    iget-object v10, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0082

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1227
    .local v0, defaultQuality:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v10, "pref_video_quality_key"

    invoke-virtual {v9, v10, v0}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1230
    .local v7, videoQuality:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1233
    .local v5, quality:I
    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/hwcamera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1234
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1235
    const-string v9, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1237
    .local v1, extraVideoQuality:I
    if-lez v1, :cond_5

    .line 1238
    const/4 v5, 0x1

    .line 1246
    .end local v1           #extraVideoQuality:I
    :cond_0
    :goto_0
    const-string v9, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1247
    const-string v9, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1249
    .local v6, seconds:I
    mul-int/lit16 v9, v6, 0x3e8

    iput v9, p0, Lcom/android/hwcamera/VideoModule;->mMaxVideoDurationInMs:I

    .line 1255
    .end local v6           #seconds:I
    :goto_1
    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v9}, Lcom/android/hwcamera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v9

    iput v9, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    .line 1256
    iget v9, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    if-eqz v9, :cond_7

    .line 1257
    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v9}, Lcom/android/hwcamera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/android/hwcamera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 1259
    iget v9, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    invoke-static {v9, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 1260
    .local v4, profile:Landroid/media/CamcorderProfile;
    iget v9, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v10, 0x1e0

    if-le v9, v10, :cond_1

    .line 1261
    invoke-static {}, Lcom/android/hwcamera/VideoModule;->getLowVideoQuality()I

    move-result v5

    .line 1267
    .end local v4           #profile:Landroid/media/CamcorderProfile;
    :cond_1
    :goto_2
    sget-boolean v9, Lcom/android/gallery3d/common/ApiHelper;->HAS_TIME_LAPSE_RECORDING:Z

    if-eqz v9, :cond_3

    .line 1268
    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v10, "pref_video_time_lapse_frame_interval_key"

    iget-object v11, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v12, 0x7f0d0084

    invoke-virtual {v11, v12}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1271
    .local v2, frameIntervalStr:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/hwcamera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 1272
    iget v9, p0, Lcom/android/hwcamera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    :cond_2
    iput-boolean v8, p0, Lcom/android/hwcamera/VideoModule;->mCaptureTimeLapse:Z

    .line 1275
    .end local v2           #frameIntervalStr:Ljava/lang/String;
    :cond_3
    iget-boolean v8, p0, Lcom/android/hwcamera/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v8, :cond_4

    add-int/lit16 v5, v5, 0x3e8

    .line 1276
    :cond_4
    iget v8, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    invoke-static {v8, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v8

    iput-object v8, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 1277
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->enableHdrMovieIfNeeded()V

    .line 1278
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->getDesiredPreviewSize()V

    .line 1279
    return-void

    .line 1240
    .restart local v1       #extraVideoQuality:I
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 1251
    .end local v1           #extraVideoQuality:I
    :cond_6
    iget-object v9, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v9}, Lcom/android/hwcamera/CameraSettings;->getMaxVideoDuration(Landroid/content/Context;)I

    move-result v9

    iput v9, p0, Lcom/android/hwcamera/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_1

    .line 1264
    :cond_7
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/hwcamera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    goto :goto_2
.end method

.method private releaseEffectsRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2037
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing effects recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 2039
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->cleanupEmptyFile()V

    .line 2040
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/hwcamera/EffectsRecorder;->release()V

    .line 2041
    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    .line 2043
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    .line 2044
    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 2045
    return-void
.end method

.method private releaseFocusIndicator()V
    .locals 1

    .prologue
    .line 3241
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v0}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->release()V

    .line 3242
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/TargetView;->release()V

    .line 3243
    :cond_1
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2026
    const-string v0, "CAM_VideoModule"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 2028
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->cleanupEmptyFile()V

    .line 2029
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 2030
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2031
    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2033
    :cond_0
    iput-object v2, p0, Lcom/android/hwcamera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 2034
    return-void
.end method

.method private releasePreviewResources()V
    .locals 3

    .prologue
    .line 1539
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_1

    .line 1540
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v1, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/hwcamera/CameraScreenNail;

    .line 1541
    .local v0, screenNail:Lcom/android/hwcamera/CameraScreenNail;
    invoke-virtual {v0}, Lcom/android/hwcamera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1542
    invoke-virtual {v0}, Lcom/android/hwcamera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1544
    :cond_0
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v1, :cond_1

    .line 1545
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1546
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 1549
    .end local v0           #screenNail:Lcom/android/hwcamera/CameraScreenNail;
    :cond_1
    return-void
.end method

.method private removeTopLevelPopupForGoogle()Z
    .locals 1

    .prologue
    .line 859
    const/4 v0, 0x0

    return v0
.end method

.method private removeTopLevelPopupForUs()Z
    .locals 1

    .prologue
    .line 855
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->collapseCameraControlsForUs()Z

    move-result v0

    return v0
.end method

.method private resetEffect()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 3848
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mResetEffect:Z

    if-eqz v2, :cond_0

    .line 3849
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_video_effect_key"

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3851
    .local v0, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3852
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->writeDefaultEffectToPrefs()V

    .line 3857
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return v1

    .line 3856
    :cond_0
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mResetEffect:Z

    .line 3857
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetRecordingTimeLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/16 v5, 0x1b

    const v2, 0x7f100011

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 932
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mLabelsLinearLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 933
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 934
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 935
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 936
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 937
    invoke-static {v5}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v1

    const/16 v2, 0x70

    invoke-static {v2}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 938
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 939
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 940
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mLabelsLinearLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setOrientation(IZ)V

    .line 966
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mLabelsLinearLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mLabelsLinearLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/RotateLinearLayout;->requestLayout()V

    .line 968
    return-void

    .line 941
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 943
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 944
    invoke-static {v5}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 945
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 946
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 947
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mLabelsLinearLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    invoke-virtual {v1, v3, v3}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 949
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isLandscapeLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 951
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 952
    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 953
    invoke-static {v5}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 954
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 955
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 956
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mLabelsLinearLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_0

    .line 957
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 959
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 960
    invoke-static {v5}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v1

    const/16 v2, 0x70

    invoke-static {v2}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 961
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 962
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 963
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mLabelsLinearLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    invoke-virtual {v1, v3, v3}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setOrientation(IZ)V

    goto/16 :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2614
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2615
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 1337
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ui/TargetView;->setScale(II)V

    .line 1339
    return-void
.end method

.method private restoreDefaults()V
    .locals 4

    .prologue
    .line 3363
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3364
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 3372
    :goto_0
    return-void

    .line 3365
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v1, v2, v0}, Lcom/android/hwcamera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 3366
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_zoom_value_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomValue:I

    .line 3367
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/settings/MenuController;->initialize(I)V

    .line 3368
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->doUpdateFlashModeUI()V

    .line 3369
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_camera_restore_key"

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->listPrefsExceptKey(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoModule;->onSharedPreferencesChanged(Ljava/util/List;)V

    .line 3370
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeZoom()V

    .line 3371
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->restoreDefaults()V

    goto :goto_0
.end method

.method private resumeVideoRecording()V
    .locals 4

    .prologue
    .line 1144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/hwcamera/VideoModule;->mRecordingStartTime:J

    .line 1146
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->resume(Ljava/lang/Object;)V

    .line 1147
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    .line 1148
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mRecordingIndicator:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1150
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d0196

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1152
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->updateRecordingTime()V

    .line 1158
    :goto_0
    return-void

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CAM_VideoModule"

    const-string v2, "Could not pause media recorder."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setCameraParameters()V
    .locals 22

    .prologue
    .line 2793
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->setFocusAreasIfSupported()V

    .line 2794
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->setMeteringAreasIfSupported()V

    .line 2796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 2906
    :cond_0
    :goto_0
    return-void

    .line 2798
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2801
    const-string v18, "true"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "hdr-movie-supported"

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_hdr_movie_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0d011e

    invoke-virtual/range {v20 .. v21}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2804
    .local v3, hdrmovie:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    const-string v19, "key-hdr-movie"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    .end local v3           #hdrmovie:Ljava/lang/String;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->setFlashParameter()V

    .line 2810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_video_whitebalance_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0d009d

    invoke-virtual/range {v20 .. v21}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2813
    .local v16, whiteBalance:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 2815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2822
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_video_target_tracking_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0d0123

    invoke-virtual/range {v20 .. v21}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2824
    .local v13, targetValue:Ljava/lang/String;
    const-string v18, "on"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2825
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->startTargetTracking()V

    .line 2830
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoModule;->mZoomValue:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2835
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v12

    .line 2837
    .local v12, supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/hwcamera/VideoModule;->mStartTragetTracking:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/hwcamera/ui/TargetView;->isTagetExit()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 2838
    const-string v18, "continuous-video"

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/android/hwcamera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 2839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    const-string v19, "continuous-video"

    invoke-virtual/range {v18 .. v19}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2846
    :cond_5
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->updateAutoFocusMoveCallback()V

    .line 2848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    const-string v19, "recording-hint"

    const-string v20, "true"

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/hwcamera/Util;->isSupportedVideoStabilizer(Landroid/hardware/Camera$Parameters;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v18, v0

    const-string v19, "pref_video_stabilization"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0d0109

    invoke-virtual/range {v20 .. v21}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2855
    .local v15, vstabValue:Ljava/lang/String;
    const-string v18, "on"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    const-string v19, "video-stabilization"

    const-string v20, "true"

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    .end local v15           #vstabValue:Ljava/lang/String;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v11

    .line 2867
    .local v11, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    invoke-static {v11, v0, v1}, Lcom/android/hwcamera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 2869
    .local v6, optimalSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 2870
    .local v7, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v7, v6}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    if-eqz v6, :cond_7

    .line 2871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    iget v0, v6, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    iget v0, v6, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2873
    :cond_7
    if-eqz v6, :cond_8

    const-string v18, "CAM_VideoModule"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Video snapshot size is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v6, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v6, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/hwcamera/CustomConfiguration;->getJpegQuality(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/hwcamera/enm/ShotMode;->SINGLE:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual/range {v19 .. v19}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setShootMode(Ljava/lang/String;)V

    .line 2881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    const-string v19, "hw-image-post-process"

    const-string v20, "off"

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/hwcamera/CameraActivity;->tryMuteSoundPlayer()Z

    move-result v5

    .line 2884
    .local v5, isMute:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-string v20, "camera_sound_state"

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v18, v0

    const v21, 0x7f0d0119

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    :goto_5
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v9, Lcom/android/hwcamera/CameraScreenNail;

    .line 2892
    .local v9, screenNail:Lcom/android/hwcamera/CameraScreenNail;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewWidth:I

    move/from16 v17, v0

    .line 2893
    .local v17, width:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewHeight:I

    .line 2894
    .local v4, height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/VideoModule;->mCameraDisplayOrientation:I

    move/from16 v18, v0

    move/from16 v0, v18

    rem-int/lit16 v0, v0, 0xb4

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 2895
    move/from16 v14, v17

    .line 2896
    .local v14, tmp:I
    move/from16 v17, v4

    .line 2897
    move v4, v14

    .line 2899
    .end local v14           #tmp:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/hwcamera/CameraActivity;->getShotWide()I

    move-result v10

    .line 2900
    .local v10, shotwide:I
    int-to-float v0, v10

    move/from16 v18, v0

    const/high16 v19, 0x3f80

    mul-float v18, v18, v19

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v8, v18, v19

    .line 2901
    .local v8, ratio:F
    int-to-float v0, v4

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v19, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v10, v0, v9, v1}, Lcom/android/hwcamera/Util;->updateCameraScreenNailSize(IILcom/android/hwcamera/CameraScreenNail;Lcom/android/hwcamera/CameraActivity;)V

    .line 2903
    invoke-virtual {v9}, Lcom/android/hwcamera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v18

    if-nez v18, :cond_0

    .line 2904
    invoke-virtual {v9}, Lcom/android/hwcamera/CameraScreenNail;->acquireSurfaceTexture()V

    goto/16 :goto_0

    .line 2817
    .end local v4           #height:I
    .end local v5           #isMute:Z
    .end local v6           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v7           #original:Landroid/hardware/Camera$Size;
    .end local v8           #ratio:F
    .end local v9           #screenNail:Lcom/android/hwcamera/CameraScreenNail;
    .end local v10           #shotwide:I
    .end local v11           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v12           #supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #targetValue:Ljava/lang/String;
    .end local v17           #width:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v16

    .line 2818
    if-nez v16, :cond_3

    .line 2819
    const-string v16, "auto"

    goto/16 :goto_1

    .line 2827
    .restart local v13       #targetValue:Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->stopTargetTracking()V

    goto/16 :goto_2

    .line 2842
    .restart local v12       #supportedFocus:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    const-string v18, "auto"

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/android/hwcamera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    const-string v19, "auto"

    invoke-virtual/range {v18 .. v19}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2858
    .restart local v15       #vstabValue:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v18, v0

    const-string v19, "video-stabilization"

    const-string v20, "false"

    invoke-virtual/range {v18 .. v20}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2884
    .end local v15           #vstabValue:Ljava/lang/String;
    .restart local v5       #isMute:Z
    .restart local v6       #optimalSize:Landroid/hardware/Camera$Size;
    .restart local v7       #original:Landroid/hardware/Camera$Size;
    .restart local v11       #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v18, v0

    const v21, 0x7f0d0118

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    goto/16 :goto_5
.end method

.method private static setCaptureRate(Landroid/media/MediaRecorder;D)V
    .locals 0
    .parameter "recorder"
    .parameter "fps"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1915
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1916
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 3

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/VideoModule;->mDisplayRotation:I

    .line 1421
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 1423
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/VideoModule;->mCameraDisplayOrientation:I

    .line 1428
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v0, :cond_1

    .line 1432
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mDisplayRotation:I

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->getDisplayOrientation(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->setDisplayOrientation(I)V

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 1436
    return-void

    .line 1426
    :cond_2
    iget v0, p0, Lcom/android/hwcamera/VideoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/VideoModule;->mCameraDisplayOrientation:I

    goto :goto_0
.end method

.method private setFlashParameter()V
    .locals 6

    .prologue
    .line 2930
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_flashmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v5, 0x7f0d009c

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2933
    .local v0, flashMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-nez v2, :cond_1

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2934
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mRestoreFlash:Z

    .line 2961
    :cond_0
    :goto_0
    return-void

    .line 2938
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getFlashEnable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2939
    const-string v0, "off"

    .line 2950
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 2951
    .local v1, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoModule;->changeFlashModeForVideo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2952
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2953
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 2943
    .end local v1           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->isInReviewState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2947
    :cond_4
    const-string v0, "off"

    goto :goto_1

    .line 2955
    .restart local v1       #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2956
    if-nez v0, :cond_0

    .line 2957
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d0097

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setFocusAreasIfSupported()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 420
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mFocusAreaSupported:Z

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getFocusPolicyService()Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->getFocusAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;

    move-result-object v0

    .line 423
    .local v0, area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string v2, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setfoucsparaeter mFocusArea"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v1, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_0

    .line 423
    :cond_2
    const-string v1, "null"

    goto :goto_1
.end method

.method private setMeteringAreasIfSupported()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 429
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getFocusPolicyService()Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->getMeteringAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;

    move-result-object v0

    .line 433
    .local v0, area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string v2, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setfoucsparaeter meteringArea"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v1, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_0

    .line 433
    :cond_2
    const-string v1, "null"

    goto :goto_1
.end method

.method private setOrientationIndicator(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 972
    const/4 v5, 0x2

    new-array v3, v5, [Lcom/android/hwcamera/ui/Rotatable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mReviewPlayButton:Lcom/android/hwcamera/ui/RotateImageView;

    aput-object v6, v3, v5

    .line 975
    .local v3, indicators:[Lcom/android/hwcamera/ui/Rotatable;
    move-object v0, v3

    .local v0, arr$:[Lcom/android/hwcamera/ui/Rotatable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 976
    .local v2, indicator:Lcom/android/hwcamera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 975
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 978
    .end local v2           #indicator:Lcom/android/hwcamera/ui/Rotatable;
    :cond_1
    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v5, :cond_2

    .line 979
    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v5, p1}, Lcom/android/hwcamera/PreviewGestures;->setOrientation(I)V

    .line 986
    :cond_2
    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    instance-of v5, v5, Lcom/android/hwcamera/ui/RotateLayout;

    if-eqz v5, :cond_3

    .line 987
    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    invoke-interface {v5, p1, p2}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    .line 999
    :cond_3
    return-void
.end method

.method private setRecordLocation()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1920
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1921
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1922
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 1923
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1927
    .end local v0           #loc:Landroid/location/Location;
    :cond_0
    return-void
.end method

.method private setupMediaRecorderPreviewDisplay()V
    .locals 3

    .prologue
    .line 1766
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_1

    .line 1767
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1786
    :cond_0
    :goto_0
    return-void

    .line 1768
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_0

    .line 1771
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->stopPreview()V

    .line 1772
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 1780
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mDisplayRotation:I

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->getDisplayOrientation(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1782
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mPreviewing:Z

    .line 1784
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method private showAlert()V
    .locals 3

    .prologue
    .line 2398
    const/4 v0, 0x0

    .line 2399
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 2400
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/hwcamera/thumbnail/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2407
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewBitmap:Landroid/graphics/Bitmap;

    .line 2409
    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoModule;->showAlert(Landroid/graphics/Bitmap;)V

    .line 2410
    return-void

    .line 2402
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2403
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/hwcamera/thumbnail/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private showAlert(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2415
    if-eqz p1, :cond_0

    .line 2418
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 2419
    .local v0, info:[Landroid/hardware/Camera$CameraInfo;
    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    aget-object v2, v0, v2

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v3, :cond_2

    move v1, v3

    .line 2420
    .local v1, mirror:Z
    :goto_0
    invoke-static {p1, v4, v1}, Lcom/android/hwcamera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2421
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2422
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2425
    .end local v0           #info:[Landroid/hardware/Camera$CameraInfo;
    .end local v1           #mirror:Z
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-static {v2}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 2427
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 2428
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mReviewPlayButton:Lcom/android/hwcamera/ui/RotateImageView;

    invoke-static {v2}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 2429
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mReviewRetakeButton:Lcom/android/hwcamera/ui/RotateImageView;

    invoke-static {v2}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 2430
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 2431
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->hideMenu()V

    .line 2432
    invoke-direct {p0, v4}, Lcom/android/hwcamera/VideoModule;->showTimeLapseUI(Z)V

    .line 2434
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mPreviewing:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 2442
    :cond_1
    :goto_1
    return-void

    .restart local v0       #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_2
    move v1, v4

    .line 2419
    goto :goto_0

    .line 2435
    .end local v0           #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const-string v5, "off"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2436
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoModule;->mRestoreFlash:Z

    goto :goto_1

    .line 2439
    :cond_4
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoModule;->mRestoreFlash:Z

    .line 2440
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setCameraParameters()V

    goto :goto_1
.end method

.method private showHintsOnStopRecord()V
    .locals 0

    .prologue
    .line 4301
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->showVolumSnapShotHint()V

    .line 4302
    return-void
.end method

.method private showRecordingUI(Z)V
    .locals 2
    .parameter "recording"

    .prologue
    .line 2335
    if-eqz p1, :cond_2

    .line 2336
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mIsSupportPauseAndResume:Z

    if-eqz v0, :cond_1

    .line 2337
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f02014e

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 2343
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->showVideoCaptureButton()V

    .line 2344
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideMenu()V

    .line 2345
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideSwitcher()V

    .line 2346
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideThumbnail()V

    .line 2348
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mLabelsLinearLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setVisibility(I)V

    .line 2355
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2373
    :cond_0
    :goto_1
    return-void

    .line 2340
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f02022d

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    goto :goto_0

    .line 2360
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->hideVideoCaptureButton()V

    .line 2361
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f02014f

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 2362
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showMenu()V

    .line 2363
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showThumbnail()V

    .line 2364
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showSwitcher()V

    .line 2366
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mLabelsLinearLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setVisibility(I)V

    .line 2368
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method private showTapToSnapshotToast()V
    .locals 3

    .prologue
    .line 3893
    const v1, 0x7f0d0025

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoModule;->showOnscreenToast(I)V

    .line 3895
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3896
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3897
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3898
    return-void
.end method

.method private showTimeLapseUI(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 3561
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3562
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTimeLapseLabel:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3564
    :cond_0
    return-void

    .line 3562
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showVideoCaptureButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2377
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->canVideoSnapshot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mVideoSnapshotShutterButton:Lcom/android/hwcamera/ShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mVideoSnapshotShutterButtonLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2378
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mVideoSnapshotShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2379
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mVideoSnapshotShutterButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2382
    :cond_0
    return-void
.end method

.method private showVideoSnapshotHints()V
    .locals 4

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->canVideoSnapshot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3640
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_video_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3642
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3645
    :cond_0
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 1002
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1003
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/hwcamera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    :goto_0
    return-void

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "CAM_VideoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1439
    const-string v1, "CAM_VideoModule"

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mErrorCallback:Lcom/android/hwcamera/CameraErrorCallback;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1442
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mPreviewing:Z

    if-ne v1, v3, :cond_0

    .line 1443
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->stopPreview()V

    .line 1445
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    if-eqz v1, :cond_0

    .line 1446
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/hwcamera/EffectsRecorder;->release()V

    .line 1447
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    .line 1451
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setDisplayOrientation()V

    .line 1452
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1453
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setCameraParameters()V

    .line 1456
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1457
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_1

    .line 1458
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v2, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/hwcamera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1463
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1468
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->onPreviewStarted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1474
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoModule;->mPreviewing:Z

    .line 1475
    return-void

    .line 1461
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    invoke-virtual {v2}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1469
    :catch_0
    move-exception v0

    .line 1470
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->closeCamera()V

    .line 1471
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1465
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeEffectsPreview()V

    .line 1466
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/hwcamera/EffectsRecorder;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private startTargetTracking()V
    .locals 4

    .prologue
    .line 2918
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mStartTragetTracking:Z

    if-eqz v0, :cond_1

    .line 2926
    :cond_0
    :goto_0
    return-void

    .line 2919
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->isSupportTargetTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2920
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->startTargetTracking(Landroid/hardware/Camera$Parameters;)V

    .line 2921
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v0, :cond_2

    .line 2922
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x602

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2924
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mStartTragetTracking:Z

    .line 2925
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->setTargetView(Lcom/android/hwcamera/ui/TargetView;)V

    goto :goto_0
.end method

.method private startVideoRecording()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2220
    const-string v1, "CAM_VideoModule"

    const-string v2, "startVideoRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getStorageSpace()J

    move-result-wide v1

    const-wide/32 v3, 0x1400000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 2222
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->updateStorageSpaceWhenStorageIsFull()V

    .line 2223
    const-string v1, "CAM_VideoModule"

    const-string v2, "Storage issue, ignore the start request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    :cond_0
    :goto_0
    return-void

    .line 2228
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mStopShutterButton:Lcom/android/hwcamera/ShutterButton;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mIsSupportPauseAndResume:Z

    if-eqz v1, :cond_2

    .line 2229
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100216

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ShutterButton;

    iput-object v1, p0, Lcom/android/hwcamera/VideoModule;->mStopShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 2230
    new-instance v1, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;

    invoke-direct {v1, p0, v7}, Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;-><init>(Lcom/android/hwcamera/VideoModule;Lcom/android/hwcamera/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/hwcamera/VideoModule;->mOnStopShutterButtonListner:Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;

    .line 2231
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mStopShutterButton:Lcom/android/hwcamera/ShutterButton;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mOnStopShutterButtonListner:Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 2232
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mStopShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->requestFocus()Z

    .line 2236
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    if-eqz v1, :cond_3

    .line 2237
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->hideZoomController()V

    .line 2238
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v1}, Lcom/android/hwcamera/ZoomController;->isZooming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2243
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v5}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2244
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mIsSupportPauseAndResume:Z

    if-eqz v1, :cond_4

    .line 2245
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mStopShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, v5}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 2246
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mStopShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, v5}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2247
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2249
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mOnStopShutterButtonListner:Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 2252
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d0196

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2255
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mStopShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 2258
    :cond_4
    iput-object v7, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2259
    iput v6, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    .line 2260
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->hideAllOnsreenHint()V

    .line 2261
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->isFocusStateIdel()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setCameraParameters()V

    .line 2262
    :cond_5
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2263
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeEffectsRecording()V

    .line 2264
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    if-nez v1, :cond_7

    .line 2265
    const-string v1, "CAM_VideoModule"

    const-string v2, "Fail to initialize effect recorder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    iput v5, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    goto/16 :goto_0

    .line 2270
    :cond_6
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeRecorder()V

    .line 2271
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_7

    .line 2272
    const-string v1, "CAM_VideoModule"

    const-string v2, "Fail to initialize media recorder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    iput v5, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    goto/16 :goto_0

    .line 2278
    :cond_7
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->pauseAudioPlayback()V

    .line 2279
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v1}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->clear()V

    .line 2280
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2282
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/hwcamera/EffectsRecorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2312
    :goto_1
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    if-eqz v1, :cond_8

    .line 2313
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2316
    :cond_8
    invoke-direct {p0, v5}, Lcom/android/hwcamera/VideoModule;->enableCameraControls(Z)V

    .line 2318
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v5}, Lcom/android/hwcamera/CameraActivity;->enableSwitcherAndMenu(Z)V

    .line 2319
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v6}, Lcom/android/hwcamera/CameraActivity;->setThumbnailUpdateSilently(Z)V

    .line 2320
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/hwcamera/VideoModule;->mRecordingTotalTime:J

    .line 2321
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/hwcamera/VideoModule;->mRecordingStartTime:J

    .line 2324
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2327
    invoke-direct {p0, v6}, Lcom/android/hwcamera/VideoModule;->showRecordingUI(Z)V

    .line 2328
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2329
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->resetRecordingTimeLayout()V

    .line 2330
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->updateRecordingTime()V

    .line 2331
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->keepScreenOn()V

    goto/16 :goto_0

    .line 2283
    :catch_0
    move-exception v0

    .line 2284
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CAM_VideoModule"

    const-string v2, "Could not start effects recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2285
    iput v5, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    .line 2286
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->releaseEffectsRecorder()V

    goto/16 :goto_0

    .line 2291
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_9
    :try_start_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2292
    :catch_1
    move-exception v0

    .line 2293
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v1, "CAM_VideoModule"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2294
    iput v5, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    .line 2295
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->releaseMediaRecorder()V

    .line 2297
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->lock()V

    .line 2299
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_0

    .line 2300
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mStopShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2301
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v6}, Lcom/android/hwcamera/CameraActivity;->onSwitchChanged(Z)Z

    goto/16 :goto_0
.end method

.method private stopPreview()V
    .locals 1

    .prologue
    .line 1478
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->stopTargetTracking()V

    .line 1479
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopPreview()V

    .line 1480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mPreviewing:Z

    .line 1481
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->onPreviewStopped()V

    .line 1482
    :cond_0
    return-void
.end method

.method private stopTargetTracking()V
    .locals 4

    .prologue
    .line 2908
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mStartTragetTracking:Z

    if-nez v0, :cond_1

    .line 2915
    :cond_0
    :goto_0
    return-void

    .line 2909
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->isSupportTargetTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2910
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopTargetTracking(Landroid/hardware/Camera$Parameters;)V

    .line 2911
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v0, :cond_2

    .line 2912
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x601

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2914
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mStartTragetTracking:Z

    goto :goto_0
.end method

.method private stopVideoRecording()Z
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2486
    const-string v4, "CAM_VideoModule"

    const-string v7, "stopVideoRecording"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2489
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    if-eqz v4, :cond_1

    .line 2491
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v4}, Lcom/android/hwcamera/ZoomController;->isZooming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2492
    iget-boolean v4, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_0

    .line 2493
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v4, :cond_0

    .line 2494
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v4, v6}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 2497
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v4}, Lcom/android/hwcamera/ZoomController;->hideAndNotResponseZoombar()V

    .line 2503
    :cond_1
    iget-boolean v4, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2505
    :cond_2
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->showSwitcher()V

    .line 2506
    const/4 v2, 0x0

    .line 2507
    .local v2, fail:Z
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->stopTargetTracking()V

    .line 2508
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2509
    const/4 v3, 0x0

    .line 2511
    .local v3, shouldAddToMediaStoreNow:Z
    iget v4, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    if-ne v4, v5, :cond_a

    .line 2512
    iget-wide v7, p0, Lcom/android/hwcamera/VideoModule;->mRecordingTotalTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/hwcamera/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/hwcamera/VideoModule;->mRecordingTotalTime:J

    .line 2518
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->isNeedStereo()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2519
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v7, v4, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v10, "audio"

    invoke-virtual {v4, v10}, Lcom/android/hwcamera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    invoke-virtual {v7, v8, v9, v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->enableVideoRecordStereo(ZILandroid/media/AudioManager;)V

    .line 2522
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2527
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v4}, Lcom/android/hwcamera/EffectsRecorder;->stopRecording()V

    .line 2534
    :goto_1
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2535
    const-string v4, "CAM_VideoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2542
    :goto_2
    iput v6, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    .line 2543
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/CameraActivity;->enableSwitcherAndMenu(Z)V

    .line 2544
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4, v6}, Lcom/android/hwcamera/CameraActivity;->setThumbnailUpdateSilently(Z)V

    .line 2545
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setCameraParameters()V

    .line 2557
    iget-boolean v4, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-eqz v4, :cond_4

    .line 2560
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v4

    if-nez v4, :cond_d

    move v0, v5

    .line 2561
    .local v0, closeEffects:Z
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoModule;->closeCamera(Z)V

    .line 2564
    .end local v0           #closeEffects:Z
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/hwcamera/VideoModule;->showRecordingUI(Z)V

    .line 2565
    iget-boolean v4, p0, Lcom/android/hwcamera/VideoModule;->mIsSupportPauseAndResume:Z

    if-eqz v4, :cond_5

    .line 2566
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mStopShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2567
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v4, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 2569
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v8, 0x7f0d002a

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/hwcamera/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2571
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mStopShutterButton:Lcom/android/hwcamera/ShutterButton;

    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mOnStopShutterButtonListner:Lcom/android/hwcamera/VideoModule$OnStopShutterButtonListner;

    invoke-virtual {v4, v7}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 2574
    :cond_5
    iget-boolean v4, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v4, :cond_e

    .line 2575
    invoke-direct {p0, v5}, Lcom/android/hwcamera/VideoModule;->enableCameraControls(Z)V

    .line 2584
    :cond_6
    :goto_4
    invoke-direct {p0, v6, v5}, Lcom/android/hwcamera/VideoModule;->setOrientationIndicator(IZ)V

    .line 2585
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->keepScreenOnAwhile()V

    .line 2586
    if-eqz v3, :cond_7

    .line 2587
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->addVideoToMediaStore()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x1

    .line 2591
    .end local v3           #shouldAddToMediaStoreNow:Z
    :cond_7
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2592
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->releaseMediaRecorder()V

    .line 2593
    iget-boolean v4, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-nez v4, :cond_8

    .line 2594
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v4, v4, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->lock()V

    .line 2595
    sget-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v4, :cond_8

    .line 2597
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->stopPreview()V

    .line 2599
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v4, v4, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v4, Lcom/android/hwcamera/CameraScreenNail;

    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mFrameDrawnListener:Lcom/android/hwcamera/CameraScreenNail$OnFrameDrawnListener;

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/CameraScreenNail;->setOneTimeOnFrameDrawnListener(Lcom/android/hwcamera/CameraScreenNail$OnFrameDrawnListener;)V

    .line 2601
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->startPreview()V

    .line 2607
    :cond_8
    iget-boolean v4, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v4, v4, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2608
    :cond_9
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->processHintsOnSnapShot()V

    .line 2609
    return v2

    .line 2514
    .restart local v3       #shouldAddToMediaStoreNow:Z
    :cond_a
    const-string v4, "CAM_VideoModule"

    const-string v7, "from PAUSING to stop, not update mRecordingTotalTime"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2529
    :cond_b
    :try_start_1
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2530
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2531
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2532
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2537
    :catch_0
    move-exception v1

    .line 2538
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "CAM_VideoModule"

    const-string v7, "stop fail"

    invoke-static {v4, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2539
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/hwcamera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 2540
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_2

    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_d
    move v0, v6

    .line 2560
    goto/16 :goto_3

    .line 2577
    :cond_e
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v4, :cond_6

    .line 2578
    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v4, v6}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    goto/16 :goto_4
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 20
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 3813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3814
    .local v4, dateTaken:J
    invoke-static {v4, v5}, Lcom/android/hwcamera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    .line 3815
    .local v3, title:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/hwcamera/Exif;->getOrientation([B)I

    move-result v7

    .line 3818
    .local v7, orientation:I
    const/4 v9, 0x0

    .line 3819
    .local v9, width:I
    const/4 v10, 0x0

    .line 3822
    .local v10, height:I
    :try_start_0
    new-instance v11, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3823
    .local v11, dataIS:Ljava/io/ByteArrayInputStream;
    invoke-static {v11}, Lcom/android/hwcamera/Exif;->paraseImageWidthAndHeight(Ljava/io/InputStream;)V

    .line 3824
    invoke-static {}, Lcom/android/hwcamera/Exif;->getImageWidth()I

    move-result v9

    .line 3825
    invoke-static {}, Lcom/android/hwcamera/Exif;->getImageHeight()I

    move-result v10

    .line 3826
    invoke-virtual {v11}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3831
    .end local v11           #dataIS:Ljava/io/ByteArrayInputStream;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v6, p2

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v10}, Lcom/android/hwcamera/storage/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;

    move-result-object v15

    .line 3834
    .local v15, uri:Landroid/net/Uri;
    if-eqz v15, :cond_0

    .line 3836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v15}, Lcom/android/hwcamera/CameraActivity;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 3838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/VideoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v14, v0

    .line 3840
    .local v14, ratio:I
    invoke-static {v14}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v13

    .line 3842
    .local v13, inSampleSize:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v7, v13, v15}, Lcom/android/hwcamera/CameraActivity;->updatePictureThumbnail([BIILandroid/net/Uri;)V

    .line 3843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v2, v15}, Lcom/android/hwcamera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3845
    .end local v13           #inSampleSize:I
    .end local v14           #ratio:I
    :cond_0
    return-void

    .line 3827
    .end local v15           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 3828
    .local v12, ex:Ljava/io/IOException;
    const-string v2, "CAM_VideoModule"

    const-string v6, "cannot read exif"

    invoke-static {v2, v6, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3436
    iget-boolean v3, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 3492
    :cond_0
    :goto_0
    return-void

    .line 3438
    :cond_1
    const-string v3, "CAM_VideoModule"

    const-string v4, "Start to switch camera."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v3}, Lcom/android/hwcamera/tips/TipsService;->reset()V

    .line 3440
    :cond_2
    iget v3, p0, Lcom/android/hwcamera/VideoModule;->mPendingSwitchCameraId:I

    iput v3, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    .line 3441
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/hwcamera/VideoModule;->mPendingSwitchCameraId:I

    .line 3443
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v3, :cond_3

    .line 3444
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    iget v4, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/settings/MenuController;->setCameraId(I)V

    .line 3448
    :cond_3
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_zoom_value_key"

    invoke-static {v3, v4, v2}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 3449
    iput v2, p0, Lcom/android/hwcamera/VideoModule;->mZoomValue:I

    .line 3453
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v3}, Lcom/android/hwcamera/settings/MenuController;->clearOverrideSettings()V

    .line 3455
    :cond_4
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v3}, Lcom/android/hwcamera/ui/TargetView;->clear()V

    .line 3457
    :cond_5
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusOverlayManager;->resetTouchFocus()V

    .line 3458
    :cond_6
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusOverlayManager;->removeMessages()V

    .line 3460
    :cond_7
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->closeCamera()V

    .line 3463
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget v5, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3464
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 3465
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->openCamera()V

    .line 3466
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    aget-object v0, v3, v4

    .line 3467
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v1, :cond_b

    .line 3469
    .local v1, mirror:Z
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v3, v1}, Lcom/android/hwcamera/FocusOverlayManager;->setMirror(Z)V

    .line 3470
    :cond_8
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3472
    :cond_9
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeVideoControl()V

    .line 3473
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->readVideoPreferences()V

    .line 3474
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->startPreview()V

    .line 3475
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->showVideoSnapshotHints()V

    .line 3476
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 3479
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeZoom()V

    .line 3480
    invoke-direct {p0, v2, v2}, Lcom/android/hwcamera/VideoModule;->setOrientationIndicator(IZ)V

    .line 3482
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v2, :cond_a

    .line 3485
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3488
    :cond_a
    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    invoke-static {v2}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3489
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->hideZoomController()V

    goto/16 :goto_0

    .end local v1           #mirror:Z
    :cond_b
    move v1, v2

    .line 3467
    goto :goto_1
.end method

.method private touchTarget(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v5, 0xe

    .line 3713
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_1

    .line 3729
    :cond_0
    :goto_0
    return-void

    .line 3714
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusOverlayManager;->resetTouchFocus()V

    .line 3715
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v2, p1, p2}, Lcom/android/hwcamera/ui/TargetView;->transformToPreviewCoordinate(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 3716
    .local v1, rect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3720
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3721
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3723
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v2, p1, p2}, Lcom/android/hwcamera/ui/TargetView;->setLocation(II)V

    .line 3724
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v2}, Lcom/android/hwcamera/ui/TargetView;->showFocuing()V

    .line 3725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3726
    .local v0, coordinate:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "target-coordinates"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3727
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v2, v2, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3728
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "target-coordinates"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 4

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-static {}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->newInstance()Lcom/android/hwcamera/feature/CameraCallbakProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mAutoFocusMoveCallback:Lcom/android/hwcamera/VideoModule$AutoFocusMoveCallback;

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v2, v3}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->bind(Ljava/lang/Object;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method private updateEffectSelection()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3506
    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    .line 3507
    .local v2, previousEffectType:I
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 3508
    .local v1, previousEffectParameter:Ljava/lang/Object;
    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v5}, Lcom/android/hwcamera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v5

    iput v5, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    .line 3509
    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v5}, Lcom/android/hwcamera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/android/hwcamera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 3511
    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 3543
    :cond_0
    :goto_0
    return v3

    .line 3512
    :cond_1
    iget v5, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    if-ne v5, v2, :cond_2

    .line 3513
    iget v5, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    if-eqz v5, :cond_0

    .line 3514
    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3516
    :cond_2
    const-string v5, "CAM_VideoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New effect selection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v8, "pref_video_effect_key"

    const-string v9, "none"

    invoke-virtual {v7, v8, v9}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    iget v5, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    if-nez v5, :cond_3

    .line 3521
    iget-object v5, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v5}, Lcom/android/hwcamera/EffectsRecorder;->stopPreview()V

    .line 3522
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoModule;->mPreviewing:Z

    move v3, v4

    .line 3523
    goto :goto_0

    .line 3525
    :cond_3
    iget v3, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v5, "gallery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3528
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3529
    .local v0, i:Landroid/content/Intent;
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "video/*"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3531
    const-string v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3532
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/16 v5, 0x3e8

    invoke-virtual {v3, v0, v5}, Lcom/android/hwcamera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v4

    .line 3533
    goto :goto_0

    .line 3535
    .end local v0           #i:Landroid/content/Intent;
    :cond_4
    if-nez v2, :cond_5

    .line 3537
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->stopPreview()V

    .line 3538
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->checkQualityAndStartPreview()V

    :goto_1
    move v3, v4

    .line 3543
    goto :goto_0

    .line 3541
    :cond_5
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    iget v5, p0, Lcom/android/hwcamera/VideoModule;->mEffectType:I

    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/android/hwcamera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private updateFlashUI(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 4120
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-nez v0, :cond_0

    .line 4131
    :goto_0
    return-void

    .line 4121
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    new-instance v1, Lcom/android/hwcamera/VideoModule$15;

    invoke-direct {v1, p0, p1}, Lcom/android/hwcamera/VideoModule$15;-><init>(Lcom/android/hwcamera/VideoModule;Z)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateRecordingTime()V
    .locals 19

    .prologue
    .line 2681
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 2756
    :goto_0
    return-void

    .line 2687
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v15, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->checkAvailableStorageSpace()Z

    move-result v15

    if-nez v15, :cond_1

    .line 2688
    const-string v15, "CAM_VideoModule"

    const-string v16, "Error AvailableSpace is low(<20M)"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    const v15, 0x7f0d00bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/hwcamera/VideoModule;->showOnscreenToast(I)V

    .line 2690
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->onStopVideoRecording()V

    .line 2691
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v15}, Lcom/android/hwcamera/CameraActivity;->updateStorageSpace()V

    goto :goto_0

    .line 2696
    :cond_1
    const-wide/16 v10, -0x1

    .line 2697
    .local v10, remainingTotalTime:J
    const-wide/16 v6, 0x0

    .line 2698
    .local v6, delta:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/hwcamera/VideoModule;->mRecordingStartTime:J

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-nez v15, :cond_3

    .line 2699
    const-wide/16 v6, 0x0

    .line 2710
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/hwcamera/VideoModule;->mCaptureTimeLapse:Z

    if-nez v15, :cond_4

    .line 2711
    const-wide/16 v15, 0x3e8

    div-long v15, v6, v15

    invoke-static/range {v15 .. v16}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v14

    .line 2712
    .local v14, text:Ljava/lang/String;
    const-wide/16 v12, 0x3e8

    .line 2722
    .local v12, targetNextUpdateDelay:J
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v15, v15, Landroid/media/CamcorderProfile;->videoBitRate:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    move/from16 v16, v0

    add-int v15, v15, v16

    int-to-float v15, v15

    const v16, 0x3f88f5c3

    mul-float v15, v15, v16

    float-to-long v15, v15

    const-wide/16 v17, 0x8

    div-long v4, v15, v17

    .line 2723
    .local v4, bitRate:J
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 2724
    const-wide/32 v15, 0x46000

    div-long v10, v15, v4

    .line 2725
    const-wide/16 v15, 0x3e8

    div-long v15, v6, v15

    cmp-long v15, v15, v10

    if-lez v15, :cond_2

    .line 2726
    const-wide/16 v15, 0x3e8

    div-long v10, v6, v15

    .line 2728
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2751
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoModule;->mLabelsLinearLayout:Lcom/android/hwcamera/ui/RotateLinearLayout;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0d0198

    invoke-virtual/range {v17 .. v18}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/hwcamera/ui/RotateLinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2753
    rem-long v15, v6, v12

    sub-long v2, v12, v15

    .line 2754
    .local v2, actualNextUpdateDelay:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v15, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2701
    .end local v2           #actualNextUpdateDelay:J
    .end local v4           #bitRate:J
    .end local v12           #targetNextUpdateDelay:J
    .end local v14           #text:Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2702
    .local v8, now:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/hwcamera/VideoModule;->mRecordingTotalTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/hwcamera/VideoModule;->mRecordingStartTime:J

    move-wide/from16 v17, v0

    sub-long v17, v8, v17

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/hwcamera/VideoModule;->mRecordingTotalTime:J

    .line 2703
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/hwcamera/VideoModule;->mRecordingStartTime:J

    .line 2704
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/hwcamera/VideoModule;->mRecordingTotalTime:J

    goto/16 :goto_1

    .line 2717
    .end local v8           #now:J
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/hwcamera/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v15

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/hwcamera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v14

    .line 2718
    .restart local v14       #text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/hwcamera/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v12, v15

    .restart local v12       #targetNextUpdateDelay:J
    goto/16 :goto_2

    .line 2730
    .restart local v4       #bitRate:J
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v15, :cond_6

    .line 2731
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->getTotalAvailableRecordingTime()J

    move-result-wide v10

    .line 2732
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2734
    :cond_6
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/hwcamera/VideoModule;->mMaxFileSizeLimit:J

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_7

    .line 2735
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/hwcamera/VideoModule;->mMaxFileSizeLimit:J

    div-long v10, v15, v4

    .line 2736
    const-wide/16 v15, 0x3e8

    div-long v15, v6, v15

    cmp-long v15, v15, v10

    if-lez v15, :cond_7

    .line 2737
    const-wide/16 v15, 0x3e8

    div-long v10, v6, v15

    .line 2740
    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/hwcamera/VideoModule;->mMaxVideoDurationInMs:I

    if-lez v15, :cond_8

    .line 2741
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/hwcamera/VideoModule;->mMaxVideoDurationInMs:I

    div-int/lit16 v15, v15, 0x3e8

    int-to-long v15, v15

    move-wide v0, v15

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 2743
    :cond_8
    const-wide/16 v15, -0x1

    cmp-long v15, v10, v15

    if-nez v15, :cond_9

    .line 2744
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/VideoModule;->getTotalAvailableRecordingTime()J

    move-result-wide v10

    .line 2746
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/hwcamera/VideoModule;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private updateThumbnail()V
    .locals 4

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getThumbnailWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraActivity;->updateVideoThumbnail(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1081
    :cond_0
    return-void
.end method

.method private writeDefaultEffectToPrefs()V
    .locals 4

    .prologue
    .line 1291
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1292
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_effect_key"

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d00c2

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1294
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1295
    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 4

    .prologue
    .line 4146
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 4148
    :goto_0
    return-void

    .line 4147
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-static {}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->newInstance()Lcom/android/hwcamera/feature/CameraCallbakProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mAutoFocusCallback:Lcom/android/hwcamera/VideoModule$AutoFocusCallback;

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v2, v3}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->bind(Ljava/lang/Object;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public canGotoGallery()Z
    .locals 1

    .prologue
    .line 4072
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canVideoSnapshot()Z
    .locals 1

    .prologue
    .line 3648
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoSnapshotSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 4152
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 4155
    :goto_0
    return-void

    .line 4153
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 4154
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setCameraParameters()V

    goto :goto_0
.end method

.method public capture()Z
    .locals 1

    .prologue
    .line 4159
    const/4 v0, 0x0

    return v0
.end method

.method public collapseCameraControls()Z
    .locals 2

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->collapseCameraControlsForGoogle()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->collapseCameraControlsForUs()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public dismissPopup(Z)V
    .locals 1
    .parameter "topLevelOnly"

    .prologue
    .line 4056
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/hwcamera/VideoModule;->dismissPopup(ZZ)V

    .line 4057
    return-void
.end method

.method public dismissPopup(ZZ)V
    .locals 1
    .parameter "topLevelPopupOnly"
    .parameter "fullScreen"

    .prologue
    .line 4060
    if-eqz p2, :cond_0

    .line 4061
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showUI()V

    .line 4063
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuController;->popupDismissed()V

    .line 4064
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 3568
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3572
    :goto_0
    return v0

    .line 3569
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    if-eqz v0, :cond_1

    .line 3570
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/PreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 3572
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doSmileCapture(I)V
    .locals 0
    .parameter "smileScore"

    .prologue
    .line 4098
    return-void
.end method

.method public flashModeInLowBattery()V
    .locals 3

    .prologue
    .line 4102
    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    if-eqz v1, :cond_1

    .line 4103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mNeedLowBatteryCallBack:Z

    .line 4117
    :cond_0
    :goto_0
    return-void

    .line 4106
    :cond_1
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    .line 4107
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getFlashEnable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4108
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4109
    .local v0, msg:Landroid/os/Message;
    const v1, 0x7f0d012a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4110
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4111
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4113
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getFlashEnable()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoModule;->updateFlashUI(Z)V

    .line 4114
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setFlashParameter()V

    .line 4115
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4116
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    return v0
.end method

.method public hideOnsreenHint()V
    .locals 1

    .prologue
    .line 4248
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v0}, Lcom/android/hwcamera/tips/TipsService;->hideTextTip()V

    .line 4249
    :cond_0
    return-void
.end method

.method public hideZoomController()V
    .locals 1

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    if-eqz v0, :cond_0

    .line 2476
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v0}, Lcom/android/hwcamera/ZoomController;->hide()V

    .line 2479
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v0, :cond_1

    .line 2480
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v0}, Lcom/android/hwcamera/tips/TipsService;->resumeTips()V

    .line 2483
    :cond_1
    return-void
.end method

.method public init(Lcom/android/hwcamera/CameraActivity;Landroid/view/View;Z)V
    .locals 8
    .parameter "activity"
    .parameter "parent"
    .parameter "reuseScreenNail"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 720
    const-string v3, "CAM_VideoModule"

    const-string v6, "FLOW init begin"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 722
    iput-object p2, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    .line 723
    new-instance v3, Lcom/android/hwcamera/ComboPreferences;

    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v3, v6}, Lcom/android/hwcamera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 724
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/hwcamera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 725
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {p0, v3}, Lcom/android/hwcamera/VideoModule;->getPreferredCameraId(Lcom/android/hwcamera/ComboPreferences;)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    .line 727
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget v7, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    invoke-virtual {v3, v6, v7}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 728
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 730
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/hwcamera/CameraHolder;->getNumberOfCameras()I

    move-result v6

    iput v6, v3, Lcom/android/hwcamera/ActivityBase;->mNumberOfCameras:I

    .line 731
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v6, 0x7f0d00c2

    invoke-virtual {v3, v6}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    .line 732
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->resetEffect()Z

    .line 738
    new-instance v0, Lcom/android/hwcamera/VideoModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoModule$CameraOpenThread;-><init>(Lcom/android/hwcamera/VideoModule;)V

    .line 739
    .local v0, cameraOpenThread:Lcom/android/hwcamera/VideoModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/hwcamera/VideoModule$CameraOpenThread;->start()V

    .line 741
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 743
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v6, 0x7f10013f

    invoke-virtual {v3, v6}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 744
    .local v1, root:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 745
    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040049

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 747
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeTipsService()V

    .line 750
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->isVideoCaptureIntent()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    .line 752
    if-eqz p3, :cond_3

    .line 753
    iget-object v6, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v3, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/android/hwcamera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 757
    :goto_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeSurfaceView()V

    .line 761
    :try_start_0
    invoke-virtual {v0}, Lcom/android/hwcamera/VideoModule$CameraOpenThread;->join()V

    .line 762
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v3, v3, Lcom/android/hwcamera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v3, :cond_5

    .line 763
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0071

    invoke-static {v3, v4}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :goto_2
    return-void

    :cond_2
    move v3, v5

    .line 753
    goto :goto_0

    .line 755
    :cond_3
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v6, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v6, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_3

    .line 765
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v3, v3, Lcom/android/hwcamera/ActivityBase;->mCameraDisabled:Z

    if-eqz v3, :cond_6

    .line 766
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0072

    invoke-static {v3, v4}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 769
    :catch_0
    move-exception v3

    .line 772
    :cond_6
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeFocusManager()V

    .line 774
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/hwcamera/VideoModule$3;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/VideoModule$3;-><init>(Lcom/android/hwcamera/VideoModule;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 782
    .local v2, startPreviewThread:Ljava/lang/Thread;
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeControlByIntent()V

    .line 783
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeOverlay()V

    .line 784
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 785
    invoke-static {}, Lcom/android/hwcamera/Util;->isVideoPauseResumeSupported()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/hwcamera/VideoModule;->mIsSupportPauseAndResume:Z

    .line 786
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeMiscControls()V

    .line 788
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initTwinkleAnimation()V

    .line 791
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.quickCapture"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/hwcamera/VideoModule;->mQuickCapture:Z

    .line 792
    new-instance v3, Lcom/android/hwcamera/LocationManager;

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Lcom/android/hwcamera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/hwcamera/LocationManager$Listener;)V

    iput-object v3, p0, Lcom/android/hwcamera/VideoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    .line 794
    invoke-direct {p0, v5, v5}, Lcom/android/hwcamera/VideoModule;->setOrientationIndicator(IZ)V

    .line 795
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setDisplayOrientation()V

    .line 799
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 800
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v3, v3, Lcom/android/hwcamera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v3, :cond_8

    .line 801
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0071

    invoke-static {v3, v4}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 807
    :catch_1
    move-exception v3

    .line 811
    :cond_7
    iget-boolean v3, p0, Lcom/android/hwcamera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v3}, Lcom/android/hwcamera/VideoModule;->showTimeLapseUI(Z)V

    .line 812
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->showVideoSnapshotHints()V

    .line 813
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 814
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeVideoControl()V

    .line 815
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->enableHdrMovieIfNeeded()V

    .line 816
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/hwcamera/VideoModule;->mPendingSwitchCameraId:I

    .line 817
    const-string v3, "CAM_VideoModule"

    const-string v4, "FLOW init end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 803
    :cond_8
    :try_start_3
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v3, v3, Lcom/android/hwcamera/ActivityBase;->mCameraDisabled:Z

    if-eqz v3, :cond_7

    .line 804
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0072

    invoke-static {v3, v4}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 1342
    return-void
.end method

.method public isInMeterShootMode()Z
    .locals 1

    .prologue
    .line 4182
    const/4 v0, 0x0

    return v0
.end method

.method public isInReviewState()Z
    .locals 1

    .prologue
    .line 4276
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 2216
    iget v0, p0, Lcom/android/hwcamera/VideoModule;->mVideoState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomming()Z
    .locals 1

    .prologue
    .line 4326
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ZoomRenderer;->isScaling()Z

    move-result v0

    goto :goto_0
.end method

.method public needBackground()Z
    .locals 1

    .prologue
    .line 4052
    const/4 v0, 0x1

    return v0
.end method

.method public needColorEffect()Z
    .locals 1

    .prologue
    .line 4222
    const/4 v0, 0x0

    return v0
.end method

.method public needMenu()Z
    .locals 1

    .prologue
    .line 4047
    const/4 v0, 0x1

    return v0
.end method

.method public needsBeautyProgress()Z
    .locals 1

    .prologue
    .line 4216
    const/4 v0, 0x0

    return v0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 4037
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsThumbnail()Z
    .locals 1

    .prologue
    .line 4042
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2971
    packed-switch p1, :pswitch_data_0

    .line 2990
    :goto_0
    return-void

    .line 2973
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2976
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2977
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received URI from gallery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 2980
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2981
    const-string v0, "CAM_VideoModule"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 2971
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1644
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1653
    :cond_0
    :goto_0
    return v0

    .line 1646
    :cond_1
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mSnapshotInProgress:Z

    if-nez v1, :cond_0

    .line 1648
    const-string v1, "CAM_VideoModule"

    const-string v2, "FLOW onBackPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1650
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->onStopVideoRecording()V

    goto :goto_0

    .line 1653
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->removeTopLevelPopup()Z

    move-result v0

    goto :goto_0
.end method

.method public onBluetoothButtonClick()V
    .locals 1

    .prologue
    .line 4268
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4272
    :goto_0
    return-void

    .line 4270
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoModule;->handleVirtualButtonDown(Landroid/view/KeyEvent;)Z

    .line 4271
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->handleVirtualButtonUp()Z

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 4020
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/VideoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4033
    :cond_0
    :goto_0
    return-void

    .line 4022
    :cond_1
    iput p1, p0, Lcom/android/hwcamera/VideoModule;->mPendingSwitchCameraId:I

    .line 4023
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 4024
    const-string v0, "CAM_VideoModule"

    const-string v1, "Start to copy texture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/hwcamera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraScreenNail;->copyTexture()V

    .line 4029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mSwitchingCamera:Z

    goto :goto_0

    .line 4031
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCancelBgTraining(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3048
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->writeDefaultEffectToPrefs()V

    .line 3050
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoModule;->onSharedPreferenceChanged(Lcom/android/hwcamera/CameraPreference;)V

    .line 3051
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 3503
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 3196
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setDisplayOrientation()V

    .line 3198
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->releaseFocusIndicator()V

    .line 3201
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3202
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3203
    const v2, 0x7f040049

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3205
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeControlByIntent()V

    .line 3206
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeFocusManager()V

    .line 3207
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeOverlay()V

    .line 3208
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeSurfaceView()V

    .line 3209
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeMiscControls()V

    .line 3210
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoModule;->showTimeLapseUI(Z)V

    .line 3211
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->showVideoSnapshotHints()V

    .line 3212
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 3214
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v1, :cond_0

    .line 3215
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    iget v3, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/settings/MenuController;->initialize(Lcom/android/hwcamera/PreferenceGroup;I)V

    .line 3217
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->doUpdateFlashModeUI()V

    .line 3218
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mStartTragetTracking:Z

    if-eqz v1, :cond_1

    .line 3219
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/TargetView;->startTargetTrakingUI()V

    .line 3220
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/FocusOverlayManager;->setTargetView(Lcom/android/hwcamera/ui/TargetView;)V

    .line 3222
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v1, :cond_2

    .line 3223
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mDisplayRotation:I

    iget v3, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->getDisplayOrientation(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ui/TargetView;->setDisplayOrientation(I)V

    .line 3224
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewWidth:I

    iget v3, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ui/TargetView;->setScale(II)V

    .line 3228
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 3229
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeZoom()V

    .line 3230
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeTipsService()V

    .line 3231
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoModule;->onFullScreenChanged(Z)V

    .line 3233
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mReviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 3234
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mReviewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoModule;->showAlert(Landroid/graphics/Bitmap;)V

    .line 3237
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 4332
    invoke-super {p0}, Lcom/android/hwcamera/AbstractCameraModule;->onDestroy()V

    .line 4333
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4334
    return-void
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .parameter "exception"
    .parameter "fileName"

    .prologue
    .line 3057
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3058
    invoke-direct {p0, p2}, Lcom/android/hwcamera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3061
    :cond_0
    :try_start_1
    const-string v1, "android.filterpacks.videosink.MediaRecorderStopException"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3063
    const-string v1, "CAM_VideoModule"

    const-string v2, "Problem recoding video file. Removing incomplete file."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3064
    monitor-exit p0

    return-void

    .line 3066
    :catch_0
    move-exception v0

    .line 3067
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    :try_start_2
    const-string v1, "CAM_VideoModule"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3069
    .end local v0           #ex:Ljava/lang/ClassNotFoundException;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error during recording!"

    invoke-direct {v1, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3057
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onEffectsUpdate(II)V
    .locals 5
    .parameter "effectId"
    .parameter "effectMsg"

    .prologue
    const/4 v4, 0x1

    .line 2994
    const-string v1, "CAM_VideoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEffectsUpdate. Effect Message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 2999
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->checkQualityAndStartPreview()V

    .line 3038
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 3039
    const-string v1, "CAM_VideoModule"

    const-string v2, "OnEffectsUpdate: closing effects if activity paused"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->closeEffects()V

    .line 3042
    :cond_1
    return-void

    .line 3000
    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_5

    .line 3002
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mEffectsDisplayResult:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->addVideoToMediaStore()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3003
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_3

    .line 3004
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mQuickCapture:Z

    if-eqz v1, :cond_4

    .line 3005
    invoke-direct {p0, v4}, Lcom/android/hwcamera/VideoModule;->doReturnToCaller(Z)V

    .line 3011
    :cond_3
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mEffectsDisplayResult:Z

    .line 3014
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 3015
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->closeVideoFileDescriptor()V

    .line 3016
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->clearVideoNamer()V

    goto :goto_0

    .line 3007
    :cond_4
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->showAlert()V

    goto :goto_1

    .line 3018
    :cond_5
    const/4 v1, 0x5

    if-ne p2, v1, :cond_6

    .line 3020
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 3021
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 3022
    .local v0, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v0, :cond_0

    .line 3023
    invoke-virtual {v0, v4}, Lcom/android/hwcamera/VirtualButton;->enableVirtualButton(Z)V

    goto :goto_0

    .line 3025
    .end local v0           #mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 3026
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 4
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x1

    .line 2167
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    if-ne p2, v3, :cond_0

    .line 2170
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->stopVideoRecording()Z

    .line 2171
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->updateStorageSpaceWhenStorageIsFull()V

    .line 2173
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->onSwitchChanged(Z)Z

    .line 2176
    :cond_0
    return-void
.end method

.method public onFaceDetected([Lcom/android/hwcamera/facedetect/event/Face;)V
    .locals 0
    .parameter "facesDatas"

    .prologue
    .line 4077
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    .line 3751
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoModule;->enableAutoFoucsMoving(Z)V

    .line 3752
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/tips/TipsService;->onFullScreenChanged(Z)V

    .line 3753
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v1, :cond_1

    .line 3754
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 3756
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    if-eqz v1, :cond_2

    .line 3758
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/hwcamera/ui/RenderOverlay;->setVisibility(I)V

    .line 3760
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    if-eqz v1, :cond_3

    .line 3761
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v1}, Lcom/android/hwcamera/ZoomController;->hide()V

    .line 3764
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 3765
    .local v0, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v0, :cond_4

    .line 3766
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/VirtualButton;->enableVirtualButton(Z)V

    .line 3769
    :cond_4
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_7

    .line 3770
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v1, :cond_5

    .line 3771
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/hwcamera/CameraScreenNail;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/CameraScreenNail;->setFullScreen(Z)V

    .line 3780
    :cond_5
    :goto_1
    return-void

    .line 3758
    .end local v0           #mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    :cond_6
    const/16 v1, 0x8

    goto :goto_0

    .line 3775
    .restart local v0       #mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    :cond_7
    if-eqz p1, :cond_8

    .line 3776
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->expand()V

    goto :goto_1

    .line 3778
    :cond_8
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->shrink()V

    goto :goto_1
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2181
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 2183
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->onShutterButtonClick()V

    .line 2195
    :cond_0
    :goto_0
    return-void

    .line 2185
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 2187
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->onShutterButtonClick()V

    .line 2191
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0d00bb

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoModule;->showOnscreenToast(I)V

    .line 2192
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->updateStorageSpace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1660
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 1691
    :goto_0
    return v0

    .line 1664
    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    move v0, v1

    .line 1691
    goto :goto_0

    .line 1666
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1667
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mIsNeedCount:Z

    .line 1670
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->handleVirtualButtonUp()Z

    move-result v0

    goto :goto_0

    .line 1674
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1675
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mIsNeedCount:Z

    .line 1677
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->handleVirtualButtonUp()Z

    move-result v0

    goto :goto_0

    .line 1681
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1689
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/android/hwcamera/VideoModule;->handleVirtualButtonDown(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1664
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_0
        0x4f -> :sswitch_3
        0x52 -> :sswitch_2
        0x55 -> :sswitch_3
        0x7e -> :sswitch_3
        0x7f -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1707
    sparse-switch p1, :sswitch_data_0

    .line 1722
    :goto_0
    return v0

    .line 1712
    :sswitch_0
    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mIsNeedCount:Z

    .line 1713
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->handleVirtualButtonUp()Z

    move-result v0

    goto :goto_0

    .line 1716
    :sswitch_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isVolumSnapShotHintShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1717
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getGlobalPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_volum_snap_shot_hint_has_shown"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 1719
    :cond_0
    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mIsNeedCount:Z

    .line 1720
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->handleVirtualButtonUp()Z

    move-result v0

    goto :goto_0

    .line 1707
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuClosed()V
    .locals 1

    .prologue
    .line 4206
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoModule;->enableAutoFoucsMoving(Z)V

    .line 4207
    return-void
.end method

.method public onMenuKeyUp()V
    .locals 2

    .prologue
    .line 4313
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v0, :cond_0

    .line 4314
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuController;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4315
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuController;->popupDismissed()V

    .line 4320
    :cond_0
    :goto_0
    return-void

    .line 4316
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    const-string v1, "pref_camera_tab_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/settings/MenuController;->getMenuItem(Ljava/lang/String;)Lcom/android/hwcamera/settings/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4317
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    const-string v1, "pref_camera_tab_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/settings/MenuController;->getMenuItem(Ljava/lang/String;)Lcom/android/hwcamera/settings/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuItem;->onClick()V

    goto :goto_0
.end method

.method public onMenuOpened()V
    .locals 1

    .prologue
    .line 4198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoModule;->enableAutoFoucsMoving(Z)V

    .line 4200
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->hideZoomController()V

    .line 4202
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, 0x7

    .line 901
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/hwcamera/Util;->roundOrientation(II)I

    move-result v0

    .line 904
    .local v0, newOrientation:I
    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    if-eq v1, v0, :cond_5

    .line 905
    iput v0, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    .line 911
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 912
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/EffectsRecorder;->setOrientationHint(I)V

    .line 914
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/settings/MenuController;->onOrientationChanged(I)V

    .line 915
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/tips/TipsService;->onOrientationChanged(I)V

    .line 918
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    if-eqz v1, :cond_5

    .line 919
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    iget v2, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ZoomController;->onOritationChanged(I)V

    .line 924
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 925
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 926
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->showTapToSnapshotToast()V

    goto :goto_0
.end method

.method public onOverriddenPreferencesClicked()V
    .locals 0

    .prologue
    .line 3248
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 2

    .prologue
    .line 1625
    const-string v0, "CAM_VideoModule"

    const-string v1, "FLOW onPauseAfterSuper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuController;->pause()V

    .line 1628
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->hideZoomController()V

    .line 1631
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->releaseFocusIndicator()V

    .line 1633
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1553
    const-string v0, "CAM_VideoModule"

    const-string v1, "FLOW onPauseBeforeSuper begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    .line 1556
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1559
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1560
    iput-object v3, p0, Lcom/android/hwcamera/VideoModule;->mAlertDialog:Landroid/app/AlertDialog;

    .line 1562
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuController;->clearOverrideSettings()V

    .line 1563
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v0}, Lcom/android/hwcamera/tips/TipsService;->pause()V

    .line 1564
    :cond_3
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1566
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->onStopVideoRecordingOnPause()V

    .line 1571
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1576
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/hwcamera/EffectsRecorder;->disconnectDisplay()V

    .line 1589
    :goto_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->releasePreviewResources()V

    .line 1591
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    if-eqz v0, :cond_5

    .line 1592
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/ZoomController;->setZoomChangeListener(Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;)V

    .line 1593
    iput-object v3, p0, Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    .line 1596
    :cond_5
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->resetScreenOn()V

    .line 1598
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->collapseCameraControls()Z

    .line 1599
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 1601
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1602
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1603
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1605
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1606
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1607
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 1610
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x601

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1611
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x602

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1613
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/VideoModule;->mPendingSwitchCameraId:I

    .line 1614
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mSwitchingCamera:Z

    .line 1615
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getFocusPolicyService()Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->reset()V

    .line 1616
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v0}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->clear()V

    .line 1617
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/TargetView;->clear()V

    .line 1620
    :cond_8
    const-string v0, "CAM_VideoModule"

    const-string v1, "FLOW onPauseBeforeSuper end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    return-void

    .line 1568
    :cond_9
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->closeCamera()V

    .line 1569
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->releaseMediaRecorder()V

    goto/16 :goto_0

    .line 1585
    :cond_a
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->closeVideoFileDescriptor()V

    .line 1586
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->clearVideoNamer()V

    goto/16 :goto_1
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 3498
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3499
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1085
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 0

    .prologue
    .line 3253
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1353
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/hwcamera/ActivityBase;->mOpenCameraFail:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDisabled:Z

    if-eqz v1, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    const-string v1, "CAM_VideoModule"

    const-string v2, "FLOW onResumeAfterSuper begin"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v1}, Lcom/android/hwcamera/tips/TipsService;->resume()V

    .line 1357
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_zoom_value_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/VideoModule;->mZoomValue:I

    .line 1358
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->stopFMRadioPlay(Landroid/content/Context;)V

    .line 1360
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->stopVoiceRecording(Landroid/content/Context;)V

    .line 1362
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 1364
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->isInReviewState()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v1, :cond_3

    .line 1365
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 1369
    :cond_3
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mPreviewing:Z

    if-nez v1, :cond_8

    .line 1370
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->resetEffect()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1373
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoModule;->getPreferredCameraId(Lcom/android/hwcamera/ComboPreferences;)I

    move-result v0

    .line 1374
    .local v0, _mCameraId:I
    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    if-eq v1, v0, :cond_5

    .line 1375
    iput v0, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    .line 1376
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget v3, p0, Lcom/android/hwcamera/VideoModule;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1377
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1379
    :cond_5
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->openCamera()V

    .line 1380
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/hwcamera/ActivityBase;->mOpenCameraFail:Z

    if-eqz v1, :cond_6

    .line 1381
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f0d0071

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1384
    :cond_6
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDisabled:Z

    if-eqz v1, :cond_7

    .line 1385
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f0d0072

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1388
    :cond_7
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeVideoControl()V

    .line 1389
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->readVideoPreferences()V

    .line 1390
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 1391
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->startPreview()V

    .line 1395
    .end local v0           #_mCameraId:I
    :cond_8
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->initializeZoom()V

    .line 1397
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->keepScreenOnAwhile()V

    .line 1400
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_9

    .line 1401
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/hwcamera/VideoModule;->mOnResumeTime:J

    .line 1402
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1405
    :cond_9
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v1}, Lcom/android/hwcamera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/hwcamera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1407
    new-instance v1, Lcom/android/hwcamera/VideoModule$VideoNamer;

    invoke-direct {v1}, Lcom/android/hwcamera/VideoModule$VideoNamer;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/VideoModule;->mVideoNamer:Lcom/android/hwcamera/VideoModule$VideoNamer;

    .line 1408
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->doVideoRecordRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1409
    :cond_a
    const-string v1, "CAM_VideoModule"

    const-string v2, "FLOW onResumeAfterSuper end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 2

    .prologue
    .line 1346
    const-string v0, "CAM_VideoModule"

    const-string v1, "FLOW onResumeBeforeSuper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    .line 1348
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/hwcamera/Util;->enableMenu(Z)V

    .line 1349
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/android/hwcamera/OnClickAttr;
    .end annotation

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->stopVideoRecording()Z

    .line 1024
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoModule;->doReturnToCaller(Z)V

    .line 1025
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/android/hwcamera/OnClickAttr;
    .end annotation

    .prologue
    .line 1018
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoModule;->doReturnToCaller(Z)V

    .line 1019
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"
    .annotation runtime Lcom/android/hwcamera/OnClickAttr;
    .end annotation

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->startPlayVideoActivity()V

    .line 1014
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/android/hwcamera/OnClickAttr;
    .end annotation

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1033
    :goto_0
    return-void

    .line 1031
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->hideAlert()V

    .line 1032
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->deleteCurrentVideo()V

    goto :goto_0
.end method

.method public onSdCardRemoved()V
    .locals 3

    .prologue
    .line 4258
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getStorageService()Lcom/android/hwcamera/storage/StorageService;

    move-result-object v0

    .line 4259
    .local v0, storageService:Lcom/android/hwcamera/storage/StorageService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/hwcamera/storage/StorageService;->isActualSaveToSdCard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->stopVideoRecording()Z

    .line 4261
    :cond_0
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->onSwitchChanged(Z)Z

    .line 4263
    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Lcom/android/hwcamera/CameraPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 3425
    const/4 v0, 0x0

    .line 3426
    .local v0, prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/CameraPreference;>;"
    if-nez p1, :cond_0

    .line 3427
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_camera_restore_key"

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->listPrefsExceptKey(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3432
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoModule;->onSharedPreferencesChanged(Ljava/util/List;)V

    .line 3433
    return-void

    .line 3429
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/CameraPreference;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3430
    .restart local v0       #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/CameraPreference;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onSharedPreferencesChanged(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/hwcamera/CameraPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3393
    .local p1, cameraPreferences:Ljava/util/List;,"Ljava/util/List<+Lcom/android/hwcamera/CameraPreference;>;"
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 3421
    :goto_0
    return-void

    .line 3394
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    monitor-enter v2

    .line 3397
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 3420
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3398
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoModule;->processPreferences(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v2

    goto :goto_0

    .line 3401
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->updateEffectSelection()Z

    move-result v1

    if-eqz v1, :cond_3

    monitor-exit v2

    goto :goto_0

    .line 3403
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->readVideoPreferences()V

    .line 3404
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mCaptureTimeLapse:Z

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoModule;->showTimeLapseUI(Z)V

    .line 3406
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3407
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewWidth:I

    if-ne v1, v3, :cond_4

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v3, p0, Lcom/android/hwcamera/VideoModule;->mDesiredPreviewHeight:I

    if-eq v1, v3, :cond_6

    .line 3409
    :cond_4
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3410
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->stopPreview()V

    .line 3415
    :goto_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 3416
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->startPreview()V

    .line 3420
    :goto_2
    monitor-exit v2

    goto :goto_0

    .line 3412
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/hwcamera/EffectsRecorder;->release()V

    .line 3413
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/VideoModule;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    goto :goto_1

    .line 3418
    :cond_6
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .prologue
    .line 4068
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1163
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isClickToGallery()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mSnapshotInProgress:Z

    if-eqz v2, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->collapseCameraControls()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mSwitchingCamera:Z

    if-nez v2, :cond_0

    .line 1166
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->isRecording()Z

    move-result v1

    .line 1168
    .local v1, stop:Z
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 1169
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 1170
    .local v0, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v0, :cond_2

    .line 1171
    invoke-virtual {v0, v3}, Lcom/android/hwcamera/VirtualButton;->enableVirtualButton(Z)V

    .line 1177
    :cond_2
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_4

    .line 1178
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const-wide/16 v4, 0x898

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1181
    :cond_4
    if-eqz v1, :cond_5

    .line 1182
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->onStopVideoRecording()V

    goto :goto_0

    .line 1184
    :cond_5
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->startVideoRecording()V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 1220
    return-void
.end method

.method public onShutterButtonLongClick(Z)Z
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1090
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3671
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3672
    const v0, 0x7f0d0026

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoModule;->showOnscreenToast(I)V

    .line 3710
    :cond_0
    :goto_0
    return-void

    .line 3676
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3682
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->removeTopLevelPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3685
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mStartTragetTracking:Z

    if-eqz v0, :cond_2

    .line 3686
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/VideoModule;->touchTarget(II)V

    goto :goto_0

    .line 3691
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 3692
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/hwcamera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 4187
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/FocusOverlayManager;->setPreviewSize(II)V

    .line 4188
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 821
    return-void
.end method

.method public onTargetDetected(Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)V
    .locals 2
    .parameter "fouceTargetData"

    .prologue
    .line 4136
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mStartTragetTracking:Z

    if-nez v0, :cond_1

    .line 4142
    :cond_0
    :goto_0
    return-void

    .line 4138
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4139
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v0, :cond_0

    .line 4140
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getFocusPolicyService()Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0, v1, p1}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->onTargetDetected(Lcom/android/hwcamera/ui/TargetView;Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    move-result-object p1

    .line 4141
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/ui/TargetView;->setTargetView(Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1637
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1638
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->keepScreenOnAwhile()V

    .line 1640
    :cond_0
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 2

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->removeTopLevelPopupForGoogle()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->removeTopLevelPopupForUs()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public setBeautyProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 4212
    return-void
.end method

.method public setFocusParameters()V
    .locals 0

    .prologue
    .line 4172
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setCameraParameters()V

    .line 4173
    return-void
.end method

.method public setMeteringParameters()V
    .locals 0

    .prologue
    .line 4178
    return-void
.end method

.method public showOnscreenHint(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 4233
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/hwcamera/tips/TipsService;->makeTip(II)V

    .line 4234
    :cond_0
    return-void
.end method

.method public showOnscreenHintDelay(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 4243
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/hwcamera/tips/TipsService;->makeTipDelay(II)V

    .line 4244
    :cond_0
    return-void
.end method

.method public showOnscreenHintImmediately(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 4238
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/hwcamera/tips/TipsService;->makeTipImmediately(II)V

    .line 4239
    :cond_0
    return-void
.end method

.method public showOnscreenToast(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 4253
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4254
    return-void
.end method

.method showVideoSnapshotUI(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 3652
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoModule;->canVideoSnapshot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3653
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 3654
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/hwcamera/CameraScreenNail;

    iget v1, p0, Lcom/android/hwcamera/VideoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraScreenNail;->animateFlash(I)V

    .line 3659
    :cond_0
    :goto_0
    return-void

    .line 3656
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/PreviewFrameLayout;->showBorder(Z)V

    goto :goto_0
.end method

.method public showVolumSnapShotHint()V
    .locals 4

    .prologue
    const/16 v3, 0x13

    .line 4295
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4296
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4298
    :cond_0
    return-void
.end method

.method public startFaceDetection()V
    .locals 0

    .prologue
    .line 4164
    return-void
.end method

.method public stopFaceDetection()V
    .locals 0

    .prologue
    .line 4168
    return-void
.end method

.method public updateCameraAppView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3733
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3747
    :cond_0
    :goto_0
    return-void

    .line 3736
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-nez v0, :cond_3

    .line 3737
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3738
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mRestoreFlash:Z

    goto :goto_0

    .line 3741
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mRestoreFlash:Z

    .line 3742
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setCameraParameters()V

    goto :goto_0

    .line 3743
    :cond_3
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoModule;->mRestoreFlash:Z

    if-eqz v0, :cond_0

    .line 3744
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoModule;->mRestoreFlash:Z

    .line 3745
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setCameraParameters()V

    goto :goto_0
.end method

.method public updateCameraFocusParameters(Z)V
    .locals 3
    .parameter "isForce"

    .prologue
    .line 4082
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    .line 4094
    :cond_0
    :goto_0
    return-void

    .line 4084
    :cond_1
    const-string v1, "continuous-video"

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoModule;->mStartTragetTracking:Z

    if-eqz v1, :cond_0

    .line 4085
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/VideoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->isFocusStateIdel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4088
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoModule;->setCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4089
    :catch_0
    move-exception v0

    .line 4090
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CAM_VideoModule"

    const-string v2, "camera allready closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateColorEffect(Ljava/lang/String;)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 4229
    return-void
.end method
