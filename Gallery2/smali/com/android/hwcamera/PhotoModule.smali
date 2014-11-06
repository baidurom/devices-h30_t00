.class public Lcom/android/hwcamera/PhotoModule;
.super Lcom/android/hwcamera/AbstractCameraModule;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/hwcamera/FocusOverlayManager$Listener;
.implements Lcom/android/hwcamera/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/hwcamera/LocationManager$Listener;
.implements Lcom/android/hwcamera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/hwcamera/OnShutterButtonListener;
.implements Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;
.implements Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;
.implements Lcom/android/hwcamera/VoiceManager$OnVoiceShutterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/PhotoModule$30;,
        Lcom/android/hwcamera/PhotoModule$PictureUri;,
        Lcom/android/hwcamera/PhotoModule$ImageNamer;,
        Lcom/android/hwcamera/PhotoModule$ImageSaver;,
        Lcom/android/hwcamera/PhotoModule$SaveRequest;,
        Lcom/android/hwcamera/PhotoModule$AutoFocusMoveCallback;,
        Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;,
        Lcom/android/hwcamera/PhotoModule$RawPictureCallback;,
        Lcom/android/hwcamera/PhotoModule$PostViewPictureCallback;,
        Lcom/android/hwcamera/PhotoModule$ShutterCallback;,
        Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;,
        Lcom/android/hwcamera/PhotoModule$MainHandler;,
        Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;,
        Lcom/android/hwcamera/PhotoModule$VoiceVisualizer;
    }
.end annotation


# static fields
.field private static final CAMERA_DISABLED:I = 0xc

.field private static final CAMERA_OPEN_DONE:I = 0x9

.field private static final CAMERA_TIMER_MSG:I = 0xd

.field private static final CHECK_DISPLAY_ROTATION:I = 0x5

.field private static final CLEAR_SCREEN_DELAY:I = 0x3

.field private static final DISABLE_SOUND_SHUTTER:I = 0x1a

.field public static final DO_NOT_REMAIND_SMAILLPREVIEW_KEY:Ljava/lang/String; = "DO_NOT_REMAIND_SMAILLPREVIEW_KEY"

.field private static final ENABLE_FLASH_FOR_HWSCOPE_MSG:I = 0x17

.field private static final ENABLE_FOCUS_UI_SHOW:I = 0x1e

.field private static final EXTRA_FAST_CAPTURE:Ljava/lang/String; = "android.intent.extra.fastCapture"

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final EYE_CORRECTION_HINT_MSG:I = 0xf

.field private static final FIRST_TIME_INIT:I = 0x2

.field private static final FOCUSING:I = 0x2

.field private static final HIDE_ALL_HINT:I = 0x19

.field private static final HIDE_SMALL_PREVIEW_TIPS:I = 0x1d

.field private static final HIDE_SMALL_PREVIEW_TIPS_DELAY:J = 0x2710L

.field private static final IDLE:I = 0x1

.field private static final KEEP_CAMERA_TIMEOUT:I = 0x3e8

.field private static final KEEP_SCREEN_ON_AWHILE:I = 0x1c

.field private static final OPEN_CAMERA_FAIL:I = 0xb

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final REQUEST_CROP:I = 0x3e8

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SETUP_PREVIEW:I = 0x1

.field private static final SET_BEAUTY_PROGESS:I = 0x12

.field private static final SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x4

.field private static final SET_FLASH_MODE:I = 0x11

.field private static final SHOW_VOLUM_SNAP_SHOT_HINT:I = 0x16

.field private static final SMILE_CAPTURE_DELEAY:I = 0xe

.field private static final SNAPSHOT_IN_PROGRESS:I = 0x3

.field private static final START_FACE_DETECTION_UI:I = 0x603

.field private static final START_PREVIEW_DONE:I = 0xa

.field private static final START_SHOW_TARGAET_IMAGE:I = 0x14

.field private static final START_SOUND_SHUTTER:I = 0x18

.field private static final START_TARGET_TRACKING_UI:I = 0x602

.field private static final STOP_TARGET_TRACKING_UI:I = 0x601

.field private static final SWITCHING_CAMERA:I = 0x4

.field private static final SWITCH_CAMERA:I = 0x7

.field private static final SWITCH_CAMERA_START_ANIMATION:I = 0x8

.field private static final TAG:Ljava/lang/String; = "CAM_PhotoModule"

.field private static THRESHOLD_SCOPE_VALUE:I = 0x0

.field private static final TOAST_HINTS_MSG:I = 0x10

.field private static final TOAST_HINTS_RUNNABLE_MSG:I = 0x15

.field private static final UPDATE_METER_IND_DELAY:I = 0x1f

.field private static final UPDATE_PARAM_ACTIONPREFERENCE:I = 0x8

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_METERING:I = 0x10

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field private static final UPDATE_SHOOT_MODE_UI:I = 0x13

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"


# instance fields
.field private imageCaptureShow:Ljava/lang/Runnable;

.field private mActivity:Lcom/android/hwcamera/CameraActivity;

.field private mAeLockSupported:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mAutoFocusCallback:Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

.field private mCameraDisabled:Z

.field private mCameraDisplayOrientation:I

.field private mCameraId:I

.field mCameraStartUpThread:Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

.field private mCameraState:I

.field private volatile mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mCancelTimer:Z

.field public mCaptureStartTime:J

.field private mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoFastCaptureRunnable:Ljava/lang/Runnable;

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private final mErrorCallback:Lcom/android/hwcamera/CameraErrorCallback;

.field private mFaceDetectionStarted:Z

.field private mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

.field private mFakePictureNum:I

.field private mFastCapture:Z

.field private mFirstTimeInitialized:Z

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

.field private mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

.field private mFocusStartTime:J

.field private final mFormatter:Ljava/util/Formatter;

.field private final mFormatterArgs:[Ljava/lang/Object;

.field private mGenUriEarlier:Z

.field private mGestures:Lcom/android/hwcamera/PreviewGestures;

.field private final mHandler:Landroid/os/Handler;

.field private mImageNamer:Lcom/android/hwcamera/PhotoModule$ImageNamer;

.field private mImageSaver:Lcom/android/hwcamera/PhotoModule$ImageSaver;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsAutoFoucsMovingEnabled:Z

.field private mIsCounterDowning:Z

.field private mIsHwScopeStarted:Z

.field private mIsImageCaptureIntent:Z

.field private mIsLittlePreviewDrawing:Z

.field private mIsLongPressBurstEnable:Z

.field private mIsNeedCount:Z

.field private mIsShowSmallPreviewTipsonFrameAvailable:Z

.field private mIsSmileCaptureState:Z

.field private mIsTouchCapture:Z

.field private mIsTouchSnapshot:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLastShootMode:Ljava/lang/String;

.field private mLastSnapShotTime:J

.field private mLocationManager:Lcom/android/hwcamera/LocationManager;

.field private mLongPressBurst:Z

.field private mLongPressBurstSupported:Z

.field private mMavManager:Lcom/android/hwcamera/autorama/MavManager;

.field private mMaxBackStoreNum:I

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMenuController:Lcom/android/hwcamera/settings/MenuController;

.field private mMeteringAreaIndicator:Lcom/android/hwcamera/ui/RotateLayout;

.field private mMeteringAreaSupported:Z

.field private mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

.field private mMusicVolumnBeforeTaken:I

.field private mOnResumeTime:J

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPaused:Z

.field protected mPendingSwitchCameraId:I

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;

.field private mPictureRemains:I

.field private final mPostViewPictureCallback:Lcom/android/hwcamera/PhotoModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

.field private mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

.field private mQuickCapture:Z

.field private mQuickUriList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/hwcamera/PhotoModule$PictureUri;",
            ">;"
        }
    .end annotation
.end field

.field private final mRawPictureCallback:Lcom/android/hwcamera/PhotoModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

.field private mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

.field private mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewRetakeButton:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneCount:I

.field private mSceneMode:Ljava/lang/String;

.field private mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

.field private mShouldFastCapture:Z

.field private mShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private final mShutterCallback:Lcom/android/hwcamera/PhotoModule$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSmallPreviewOkButtonListener:Landroid/view/View$OnClickListener;

.field private mSmileRepeateCount:I

.field private mSnapshotOnIdle:Z

.field private mSoundShutter:Lcom/android/hwcamera/SoundShutter;

.field private mSoundShutterEnable:Z

.field mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mStartTragetTracking:Z

.field private mSurfaceTexture:Ljava/lang/Object;

.field private mTargetView:Lcom/android/hwcamera/ui/TargetView;

.field private mTimerAnimation:Landroid/view/animation/Animation;

.field private mTimerAnimationView:Landroid/widget/TextView;

.field private mTimerValue:I

.field private mTipsService:Lcom/android/hwcamera/tips/TipsService;

.field private mUpdateSet:I

.field private mVirtualButtonShutterRunnable:Ljava/lang/Runnable;

.field private mVoiceManager:Lcom/android/hwcamera/VoiceManager;

.field private mVoiceVisualizer:Lcom/android/hwcamera/PhotoModule$VoiceVisualizer;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 446
    const/16 v0, 0xc8

    sput v0, Lcom/android/hwcamera/PhotoModule;->THRESHOLD_SCOPE_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/AbstractCameraModule;-><init>()V

    .line 246
    iput v4, p0, Lcom/android/hwcamera/PhotoModule;->mSceneCount:I

    .line 249
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    .line 254
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mIsTouchCapture:Z

    .line 256
    new-instance v0, Lcom/android/hwcamera/PhotoModule$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/PhotoModule$1;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSmallPreviewOkButtonListener:Landroid/view/View$OnClickListener;

    .line 290
    iput v6, p0, Lcom/android/hwcamera/PhotoModule;->mPendingSwitchCameraId:I

    .line 312
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mIsLongPressBurstEnable:Z

    .line 321
    iput v4, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    .line 328
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mFaceDetectionStarted:Z

    .line 346
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mStartTragetTracking:Z

    .line 348
    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;

    .line 351
    iput-boolean v5, p0, Lcom/android/hwcamera/PhotoModule;->mIsAutoFoucsMovingEnabled:Z

    .line 357
    invoke-static {}, Lcom/android/hwcamera/CustomConfiguration;->getInstance()Lcom/android/hwcamera/CustomConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    .line 365
    new-instance v0, Lcom/android/hwcamera/PhotoModule$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/PhotoModule$2;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 374
    new-instance v0, Lcom/android/hwcamera/PhotoModule$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/PhotoModule$3;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mVirtualButtonShutterRunnable:Ljava/lang/Runnable;

    .line 382
    new-instance v0, Lcom/android/hwcamera/PhotoModule$4;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/PhotoModule$4;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mDoFastCaptureRunnable:Ljava/lang/Runnable;

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mBuilder:Ljava/lang/StringBuilder;

    .line 393
    new-instance v0, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFormatter:Ljava/util/Formatter;

    .line 394
    new-array v0, v5, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFormatterArgs:[Ljava/lang/Object;

    .line 430
    iput v4, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    .line 431
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mSnapshotOnIdle:Z

    .line 438
    iput v4, p0, Lcom/android/hwcamera/PhotoModule;->mTimerValue:I

    .line 439
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    .line 440
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mCancelTimer:Z

    .line 445
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mIsHwScopeStarted:Z

    .line 449
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mIsTouchSnapshot:Z

    .line 453
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mIsSmileCaptureState:Z

    .line 454
    iput v4, p0, Lcom/android/hwcamera/PhotoModule;->mSmileRepeateCount:I

    .line 456
    new-instance v0, Lcom/android/hwcamera/PhotoModule$ShutterCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/PhotoModule$ShutterCallback;-><init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShutterCallback:Lcom/android/hwcamera/PhotoModule$ShutterCallback;

    .line 457
    new-instance v0, Lcom/android/hwcamera/PhotoModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/PhotoModule$PostViewPictureCallback;-><init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPostViewPictureCallback:Lcom/android/hwcamera/PhotoModule$PostViewPictureCallback;

    .line 459
    new-instance v0, Lcom/android/hwcamera/PhotoModule$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/PhotoModule$RawPictureCallback;-><init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRawPictureCallback:Lcom/android/hwcamera/PhotoModule$RawPictureCallback;

    .line 461
    new-instance v0, Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;-><init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mAutoFocusCallback:Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;

    .line 463
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/hwcamera/PhotoModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/PhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 468
    new-instance v0, Lcom/android/hwcamera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/hwcamera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mErrorCallback:Lcom/android/hwcamera/CameraErrorCallback;

    .line 487
    iput v4, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    .line 488
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mMaxBackStoreNum:I

    .line 501
    new-instance v0, Lcom/android/hwcamera/PhotoModule$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/PhotoModule$MainHandler;-><init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    .line 506
    iput-boolean v5, p0, Lcom/android/hwcamera/PhotoModule;->mShouldFastCapture:Z

    .line 509
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 513
    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    .line 515
    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    .line 516
    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    .line 520
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/hwcamera/PhotoModule;->mLastSnapShotTime:J

    .line 521
    iput-boolean v5, p0, Lcom/android/hwcamera/PhotoModule;->mIsNeedCount:Z

    .line 526
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mLongPressBurst:Z

    .line 534
    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    .line 535
    iput v6, p0, Lcom/android/hwcamera/PhotoModule;->mMusicVolumnBeforeTaken:I

    .line 536
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    .line 538
    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceManager:Lcom/android/hwcamera/VoiceManager;

    .line 544
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mGenUriEarlier:Z

    .line 546
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mQuickUriList:Ljava/util/Queue;

    .line 549
    new-instance v0, Lcom/android/hwcamera/PhotoModule$VoiceVisualizer;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/PhotoModule$VoiceVisualizer;-><init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceVisualizer:Lcom/android/hwcamera/PhotoModule$VoiceVisualizer;

    .line 5945
    new-instance v0, Lcom/android/hwcamera/PhotoModule$27;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/PhotoModule$27;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->imageCaptureShow:Ljava/lang/Runnable;

    .line 6031
    return-void

    :cond_0
    move-object v0, v1

    .line 463
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/hwcamera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/android/hwcamera/PhotoModule;->mIsNeedCount:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraManager$CameraProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/CameraManager$CameraProxy;)Lcom/android/hwcamera/CameraManager$CameraProxy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/hwcamera/PhotoModule;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/FocusOverlayManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/hwcamera/PhotoModule;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule;->handleVirtualButtonDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/android/hwcamera/PhotoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/hwcamera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-wide p1, p0, Lcom/android/hwcamera/PhotoModule;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->hideSmallPreviewTips()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/hwcamera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/hwcamera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeAfterCameraOpen()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/hwcamera/PhotoModule;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->handleVirtualButtonUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initPanorama()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/PreviewFrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/hwcamera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mFastCapture:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/hwcamera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mShouldFastCapture:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/hwcamera/PhotoModule;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mDoFastCaptureRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/hwcamera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->isBeautyMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3602(Lcom/android/hwcamera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/android/hwcamera/PhotoModule;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/android/hwcamera/PhotoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/hwcamera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule;->processForTimer(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/tips/TipsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->setFlashMode()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/TargetView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->startFaceDetectionUI()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/hwcamera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/hwcamera/PhotoModule;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule;->processUIforShootMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/settings/MenuController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/SoundShutter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->keepScreenOnAwhile()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/hwcamera/PhotoModule;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule;->enableAutoFoucsMoving(Z)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/hwcamera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomValue:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/hwcamera/PhotoModule;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput p1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomValue:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/hwcamera/PhotoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule;->updateCameraZoomValue(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/ColorEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/ui/ColorEffect;)Lcom/android/hwcamera/ui/ColorEffect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CustomConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/hwcamera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->needHwScope()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->processHwScope()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ZoomController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/indicator/FaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/hwcamera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/android/hwcamera/PhotoModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$6002(Lcom/android/hwcamera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-wide p1, p0, Lcom/android/hwcamera/PhotoModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$6100(Lcom/android/hwcamera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/android/hwcamera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$6102(Lcom/android/hwcamera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-wide p1, p0, Lcom/android/hwcamera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$6200(Lcom/android/hwcamera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/android/hwcamera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$6202(Lcom/android/hwcamera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-wide p1, p0, Lcom/android/hwcamera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$6300(Lcom/android/hwcamera/PhotoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$6400(Lcom/android/hwcamera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    return v0
.end method

.method static synthetic access$6500(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/hwcamera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsAutoFoucsMovingEnabled:Z

    return v0
.end method

.method static synthetic access$6800(Lcom/android/hwcamera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    return v0
.end method

.method static synthetic access$6900(Lcom/android/hwcamera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mMaxBackStoreNum:I

    return v0
.end method

.method static synthetic access$7000(Lcom/android/hwcamera/PhotoModule;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->disableOperations()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/PreviewGestures;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->enableOperations()V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->restoreDefaults()V

    return-void
.end method

.method static synthetic access$7502(Lcom/android/hwcamera/PhotoModule;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$7600(Lcom/android/hwcamera/PhotoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    return v0
.end method

.method static synthetic access$7700(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/BeautyEffect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/android/hwcamera/PhotoModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-wide p1, p0, Lcom/android/hwcamera/PhotoModule;->mLastSnapShotTime:J

    return-wide p1
.end method

.method static synthetic access$8100(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/indicator/FocusIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/hwcamera/PhotoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$8300(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->doAttach()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->showSmallPreviewTipsUI()V

    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 1205
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 1206
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/hwcamera/PhotoModule$5;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$5;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1213
    return-void
.end method

.method private canStartLongPressBurst()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2514
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    .line 2516
    .local v0, currentColorEffect:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/hwcamera/PhotoModule;->mLongPressBurstSupported:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/hwcamera/PhotoModule;->mIsLongPressBurstEnable:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->VOICE_PHOTO:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->METER:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->BURST:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->HDR:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->PANORAMA:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->AUTORAMA:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->MAV:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    if-eq v1, v2, :cond_1

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mono"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 3405
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canUseTimer()Z
    .locals 2

    .prologue
    .line 2697
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->BURST:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->PANORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mLongPressBurst:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->AUTORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->MAV:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->METER:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTimer()V
    .locals 2

    .prologue
    .line 2593
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    if-nez v0, :cond_0

    .line 2597
    :goto_0
    return-void

    .line 2594
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mCancelTimer:Z

    .line 2595
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2596
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->onTimerEnd()V

    goto :goto_0
.end method

.method private checkPictureRemains()I
    .locals 8

    .prologue
    .line 1019
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v5, "pref_camera_picturesize_key"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1020
    .local v3, pictureSize:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;

    invoke-virtual {v4, v3}, Lcom/android/hwcamera/PictureRemaining;->getPictureSize(Ljava/lang/String;)I

    move-result v2

    .line 1022
    .local v2, onePictureSize:I
    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getAvailableSpace()J

    move-result-wide v0

    .line 1023
    .local v0, availableSpace:J
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkPictureRemains availableSpace="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const-wide/32 v4, 0x1400000

    sub-long v4, v0, v4

    int-to-long v6, v2

    div-long/2addr v4, v6

    long-to-int v4, v4

    return v4
.end method

.method private checkPictureRemainsTextShow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1029
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v2, 0x7f1001d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateTextView;

    .line 1030
    .local v0, remainPicText:Lcom/android/hwcamera/ui/RotateTextView;
    if-nez v0, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mPictureRemains:I

    if-gez v1, :cond_2

    .line 1035
    iput v3, p0, Lcom/android/hwcamera/PhotoModule;->mPictureRemains:I

    .line 1038
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mPictureRemains:I

    const/16 v2, 0x63

    if-le v1, v2, :cond_3

    .line 1039
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RotateTextView;->setVisibility(I)V

    goto :goto_0

    .line 1042
    :cond_3
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mPictureRemains:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/ui/RotateTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private checkSceneMode()Z
    .locals 2

    .prologue
    .line 4261
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "night"

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "portrait"

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "night-portrait"

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "landscape"

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "beach"

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sports"

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "theatre"

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "snow"

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "candlelight"

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hwauto"

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hdr"

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3696
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 3697
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 3698
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->stopFaceDetection()V

    .line 3700
    iput v2, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    .line 3702
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3703
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->release()V

    .line 3704
    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 3705
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 3707
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 3708
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->onCameraReleased()V

    .line 3712
    :cond_0
    return-void
.end method

.method private closeHwScopeIfNeeded()V
    .locals 3

    .prologue
    .line 3888
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsHwScopeStarted:Z

    if-eqz v0, :cond_0

    .line 3890
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getFlashEnable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/PhotoModule;->enableFlashForHwScope(Z)V

    .line 3892
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "key-huawei-scope"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3893
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsHwScopeStarted:Z

    .line 3895
    :cond_0
    return-void
.end method

.method private collapseCameraControlsForGoogle()Z
    .locals 1

    .prologue
    .line 2229
    const/4 v0, 0x0

    .line 2230
    .local v0, ret:Z
    return v0
.end method

.method private collapseCameraControlsForUs()Z
    .locals 2

    .prologue
    .line 2220
    const/4 v0, 0x0

    .line 2221
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v1}, Lcom/android/hwcamera/settings/MenuController;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2222
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v1}, Lcom/android/hwcamera/settings/MenuController;->popupDismissed()V

    .line 2223
    const/4 v0, 0x1

    .line 2225
    :cond_0
    return v0
.end method

.method private confirmBackPressDailog()V
    .locals 6

    .prologue
    .line 4681
    new-instance v3, Lcom/android/hwcamera/PhotoModule$18;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/PhotoModule$18;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    .line 4687
    .local v3, positiveRunable:Ljava/lang/Runnable;
    new-instance v4, Lcom/android/hwcamera/PhotoModule$19;

    invoke-direct {v4, p0}, Lcom/android/hwcamera/PhotoModule$19;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    .line 4692
    .local v4, naRunable:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f0d0159

    const v2, 0x7f0d0158

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/hwcamera/Util;->initDailog(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mAlertDialog:Landroid/app/AlertDialog;

    .line 4693
    return-void
.end method

.method private decordPictureForReview([B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "jpegData"

    .prologue
    .line 4608
    const v2, 0x15f90

    invoke-static {p1, v2}, Lcom/android/hwcamera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4610
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/android/hwcamera/Exif;->getOrientation([B)I

    move-result v2

    iget v3, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    sub-int v1, v2, v3

    .line 4611
    .local v1, degree:I
    :goto_0
    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4613
    return-object v0

    .line 4610
    .end local v1           #degree:I
    :cond_0
    invoke-static {p1}, Lcom/android/hwcamera/Exif;->getOrientation([B)I

    move-result v2

    iget v3, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x5a

    goto :goto_0
.end method

.method private disableOperations()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1863
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 1864
    .local v0, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1865
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 1866
    :cond_0
    if-eqz v0, :cond_1

    .line 1867
    invoke-virtual {v0, v2}, Lcom/android/hwcamera/VirtualButton;->enableVirtualButton(Z)V

    .line 1869
    :cond_1
    return-void
.end method

.method private disableZoom()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1313
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_zoom_value_key"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 1314
    iput v2, p0, Lcom/android/hwcamera/PhotoModule;->mZoomValue:I

    .line 1315
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1317
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v0, :cond_1

    .line 1321
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 1323
    :cond_1
    return-void
.end method

.method private dismissPopup(ZZ)V
    .locals 1
    .parameter "topOnly"
    .parameter "fullScreen"

    .prologue
    .line 5396
    if-eqz p2, :cond_0

    .line 5397
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showUI()V

    .line 5399
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuController;->popupDismissed()V

    .line 5400
    return-void
.end method

.method private doAttach()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, -0x1

    .line 2328
    iget-boolean v10, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-eqz v10, :cond_0

    .line 2412
    :goto_0
    return-void

    .line 2332
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mJpegImageData:[B

    .line 2334
    .local v2, data:[B
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mCropValue:Ljava/lang/String;

    if-nez v10, :cond_3

    .line 2339
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_2

    .line 2340
    const/4 v6, 0x0

    .line 2342
    .local v6, outputStream:Ljava/io/OutputStream;
    :try_start_0
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/android/hwcamera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 2344
    if-eqz v6, :cond_1

    .line 2345
    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 2346
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 2350
    :cond_1
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lcom/android/hwcamera/CameraActivity;->setResultEx(I)V

    .line 2351
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/hwcamera/CameraActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2355
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2352
    :catch_0
    move-exception v10

    .line 2355
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v10

    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 2358
    .end local v6           #outputStream:Ljava/io/OutputStream;
    :cond_2
    invoke-static {v2}, Lcom/android/hwcamera/Exif;->getOrientation([B)I

    move-result v5

    .line 2359
    .local v5, orientation:I
    const v10, 0xc800

    invoke-static {v2, v10}, Lcom/android/hwcamera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2360
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v5}, Lcom/android/hwcamera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2361
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "inline-data"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "data"

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Lcom/android/hwcamera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 2363
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/hwcamera/CameraActivity;->finish()V

    goto :goto_0

    .line 2367
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #orientation:I
    :cond_3
    const/4 v9, 0x0

    .line 2368
    .local v9, tempUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 2370
    .local v8, tempStream:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v11, "crop-temp"

    invoke-virtual {v10, v11}, Lcom/android/hwcamera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 2372
    .local v7, path:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_4

    .line 2373
    const-string v10, "CAM_PhotoModule"

    const-string v11, "delete file failure."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    :cond_4
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v11, "crop-temp"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/hwcamera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 2377
    invoke-virtual {v8, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2378
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 2379
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 2389
    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2392
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2393
    .local v4, newExtras:Landroid/os/Bundle;
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mCropValue:Ljava/lang/String;

    const-string v11, "circle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2394
    const-string v10, "circleCrop"

    const-string v11, "true"

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    :cond_5
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v10, :cond_7

    .line 2397
    const-string v10, "output"

    iget-object v11, p0, Lcom/android/hwcamera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2401
    :goto_1
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/hwcamera/CameraActivity;->isSecureCamera()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2402
    const-string v10, "showWhenLocked"

    invoke-virtual {v4, v10, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2405
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.camera.action.CROP"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2407
    .local v1, cropIntent:Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2408
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2410
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/16 v11, 0x3e8

    invoke-virtual {v10, v1, v11}, Lcom/android/hwcamera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2380
    .end local v1           #cropIntent:Landroid/content/Intent;
    .end local v4           #newExtras:Landroid/os/Bundle;
    .end local v7           #path:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 2381
    .local v3, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/hwcamera/CameraActivity;->setResultEx(I)V

    .line 2382
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/hwcamera/CameraActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2389
    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 2384
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 2385
    .local v3, ex:Ljava/io/IOException;
    :try_start_3
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/hwcamera/CameraActivity;->setResultEx(I)V

    .line 2386
    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/hwcamera/CameraActivity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2389
    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v3           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v10

    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    .line 2399
    .restart local v4       #newExtras:Landroid/os/Bundle;
    .restart local v7       #path:Ljava/io/File;
    :cond_7
    const-string v10, "return-data"

    invoke-virtual {v4, v10, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private doCancel()V
    .locals 3

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 2416
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->finish()V

    .line 2417
    return-void
.end method

.method private doGpsRecord()V
    .locals 5

    .prologue
    .line 5126
    const/4 v0, 0x0

    .line 5128
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_recordlocation_key"

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0115

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5131
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_recordlocation_key"

    const-string v3, "off"

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 5133
    const/4 v0, 0x1

    .line 5136
    :cond_0
    if-nez v0, :cond_2

    .line 5138
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    if-eqz v1, :cond_1

    .line 5139
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 5147
    :cond_1
    :goto_0
    return-void

    .line 5145
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initGpsDialog()V

    goto :goto_0
.end method

.method private doTimerAnimation(I)V
    .locals 4
    .parameter "timer"

    .prologue
    .line 2638
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animation for timer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTimerAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_0

    .line 2640
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/high16 v2, 0x7f05

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTimerAnimation:Landroid/view/animation/Animation;

    .line 2643
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f100013

    .line 2645
    .local v0, resId:I
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTimerAnimationView:Landroid/widget/TextView;

    .line 2647
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    if-nez v1, :cond_1

    .line 2648
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->playSound(I)V

    .line 2651
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTimerAnimationView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2652
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTimerAnimationView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2653
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTimerAnimationView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mTimerAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2654
    return-void

    .line 2643
    .end local v0           #resId:I
    :cond_2
    const v0, 0x7f100210

    goto :goto_0
.end method

.method private doUpdateFlashModeUI()V
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getFlashEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/PhotoModule;->updateFlashUI(Z)V

    .line 1140
    :cond_0
    return-void
.end method

.method private enableAutoFoucsMoving(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 5547
    iput-boolean p1, p0, Lcom/android/hwcamera/PhotoModule;->mIsAutoFoucsMovingEnabled:Z

    .line 5548
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v0}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->clear()V

    .line 5550
    :cond_0
    return-void
.end method

.method private enableFlashForHwScope(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/16 v3, 0x17

    .line 3899
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3900
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3901
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3903
    return-void
.end method

.method private enableHdrMovieIfNeeded()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 6340
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-nez v4, :cond_0

    .line 6353
    :goto_0
    return-void

    .line 6341
    :cond_0
    iget v4, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    iget-object v5, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6343
    .local v0, defaultQuality:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v5, "pref_video_quality_key"

    invoke-virtual {v4, v5, v0}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6346
    .local v3, videoQuality:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6347
    .local v2, quality:I
    iget v4, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v4, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 6348
    .local v1, profile:Landroid/media/CamcorderProfile;
    iget v4, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v5, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v5, 0x438

    if-lt v4, v5, :cond_1

    .line 6349
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "pref_hdr_movie_key"

    aput-object v6, v5, v7

    const-string v6, "off"

    aput-object v6, v5, v8

    invoke-virtual {v4, v7, v5}, Lcom/android/hwcamera/settings/MenuController;->overrideSettings(Z[Ljava/lang/String;)V

    goto :goto_0

    .line 6351
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "pref_hdr_movie_key"

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/settings/MenuController;->clearOverrideSettings([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableOperations()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1872
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 1873
    .local v0, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isProcessIng()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-nez v1, :cond_0

    .line 1874
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1877
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v1, v1, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-nez v1, :cond_1

    .line 1880
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 1882
    :cond_1
    if-eqz v0, :cond_2

    .line 1883
    invoke-virtual {v0, v2}, Lcom/android/hwcamera/VirtualButton;->enableVirtualButton(Z)V

    .line 1886
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->enableSwitcherAndMenu(Z)V

    .line 1887
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->showShootmodeLayout()V

    .line 1888
    :cond_3
    return-void
.end method

.method private generateUriEarlier(Z)V
    .locals 9
    .parameter "isGenUrlEarlier"

    .prologue
    .line 6070
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mGenUriEarlier:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 6085
    :cond_0
    :goto_0
    return-void

    .line 6074
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mGenUriEarlier:Z

    .line 6075
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 6078
    .local v7, s:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageNamer:Lcom/android/hwcamera/PhotoModule$ImageNamer;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, v7, Landroid/hardware/Camera$Size;->width:I

    iget v5, v7, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/android/hwcamera/PhotoModule;->mJpegRotation:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/PhotoModule$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    .line 6080
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageNamer:Lcom/android/hwcamera/PhotoModule$ImageNamer;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 6082
    .local v8, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mQuickUriList:Ljava/util/Queue;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$PictureUri;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mImageNamer:Lcom/android/hwcamera/PhotoModule$ImageNamer;

    invoke-virtual {v2}, Lcom/android/hwcamera/PhotoModule$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/android/hwcamera/PhotoModule$PictureUri;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 6084
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateUriEarlier, uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultShotMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 6306
    invoke-static {}, Lcom/android/hwcamera/CameraManager;->instance()Lcom/android/hwcamera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraManager;->getCamera()Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v0

    .line 6307
    .local v0, cameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;
    const/4 v2, 0x0

    .line 6309
    .local v2, supportedModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    sget-object v3, Lcom/android/hwcamera/enm/ShotMode;->SINGLE:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v3}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    .line 6315
    :cond_1
    :goto_0
    return-object v1

    .line 6310
    :cond_2
    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getSupportedShootingModes()Ljava/util/List;

    move-result-object v2

    .line 6312
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v4, "pref_camera_shooting_mode_key"

    iget v5, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v3, v4, v5}, Lcom/android/hwcamera/DefaultValue;->getDefaultValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 6313
    .local v1, defaultMode:Ljava/lang/String;
    if-eqz v2, :cond_3

    if-nez v1, :cond_4

    :cond_3
    sget-object v3, Lcom/android/hwcamera/enm/ShotMode;->SINGLE:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v3}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6314
    :cond_4
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6315
    sget-object v3, Lcom/android/hwcamera/enm/ShotMode;->SINGLE:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v3}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getMenuItemValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 4730
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-eqz v0, :cond_0

    .line 4731
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4733
    .end local p2
    :cond_0
    return-object p2
.end method

.method private getPreferredCameraId(Lcom/android/hwcamera/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 2107
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 2108
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2113
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private handleCameraHardButtonDown(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 3605
    iget-boolean v2, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isProcessIng()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3612
    :cond_0
    :goto_0
    return v1

    .line 3607
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getCameraHardButton()Lcom/android/hwcamera/CameraHardButton;

    move-result-object v0

    .line 3608
    .local v0, button:Lcom/android/hwcamera/CameraHardButton;
    if-eqz v0, :cond_2

    .line 3609
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/CameraHardButton;->onCameraHardButtonDown(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 3612
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleCameraHardButtonUp(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3616
    iget-boolean v3, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    if-eqz v3, :cond_0

    .line 3628
    :goto_0
    return v1

    .line 3618
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isProcessIng()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3619
    invoke-direct {p0, v2}, Lcom/android/hwcamera/PhotoModule;->waitProcessDone(Z)V

    goto :goto_0

    .line 3623
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getCameraHardButton()Lcom/android/hwcamera/CameraHardButton;

    move-result-object v0

    .line 3624
    .local v0, button:Lcom/android/hwcamera/CameraHardButton;
    if-eqz v0, :cond_2

    .line 3625
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/CameraHardButton;->onCameraHardButtonUp(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 3628
    goto :goto_0
.end method

.method private handleVirtualButtonDown(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 3632
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3634
    iget-boolean v2, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isProcessIng()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3642
    :cond_0
    :goto_0
    return v1

    .line 3636
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 3637
    .local v0, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v0, :cond_2

    .line 3638
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/VirtualButton;->onVirtualButtonDown(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 3642
    .end local v0           #mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleVirtualButtonUp()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3647
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3648
    iget-boolean v3, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    if-eqz v3, :cond_1

    .line 3661
    :cond_0
    :goto_0
    return v1

    .line 3650
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isProcessIng()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3651
    invoke-direct {p0, v2}, Lcom/android/hwcamera/PhotoModule;->waitProcessDone(Z)V

    goto :goto_0

    .line 3655
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 3656
    .local v0, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v0, :cond_0

    .line 3657
    invoke-virtual {v0}, Lcom/android/hwcamera/VirtualButton;->onVirtualButtonUp()V

    goto :goto_0

    .end local v0           #mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    :cond_3
    move v1, v2

    .line 3661
    goto :goto_0
.end method

.method private hasWindowFocus()Z
    .locals 1

    .prologue
    .line 6225
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method private hidePanoramaLayout()V
    .locals 3

    .prologue
    .line 4471
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100126

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 4472
    .local v0, panoramaPreviewLayout:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 4473
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4475
    :cond_0
    return-void
.end method

.method private hidePostCaptureAlert()V
    .locals 3

    .prologue
    const v2, 0x7f100124

    const/4 v1, 0x0

    .line 4587
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 4588
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->hidePictureReview()V

    .line 4589
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 4590
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 4591
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    if-nez v0, :cond_0

    .line 4592
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 4594
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 4595
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showMenu()V

    .line 4596
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 4598
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isInMeterShootMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4600
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4604
    :cond_1
    return-void
.end method

.method private hideShootModeUI()V
    .locals 2

    .prologue
    .line 5095
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->PANORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5096
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->unInitPanorama()V

    .line 5099
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->processUIforNormal()V

    .line 5100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    .line 5101
    return-void
.end method

.method private hideSmallPreviewTips()V
    .locals 4

    .prologue
    .line 2818
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2820
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-nez v1, :cond_0

    .line 2832
    :goto_0
    return-void

    .line 2821
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    .line 2823
    const v1, 0x7f10020b

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/PhotoModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 2824
    .local v0, ctv:Landroid/widget/CheckedTextView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2825
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getGlobalPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "DO_NOT_REMAIND_SMAILLPREVIEW_KEY"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 2828
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->restoreSmallPreviewTipsUI()V

    .line 2830
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v1}, Lcom/android/hwcamera/tips/TipsService;->resumeTips()V

    goto :goto_0
.end method

.method private inflatePhotoModuleLayout()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 983
    const-string v1, "PhotoModule.inflatePhotoModuleLayout"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 984
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f10013f

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 985
    .local v0, root:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 986
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040049

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 987
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 988
    return-void
.end method

.method private initFastCapturePreferences()V
    .locals 4

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 992
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 993
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_id_key"

    iget v3, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/PhotoModule;->setPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const-string v2, "pref_camera_shooting_mode_key"

    const v3, 0x7f0d00cb

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/PhotoModule;->setPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v2, "pref_camera_coloreffect_key"

    const v3, 0x7f0d0091

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/PhotoModule;->setPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string v2, "pref_camera_contrast_key"

    const v3, 0x7f0d012c

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/PhotoModule;->setPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v2, "pref_camera_saturation_key"

    const v3, 0x7f0d012f

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/PhotoModule;->setPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string v2, "pref_camera_exposure_key"

    const v3, 0x7f0d00b4

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/PhotoModule;->setPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string v2, "pref_camera_brightness_key"

    const v3, 0x7f0d0131

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/PhotoModule;->setPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string v2, "pref_camera_scenemode_key"

    const v3, 0x7f0d00a4

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/PhotoModule;->setPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v2, "pref_camera_iso_key"

    const v3, 0x7f0d00d7

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/PhotoModule;->setPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v2, "pref_camera_whitebalance_key"

    const v3, 0x7f0d009d

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/PhotoModule;->setPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v2, "pref_camera_counter_key"

    const v3, 0x7f0d010a

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/PhotoModule;->setPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string v2, "pref_camera_flashmode_key"

    const v3, 0x7f0d0096

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/PhotoModule;->setPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1006
    return-void
.end method

.method private initGps()V
    .locals 5

    .prologue
    .line 1219
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_recordlocation_key"

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0115

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1221
    .local v0, recordLocation:Z
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 1223
    return-void
.end method

.method private initGpsDialog()V
    .locals 4

    .prologue
    .line 5151
    new-instance v1, Lcom/android/hwcamera/PhotoModule$23;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$23;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    .line 5168
    .local v1, positiveRunable:Ljava/lang/Runnable;
    new-instance v0, Lcom/android/hwcamera/PhotoModule$24;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/PhotoModule$24;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    .line 5180
    .local v0, negativeRunable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d0112

    invoke-static {v2, v3, v1, v0, v0}, Lcom/android/hwcamera/Util;->initGpsDialog(Landroid/app/Activity;ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mAlertDialog:Landroid/app/AlertDialog;

    .line 5182
    return-void
.end method

.method private initPanorama()V
    .locals 6

    .prologue
    .line 4385
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isUiThread(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4442
    :cond_0
    :goto_0
    return-void

    .line 4389
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4391
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v1, :cond_0

    .line 4392
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->hidePanoramaLayout()V

    goto :goto_0

    .line 4398
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isMorphoPanoramaSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4400
    const-string v1, "CAM_PhotoModule"

    const-string v2, "init morpho panorama!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isPanoramaShooting()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4402
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->setNeedReInit(Z)V

    goto :goto_0

    .line 4405
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->disableZoom()V

    .line 4416
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v1, :cond_4

    .line 4417
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->onPause()V

    .line 4418
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    .line 4420
    :cond_4
    new-instance v1, Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-direct {v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    .line 4421
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v2, p0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->init(Lcom/android/hwcamera/CameraActivity;Lcom/android/hwcamera/PhotoModule;)V

    .line 4423
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f0d017d

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_panorama_direction_key"

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v5, 0x7f0d017c

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 4424
    .local v0, isHorizontal:Z
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v1, :cond_5

    .line 4425
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->setTipsMargin()V

    .line 4426
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v1, v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->setShotHorizontal(Z)V

    .line 4427
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->onResume(Lcom/android/hwcamera/CameraManager$CameraProxy;)V

    .line 4429
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->setPanoramaParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4431
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showPanoramaHint()V

    .line 4434
    :cond_5
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->stopFaceDetection()V

    goto/16 :goto_0
.end method

.method private initRestoreDailog()V
    .locals 6

    .prologue
    .line 4666
    new-instance v3, Lcom/android/hwcamera/PhotoModule$16;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/PhotoModule$16;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    .line 4672
    .local v3, positiveRunable:Ljava/lang/Runnable;
    new-instance v4, Lcom/android/hwcamera/PhotoModule$17;

    invoke-direct {v4, p0}, Lcom/android/hwcamera/PhotoModule$17;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    .line 4677
    .local v4, naRunable:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f0d00d5

    const v2, 0x7f0d00d6

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/hwcamera/Util;->initDailog(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mAlertDialog:Landroid/app/AlertDialog;

    .line 4678
    return-void
.end method

.method private initSomeConfigs()V
    .locals 4

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v1, "pref_camera_counter_key"

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/DefaultValue;->getDefaultValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mTimerValue:I

    .line 1195
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v1, "pref_camera_touch_snapshot_key"

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/DefaultValue;->getDefaultValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsTouchSnapshot:Z

    .line 1196
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_sound_snapshot_key"

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d0179

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    .line 1199
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_burst_key"

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d0170

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsLongPressBurstEnable:Z

    .line 1202
    return-void
.end method

.method private initSoundShutter()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2894
    const-string v0, "CAM_PhotoModule"

    const-string v1, "initSoundShutter begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    if-nez v0, :cond_0

    .line 2946
    :goto_0
    return-void

    .line 2901
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-virtual {v0}, Lcom/android/hwcamera/CustomConfiguration;->isSoundShutterSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-virtual {v0}, Lcom/android/hwcamera/CustomConfiguration;->isMtkVoiceShutterSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2903
    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    .line 2904
    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceManager:Lcom/android/hwcamera/VoiceManager;

    .line 2905
    iput-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    goto :goto_0

    .line 2909
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getVolumFromChannel(Landroid/app/Activity;I)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mMusicVolumnBeforeTaken:I

    .line 2910
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_sound_snapshot_key"

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d0179

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    .line 2913
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-virtual {v0}, Lcom/android/hwcamera/CustomConfiguration;->isMtkVoiceShutterSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2914
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceManager:Lcom/android/hwcamera/VoiceManager;

    if-nez v0, :cond_2

    .line 2915
    new-instance v0, Lcom/android/hwcamera/VoiceManager;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/VoiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceManager:Lcom/android/hwcamera/VoiceManager;

    .line 2916
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceManager:Lcom/android/hwcamera/VoiceManager;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/VoiceManager;->setOnVoiceShutterListener(Lcom/android/hwcamera/VoiceManager$OnVoiceShutterListener;)V

    .line 2918
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceManager:Lcom/android/hwcamera/VoiceManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/VoiceManager;->startUpdateVoiceState()V

    .line 2919
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceManager:Lcom/android/hwcamera/VoiceManager;

    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VoiceManager;->setVoiceEnabled(Z)V

    .line 2937
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->lowMusicFMVolum()V

    .line 2939
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isPhoneCall()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2940
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v0, :cond_5

    .line 2941
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_sound_snapshot_key"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "off"

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/android/hwcamera/settings/MenuController;->overrideSettings(Z[Ljava/lang/String;)V

    .line 2945
    :cond_5
    const-string v0, "CAM_PhotoModule"

    const-string v1, "initSoundShutter end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2920
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-virtual {v0}, Lcom/android/hwcamera/CustomConfiguration;->isSoundShutterSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2921
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    if-nez v0, :cond_7

    .line 2922
    new-instance v0, Lcom/android/hwcamera/SoundShutter;

    invoke-direct {v0}, Lcom/android/hwcamera/SoundShutter;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    .line 2923
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/SoundShutter;->setOnVirtualButtonListener(Lcom/android/hwcamera/SoundShutter$OnSoundShutterListener;)V

    .line 2927
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundShutter;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2928
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundShutter;->addRecordStateListener()V

    .line 2929
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundShutter;->resumeShutter()V

    goto :goto_1

    .line 2931
    :cond_8
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundShutter;->start()V

    goto :goto_1
.end method

.method private initializeAfterCameraOpen()V
    .locals 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-nez v0, :cond_0

    .line 1095
    new-instance v0, Lcom/android/hwcamera/settings/MenuController;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/settings/MenuController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    .line 1096
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/settings/MenuController;->setListener(Lcom/android/hwcamera/CameraPreference$OnPreferenceChangedListener;)V

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-nez v0, :cond_1

    .line 1101
    new-instance v0, Lcom/android/hwcamera/PreviewGestures;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/hwcamera/PreviewGestures;-><init>(Lcom/android/hwcamera/CameraActivity;Lcom/android/hwcamera/CameraModule;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    .line 1107
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->loadCameraPreferences()V

    .line 1108
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeMenuControl()V

    .line 1109
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeZoom()V

    .line 1111
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initSoundShutter()V

    .line 1113
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->doUpdateFlashModeUI()V

    .line 1114
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/PhotoModule;->onFullScreenChanged(Z)V

    .line 1116
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initPanorama()V

    .line 1117
    return-void
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 5332
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->copy()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 5334
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 5342
    :goto_0
    return-void

    .line 5335
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusAreaSupported:Z

    .line 5336
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mMeteringAreaSupported:Z

    .line 5337
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mAeLockSupported:Z

    .line 5338
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mAwbLockSupported:Z

    .line 5339
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mContinousFocusSupported:Z

    .line 5341
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isLongPressBurstSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mLongPressBurstSupported:Z

    goto :goto_0
.end method

.method private initializeControlByIntent()V
    .locals 2

    .prologue
    .line 3153
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 3155
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideSwitcher()V

    .line 3159
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f1001f6

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    .line 3160
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f1001f8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/Rotatable;

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    .line 3161
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f1001f7

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    .line 3163
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$12;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$12;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3169
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$13;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$13;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3176
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$14;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$14;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3186
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    instance-of v0, v0, Lcom/android/hwcamera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    .line 3187
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v0, Lcom/android/hwcamera/ui/TwoStateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 3190
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->setupCaptureParams()V

    .line 3192
    :cond_1
    return-void
.end method

.method private initializeFirstTime()V
    .locals 3

    .prologue
    .line 1166
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 1191
    :goto_0
    return-void

    .line 1171
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->keepMediaProviderInstance()V

    .line 1174
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 1175
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v2, 0x7f020065

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 1176
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 1178
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 1180
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 1181
    .local v0, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v0, :cond_2

    .line 1182
    invoke-virtual {v0, p0}, Lcom/android/hwcamera/VirtualButton;->setOnVirtualButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 1184
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getCameraHardButton()Lcom/android/hwcamera/CameraHardButton;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/hwcamera/CameraHardButton;->setOnCameraHardButtonListener(Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;)V

    .line 1185
    new-instance v1, Lcom/android/hwcamera/PhotoModule$ImageSaver;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$ImageSaver;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mImageSaver:Lcom/android/hwcamera/PhotoModule$ImageSaver;

    .line 1186
    new-instance v1, Lcom/android/hwcamera/PhotoModule$ImageNamer;

    invoke-direct {v1}, Lcom/android/hwcamera/PhotoModule$ImageNamer;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mImageNamer:Lcom/android/hwcamera/PhotoModule$ImageNamer;

    .line 1188
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mFirstTimeInitialized:Z

    .line 1189
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->addIdleHandler()V

    .line 1190
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->updateStorageSpace()V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 3202
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 3203
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->removeMessages()V

    .line 3215
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1000d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    .line 3216
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->setFocusIndicator(Lcom/android/hwcamera/ui/indicator/FocusIndicator;)V

    .line 3217
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMeteringAreaIndicator:Lcom/android/hwcamera/ui/RotateLayout;

    .line 3218
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMeteringAreaIndicator:Lcom/android/hwcamera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 3219
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMeteringAreaIndicator:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->setMeterIndicator(Lcom/android/hwcamera/ui/RotateLayout;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3225
    :cond_0
    :goto_1
    return-void

    .line 3205
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    aget-object v9, v0, v1

    .line 3206
    .local v9, info:Landroid/hardware/Camera$CameraInfo;
    iget v0, v9, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v5, :cond_2

    .line 3207
    .local v5, mirror:Z
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3209
    .local v2, defaultFocusModes:[Ljava/lang/String;
    new-instance v0, Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->getFocusPolicyService()Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/hwcamera/FocusOverlayManager;-><init>(Lcom/android/hwcamera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/hwcamera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/hwcamera/focuspolicy/FocusPolicyService;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    goto :goto_0

    .line 3206
    .end local v2           #defaultFocusModes:[Ljava/lang/String;
    .end local v5           #mirror:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 3221
    .end local v9           #info:Landroid/hardware/Camera$CameraInfo;
    :catch_0
    move-exception v8

    .line 3222
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "CAM_PhotoModule"

    const-string v1, "got exception when get focus_indicator_rotate_layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initializeMenuControl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1142
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v0, :cond_1

    .line 1143
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initGps()V

    .line 1144
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/settings/MenuController;->initialize(Lcom/android/hwcamera/PreferenceGroup;I)V

    .line 1146
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isImageCaptureIntent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_bestphoto_key"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "off"

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/android/hwcamera/settings/MenuController;->overrideSettings(Z[Ljava/lang/String;)V

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/settings/MenuController;->setOnMenuStatedChangelistener(Lcom/android/hwcamera/settings/MenuController$OnMenuStateChangedListener;)V

    .line 1150
    :cond_1
    return-void
.end method

.method private initializeMiscControls()V
    .locals 2

    .prologue
    .line 3229
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f100011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    .line 3231
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1001e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewImage:Landroid/widget/ImageView;

    .line 3232
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    .line 3234
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1001e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/indicator/FaceView;

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    .line 3235
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1001e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/TargetView;

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    .line 3236
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/hwcamera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 3237
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreviewFrameLayout;->setOnLayoutChangeListener(Lcom/android/hwcamera/ui/LayoutChangeNotifier$Listener;)V

    .line 3238
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    .line 3239
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1001ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/PreviewSurfaceView;

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    .line 3241
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->setVisibility(I)V

    .line 3242
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3244
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->reLocateSmallPreviewBorder()V

    .line 3245
    return-void
.end method

.method private initializeRenderOverlay()V
    .locals 3

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f1001e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RenderOverlay;

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    .line 1063
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RenderOverlay;->remove(Lcom/android/hwcamera/ui/RenderOverlay$Renderer;)V

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 1068
    new-instance v0, Lcom/android/hwcamera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/ui/ZoomRenderer;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    .line 1070
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RenderOverlay;->addRenderer(Lcom/android/hwcamera/ui/RenderOverlay$Renderer;)V

    .line 1071
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v0, :cond_3

    .line 1072
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v0}, Lcom/android/hwcamera/PreviewGestures;->clearTouchReceivers()V

    .line 1073
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreviewGestures;->setRenderOverlay(Lcom/android/hwcamera/ui/RenderOverlay;)V

    .line 1074
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100027

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1075
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100028

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1076
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f10002c

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1077
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f10000a

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1078
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100041

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1081
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isImageCaptureIntent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1082
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    if-eqz v0, :cond_2

    .line 1083
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    if-eqz v0, :cond_3

    .line 1086
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1090
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/RenderOverlay;->requestLayout()V

    .line 1091
    return-void
.end method

.method private initializeSecondTime()V
    .locals 1

    .prologue
    .line 1227
    new-instance v0, Lcom/android/hwcamera/PhotoModule$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/PhotoModule$ImageSaver;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageSaver:Lcom/android/hwcamera/PhotoModule$ImageSaver;

    .line 1228
    new-instance v0, Lcom/android/hwcamera/PhotoModule$ImageNamer;

    invoke-direct {v0}, Lcom/android/hwcamera/PhotoModule$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageNamer:Lcom/android/hwcamera/PhotoModule$ImageNamer;

    .line 1229
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeZoom()V

    .line 1230
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->keepMediaProviderInstance()V

    .line 1231
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->hidePostCaptureAlert()V

    .line 1235
    return-void
.end method

.method private initializeTipsService()V
    .locals 3

    .prologue
    const v2, 0x7f100030

    .line 3284
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-nez v0, :cond_0

    .line 3285
    new-instance v0, Lcom/android/hwcamera/tips/TipsService;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/tips/TipsService;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    .line 3286
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/tips/TipsService;->init(Lcom/android/hwcamera/ui/RotateLayout;)V

    .line 3290
    :goto_0
    return-void

    .line 3288
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/tips/TipsService;->setTipsLayout(Lcom/android/hwcamera/ui/RotateLayout;)V

    goto :goto_0
.end method

.method private initializeZoom()V
    .locals 5

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomMax:I

    .line 1240
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRatios:Ljava/util/List;

    .line 1241
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_zoom_value_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomValue:I

    .line 1243
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    if-nez v0, :cond_2

    .line 1244
    new-instance v0, Lcom/android/hwcamera/ui/ZoomBar;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mZoomMax:I

    invoke-direct {v0, v1, v2}, Lcom/android/hwcamera/ui/ZoomBar;-><init>(Lcom/android/hwcamera/CameraActivity;I)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    .line 1245
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ZoomBar;->setZoom(I)V

    .line 1248
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    if-eqz v0, :cond_3

    .line 1249
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 1250
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ZoomRenderer;->setZoom(I)V

    .line 1251
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRatios:Ljava/util/List;

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mZoomValue:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 1252
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ZoomRenderer;->setZoomRatios(Ljava/util/List;)V

    .line 1256
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-nez v0, :cond_4

    .line 1258
    new-instance v0, Lcom/android/hwcamera/PreviewGestures;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/hwcamera/PreviewGestures;-><init>(Lcom/android/hwcamera/CameraActivity;Lcom/android/hwcamera/CameraModule;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    .line 1262
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    if-nez v0, :cond_5

    .line 1264
    new-instance v0, Lcom/android/hwcamera/ZoomController;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;-><init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mZoomBar:Lcom/android/hwcamera/ui/ZoomBar;

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/hwcamera/ZoomController;-><init>(Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;Lcom/android/hwcamera/ui/ZoomRenderer;Lcom/android/hwcamera/ui/ZoomBar;Lcom/android/hwcamera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    .line 1266
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreviewGestures;->setOnScaleGestureListener(Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 1268
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v0}, Lcom/android/hwcamera/ZoomController;->hide()V

    goto/16 :goto_0
.end method

.method private isBeautyMode()Z
    .locals 2

    .prologue
    .line 5757
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    if-nez v0, :cond_0

    .line 5758
    const/4 v0, 0x0

    .line 5760
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->BEAUTY:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isNeedShowLongPressBurstHint()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 5779
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->canStartLongPressBurst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->hasLongPressShot()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5790
    :cond_0
    :goto_0
    return v2

    .line 5780
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5781
    .local v0, current:J
    iget-wide v3, p0, Lcom/android/hwcamera/PhotoModule;->mLastSnapShotTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/android/hwcamera/PhotoModule;->mLastSnapShotTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 5782
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v4, "key_count_of_continue_snap_shot"

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->resetCountsByKey(Ljava/lang/String;)V

    .line 5783
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v4, "key_count_of_continue_snap_shot"

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->increaseCountsByKey(Ljava/lang/String;)V

    .line 5784
    iput-wide v0, p0, Lcom/android/hwcamera/PhotoModule;->mLastSnapShotTime:J

    goto :goto_0

    .line 5787
    :cond_3
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v4, "key_count_of_continue_snap_shot"

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->increaseCountsByKey(Ljava/lang/String;)V

    .line 5788
    iput-wide v0, p0, Lcom/android/hwcamera/PhotoModule;->mLastSnapShotTime:J

    .line 5790
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v4, "key_count_of_continue_snap_shot"

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->getCountsByKey(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isNeedShowVolumSnapShotHint()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5743
    iget-boolean v3, p0, Lcom/android/hwcamera/PhotoModule;->mIsNeedCount:Z

    if-nez v3, :cond_1

    .line 5744
    iput-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsNeedCount:Z

    .line 5752
    :cond_0
    :goto_0
    return v2

    .line 5748
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->isVolumSnapShotHintShown()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->needTimer()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/hwcamera/enm/ShotMode;->VOICE_PHOTO:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isBestPhotoOn()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/hwcamera/PhotoModule;->mLongPressBurst:Z

    if-nez v3, :cond_0

    .line 5750
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v4, "key_countS_of_no_use_volum_snap_shot"

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->increaseCountsByKey(Ljava/lang/String;)V

    .line 5751
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v4, "key_countS_of_no_use_volum_snap_shot"

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->getCountsByKey(Ljava/lang/String;)I

    move-result v0

    .line 5752
    .local v0, counts:I
    const/16 v3, 0xa

    if-lt v0, v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private isShowMeteringGestureGuide()Z
    .locals 4

    .prologue
    .line 6433
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "showGestureGuide"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 6434
    .local v0, bShow:Z
    return v0
.end method

.method private isShowSmallPreviewTips()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2811
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getGlobalPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "DO_NOT_REMAIND_SMAILLPREVIEW_KEY"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v2, "pref_camera_counter_key"

    iget v3, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/DefaultValue;->getDefaultValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isShowToastWhenSwitchShotMode(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 6466
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 6488
    :cond_0
    :goto_0
    return v0

    .line 6472
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->PANORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2}, Lcom/android/hwcamera/enm/ShotMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->AUTORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2}, Lcom/android/hwcamera/enm/ShotMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->MAV:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2}, Lcom/android/hwcamera/enm/ShotMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->METER:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2}, Lcom/android/hwcamera/enm/ShotMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6480
    const-string v1, "pref_camera_burst_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6481
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->BEAUTY:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2}, Lcom/android/hwcamera/enm/ShotMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->HDR:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2}, Lcom/android/hwcamera/enm/ShotMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->VOICE_PHOTO:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2}, Lcom/android/hwcamera/enm/ShotMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6488
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1160
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 5310
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5311
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5312
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5313
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 5

    .prologue
    .line 2208
    new-instance v0, Lcom/android/hwcamera/CameraSettings;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/hwcamera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 2210
    .local v0, settings:Lcom/android/hwcamera/CameraSettings;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraSettings;->getPreferenceGroup(I)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 2211
    return-void
.end method

.method private lowMusicFMVolum()V
    .locals 3

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/Util;->setVolumToChannel(Landroid/app/Activity;II)V

    .line 2708
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->stopFMRadioPlay(Landroid/content/Context;)V

    .line 2710
    return-void
.end method

.method private needHwScope()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3922
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    if-nez v3, :cond_2

    .line 3923
    sget-object v3, Lcom/android/hwcamera/enm/ShotMode;->SINGLE:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/hwcamera/enm/ShotMode;->SMART:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 3926
    :cond_1
    :goto_0
    return v1

    .line 3925
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v4, "pref_camera_picturesize_key"

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 3926
    .local v0, pictureSize:Lcom/android/hwcamera/ListPreference;
    sget-object v3, Lcom/android/hwcamera/enm/ShotMode;->SINGLE:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/hwcamera/enm/ShotMode;->SMART:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method private needShowHint()Z
    .locals 2

    .prologue
    .line 869
    const/4 v0, 0x0

    .line 870
    .local v0, retVal:Z
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 871
    :goto_0
    return v0

    .line 870
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needStartPreview()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 4704
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 4705
    .local v2, size:Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v6

    div-double v0, v4, v6

    .line 4706
    .local v0, ratio:D
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_0

    .line 4708
    const-wide/high16 v4, 0x3ff0

    div-double v0, v4, v0

    .line 4710
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/PreviewFrameLayout;->getAspect()D

    move-result-wide v4

    sub-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fa999999999999aL

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    iget v4, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    if-eqz v4, :cond_1

    .line 4713
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private needTimer()Z
    .locals 1

    .prologue
    .line 2689
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mTimerValue:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->canUseTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSnap()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    const/4 v5, 0x0

    .line 2532
    const-string v1, "PhotoModule.onSnap"

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2533
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-eqz v1, :cond_1

    .line 2590
    :cond_0
    :goto_0
    return-void

    .line 2537
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isProcessIng()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2538
    invoke-direct {p0, v5}, Lcom/android/hwcamera/PhotoModule;->waitProcessDone(Z)V

    goto :goto_0

    .line 2542
    :cond_2
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    if-nez v1, :cond_0

    .line 2544
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2548
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getStorageSpace()J

    move-result-wide v1

    const-wide/32 v3, 0x1400000

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 2549
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->showStorageHintMessage()V

    goto :goto_0

    .line 2553
    :cond_3
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick: mCameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->hideZoomController()V

    .line 2556
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v1}, Lcom/android/hwcamera/ZoomController;->isZooming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2566
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    :cond_5
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2568
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mSnapshotOnIdle:Z

    goto :goto_0

    .line 2572
    :cond_6
    iput-boolean v5, p0, Lcom/android/hwcamera/PhotoModule;->mSnapshotOnIdle:Z

    .line 2573
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2574
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2577
    :cond_7
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->needTimer()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2578
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->onTimerBegin()V

    goto/16 :goto_0

    .line 2581
    :cond_8
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsHwScopeStarted:Z

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->needHwScope()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2582
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2583
    .local v0, msg:Landroid/os/Message;
    const v1, 0x7f0d015e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2584
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2585
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2588
    .end local v0           #msg:Landroid/os/Message;
    :cond_9
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->doSnap()V

    .line 2589
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0
.end method

.method private onTimerBegin()V
    .locals 6

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 2601
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v2, v2, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v2, :cond_1

    .line 2602
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2603
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    .line 2604
    iput-boolean v5, p0, Lcom/android/hwcamera/PhotoModule;->mCancelTimer:Z

    .line 2605
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2, v5}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2606
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->hideUI()V

    .line 2607
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f10016e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2608
    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v2}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2609
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f100012

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2610
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->hideBackGround()V

    .line 2614
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    iget v4, p0, Lcom/android/hwcamera/PhotoModule;->mTimerValue:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2615
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2617
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1001d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ui/RotateTextView;

    .line 2618
    .local v1, remainPicText:Lcom/android/hwcamera/ui/RotateTextView;
    invoke-virtual {v1}, Lcom/android/hwcamera/ui/RotateTextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ui/RotateTextView;->setVisibility(I)V

    .line 2622
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #remainPicText:Lcom/android/hwcamera/ui/RotateTextView;
    :cond_1
    return-void

    .line 2612
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->showBackGround()V

    goto :goto_0
.end method

.method private onTimerEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2661
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_1

    .line 2662
    iput-boolean v2, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    .line 2663
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTimerAnimationView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTimerAnimationView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2664
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showUI()V

    .line 2665
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showBackGround()V

    .line 2666
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v1, 0x7f10016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2667
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f100012

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2668
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2670
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->checkPictureRemainsTextShow()V

    .line 2674
    :cond_1
    return-void
.end method

.method private openHwScopeIfNeeded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3870
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRatios:Ljava/util/List;

    if-nez v1, :cond_0

    .line 3871
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRatios:Ljava/util/List;

    .line 3873
    :cond_0
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsHwScopeStarted:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRatios:Ljava/util/List;

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mZoomValue:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/android/hwcamera/PhotoModule;->THRESHOLD_SCOPE_VALUE:I

    if-lt v1, v2, :cond_2

    .line 3874
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isFirstTimeForHwScope()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3875
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3876
    .local v0, msg:Landroid/os/Message;
    const v1, 0x7f0d012b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3877
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3878
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3879
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/CameraActivity;->setFirstTimeForHwScope(Z)V

    .line 3881
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "key-huawei-scope"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3882
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsHwScopeStarted:Z

    .line 3883
    invoke-direct {p0, v4}, Lcom/android/hwcamera/PhotoModule;->enableFlashForHwScope(Z)V

    .line 3885
    :cond_2
    return-void
.end method

.method private prepareCameraScreenNail(Z)V
    .locals 6
    .parameter "reuseNail"

    .prologue
    const-wide/16 v4, 0x400

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 968
    const-string v0, "PhotoModule.prepareCameraScreenNail"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isImageCaptureIntent(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    .line 972
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/hwcamera/CameraActivity;->refreshGalleryPictures(Z)V

    .line 974
    if-eqz p1, :cond_2

    .line 975
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v3, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    .line 979
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 980
    return-void

    :cond_0
    move v0, v2

    .line 972
    goto :goto_0

    :cond_1
    move v1, v2

    .line 975
    goto :goto_1

    .line 977
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v3, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private preparePreferences()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x400

    .line 961
    const-string v0, "PhotoModule.preparePreferences"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 962
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 963
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 964
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 965
    return-void
.end method

.method private preparePreviewResource(Z)V
    .locals 3
    .parameter "reuseNail"

    .prologue
    const-wide/16 v1, 0x400

    .line 951
    const-string v0, "PhotoModule.preparePreviewResource"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 952
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule;->prepareCameraScreenNail(Z)V

    .line 953
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->preparePreferences()V

    .line 956
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 957
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 958
    return-void
.end method

.method private prepareSmallPreviewTips()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2789
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2808
    :cond_0
    :goto_0
    return-void

    .line 2790
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->isShowSmallPreviewTips()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    .line 2791
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-eqz v1, :cond_0

    .line 2794
    const v1, 0x7f10020b

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/PhotoModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 2795
    .local v0, ctv:Landroid/widget/CheckedTextView;
    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 2796
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSmallPreviewOkButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2799
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->hideUI()V

    .line 2800
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2802
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 2804
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->hideBackGround()V

    .line 2806
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1d

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private processForTimer(I)V
    .locals 4
    .parameter "timer"

    .prologue
    .line 2625
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mCancelTimer:Z

    if-eqz v1, :cond_0

    .line 2635
    :goto_0
    return-void

    .line 2627
    :cond_0
    if-gtz p1, :cond_1

    .line 2628
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->doSnap()V

    .line 2629
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->onTimerEnd()V

    goto :goto_0

    .line 2632
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule;->doTimerAnimation(I)V

    .line 2633
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    add-int/lit8 p1, p1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2634
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private processHintsOnSnapShot()V
    .locals 1

    .prologue
    .line 5720
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->isNeedShowVolumSnapShotHint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->showVolumSnapShotHint()V

    .line 5721
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->isNeedShowLongPressBurstHint()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->showLongPressBurstHint()V

    .line 5722
    :cond_1
    return-void
.end method

.method private processHwScope()V
    .locals 4

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 3918
    :goto_0
    return-void

    .line 3909
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRatios:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3910
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRatios:Ljava/util/List;

    .line 3912
    :cond_1
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mZoomRatios:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRatios:Ljava/util/List;

    iget v3, p0, Lcom/android/hwcamera/PhotoModule;->mZoomValue:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRatios:Ljava/util/List;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomValue:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/android/hwcamera/PhotoModule;->THRESHOLD_SCOPE_VALUE:I

    if-lt v0, v1, :cond_2

    .line 3914
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->openHwScopeIfNeeded()V

    goto :goto_0

    .line 3916
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->closeHwScopeIfNeeded()V

    goto :goto_0
.end method

.method private processPreference(Lcom/android/hwcamera/CameraPreference;)Z
    .locals 14
    .parameter "pref"

    .prologue
    const/16 v13, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 4753
    instance-of v9, p1, Lcom/android/hwcamera/IconListPreference;

    if-nez v9, :cond_1

    .line 4897
    :cond_0
    :goto_0
    return v7

    :cond_1
    move-object v0, p1

    .line 4755
    check-cast v0, Lcom/android/hwcamera/IconListPreference;

    .line 4757
    .local v0, ilpref:Lcom/android/hwcamera/IconListPreference;
    iget-object v9, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v9, v0}, Lcom/android/hwcamera/CameraActivity;->processPreference(Lcom/android/hwcamera/IconListPreference;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v7, v8

    goto :goto_0

    .line 4759
    :cond_2
    iget v9, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v9}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "pref_camera_front_flashmode_key"

    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4760
    iget-object v8, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v9, "pref_camera_front_flashmode_key"

    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v11, 0x7f0d0169

    invoke-virtual {v10, v11}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "auto"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 4761
    .local v2, isAuto:Z
    if-eqz v2, :cond_0

    iget-object v8, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const v9, 0x7f0d0141

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v13, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4765
    .end local v2           #isAuto:Z
    :cond_3
    const-string v9, "pref_camera_shooting_mode_key"

    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4766
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->tryGotoGooglePanorama()Z

    move-result v9

    if-eqz v9, :cond_4

    move v7, v8

    goto :goto_0

    .line 4769
    :cond_4
    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->getDefaultShotMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/hwcamera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 4771
    :cond_5
    iget-object v8, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x13

    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 4773
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeZoom()V

    .line 4777
    iget-object v8, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v9, "pref_camera_shooting_mode_key"

    iget v10, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v8, v9, v10}, Lcom/android/hwcamera/DefaultValue;->getDefaultValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 4779
    .local v4, shootMode:Ljava/lang/String;
    sget-object v8, Lcom/android/hwcamera/enm/ShotMode;->BEAUTY:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v8}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lcom/android/hwcamera/enm/ShotMode;->SMART:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v8}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4782
    :cond_6
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->startFaceDetection()V

    .line 4784
    const/4 v8, -0x4

    invoke-virtual {p0, v8}, Lcom/android/hwcamera/PhotoModule;->setBeautyProgress(I)V

    goto/16 :goto_0

    .line 4786
    :cond_7
    sget-object v8, Lcom/android/hwcamera/enm/ShotMode;->BEAUTY:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v8}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/hwcamera/enm/ShotMode;->SMART:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v8}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/hwcamera/PhotoModule;->mIsSmileCaptureState:Z

    if-nez v8, :cond_0

    .line 4790
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->stopFaceDetection()V

    goto/16 :goto_0

    .line 4797
    .end local v4           #shootMode:Ljava/lang/String;
    :cond_8
    const-string v9, "pref_camera_bestphoto_key"

    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4798
    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/PhotoModule;->isBestPhotoOn(Ljava/lang/String;)Z

    move-result v7

    invoke-direct {p0, v7, v8}, Lcom/android/hwcamera/PhotoModule;->setBestPhotoIfImmediately(ZZ)V

    move v7, v8

    .line 4799
    goto/16 :goto_0

    .line 4802
    :cond_9
    const-string v9, "pref_camera_picturesize_key"

    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4803
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->updatePictureRemainsText()V

    goto/16 :goto_0

    .line 4807
    :cond_a
    const-string v9, "pref_camera_panorama_direction_key"

    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 4808
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initPanorama()V

    move v7, v8

    .line 4809
    goto/16 :goto_0

    .line 4812
    :cond_b
    const-string v9, "pref_camera_smile_key"

    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 4813
    const-string v7, "on"

    iget-object v9, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v10, "pref_camera_smile_key"

    const-string v11, "off"

    invoke-virtual {v9, v10, v11}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/hwcamera/PhotoModule;->mIsSmileCaptureState:Z

    .line 4816
    iget-boolean v7, p0, Lcom/android/hwcamera/PhotoModule;->mIsSmileCaptureState:Z

    if-eqz v7, :cond_f

    .line 4818
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->startFaceDetection()V

    .line 4828
    :cond_c
    :goto_1
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v7, :cond_d

    .line 4829
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-boolean v9, p0, Lcom/android/hwcamera/PhotoModule;->mIsSmileCaptureState:Z

    invoke-virtual {v7, v9}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setSmileDetection(Z)V

    .line 4834
    :cond_d
    iget-boolean v7, p0, Lcom/android/hwcamera/PhotoModule;->mIsSmileCaptureState:Z

    if-eqz v7, :cond_e

    const-string v7, "pref_camera_smile_key"

    invoke-direct {p0, v7}, Lcom/android/hwcamera/PhotoModule;->isShowToastWhenSwitchShotMode(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4835
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const v9, 0x7f0d015a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v13, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    move v7, v8

    .line 4839
    goto/16 :goto_0

    .line 4820
    :cond_f
    iget-boolean v7, p0, Lcom/android/hwcamera/PhotoModule;->mIsSmileCaptureState:Z

    if-nez v7, :cond_c

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->isBeautyMode()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isSmart()Z

    move-result v7

    if-nez v7, :cond_c

    .line 4823
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->stopFaceDetection()V

    goto :goto_1

    .line 4841
    :cond_10
    const-string v9, "pref_camera_target_tracking_key"

    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 4842
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v9, "pref_camera_target_tracking_key"

    iget-object v10, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v11, 0x7f0d0123

    invoke-virtual {v10, v11}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4844
    .local v5, value:Ljava/lang/String;
    const-string v7, "on"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    sget-object v9, Lcom/android/hwcamera/enm/ShotMode;->PANORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v9}, Lcom/android/hwcamera/enm/ShotMode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 4845
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const v9, 0x7f0d015b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v13, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 4848
    :cond_11
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->updateCameraActionPreference()V

    move v7, v8

    .line 4849
    goto/16 :goto_0

    .line 4852
    .end local v5           #value:Ljava/lang/String;
    :cond_12
    const-string v9, "pref_camera_counter_key"

    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 4853
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v9, "pref_camera_counter_key"

    iget v10, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v7, v9, v10}, Lcom/android/hwcamera/DefaultValue;->getDefaultValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/android/hwcamera/PhotoModule;->mTimerValue:I

    move v7, v8

    .line 4854
    goto/16 :goto_0

    .line 4856
    :cond_13
    const-string v9, "pref_camera_restore_key"

    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 4857
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initRestoreDailog()V

    move v7, v8

    .line 4858
    goto/16 :goto_0

    .line 4860
    :cond_14
    const-string v9, "pref_camera_touch_snapshot_key"

    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 4861
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v9, "pref_camera_touch_snapshot_key"

    const-string v10, "off"

    invoke-virtual {v7, v9, v10}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "on"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/hwcamera/PhotoModule;->mIsTouchSnapshot:Z

    .line 4862
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xf

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v7, v8

    .line 4863
    goto/16 :goto_0

    .line 4865
    :cond_15
    const-string v9, "pref_camera_recordlocation_key"

    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 4866
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->doGpsRecord()V

    move v7, v8

    .line 4867
    goto/16 :goto_0

    .line 4870
    :cond_16
    const-string v9, "pref_camera_burst_key"

    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 4871
    iget-object v9, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v10, "pref_camera_burst_key"

    iget-object v11, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v12, 0x7f0d0170

    invoke-virtual {v11, v12}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "on"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/hwcamera/PhotoModule;->mIsLongPressBurstEnable:Z

    .line 4875
    iget-boolean v9, p0, Lcom/android/hwcamera/PhotoModule;->mIsLongPressBurstEnable:Z

    if-eqz v9, :cond_17

    const-string v9, "pref_camera_burst_key"

    invoke-direct {p0, v9}, Lcom/android/hwcamera/PhotoModule;->isShowToastWhenSwitchShotMode(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 4876
    iget-object v9, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const v10, 0x7f0d0171

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v13, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 4881
    :cond_17
    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "pref_camera_id_key"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 4883
    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/hwcamera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 4884
    .local v1, index:I
    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 4885
    .local v6, values:[Ljava/lang/CharSequence;
    aget-object v7, v6, v1

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4886
    .local v3, newCameraId:I
    iget v7, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    if-eq v3, v7, :cond_18

    .line 4887
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->hideShootModeUI()V

    .line 4888
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/PhotoModule;->onCameraPickerClicked(I)V

    :cond_18
    move v7, v8

    .line 4890
    goto/16 :goto_0

    .line 4892
    .end local v1           #index:I
    .end local v3           #newCameraId:I
    .end local v6           #values:[Ljava/lang/CharSequence;
    :cond_19
    const-string v9, "pref_camera_sound_snapshot_key"

    invoke-virtual {v0}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4893
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->processSoundShutter()V

    move v7, v8

    .line 4895
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
    .line 4718
    .local p1, prefs:Ljava/util/List;,"Ljava/util/List<+Lcom/android/hwcamera/CameraPreference;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 4719
    :cond_0
    const/4 v2, 0x0

    .line 4725
    :cond_1
    return v2

    .line 4721
    :cond_2
    const/4 v2, 0x1

    .line 4722
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

    .line 4723
    .local v1, pref:Lcom/android/hwcamera/CameraPreference;
    invoke-direct {p0, v1}, Lcom/android/hwcamera/PhotoModule;->processPreference(Lcom/android/hwcamera/CameraPreference;)Z

    move-result v3

    and-int/2addr v2, v3

    goto :goto_0
.end method

.method private processSoundShutter()V
    .locals 3

    .prologue
    .line 4906
    const-string v0, "pref_camera_sound_snapshot_key"

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f0d0179

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/PhotoModule;->getMenuItemValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    .line 4909
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-virtual {v0}, Lcom/android/hwcamera/CustomConfiguration;->isMtkVoiceShutterSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4910
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceManager:Lcom/android/hwcamera/VoiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceManager:Lcom/android/hwcamera/VoiceManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/VoiceManager;->getVoiceEnable()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    if-eq v0, v1, :cond_0

    .line 4911
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceManager:Lcom/android/hwcamera/VoiceManager;

    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/VoiceManager;->setVoiceEnabled(Z)V

    .line 4913
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    if-eqz v0, :cond_2

    .line 4914
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->lowMusicFMVolum()V

    .line 4942
    :cond_1
    :goto_0
    return-void

    .line 4916
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->resumeMusicAndFMVolum()V

    goto :goto_0

    .line 4918
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-virtual {v0}, Lcom/android/hwcamera/CustomConfiguration;->isSoundShutterSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4921
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundShutter;->isRecordTestFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4923
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    if-eqz v0, :cond_5

    .line 4924
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundShutter;->isStarted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4925
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundShutter;->start()V

    .line 4927
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundShutter;->resumeShutter()V

    .line 4928
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->lowMusicFMVolum()V

    .line 4930
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->PANORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4931
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    const v2, 0x7f0d017a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4935
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundShutter;->pauseShutter()V

    .line 4936
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->resumeMusicAndFMVolum()V

    goto :goto_0
.end method

.method private processUIforBeauty()V
    .locals 2

    .prologue
    .line 5104
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

    if-nez v0, :cond_0

    .line 5105
    new-instance v0, Lcom/android/hwcamera/ui/BeautyEffect;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/ui/BeautyEffect;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

    .line 5107
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isUiThread(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5108
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/BeautyEffect;->onFullScreenChanged(Z)V

    .line 5118
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-virtual {v0}, Lcom/android/hwcamera/CustomConfiguration;->isFaceBeautyBarSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5119
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/BeautyEffect;->hide()V

    .line 5122
    :cond_1
    return-void

    .line 5110
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$22;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$22;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private processUIforColorEffect()V
    .locals 4

    .prologue
    .line 5053
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isUiThread(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5054
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    if-nez v0, :cond_0

    .line 5055
    new-instance v0, Lcom/android/hwcamera/ui/ColorEffect;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/ui/ColorEffect;-><init>(Lcom/android/hwcamera/CameraActivity;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    .line 5059
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ColorEffect;->show(Z)V

    .line 5077
    :goto_0
    return-void

    .line 5063
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$21;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$21;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private processUIforMeter()V
    .locals 5

    .prologue
    const/16 v4, 0x1f

    .line 5005
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMeteringAreaIndicator:Lcom/android/hwcamera/ui/RotateLayout;

    if-nez v1, :cond_0

    .line 5006
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v2, 0x7f100124

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMeteringAreaIndicator:Lcom/android/hwcamera/ui/RotateLayout;

    .line 5007
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mMeteringAreaIndicator:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/FocusOverlayManager;->setMeterIndicator(Lcom/android/hwcamera/ui/RotateLayout;)V

    .line 5009
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->showMeteringFocus()V

    .line 5010
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusAreaSupported:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->METER:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5014
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5015
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5017
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->isShowMeteringGestureGuide()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5018
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100121

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5019
    .local v0, meteringView:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5020
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 5024
    .end local v0           #meteringView:Landroid/view/View;
    :cond_3
    :goto_0
    return-void

    .line 5021
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getMeterHintShownState()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5022
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f0d01a9

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->showOnscreenHint(I)V

    goto :goto_0
.end method

.method private processUIforNormal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const v1, 0x7f100121

    .line 5081
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/BeautyEffect;->hide()V

    .line 5082
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ColorEffect;->hide()V

    .line 5083
    :cond_1
    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

    .line 5084
    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    .line 5085
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v0, :cond_2

    .line 5086
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->clearMeteringFocus()V

    .line 5088
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5089
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5091
    :cond_3
    return-void
.end method

.method private processUIforShootMode(Ljava/lang/String;)V
    .locals 3
    .parameter "shotmodevalue"

    .prologue
    .line 4946
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-eqz v0, :cond_1

    .line 5001
    :cond_0
    :goto_0
    return-void

    .line 4948
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4949
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->processUIforNormal()V

    .line 4950
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideAllOnsreenHint()V

    .line 4951
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processUIforShootMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4953
    sget-object v0, Lcom/android/hwcamera/PhotoModule$30;->$SwitchMap$com$android$hwcamera$enm$ShotMode:[I

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/hwcamera/enm/ShotMode;->valueOf(Ljava/lang/String;)Lcom/android/hwcamera/enm/ShotMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4998
    :cond_3
    :goto_1
    :pswitch_0
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    .line 4999
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->updateEyeCorrectionHint()V

    goto :goto_0

    .line 4956
    :pswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->processUIforBeauty()V

    goto :goto_1

    .line 4959
    :pswitch_2
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->processUIforColorEffect()V

    goto :goto_1

    .line 4965
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->showMTKPanoramaHint()V

    goto :goto_1

    .line 4968
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->showMAVHint()V

    goto :goto_1

    .line 4974
    :pswitch_5
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getHdrHintShownState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4976
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f0d0150

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->showOnscreenHint(I)V

    goto :goto_1

    .line 4981
    :pswitch_6
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->processUIforSmart()V

    goto :goto_1

    .line 4985
    :pswitch_7
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->processUIforMeter()V

    goto :goto_1

    .line 4990
    :pswitch_8
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->processUIforVoicePhoto()V

    goto :goto_1

    .line 4953
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private processUIforSmart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5037
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->SMART:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getSmartHintShouldShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5038
    const-string v0, "CAM_PhotoModule"

    const-string v1, "handleSmartHint start show smart hint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5039
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/CameraActivity;->setSmartHintShouldShow(Z)V

    .line 5043
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getSmartHintShouldShow()Z

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getSmartHintHasShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5046
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f0d016d

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->showOnscreenHint(I)V

    .line 5050
    :cond_1
    return-void
.end method

.method private processUIforVoicePhoto()V
    .locals 2

    .prologue
    .line 5029
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getVoicePhotoHintShownState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5030
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f0d01b4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->showOnscreenHint(I)V

    .line 5032
    :cond_0
    return-void
.end method

.method private reLocateSmallPreviewBorder()V
    .locals 9

    .prologue
    const v8, 0x7f100010

    const/4 v7, 0x7

    const/4 v6, 0x6

    const v5, 0x7f100011

    const/4 v4, 0x0

    .line 3248
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2, v8}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 3249
    .local v0, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3250
    .local v1, rp:Landroid/widget/RelativeLayout$LayoutParams;
    const-string v2, "right"

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-virtual {v3}, Lcom/android/hwcamera/CustomConfiguration;->getSmallPreviewPos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3251
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3252
    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3253
    invoke-virtual {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3267
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3269
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f100209

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 3270
    .restart local v0       #layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3271
    .restart local v1       #rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3272
    invoke-virtual {v1, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3280
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3281
    return-void

    .line 3255
    :cond_0
    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3256
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 3259
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3260
    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3261
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 3263
    :cond_2
    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3264
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 3274
    :cond_3
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3276
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/16 v3, 0x89

    invoke-static {v3}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3277
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method private releaseFocusIndicator()V
    .locals 1

    .prologue
    .line 3146
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v0}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->release()V

    .line 3147
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/FaceView;->release()V

    .line 3148
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/TargetView;->release()V

    .line 3149
    :cond_2
    return-void
.end method

.method private removeTopLevelPopupForGoogle()Z
    .locals 1

    .prologue
    .line 2243
    const/4 v0, 0x0

    return v0
.end method

.method private removeTopLevelPopupForUs()Z
    .locals 1

    .prologue
    .line 2239
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->collapseCameraControlsForUs()Z

    move-result v0

    return v0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 5305
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5306
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 5307
    return-void
.end method

.method private resetSomeView()V
    .locals 1

    .prologue
    .line 3374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTimerAnimationView:Landroid/widget/TextView;

    .line 3375
    return-void
.end method

.method private restoreDefaults()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4630
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    .line 4663
    :cond_0
    :goto_0
    return-void

    .line 4632
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    .line 4634
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/CameraActivity;->setSmartHintShouldShow(Z)V

    .line 4635
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/CameraActivity;->setSmartHintHasShown(Z)V

    .line 4637
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/CameraActivity;->setHdrHintShownState(Z)V

    .line 4640
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/CameraActivity;->setMeterHintShownState(Z)V

    .line 4643
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/CameraActivity;->setVoicePhotoHintShownState(Z)V

    .line 4645
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->setFirstTimeForHwScope(Z)V

    .line 4646
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4647
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 4648
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v1, v2, v0}, Lcom/android/hwcamera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 4649
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_zoom_value_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomValue:I

    .line 4652
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_camera_restore_key"

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->listPrefsExceptKey(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/PhotoModule;->onSharedPreferencesChanged(Ljava/util/List;)V

    .line 4655
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/settings/MenuController;->initialize(I)V

    .line 4658
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/BeautyEffect;->reload()V

    .line 4659
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->doUpdateFlashModeUI()V

    .line 4660
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeZoom()V

    .line 4661
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->restoreDefaults()V

    .line 4662
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastSnapShotTime:J

    goto :goto_0
.end method

.method private restoreSmallPreviewTipsUI()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 2854
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2856
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 2858
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f100012

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2859
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f100209

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2861
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->checkPictureRemainsTextShow()V

    .line 2863
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2867
    :goto_0
    return-void

    .line 2864
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showUI()V

    .line 2865
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showBackGround()V

    .line 2866
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private resumeMusicAndFMVolum()V
    .locals 3

    .prologue
    .line 3006
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mMusicVolumnBeforeTaken:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3007
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mMusicVolumnBeforeTaken:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/Util;->setVolumToChannel(Landroid/app/Activity;II)V

    .line 3010
    :cond_0
    return-void
.end method

.method private resumeSoundShutterIfNeeded()V
    .locals 5

    .prologue
    .line 2677
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_sound_snapshot_key"

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0179

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2679
    const/4 v0, 0x0

    .line 2680
    .local v0, isMute:Z
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->tryMuteSoundPlayer()Z

    move-result v0

    .line 2682
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x18

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2685
    .end local v0           #isMute:Z
    :cond_0
    return-void

    .line 2682
    .restart local v0       #isMute:Z
    :cond_1
    const-wide/16 v1, 0x5dc

    goto :goto_0
.end method

.method private saveImage([BIIIZLandroid/location/Location;Z)Ljava/lang/String;
    .locals 14
    .parameter "jpegData"
    .parameter "Width"
    .parameter "Height"
    .parameter "Orientation"
    .parameter "isHdr"
    .parameter "mLocation"
    .parameter "updateThumbnail"
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "RCN_REDUNDANT_NULLCHECK_OF_NONNULL_VALUE"
        }
    .end annotation

    .prologue
    .line 5884
    const/4 v2, 0x0

    .line 5885
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 5886
    .local v3, title:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_9

    .line 5887
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageNamer:Lcom/android/hwcamera/PhotoModule$ImageNamer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageSaver:Lcom/android/hwcamera/PhotoModule$ImageSaver;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 5942
    :goto_0
    return-object v0

    .line 5889
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mQuickUriList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5892
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mQuickUriList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/hwcamera/PhotoModule$PictureUri;

    .line 5895
    .local v13, pictureUri:Lcom/android/hwcamera/PhotoModule$PictureUri;
    if-eqz v13, :cond_2

    .line 5896
    iget-object v2, v13, Lcom/android/hwcamera/PhotoModule$PictureUri;->mUri:Landroid/net/Uri;

    .line 5897
    iget-object v3, v13, Lcom/android/hwcamera/PhotoModule$PictureUri;->mTitle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5905
    .end local v13           #pictureUri:Lcom/android/hwcamera/PhotoModule$PictureUri;
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    if-nez v3, :cond_5

    .line 5906
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 5907
    .local v11, now:J
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageNamer:Lcom/android/hwcamera/PhotoModule$ImageNamer;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .end local v2           #uri:Landroid/net/Uri;
    iget v6, p0, Lcom/android/hwcamera/PhotoModule;->mJpegRotation:I

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/PhotoModule$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    .line 5908
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageNamer:Lcom/android/hwcamera/PhotoModule$ImageNamer;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule$ImageNamer;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 5909
    .restart local v2       #uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageNamer:Lcom/android/hwcamera/PhotoModule$ImageNamer;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule$ImageNamer;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 5910
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create name time :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v11

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5922
    .end local v11           #now:J
    :cond_4
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveImage, uri = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5923
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/CameraActivity;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 5924
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageNamer:Lcom/android/hwcamera/PhotoModule$ImageNamer;

    if-nez v0, :cond_6

    .line 5925
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2}, Lcom/android/hwcamera/storage/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 5926
    const-string v0, "CAM_PhotoModule"

    const-string v1, "storePostImage deleteImage uri"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5927
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5900
    :catch_0
    move-exception v10

    .line 5901
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Get uri from mQuickUriList error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5917
    .end local v10           #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 5918
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5929
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageSaver:Lcom/android/hwcamera/PhotoModule$ImageSaver;

    if-nez v0, :cond_7

    .line 5930
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2}, Lcom/android/hwcamera/storage/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 5931
    const-string v0, "CAM_PhotoModule"

    const-string v1, "storePostImage deleteImage uri"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5932
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5934
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageSaver:Lcom/android/hwcamera/PhotoModule$ImageSaver;

    move-object v1, p1

    move-object/from16 v4, p6

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/hwcamera/PhotoModule$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIZZ)V

    .line 5939
    :goto_2
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_8

    .line 5940
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->imageCaptureShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    move-object v0, v3

    .line 5942
    goto/16 :goto_0

    .line 5936
    :cond_9
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule;->mJpegImageData:[B

    goto :goto_2
.end method

.method private setAutoExposureLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 3952
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 3953
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 3955
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 3959
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 3960
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 3962
    :cond_0
    return-void
.end method

.method private setBestPhotoIfImmediately(ZZ)V
    .locals 3
    .parameter "isbestPhotoOn"
    .parameter "isImmediately"

    .prologue
    .line 4901
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "hw-best-photo-mode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4902
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4903
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 4
    .parameter "updateSet"

    .prologue
    const-wide/16 v2, 0x400

    .line 4321
    const-string v0, "PhotoModule.setCameraParameters"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4322
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 4371
    :goto_0
    return-void

    .line 4323
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 4324
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->updateCameraParametersInitialize()V

    .line 4327
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 4328
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->updateCameraParametersZoom()V

    .line 4331
    :cond_2
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    .line 4333
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule;->updateCameraParametersPreference(I)V

    .line 4343
    :cond_3
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 4344
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 4346
    :cond_4
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isInMeterShootMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4349
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->updateCameraParametersMetering()V

    .line 4352
    :cond_5
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mJpegRotation:I

    .line 4353
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 4355
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4363
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isMTKPanorama()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4364
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->initMTKPanorama()V

    .line 4367
    :cond_6
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isMav()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4368
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->initMav()V

    .line 4370
    :cond_7
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter "additionalUpdateSet"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 4517
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mUpdateSet:I

    .line 4518
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 4521
    iput v1, p0, Lcom/android/hwcamera/PhotoModule;->mUpdateSet:I

    .line 4532
    :cond_0
    :goto_0
    return-void

    .line 4523
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4524
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/hwcamera/PhotoModule;->setCameraParameters(I)V

    .line 4525
    iput v1, p0, Lcom/android/hwcamera/PhotoModule;->mUpdateSet:I

    goto :goto_0

    .line 4527
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4528
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 3715
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mDisplayRotation:I

    .line 3716
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mDisplayOrientation:I

    .line 3717
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDisplayOrientation:I

    .line 3718
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    if-eqz v0, :cond_0

    .line 3719
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/indicator/FaceView;->setDisplayOrientation(I)V

    .line 3721
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 3722
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 3724
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v0, :cond_2

    .line 3725
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/TargetView;->setDisplayOrientation(I)V

    .line 3728
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 3729
    return-void
.end method

.method private setFaceMeteringAreas()V
    .locals 4

    .prologue
    .line 3974
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getFocusPolicyService()Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->getFaceMeteringAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;

    move-result-object v0

    .line 3975
    .local v0, area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setfoucsparaeter FaceMetering"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/hwcamera/Util;->areasToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "hw-face-ae-area"

    invoke-static {v0}, Lcom/android/hwcamera/Util;->areasToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3977
    return-void
.end method

.method private setFlashMode()V
    .locals 4

    .prologue
    const/16 v3, 0x11

    .line 5489
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getFlashEnable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/PhotoModule;->updateFlashUI(Z)V

    .line 5490
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5491
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->setFlashParameter()V

    .line 5493
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 5502
    :cond_0
    :goto_0
    return-void

    .line 5495
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5496
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_0

    .line 5498
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5499
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setFlashParameter()V
    .locals 6

    .prologue
    .line 4276
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->getFlashSupportedValues(Landroid/hardware/Camera$Parameters;I)Ljava/util/List;

    move-result-object v1

    .line 4278
    .local v1, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v2}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4279
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_front_flashmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v5, 0x7f0d0169

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4290
    .local v0, flashMode:Ljava/lang/String;
    :goto_0
    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4292
    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v2}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4293
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "lcd-compensate-supported"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4305
    :cond_0
    :goto_1
    return-void

    .line 4282
    .end local v0           #flashMode:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getFlashEnable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4283
    const-string v0, "off"

    .restart local v0       #flashMode:Ljava/lang/String;
    goto :goto_0

    .line 4285
    .end local v0           #flashMode:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_flashmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v5, 0x7f0d0096

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #flashMode:Ljava/lang/String;
    goto :goto_0

    .line 4295
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 4299
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 4300
    if-nez v0, :cond_0

    .line 4301
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f0d0097

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setFocusAreasIfSupported()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 3966
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v1, :cond_0

    .line 3967
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getFocusPolicyService()Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->getFocusAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;

    move-result-object v0

    .line 3968
    .local v0, area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string v2, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setfoucsparaeter mFocusArea"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v1, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 3971
    .end local v0           #area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_0
    return-void

    .line 3968
    .restart local v0       #area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_1
    const-string v1, "null"

    goto :goto_0
.end method

.method private setMeteringAreasIfSupported()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 3981
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_0

    .line 3983
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getFocusPolicyService()Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->getMeteringAreas(Lcom/android/hwcamera/FocusOverlayManager;)Ljava/util/List;

    move-result-object v0

    .line 3984
    .local v0, area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string v2, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setfoucsparaeter meteringArea"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v1, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 3987
    .end local v0           #area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_0
    return-void

    .line 3984
    .restart local v0       #area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_1
    const-string v1, "null"

    goto :goto_0
.end method

.method private setPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "editor"
    .parameter "KEY"
    .parameter "value"

    .prologue
    .line 1009
    if-nez p3, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, p2, p3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1013
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 4541
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4542
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 4543
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    .line 4544
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCropValue:Ljava/lang/String;

    .line 4546
    :cond_0
    return-void
.end method

.method private setupPreview()V
    .locals 1

    .prologue
    .line 3734
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3742
    :goto_0
    return-void

    .line 3738
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->resetTouchFocus()V

    .line 3739
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->startPreview()V

    .line 3740
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 3741
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->startFaceDetection()V

    goto :goto_0
.end method

.method private showLongPressBurstHint()V
    .locals 3

    .prologue
    .line 5699
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5700
    .local v0, msg:Landroid/os/Message;
    const v2, 0x7f0d0171

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 5701
    new-instance v1, Lcom/android/hwcamera/PhotoModule$26;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$26;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    .line 5707
    .local v1, runnable:Ljava/lang/Runnable;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5708
    const/16 v2, 0x15

    iput v2, v0, Landroid/os/Message;->what:I

    .line 5709
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5710
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 5

    .prologue
    const v4, 0x7f100124

    const/4 v3, 0x4

    .line 4549
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_0

    .line 4550
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mJpegImageData:[B

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/PhotoModule;->showPictureReview([B)V

    .line 4551
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mReviewDoneButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 4552
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 4553
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mReviewCancelButton:Lcom/android/hwcamera/ui/Rotatable;

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 4554
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->hideMenu()V

    .line 4555
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v1}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 4557
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v2, 0x7f1001d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateTextView;

    .line 4558
    .local v0, remainPicText:Lcom/android/hwcamera/ui/RotateTextView;
    invoke-virtual {v0, v3}, Lcom/android/hwcamera/ui/RotateTextView;->setVisibility(I)V

    .line 4561
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isInMeterShootMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4563
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4567
    .end local v0           #remainPicText:Lcom/android/hwcamera/ui/RotateTextView;
    :cond_0
    return-void
.end method

.method private showSmallPreviewTipsUI()V
    .locals 6

    .prologue
    const v5, 0x7f100209

    const/4 v4, 0x0

    .line 2835
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2851
    :goto_0
    return-void

    .line 2836
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v3, 0x7f100012

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2838
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2, v5}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2839
    .local v1, smallTipsLayout:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2841
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1001d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateTextView;

    .line 2842
    .local v0, remainPicText:Lcom/android/hwcamera/ui/RotateTextView;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ui/RotateTextView;->setVisibility(I)V

    .line 2844
    new-instance v2, Lcom/android/hwcamera/PhotoModule$11;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/PhotoModule$11;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private startFaceDetectionUI()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1392
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v3}, Lcom/android/hwcamera/ui/indicator/FaceView;->clear()V

    .line 1393
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v3, v2}, Lcom/android/hwcamera/ui/indicator/FaceView;->setVisibility(I)V

    .line 1394
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    iget v4, p0, Lcom/android/hwcamera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/ui/indicator/FaceView;->setDisplayOrientation(I)V

    .line 1395
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    aget-object v0, v3, v4

    .line 1396
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/hwcamera/ui/indicator/FaceView;->setMirror(Z)V

    .line 1397
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/indicator/FaceView;->resume()V

    .line 1398
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/FocusOverlayManager;->setFaceView(Lcom/android/hwcamera/ui/indicator/FaceView;)V

    .line 1399
    return-void

    :cond_0
    move v1, v2

    .line 1396
    goto :goto_0
.end method

.method private startPreview()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x400

    .line 3748
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v7, :cond_0

    .line 3749
    const-string v7, "CAM_PhotoModule"

    const-string v8, "startPreview : mCameraDevice == null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    :goto_0
    return-void

    .line 3753
    :cond_0
    const-string v7, "PhotoModule.startPreview"

    invoke-static {v10, v11, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3754
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v8, p0, Lcom/android/hwcamera/PhotoModule;->mErrorCallback:Lcom/android/hwcamera/CameraErrorCallback;

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3759
    iget v7, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    if-eqz v7, :cond_1

    .line 3760
    const-string v7, "CAM_PhotoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCameraState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->stopPreview()V

    .line 3765
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->setDisplayOrientation()V

    .line 3767
    iget-boolean v7, p0, Lcom/android/hwcamera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v7, :cond_3

    .line 3770
    const-string v7, "continuous-picture"

    iget-object v8, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v8}, Lcom/android/hwcamera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3771
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v7}, Lcom/android/hwcamera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3773
    :cond_2
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 3775
    :cond_3
    const/4 v7, -0x1

    invoke-direct {p0, v7}, Lcom/android/hwcamera/PhotoModule;->setCameraParameters(I)V

    .line 3777
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->updatePreviewFrameLayout()V

    .line 3778
    iget v7, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v7}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3779
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3782
    :cond_4
    sget-boolean v7, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v7, :cond_8

    .line 3784
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 3785
    .local v4, size:Landroid/hardware/Camera$Size;
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/hwcamera/CameraActivity;->getCameraScreenNail()Lcom/android/hwcamera/CameraScreenNail;

    move-result-object v2

    .line 3787
    .local v2, screenNail:Lcom/android/hwcamera/CameraScreenNail;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    .line 3788
    .local v6, width:I
    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    .line 3789
    .local v0, height:I
    iget v7, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_5

    .line 3790
    move v5, v6

    .line 3791
    .local v5, tmp:I
    move v6, v0

    .line 3792
    move v0, v5

    .line 3794
    .end local v5           #tmp:I
    :cond_5
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/hwcamera/CameraActivity;->getShotWide()I

    move-result v3

    .line 3795
    .local v3, shotwide:I
    int-to-float v7, v3

    const/high16 v8, 0x3f80

    mul-float/2addr v7, v8

    int-to-float v8, v6

    div-float v1, v7, v8

    .line 3796
    .local v1, ratio:F
    int-to-float v7, v0

    mul-float/2addr v7, v1

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v3, v7, v2, v8}, Lcom/android/hwcamera/Util;->updateCameraScreenNailSize(IILcom/android/hwcamera/CameraScreenNail;Lcom/android/hwcamera/CameraActivity;)V

    .line 3798
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    if-nez v7, :cond_6

    .line 3799
    invoke-virtual {v2}, Lcom/android/hwcamera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 3800
    invoke-virtual {v2}, Lcom/android/hwcamera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v7

    iput-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    .line 3803
    :cond_6
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget v8, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 3804
    iget-object v8, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v8, v7}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 3810
    .end local v0           #height:I
    .end local v1           #ratio:F
    .end local v2           #screenNail:Lcom/android/hwcamera/CameraScreenNail;
    .end local v3           #shotwide:I
    .end local v4           #size:Landroid/hardware/Camera$Size;
    .end local v6           #width:I
    :goto_1
    const-string v7, "CAM_PhotoModule"

    const-string v8, "startPreview"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v7}, Lcom/android/hwcamera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 3813
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v7}, Lcom/android/hwcamera/FocusOverlayManager;->onPreviewStarted()V

    .line 3815
    iget-boolean v7, p0, Lcom/android/hwcamera/PhotoModule;->mSnapshotOnIdle:Z

    if-eqz v7, :cond_7

    .line 3816
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/hwcamera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3818
    :cond_7
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 3806
    :cond_8
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget v8, p0, Lcom/android/hwcamera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 3807
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v8, p0, Lcom/android/hwcamera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    goto :goto_1
.end method

.method private startTargetTracking()V
    .locals 2

    .prologue
    .line 1335
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mStartTragetTracking:Z

    if-eqz v0, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->isSupportTargetTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->stopFaceDetection()V

    .line 1338
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->startTargetTracking(Landroid/hardware/Camera$Parameters;)V

    .line 1339
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1340
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1341
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x602

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mStartTragetTracking:Z

    .line 1343
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->setTargetView(Lcom/android/hwcamera/ui/TargetView;)V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3835
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 3836
    const-string v0, "CAM_PhotoModule"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3837
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopPreview()V

    .line 3838
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->stopFaceDetection()V

    .line 3839
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->stopTargetTracking()V

    .line 3840
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->cleanQuickUris()V

    .line 3842
    iput v2, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    .line 3844
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 3845
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->onPreviewStopped()V

    .line 3846
    :cond_1
    return-void
.end method

.method private stopTargetTracking()V
    .locals 2

    .prologue
    .line 1326
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mStartTragetTracking:Z

    if-nez v0, :cond_1

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopTargetTracking(Landroid/hardware/Camera$Parameters;)V

    .line 1328
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x601

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mStartTragetTracking:Z

    .line 1330
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->startFaceDetection()V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 8

    .prologue
    const/16 v7, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5204
    iget-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-eqz v4, :cond_1

    .line 5286
    :cond_0
    :goto_0
    return-void

    .line 5205
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v4}, Lcom/android/hwcamera/ui/indicator/FaceView;->clear()V

    .line 5206
    :cond_2
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start to switch camera. id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/hwcamera/PhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5207
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v4}, Lcom/android/hwcamera/tips/TipsService;->reset()V

    .line 5208
    :cond_3
    iget v4, p0, Lcom/android/hwcamera/PhotoModule;->mPendingSwitchCameraId:I

    iput v4, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    .line 5209
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/hwcamera/PhotoModule;->mPendingSwitchCameraId:I

    .line 5210
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    iget v5, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/settings/MenuController;->setCameraId(I)V

    .line 5212
    iget-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->cancelTimer()V

    .line 5216
    :cond_4
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->stopPreview()V

    .line 5218
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->closeCamera()V

    .line 5219
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->collapseCameraControls()Z

    .line 5222
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v5, "pref_zoom_value_key"

    invoke-static {v4, v5, v3}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 5223
    iput v3, p0, Lcom/android/hwcamera/PhotoModule;->mZoomValue:I

    .line 5227
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v4}, Lcom/android/hwcamera/settings/MenuController;->clearOverrideSettings()V

    .line 5229
    :cond_5
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v4}, Lcom/android/hwcamera/ui/indicator/FaceView;->clear()V

    .line 5230
    :cond_6
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v4}, Lcom/android/hwcamera/ui/TargetView;->clear()V

    .line 5232
    :cond_7
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/hwcamera/FocusOverlayManager;->resetTouchFocus()V

    .line 5234
    :cond_8
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/hwcamera/FocusOverlayManager;->removeMessages()V

    .line 5237
    :cond_9
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v5, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget v6, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 5238
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v4}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 5240
    :try_start_0
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget v5, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v4, v5}, Lcom/android/hwcamera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 5241
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->prepareSmallPreviewTips()V

    .line 5243
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraHolder;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->copy()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/hwcamera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5252
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeCapabilities()V

    .line 5253
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    iget v5, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    aget-object v1, v4, v5

    .line 5254
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v2, :cond_e

    .line 5255
    .local v2, mirror:Z
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v3, v2}, Lcom/android/hwcamera/FocusOverlayManager;->setMirror(Z)V

    .line 5256
    :cond_a
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5257
    :cond_b
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->setupPreview()V

    .line 5258
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->loadCameraPreferences()V

    .line 5259
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeMenuControl()V

    .line 5261
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initSoundShutter()V

    .line 5263
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->doUpdateFlashModeUI()V

    .line 5264
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->processSoundShutter()V

    .line 5266
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5267
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 5273
    :cond_c
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeZoom()V

    .line 5274
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->updatePictureRemainsText()V

    .line 5275
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v3, :cond_d

    .line 5278
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5280
    :cond_d
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5282
    iget v3, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v3}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5283
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->hideZoomController()V

    goto/16 :goto_0

    .line 5245
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v2           #mirror:Z
    :catch_0
    move-exception v0

    .line 5246
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0071

    invoke-static {v3, v4}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 5248
    .end local v0           #e:Lcom/android/hwcamera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 5249
    .local v0, e:Lcom/android/hwcamera/CameraDisabledException;
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0072

    invoke-static {v3, v4}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .end local v0           #e:Lcom/android/hwcamera/CameraDisabledException;
    .restart local v1       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_e
    move v2, v3

    .line 5254
    goto :goto_1
.end method

.method private tempChangeToBurst()V
    .locals 7

    .prologue
    .line 2461
    sget-object v2, Lcom/android/hwcamera/enm/ShotMode;->BURST:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2476
    :cond_0
    :goto_0
    return-void

    .line 2463
    :cond_1
    :try_start_0
    const-string v2, "BURST"

    invoke-static {v2}, Lcom/android/hwcamera/enm/ShotMode;->valueOf(Ljava/lang/String;)Lcom/android/hwcamera/enm/ShotMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2468
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    if-eqz v2, :cond_0

    .line 2470
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v3}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->useBackProcessIfNeeded()Z

    move-result v5

    iget v6, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/hwcamera/CameraManager$CameraProxy;->updateShootMode(Ljava/lang/String;Landroid/hardware/Camera$Parameters;ZI)Z

    move-result v1

    .line 2472
    .local v1, isupdateParameters:Z
    if-eqz v1, :cond_0

    .line 2473
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_0

    .line 2464
    .end local v1           #isupdateParameters:Z
    :catch_0
    move-exception v0

    .line 2466
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    goto :goto_1
.end method

.method private touchTarget(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v5, 0x14

    .line 3487
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusOverlayManager;->resetTouchFocus()V

    .line 3488
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v2, p1, p2}, Lcom/android/hwcamera/ui/TargetView;->transformToPreviewCoordinate(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 3489
    .local v1, rect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3501
    :cond_0
    :goto_0
    return-void

    .line 3493
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3494
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3495
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v2, p1, p2}, Lcom/android/hwcamera/ui/TargetView;->setLocation(II)V

    .line 3496
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v2}, Lcom/android/hwcamera/ui/TargetView;->showFocuing()V

    .line 3497
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

    .line 3498
    .local v0, coordinate:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "target-coordinates"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3499
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3500
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "target-coordinates"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tryGotoGooglePanorama()Z
    .locals 2

    .prologue
    .line 4740
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isMorphoPanoramaSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4741
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$20;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$20;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4747
    const/4 v0, 0x1

    .line 4749
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unInitPanorama()V
    .locals 2

    .prologue
    .line 4447
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 4453
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->enableOrientationListener()V

    .line 4454
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/settings/MenuController;->onOrientationChanged(I)V

    .line 4455
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/ColorEffect;->onOrientationChanged(I)V

    .line 4457
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v0, :cond_3

    .line 4458
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->hidePanoramaLayout()V

    .line 4459
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->resetTipsMargin()V

    .line 4463
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v0, :cond_4

    .line 4464
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 4467
    :cond_4
    return-void
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 4309
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4310
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-static {}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->newInstance()Lcom/android/hwcamera/feature/CameraCallbakProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v2, v3}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->bind(Ljava/lang/Object;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 4315
    :goto_0
    return-void

    .line 4313
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraActionPreference()V
    .locals 5

    .prologue
    .line 4374
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_target_tracking_key"

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0123

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4376
    .local v0, targetValue:Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4377
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->startTargetTracking()V

    .line 4381
    :goto_0
    return-void

    .line 4379
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->stopTargetTracking()V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 6

    .prologue
    .line 3852
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 3853
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 3854
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3855
    .local v1, max:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 3858
    .end local v1           #max:Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "recording-hint"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-stabilization-supported"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3863
    .local v2, vstabSupported:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3864
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "video-stabilization"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3866
    :cond_1
    return-void
.end method

.method private updateCameraParametersMetering()V
    .locals 2

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 2096
    const-string v0, "CAM_PhotoModule"

    const-string v1, "updateCameraParametersMetering mCameraDevice==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    :goto_0
    return-void

    .line 2099
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 2100
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2101
    const-string v0, "CAM_PhotoModule"

    const-string v1, "updateCameraParametersMetering is null!, get new mParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_0
.end method

.method private updateCameraParametersPreference(I)V
    .locals 33
    .parameter "updateSet"

    .prologue
    .line 3992
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->setAutoExposureLockIfSupported()V

    .line 3993
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 3994
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->setFocusAreasIfSupported()V

    .line 3995
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->setMeteringAreasIfSupported()V

    .line 3996
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->setFaceMeteringAreas()V

    .line 3998
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->isBestPhotoOn()Z

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/hwcamera/PhotoModule;->setBestPhotoIfImmediately(ZZ)V

    .line 3999
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->initSomeConfigs()V

    .line 4001
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->enableHdrMovieIfNeeded()V

    .line 4004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/hwcamera/CameraActivity;->tryMuteSoundPlayer()Z

    move-result v9

    .line 4005
    .local v9, isMute:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    const-string v29, "camera_sound_state"

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v27, v0

    const v30, 0x7f0d0119

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    :goto_0
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 4007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/hwcamera/Util;->isMirrorSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 4008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    const-string v28, "hw-capture-mirror-mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v29, v0

    const-string v30, "pref_camera_mirror_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v31, v0

    const v32, 0x7f0d0176

    invoke-virtual/range {v31 .. v32}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4012
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->getDefaultShotMode()Ljava/lang/String;

    move-result-object v20

    .line 4014
    .local v20, shootMode:Ljava/lang/String;
    const-string v27, "CAM_PhotoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "update shootmode="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4015
    if-eqz v20, :cond_e

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_e

    .line 4018
    :try_start_0
    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/hwcamera/enm/ShotMode;->valueOf(Ljava/lang/String;)Lcom/android/hwcamera/enm/ShotMode;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4025
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    .line 4027
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v27

    if-nez v27, :cond_d

    .line 4028
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->isMTKPanorama()Z

    move-result v27

    if-nez v27, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->isMav()Z

    move-result v27

    if-nez v27, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->isSmart()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 4029
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v23

    .line 4030
    .local v23, strCaptureMode:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->isSmart()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 4031
    const-string v23, "asd"

    .line 4033
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getSupportedCaptureMode()Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 4253
    .end local v23           #strCaptureMode:Ljava/lang/String;
    :goto_2
    return-void

    .line 4005
    .end local v20           #shootMode:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v27, v0

    const v30, 0x7f0d0118

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    goto/16 :goto_0

    .line 4020
    .restart local v20       #shootMode:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 4021
    .local v7, e:Ljava/lang/Exception;
    const-string v27, "CAM_PhotoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "cannot use this shootmode:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    goto/16 :goto_1

    .line 4038
    .end local v7           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v29, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->useBackProcessIfNeeded()Z

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    move/from16 v31, v0

    invoke-virtual/range {v27 .. v31}, Lcom/android/hwcamera/CameraManager$CameraProxy;->updateShootMode(Ljava/lang/String;Landroid/hardware/Camera$Parameters;ZI)Z

    move-result v11

    .line 4040
    .local v11, isupdateParameters:Z
    if-eqz v11, :cond_5

    .line 4041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4044
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureShotMode()Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lcom/android/hwcamera/feature/shot/IFeatureShotMode;->isNeedRestartPreview()Z

    move-result v27

    if-eqz v27, :cond_6

    const/16 v27, -0x1

    move/from16 v0, p1

    move/from16 v1, v27

    if-eq v0, v1, :cond_6

    .line 4047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 4052
    :cond_6
    sget-object v27, Lcom/android/hwcamera/enm/ShotMode;->PANORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual/range {v27 .. v27}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 4053
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->unInitPanorama()V

    .line 4059
    .end local v11           #isupdateParameters:Z
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 4060
    .local v14, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4061
    const/16 v27, 0x13

    move/from16 v0, v27

    iput v0, v14, Landroid/os/Message;->what:I

    .line 4062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4070
    .end local v14           #msg:Landroid/os/Message;
    :cond_8
    :goto_4
    const/16 v18, 0x0

    .line 4071
    .local v18, pictureSize:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    .line 4073
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/hwcamera/settings/MenuMutexConfigs;->getMutexConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v27

    const-string v28, "pref_camera_picturesize_key"

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;

    invoke-virtual/range {v27 .. v27}, Lcom/android/hwcamera/settings/MenuMutexConfigs$MenuMutexInfo;->getMutexValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 4078
    :cond_9
    :goto_5
    invoke-static/range {v18 .. v18}, Lcom/android/hwcamera/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v27, v0

    const-string v28, "pref_camera_picturesize_key"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    move/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/android/hwcamera/DefaultValue;->getDefaultValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 4079
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v24

    .line 4080
    .local v24, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v18, :cond_b

    invoke-static/range {v24 .. v24}, Lcom/android/hwcamera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v27

    if-nez v27, :cond_f

    .line 4081
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/hwcamera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 4087
    :goto_6
    const-string v27, "on"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v28, v0

    const-string v29, "pref_camera_smile_key"

    const-string v30, "off"

    invoke-virtual/range {v28 .. v30}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/hwcamera/PhotoModule;->mIsSmileCaptureState:Z

    .line 4088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/hwcamera/PhotoModule;->mIsSmileCaptureState:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setSmileDetection(Z)V

    .line 4090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v27, v0

    const-string v28, "pref_camera_iso_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v29, v0

    const v30, 0x7f0d00d7

    invoke-virtual/range {v29 .. v30}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4091
    .local v10, iso:Ljava/lang/String;
    const-string v27, "CAM_PhotoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "update iso ="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4092
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_c

    .line 4093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 4095
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v21

    .line 4099
    .local v21, size:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v22

    .line 4100
    .local v22, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/hwcamera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v15

    .line 4102
    .local v15, optimalSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v16

    .line 4103
    .local v16, original:Landroid/hardware/Camera$Size;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_12

    if-eqz v15, :cond_12

    .line 4104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v28, v0

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 4108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v17

    .line 4110
    .local v17, param:Landroid/hardware/Camera$Parameters;
    if-eqz v17, :cond_10

    .line 4111
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4115
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->needStartPreview()Z

    move-result v27

    if-eqz v27, :cond_12

    .line 4116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v27

    if-eqz v27, :cond_11

    const-wide/16 v27, 0x0

    :goto_8
    move-object/from16 v0, v29

    move/from16 v1, v30

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 4056
    .end local v10           #iso:Ljava/lang/String;
    .end local v15           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v16           #original:Landroid/hardware/Camera$Size;
    .end local v17           #param:Landroid/hardware/Camera$Parameters;
    .end local v18           #pictureSize:Ljava/lang/String;
    .end local v21           #size:Landroid/hardware/Camera$Size;
    .end local v22           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v24           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->initPanorama()V

    goto/16 :goto_3

    .line 4067
    :cond_e
    const-string v27, "CAM_PhotoModule"

    const-string v28, "cannot  find  shootmode"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4074
    .restart local v18       #pictureSize:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 4075
    .restart local v7       #e:Ljava/lang/Exception;
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 4083
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v24       #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_6

    .line 4113
    .restart local v10       #iso:Ljava/lang/String;
    .restart local v15       #optimalSize:Landroid/hardware/Camera$Size;
    .restart local v16       #original:Landroid/hardware/Camera$Size;
    .restart local v17       #param:Landroid/hardware/Camera$Parameters;
    .restart local v21       #size:Landroid/hardware/Camera$Size;
    .restart local v22       #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_10
    const-string v27, "CAM_PhotoModule"

    const-string v28, "mCameraDevice.getParameters() return null pointer!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4116
    :cond_11
    const-wide/16 v27, 0x12c

    goto :goto_8

    .line 4120
    .end local v17           #param:Landroid/hardware/Camera$Parameters;
    :cond_12
    if-eqz v15, :cond_13

    const-string v27, "CAM_PhotoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Preview size is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "x"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4123
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v27, v0

    const-string v28, "pref_camera_antibanding_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v29, v0

    const v30, 0x7f0d01aa

    invoke-virtual/range {v29 .. v30}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4125
    .local v4, antiBanding:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v27

    if-eqz v27, :cond_14

    .line 4126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 4133
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    move-object/from16 v27, v0

    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v27

    sget-object v28, Lcom/android/hwcamera/enm/ShotMode;->SINGLE:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual/range {v28 .. v28}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 4134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v27, v0

    const-string v28, "pref_camera_scenemode_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v29, v0

    const v30, 0x7f0d00a4

    invoke-virtual/range {v29 .. v30}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 4137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v27

    if-eqz v27, :cond_1e

    .line 4138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_15

    .line 4139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 4140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4152
    :cond_15
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 4153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_16

    .line 4154
    const-string v27, "auto"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 4157
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/hwcamera/PhotoModule;->updateEffect(Landroid/hardware/Camera$Parameters;)V

    .line 4159
    const-string v27, "CAM_PhotoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "!! mSceneMode = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/hwcamera/CustomConfiguration;->getJpegQuality(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 4168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/hwcamera/CameraSettings;->readExposure(Lcom/android/hwcamera/ComboPreferences;)I

    move-result v25

    .line 4169
    .local v25, value:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v12

    .line 4170
    .local v12, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v13

    .line 4171
    .local v13, min:I
    move/from16 v0, v25

    if-lt v0, v13, :cond_1f

    move/from16 v0, v25

    if-gt v0, v12, :cond_1f

    .line 4172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 4177
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    const-string v28, "contrast-values"

    invoke-virtual/range {v27 .. v28}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_17

    .line 4178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v27, v0

    const-string v28, "pref_camera_contrast_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v29, v0

    const v30, 0x7f0d012c

    invoke-virtual/range {v29 .. v30}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4181
    .local v6, contrastValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    const-string v28, "contrast"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4184
    .end local v6           #contrastValue:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    const-string v28, "saturation-values"

    invoke-virtual/range {v27 .. v28}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_18

    .line 4185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v27, v0

    const-string v28, "pref_camera_saturation_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v29, v0

    const v30, 0x7f0d012f

    invoke-virtual/range {v29 .. v30}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4188
    .local v19, saturatValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    const-string v28, "saturation"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4191
    .end local v19           #saturatValue:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    const-string v28, "brightness-values"

    invoke-virtual/range {v27 .. v28}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_19

    .line 4192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v27, v0

    const-string v28, "pref_camera_brightness_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v29, v0

    const v30, 0x7f0d0131

    invoke-virtual/range {v29 .. v30}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4195
    .local v5, brightnessValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    const-string v28, "brightness"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4199
    .end local v5           #brightnessValue:Ljava/lang/String;
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->setFlashParameter()V

    .line 4202
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->checkSceneMode()Z

    move-result v27

    if-eqz v27, :cond_21

    .line 4206
    const-string v27, "auto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 4208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    move-object/from16 v27, v0

    const-string v28, "pref_camera_whitebalance_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v29, v0

    const v30, 0x7f0d009d

    invoke-virtual/range {v29 .. v30}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 4211
    .local v26, whiteBalance:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v27

    if-eqz v27, :cond_20

    .line 4213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 4224
    .end local v26           #whiteBalance:Ljava/lang/String;
    :cond_1a
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/hwcamera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4226
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->isInMeterShootMode()Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 4227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    move-object/from16 v27, v0

    const-string v28, "auto"

    invoke-virtual/range {v27 .. v28}, Lcom/android/hwcamera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 4230
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/hwcamera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v8

    .line 4231
    .local v8, foucsMode:Ljava/lang/String;
    const-string v27, "CAM_PhotoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "update foucs mode :"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    if-eqz v8, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 4241
    .end local v8           #foucsMode:Ljava/lang/String;
    :cond_1c
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/hwcamera/PhotoModule;->mContinousFocusSupported:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1d

    sget-boolean v27, Lcom/android/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v27, :cond_1d

    .line 4242
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->updateAutoFocusMoveCallback()V

    .line 4244
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/hwcamera/CustomConfiguration;->isHwScopeSupported(I)Z

    move-result v27

    if-eqz v27, :cond_24

    .line 4245
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->needHwScope()Z

    move-result v27

    if-eqz v27, :cond_23

    .line 4246
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->openHwScopeIfNeeded()V

    goto/16 :goto_2

    .line 4144
    .end local v12           #max:I
    .end local v13           #min:I
    .end local v25           #value:I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    .line 4145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_15

    .line 4146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    move-object/from16 v27, v0

    const v28, 0x7f0d00a4

    invoke-virtual/range {v27 .. v28}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_9

    .line 4174
    .restart local v12       #max:I
    .restart local v13       #min:I
    .restart local v25       #value:I
    :cond_1f
    const-string v27, "CAM_PhotoModule"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "invalid exposure range: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 4215
    .restart local v26       #whiteBalance:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v26

    .line 4216
    if-nez v26, :cond_1a

    .line 4217
    const-string v27, "auto"

    goto/16 :goto_b

    .line 4235
    .end local v26           #whiteBalance:Ljava/lang/String;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->isInMeterShootMode()Z

    move-result v27

    if-eqz v27, :cond_22

    .line 4236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    move-object/from16 v27, v0

    const-string v28, "auto"

    invoke-virtual/range {v27 .. v28}, Lcom/android/hwcamera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 4238
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/hwcamera/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 4248
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->closeHwScopeIfNeeded()V

    goto/16 :goto_2

    .line 4251
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/PhotoModule;->closeHwScopeIfNeeded()V

    goto/16 :goto_2
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 3933
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CustomConfiguration;->isHwScopeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->needHwScope()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3934
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->processHwScope()V

    .line 3938
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomValue:I

    invoke-direct {p0, v0}, Lcom/android/hwcamera/PhotoModule;->updateCameraZoomValue(I)V

    .line 3940
    return-void
.end method

.method private updateCameraZoomValue(I)V
    .locals 1
    .parameter "zoomValue"

    .prologue
    .line 3944
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3945
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 3947
    :cond_0
    return-void
.end method

.method private updateEffect(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    .line 5602
    if-nez p1, :cond_0

    .line 5606
    :goto_0
    return-void

    .line 5603
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 5604
    .local v0, defaultlevel:I
    const-string v2, "hw-omron-face-beauty-level"

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->BEAUTY:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v3}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_beauty"

    invoke-virtual {v1, v3, v0}, Lcom/android/hwcamera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_1
    invoke-virtual {p1, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 5605
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->COLOREFFECT:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/ColorEffect;->getCurrentColorEffect()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 5604
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 5605
    :cond_2
    const-string v1, "none"

    goto :goto_2
.end method

.method private updateFlashUI(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 5505
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-nez v0, :cond_0

    .line 5516
    :goto_0
    return-void

    .line 5506
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$25;

    invoke-direct {v1, p0, p1}, Lcom/android/hwcamera/PhotoModule$25;-><init>(Lcom/android/hwcamera/PhotoModule;Z)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updatePreviewFrameLayout()V
    .locals 2

    .prologue
    .line 3822
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isUiThread(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3823
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->setPreviewFrameLayoutAspectRatio()V

    .line 3832
    :goto_0
    return-void

    .line 3825
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$15;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$15;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateSceneModeUI()V
    .locals 0

    .prologue
    .line 2205
    return-void
.end method

.method private useBackProcessIfNeeded()Z
    .locals 1

    .prologue
    .line 4256
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitProcessDone(Z)V
    .locals 2
    .parameter "isPressBackMenu"

    .prologue
    .line 2455
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureShotMode()Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    move-result-object v0

    .line 2456
    .local v0, featureShotMode:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/hwcamera/feature/shot/IFeatureShotMode;->waitProcessDone(Z)V

    .line 2457
    :cond_0
    return-void

    .line 2455
    .end local v0           #featureShotMode:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateCapture()V
    .locals 2

    .prologue
    .line 1907
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/hwcamera/CameraScreenNail;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraScreenNail;->animateCapture(I)V

    .line 1912
    :cond_0
    return-void
.end method

.method public animateFlash()V
    .locals 2

    .prologue
    .line 1896
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 1899
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/hwcamera/CameraScreenNail;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraScreenNail;->animateFlash(I)V

    .line 1901
    :cond_0
    return-void
.end method

.method public animateSlide()V
    .locals 2

    .prologue
    .line 1915
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/hwcamera/CameraScreenNail;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraScreenNail;->animateSlide(I)V

    .line 1919
    :cond_0
    return-void
.end method

.method public autoFocus()V
    .locals 4

    .prologue
    .line 3410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusStartTime:J

    .line 3411
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-static {}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->newInstance()Lcom/android/hwcamera/feature/CameraCallbakProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mAutoFocusCallback:Lcom/android/hwcamera/PhotoModule$AutoFocusCallback;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v2, v3}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->bind(Ljava/lang/Object;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 3412
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 3413
    return-void
.end method

.method public canGotoGallery()Z
    .locals 1

    .prologue
    .line 5408
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isCameraIdle()Z

    move-result v0

    return v0
.end method

.method public canRecording()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 6322
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getStorageSpace()J

    move-result-wide v1

    const-wide/32 v3, 0x1400000

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 6323
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->showStorageHintMessage()V

    .line 6333
    :cond_0
    :goto_0
    return v0

    .line 6327
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isClickToGallery()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6332
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 3419
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/hwcamera/PhotoModule;->setCameraParameters(I)V

    .line 3420
    return-void
.end method

.method public capture()Z
    .locals 15

    .prologue
    const-wide/16 v13, 0x400

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1923
    const-string v0, "PhotoModule.capture"

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1925
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v10

    .line 2071
    :goto_0
    return v0

    .line 1929
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1931
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-nez v0, :cond_1

    move v0, v10

    .line 1933
    goto :goto_0

    .line 1937
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideAllOnsreenHint()V

    .line 1938
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->onClickShootingButton()V

    move v0, v11

    .line 1939
    goto :goto_0

    .line 1941
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isMTKPanorama()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1942
    const-string v0, "CAM_PhotoModule"

    const-string v1, " call capture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    if-nez v0, :cond_3

    move v0, v10

    .line 1945
    goto :goto_0

    .line 1950
    :cond_3
    :try_start_0
    const-string v0, "CAM_PhotoModule"

    const-string v1, "add sleep code"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1956
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideAllOnsreenHint()V

    .line 1958
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mJpegRotation:I

    .line 1959
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1960
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->stopFaceDetection()V

    .line 1961
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    .line 1962
    .local v8, loc:Landroid/location/Location;
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v8}, Lcom/android/hwcamera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1963
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1964
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->onClickShootingButton()V

    move v0, v11

    .line 1967
    goto :goto_0

    .line 1952
    .end local v8           #loc:Landroid/location/Location;
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    move v0, v10

    .line 1953
    goto :goto_0

    .line 1969
    .end local v7           #e:Ljava/lang/InterruptedException;
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isMav()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1970
    const-string v0, "CAM_PhotoModule"

    const-string v1, " mav call capture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    if-nez v0, :cond_5

    .line 1972
    const-string v0, "CAM_PhotoModule"

    const-string v1, "mMavManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 1973
    goto/16 :goto_0

    .line 1977
    :cond_5
    :try_start_1
    const-string v0, "CAM_PhotoModule"

    const-string v1, "add sleep code"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1983
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideAllOnsreenHint()V

    .line 1985
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mJpegRotation:I

    .line 1986
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1987
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->stopFaceDetection()V

    .line 1988
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    .line 1989
    .restart local v8       #loc:Landroid/location/Location;
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v8}, Lcom/android/hwcamera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1990
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1991
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/MavManager;->onClickShootingButton()V

    move v0, v11

    .line 1992
    goto/16 :goto_0

    .line 1979
    .end local v8           #loc:Landroid/location/Location;
    :catch_1
    move-exception v7

    .restart local v7       #e:Ljava/lang/InterruptedException;
    move v0, v10

    .line 1980
    goto/16 :goto_0

    .line 1996
    .end local v7           #e:Ljava/lang/InterruptedException;
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    if-eq v0, v12, :cond_7

    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    :cond_7
    move v0, v10

    .line 1998
    goto/16 :goto_0

    .line 2001
    :cond_8
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->hideZoomController()V

    .line 2003
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v0}, Lcom/android/hwcamera/ZoomController;->isZooming()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v10

    .line 2004
    goto/16 :goto_0

    .line 2008
    :cond_9
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mLongPressBurst:Z

    if-eqz v0, :cond_d

    .line 2009
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->tempChangeToBurst()V

    .line 2010
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mPictureRemains:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_a

    .line 2011
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureShotMode()Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mPictureRemains:I

    invoke-interface {v0, v1}, Lcom/android/hwcamera/feature/shot/IFeatureShotMode;->setMaxPictureNum(I)V

    .line 2013
    :cond_a
    iput-boolean v10, p0, Lcom/android/hwcamera/PhotoModule;->mLongPressBurst:Z

    .line 2019
    :goto_1
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsTouchSnapshot:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsTouchCapture:Z

    if-eqz v0, :cond_b

    .line 2020
    iput-boolean v10, p0, Lcom/android/hwcamera/PhotoModule;->mIsTouchCapture:Z

    .line 2022
    :try_start_2
    const-string v0, "CAM_PhotoModule"

    const-string v1, "add mIsTouchSnapshot sleep code"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getCameraScreenNail()Lcom/android/hwcamera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraScreenNail;->getmFramefps()J

    move-result-wide v0

    const-wide/16 v2, 0x6

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2029
    :cond_b
    const-string v0, "CAM_PhotoModule"

    const-string v1, "FLOW capture begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    iput v10, p0, Lcom/android/hwcamera/PhotoModule;->mSceneCount:I

    .line 2033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/PhotoModule;->mCaptureStartTime:J

    .line 2034
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/PhotoModule;->mPostViewPictureCallbackTime:J

    .line 2035
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mJpegImageData:[B

    .line 2038
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->stopTargetTracking()V

    .line 2040
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mJpegRotation:I

    .line 2041
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2042
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    .line 2043
    .restart local v8       #loc:Landroid/location/Location;
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v8}, Lcom/android/hwcamera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2044
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->stopFaceDetection()V

    .line 2046
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->setFlashParameter()V

    .line 2048
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2050
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    if-eqz v0, :cond_c

    .line 2051
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundShutter;->pauseShutter()V

    .line 2054
    :cond_c
    invoke-static {}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->newInstance()Lcom/android/hwcamera/feature/CameraCallbakProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureShotMode()Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    move-result-object v1

    const-string v2, "hdr"

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1, v8, v2, p0}, Lcom/android/hwcamera/feature/shot/IFeatureShotMode;->genJpegPictureCallback(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/feature/CameraCallbakProxy;->bind(Ljava/lang/Object;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$PictureCallback;

    .line 2056
    .local v4, pictureCallbackProxy:Landroid/hardware/Camera$PictureCallback;
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShutterCallback:Lcom/android/hwcamera/PhotoModule$ShutterCallback;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mRawPictureCallback:Lcom/android/hwcamera/PhotoModule$RawPictureCallback;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mPostViewPictureCallback:Lcom/android/hwcamera/PhotoModule$PostViewPictureCallback;

    iget v5, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    iget-object v6, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v6}, Lcom/android/hwcamera/FocusOverlayManager;->getFocusState()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/CameraManager$CameraProxy;->takePicture2(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)I

    move-result v9

    .line 2057
    .local v9, ret:I
    if-eqz v9, :cond_e

    move v0, v10

    goto/16 :goto_0

    .line 2015
    .end local v4           #pictureCallbackProxy:Landroid/hardware/Camera$PictureCallback;
    .end local v8           #loc:Landroid/location/Location;
    .end local v9           #ret:I
    :cond_d
    iput-boolean v11, p0, Lcom/android/hwcamera/PhotoModule;->mGenUriEarlier:Z

    goto/16 :goto_1

    .line 2024
    :catch_2
    move-exception v7

    .restart local v7       #e:Ljava/lang/InterruptedException;
    move v0, v10

    .line 2025
    goto/16 :goto_0

    .line 2060
    .end local v7           #e:Ljava/lang/InterruptedException;
    .restart local v4       #pictureCallbackProxy:Landroid/hardware/Camera$PictureCallback;
    .restart local v8       #loc:Landroid/location/Location;
    .restart local v9       #ret:I
    :cond_e
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2063
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->previewEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v10

    goto/16 :goto_0

    .line 2064
    :cond_f
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v10}, Lcom/android/hwcamera/CameraActivity;->setOrientationEnableWhenCapture(Z)V

    .line 2067
    iput-boolean v10, p0, Lcom/android/hwcamera/PhotoModule;->mShouldFastCapture:Z

    .line 2069
    invoke-virtual {p0, v12}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 2070
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v11

    .line 2071
    goto/16 :goto_0
.end method

.method public cleanQuickUris()V
    .locals 4

    .prologue
    .line 6089
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mQuickUriList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6097
    :goto_0
    return-void

    .line 6091
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mQuickUriList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/PhotoModule$PictureUri;

    .line 6092
    .local v1, pictureUri:Lcom/android/hwcamera/PhotoModule$PictureUri;
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, v1, Lcom/android/hwcamera/PhotoModule$PictureUri;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/hwcamera/storage/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1

    .line 6094
    .end local v1           #pictureUri:Lcom/android/hwcamera/PhotoModule$PictureUri;
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mQuickUriList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 6095
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->updateThumbnail()V

    .line 6096
    const-string v2, "CAM_PhotoModule"

    const-string v3, "Unused quick uri cleaned!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearFakePictureNum()V
    .locals 1

    .prologue
    .line 864
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    .line 865
    return-void
.end method

.method public collapseCameraControls()Z
    .locals 2

    .prologue
    .line 2216
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->collapseCameraControlsForGoogle()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->collapseCameraControlsForUs()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public dismissPopup(Z)V
    .locals 1
    .parameter "topPopupOnly"

    .prologue
    .line 5392
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/PhotoModule;->dismissPopup(ZZ)V

    .line 5393
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 1427
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1432
    :goto_0
    return v0

    .line 1429
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    if-eqz v0, :cond_2

    .line 1430
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/PreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1432
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doSmileCapture(I)V
    .locals 6
    .parameter "smileScore"

    .prologue
    const/16 v5, 0xe

    const/4 v4, 0x0

    .line 5444
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    if-eqz v0, :cond_1

    .line 5472
    :cond_0
    :goto_0
    return-void

    .line 5448
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuController;->isMenuOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5450
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsSmileCaptureState:Z

    if-nez v0, :cond_2

    .line 5451
    iput v4, p0, Lcom/android/hwcamera/PhotoModule;->mSmileRepeateCount:I

    goto :goto_0

    .line 5455
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 5456
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showStorageHintMessage()V

    goto :goto_0

    .line 5460
    :cond_3
    const/16 v0, 0x32

    if-lt p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5461
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mSmileRepeateCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 5462
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mSmileRepeateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mSmileRepeateCount:I

    goto :goto_0

    .line 5463
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5464
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5466
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5467
    iput v4, p0, Lcom/android/hwcamera/PhotoModule;->mSmileRepeateCount:I

    goto :goto_0

    .line 5470
    :cond_5
    iput v4, p0, Lcom/android/hwcamera/PhotoModule;->mSmileRepeateCount:I

    goto :goto_0
.end method

.method public drawPanoramaPreviewIfNeeded(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 7
    .parameter "screenNail"
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 6150
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v0, :cond_0

    .line 6151
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->drawPanoramaPreviewIfNeeded(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 6153
    :cond_0
    return-void
.end method

.method public drawSmallPreviewIfNeeded(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 11
    .parameter "screenNail"
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 6159
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isBackCamera(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-nez v1, :cond_2

    .line 6160
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsLittlePreviewDrawing:Z

    if-eqz v1, :cond_1

    .line 6161
    const/high16 v1, 0x3f80

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/CameraScreenNail;->setAlpha(F)V

    .line 6162
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsLittlePreviewDrawing:Z

    .line 6199
    :cond_1
    :goto_0
    return-void

    .line 6166
    :cond_2
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsLittlePreviewDrawing:Z

    if-nez v1, :cond_3

    .line 6167
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/hwcamera/PhotoModule$29;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/PhotoModule$29;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6174
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsLittlePreviewDrawing:Z

    .line 6175
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-eqz v1, :cond_4

    const v1, 0x3e99999a

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/hwcamera/CameraScreenNail;->setAlpha(F)V

    .line 6193
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 6194
    .local v10, screenHeight:I
    :goto_2
    move/from16 v0, p5

    int-to-float v1, v0

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/hwcamera/CameraScreenNail;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 6195
    .local v9, rate:F
    const-string v1, "right"

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-virtual {v2}, Lcom/android/hwcamera/CustomConfiguration;->getSmallPreviewPos()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int v1, p3, p5

    sget v2, Lcom/android/hwcamera/ConstantValue;->LITTLE_PREVIEW_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/hwcamera/ConstantValue;->BORDER_SIDE:I

    sub-int v5, v1, v2

    .line 6196
    .local v5, previewX:I
    :goto_3
    int-to-float v1, p4

    int-to-float v2, v10

    move/from16 v0, p6

    int-to-float v3, v0

    div-float/2addr v3, v9

    sub-float/2addr v2, v3

    mul-float/2addr v2, v9

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/android/hwcamera/ConstantValue;->BORDER_SIDE:I

    add-int v6, v1, v2

    .line 6197
    .local v6, previewY:I
    const/high16 v1, 0x3f00

    invoke-virtual {p1}, Lcom/android/hwcamera/CameraScreenNail;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/android/hwcamera/ConstantValue;->LITTLE_PREVIEW_HEIGHT:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/hwcamera/CameraScreenNail;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/android/hwcamera/ConstantValue;->LITTLE_PREVIEW_WIDTH:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float v4, v1, v2

    .line 6198
    .local v4, scaley:F
    const/high16 v3, 0x3f00

    sget v7, Lcom/android/hwcamera/ConstantValue;->LITTLE_PREVIEW_WIDTH:I

    sget v8, Lcom/android/hwcamera/ConstantValue;->LITTLE_PREVIEW_HEIGHT:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/hwcamera/CameraScreenNail;->drawSmallPreview(Lcom/android/gallery3d/ui/GLCanvas;FFIIII)V

    goto/16 :goto_0

    .line 6175
    .end local v4           #scaley:F
    .end local v5           #previewX:I
    .end local v6           #previewY:I
    .end local v9           #rate:F
    .end local v10           #screenHeight:I
    :cond_4
    const v1, 0x3f266666

    goto :goto_1

    .line 6193
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v10

    goto :goto_2

    .line 6195
    .restart local v9       #rate:F
    .restart local v10       #screenHeight:I
    :cond_6
    sget v1, Lcom/android/hwcamera/ConstantValue;->BORDER_SIDE:I

    add-int v5, p3, v1

    goto :goto_3
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 6138
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public flashModeInLowBattery()V
    .locals 2

    .prologue
    .line 5477
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5487
    :cond_0
    :goto_0
    return-void

    .line 5479
    :cond_1
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-nez v1, :cond_0

    .line 5480
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getFlashEnable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5481
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5482
    .local v0, msg:Landroid/os/Message;
    const v1, 0x7f0d012a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5483
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5484
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5486
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->setFlashMode()V

    goto :goto_0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    return v0
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 5677
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 6286
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    return-object v0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 5629
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .prologue
    .line 5669
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mDisplayOrientation:I

    return v0
.end method

.method public getIdleState()I
    .locals 1

    .prologue
    .line 5740
    const/4 v0, 0x1

    return v0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 6146
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 5673
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public getRecordingDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/hwcamera/ConstantValue;->VOICE_PHOTO_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortWidth()I
    .locals 3

    .prologue
    .line 6290
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 6291
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6292
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public hasLongPressShot()Z
    .locals 3

    .prologue
    .line 5773
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getGlobalPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_has_long_press_shot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasPictureSaving()Z
    .locals 1

    .prologue
    .line 858
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 0

    .prologue
    .line 1440
    return-void
.end method

.method public hideMeteringGuide()V
    .locals 3

    .prologue
    .line 6423
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f100121

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6424
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showGestureGuide"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6427
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getMeterHintShownState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6428
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f0d01a9

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->showOnscreenHint(I)V

    .line 6430
    :cond_0
    return-void
.end method

.method public hideOnsreenHint()V
    .locals 1

    .prologue
    .line 5649
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v0}, Lcom/android/hwcamera/tips/TipsService;->hideTextTip()V

    .line 5650
    :cond_0
    return-void
.end method

.method public hidePictureReview()V
    .locals 2

    .prologue
    .line 4582
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 4584
    :goto_0
    return-void

    .line 4583
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideUIForRecording()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1487
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showMenu()V

    .line 1488
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showThumbnail()V

    .line 1489
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showSwitcher()V

    .line 1490
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 1491
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->setThumbnailUpdateSilently(Z)V

    .line 1492
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showQuickRecordButton()V

    .line 1493
    return-void
.end method

.method public hideZoomController()V
    .locals 1

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    if-eqz v0, :cond_0

    .line 3014
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v0}, Lcom/android/hwcamera/ZoomController;->hide()V

    .line 3017
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v0, :cond_1

    .line 3018
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v0}, Lcom/android/hwcamera/tips/TipsService;->resumeTips()V

    .line 3021
    :cond_1
    return-void
.end method

.method public init(Lcom/android/hwcamera/CameraActivity;Landroid/view/View;Z)V
    .locals 7
    .parameter "activity"
    .parameter "parent"
    .parameter "reuseNail"

    .prologue
    const-wide/16 v5, 0x400

    const/4 v4, 0x0

    .line 910
    const-string v0, "PhotoModule.init"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 911
    const-string v0, "CAM_PhotoModule"

    const-string v1, "FLOW init begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iput v4, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    .line 913
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    .line 914
    iput-object p2, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    .line 915
    new-instance v0, Lcom/android/hwcamera/ComboPreferences;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 916
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 917
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/PhotoModule;->getPreferredCameraId(Lcom/android/hwcamera/ComboPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    .line 918
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.fastCapture"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mFastCapture:Z

    .line 919
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mFastCapture:Z

    if-eqz v0, :cond_0

    iput v4, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 925
    new-instance v0, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraStartUpThread:Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    .line 926
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraStartUpThread:Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->start()V

    .line 928
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->inflatePhotoModuleLayout()V

    .line 929
    invoke-direct {p0, p3}, Lcom/android/hwcamera/PhotoModule;->preparePreviewResource(Z)V

    .line 930
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeTipsService()V

    .line 935
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 936
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showStorageHintMessage()V

    .line 940
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mFastCapture:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initFastCapturePreferences()V

    .line 941
    :cond_2
    new-instance v0, Lcom/android/hwcamera/PictureRemaining;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/hwcamera/PictureRemaining;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;

    .line 942
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeControlByIntent()V

    .line 943
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mQuickCapture:Z

    .line 944
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeMiscControls()V

    .line 945
    new-instance v0, Lcom/android/hwcamera/LocationManager;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/android/hwcamera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/hwcamera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    .line 946
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 947
    const-string v0, "CAM_PhotoModule"

    const-string v1, "FLOW init end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return-void
.end method

.method public initMTKPanorama()V
    .locals 4

    .prologue
    .line 4477
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isUiThread(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4492
    :cond_0
    :goto_0
    return-void

    .line 4480
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    if-nez v0, :cond_2

    .line 4481
    const-string v0, "CAM_PhotoModule"

    const-string v1, "call initMTKPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4482
    new-instance v0, Lcom/android/hwcamera/autorama/PanoramaManager;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/hwcamera/autorama/PanoramaManager;-><init>(Lcom/android/hwcamera/CameraActivity;Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/FocusOverlayManager;Lcom/android/hwcamera/CameraManager$CameraProxy;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    .line 4485
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->getPanoramaView()Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->isOnPanoramaIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4486
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->initMTKPanorama()V

    .line 4488
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->showMTKPanoramaHint()V

    goto :goto_0
.end method

.method public initMav()V
    .locals 4

    .prologue
    .line 4495
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isUiThread(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4509
    :cond_0
    :goto_0
    return-void

    .line 4498
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    if-nez v0, :cond_2

    .line 4499
    const-string v0, "CAM_PhotoModule"

    const-string v1, "call initMav"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4500
    new-instance v0, Lcom/android/hwcamera/autorama/MavManager;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/hwcamera/autorama/MavManager;-><init>(Lcom/android/hwcamera/CameraActivity;Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/FocusOverlayManager;Lcom/android/hwcamera/CameraManager$CameraProxy;)V

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    .line 4503
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/MavManager;->getPanoramaView()Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->isOnPanoramaIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4504
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/MavManager;->initMav()V

    .line 4506
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->showMAVHint()V

    goto :goto_0
.end method

.method public insertPicturesToGallery(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6296
    .local p1, selectedFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-static {p1}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6298
    :goto_0
    return-void

    .line 6297
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/hwcamera/storage/Storage;->insertPicturesToGallery(Landroid/content/ContentResolver;Landroid/location/Location;Ljava/util/List;)V

    goto :goto_0
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 2714
    return-void
.end method

.method public isBestPhotoOn()Z
    .locals 5

    .prologue
    .line 6246
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-nez v1, :cond_0

    const-string v0, ""

    .line 6247
    .local v0, value:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/PhotoModule;->isBestPhotoOn(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 6246
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_bestphoto_key"

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v4, 0x7f0d0189

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isBestPhotoOn(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 6252
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isBestPhotoSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4535
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMeterShootMode()Z
    .locals 2

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    if-nez v0, :cond_0

    .line 2088
    const/4 v0, 0x0

    .line 2090
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->METER:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isInMeteringRect(Landroid/view/View;II)Z
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 6398
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isInMeterShootMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6399
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/hwcamera/FocusOverlayManager;->isInMeteringRect(II)Z

    move-result v0

    .line 6401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMTKPanorama()Z
    .locals 2

    .prologue
    .line 5724
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    if-nez v0, :cond_0

    .line 5725
    const/4 v0, 0x0

    .line 5727
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->AUTORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isMav()Z
    .locals 3

    .prologue
    .line 5765
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    if-nez v0, :cond_0

    .line 5766
    const/4 v0, 0x0

    .line 5769
    :goto_0
    return v0

    .line 5768
    :cond_0
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shot mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v2}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5769
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->MAV:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isMenuOpen()Z
    .locals 1

    .prologue
    .line 5553
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v0, :cond_0

    .line 5554
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuController;->isMenuOpen()Z

    move-result v0

    .line 5556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanorama()Z
    .locals 2

    .prologue
    .line 4269
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    if-nez v0, :cond_0

    .line 4270
    const/4 v0, 0x0

    .line 4272
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->PANORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 6134
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    return v0
.end method

.method public isProcessIng()Z
    .locals 2

    .prologue
    .line 1519
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureShotMode()Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    move-result-object v0

    .line 1520
    .local v0, featureShotMode:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/hwcamera/feature/shot/IFeatureShotMode;->isProcessIng()Z

    move-result v1

    .line 1521
    :goto_1
    return v1

    .line 1519
    .end local v0           #featureShotMode:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1521
    .restart local v0       #featureShotMode:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1515
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isProcessIng()Z

    move-result v0

    return v0
.end method

.method public isSmart()Z
    .locals 2

    .prologue
    .line 5732
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    if-nez v0, :cond_0

    .line 5733
    const/4 v0, 0x0

    .line 5735
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->SMART:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSnapShotInProgressState()Z
    .locals 2

    .prologue
    .line 5681
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

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
    .line 6359
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomRenderer:Lcom/android/hwcamera/ui/ZoomRenderer;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ZoomRenderer;->isScaling()Z

    move-result v0

    goto :goto_0
.end method

.method public lockOrientation()V
    .locals 1

    .prologue
    .line 6282
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->lockOrientation()V

    .line 6283
    return-void
.end method

.method public needBackground()Z
    .locals 1

    .prologue
    .line 5383
    const/4 v0, 0x1

    return v0
.end method

.method public needColorEffect()Z
    .locals 2

    .prologue
    .line 5597
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 5598
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->COLOREFFECT:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public needMenu()Z
    .locals 1

    .prologue
    .line 5378
    const/4 v0, 0x1

    return v0
.end method

.method public needsBeautyProgress()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5587
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-virtual {v1}, Lcom/android/hwcamera/CustomConfiguration;->isFaceBeautyBarSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5588
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-eqz v1, :cond_1

    .line 5591
    :cond_0
    :goto_0
    return v0

    .line 5589
    :cond_1
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->BEAUTY:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 5373
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

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
    .line 5388
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3380
    packed-switch p1, :pswitch_data_0

    .line 3402
    :cond_0
    :goto_0
    return-void

    .line 3382
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3383
    .local v1, intent:Landroid/content/Intent;
    if-eqz p3, :cond_1

    .line 3384
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3385
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 3386
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3389
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3, p2, v1}, Lcom/android/hwcamera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3390
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->finish()V

    .line 3392
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const-string v4, "crop-temp"

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 3394
    .local v2, path:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3395
    const-string v3, "CAM_PhotoModule"

    const-string v4, "delete file failure."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3380
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 3505
    const-string v1, "CAM_PhotoModule"

    const-string v2, "FLOW onBackPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-eqz v1, :cond_1

    .line 3507
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->hideSmallPreviewTips()V

    .line 3558
    :cond_0
    :goto_0
    return v0

    .line 3511
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isPanoramaShooting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3512
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->onClickBackButton()V

    goto :goto_0

    .line 3517
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isMTKPanorama()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->getPanoramaView()Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->isOnPanoramaPreview()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3519
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/autorama/PanoramaManager;->finishPanoramaShooting(Z)V

    goto :goto_0

    .line 3522
    :cond_3
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isMav()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/autorama/MavManager;->getPanoramaView()Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->isOnPanoramaPreview()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3524
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/autorama/MavManager;->finishMavShooting(Z)V

    goto :goto_0

    .line 3529
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v2, 0x7f100121

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 3530
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->hideMeteringGuide()V

    goto :goto_0

    .line 3533
    :cond_5
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isProcessIng()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3534
    invoke-direct {p0, v0}, Lcom/android/hwcamera/PhotoModule;->waitProcessDone(Z)V

    goto :goto_0

    .line 3537
    :cond_6
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    if-eqz v1, :cond_7

    .line 3538
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->cancelTimer()V

    goto :goto_0

    .line 3542
    :cond_7
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mMaxBackStoreNum:I

    if-le v1, v2, :cond_8

    .line 3543
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->confirmBackPressDailog()V

    goto/16 :goto_0

    .line 3548
    :cond_8
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_9

    .line 3549
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->removeTopLevelPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3551
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->doCancel()V

    goto/16 :goto_0

    .line 3554
    :cond_9
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3558
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->removeTopLevelPopup()Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onBluetoothButtonClick()V
    .locals 2

    .prologue
    .line 5686
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5695
    :goto_0
    return-void

    .line 5689
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isProcessIng()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5690
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/PhotoModule;->waitProcessDone(Z)V

    goto :goto_0

    .line 5694
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mVirtualButtonShutterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onCameraHardButtonClick()V
    .locals 1

    .prologue
    .line 6202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsNeedCount:Z

    .line 6203
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->onShutterButtonClick()V

    .line 6204
    return-void
.end method

.method public onCameraHardButtonDoublePress()V
    .locals 4

    .prologue
    .line 6216
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6217
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->exitGallery()V

    .line 6218
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mDoFastCaptureRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6221
    :cond_0
    return-void
.end method

.method public onCameraHardButtonLongPress(Z)Z
    .locals 2
    .parameter "pressed"

    .prologue
    const/4 v0, 0x0

    .line 6207
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6208
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->exitGallery()V

    .line 6212
    :goto_0
    return v0

    .line 6211
    :cond_0
    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsNeedCount:Z

    .line 6212
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/PhotoModule;->onShutterButtonLongClick(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    .line 5187
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 5201
    :cond_0
    :goto_0
    return-void

    .line 5190
    :cond_1
    iput p1, p0, Lcom/android/hwcamera/PhotoModule;->mPendingSwitchCameraId:I

    .line 5191
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 5192
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to copy texture. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5195
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/hwcamera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraScreenNail;->copyTexture()V

    .line 5197
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    goto :goto_0

    .line 5199
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 5297
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3294
    const-string v4, "CAM_PhotoModule"

    const-string v7, "onConfigurationChanged"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->setDisplayOrientation()V

    .line 3296
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->resetSomeView()V

    .line 3298
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->releaseFocusIndicator()V

    .line 3300
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3301
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3302
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040049

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3305
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeControlByIntent()V

    .line 3307
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeFocusManager()V

    .line 3308
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeMiscControls()V

    .line 3311
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v4, :cond_0

    .line 3312
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    iget v8, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v4, v7, v8}, Lcom/android/hwcamera/settings/MenuController;->initialize(Lcom/android/hwcamera/PreferenceGroup;I)V

    .line 3315
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->doUpdateFlashModeUI()V

    .line 3317
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->getShutterButton()Lcom/android/hwcamera/ShutterButton;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 3318
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v4, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 3320
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->checkPictureRemainsTextShow()V

    .line 3321
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v3

    .line 3322
    .local v3, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v3, :cond_1

    .line 3323
    invoke-virtual {v3, p0}, Lcom/android/hwcamera/VirtualButton;->setOnVirtualButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 3324
    invoke-virtual {v3, v5}, Lcom/android/hwcamera/VirtualButton;->enableVirtualButton(Z)V

    .line 3327
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->getCameraHardButton()Lcom/android/hwcamera/CameraHardButton;

    move-result-object v2

    .line 3328
    .local v2, mCameraHardButton:Lcom/android/hwcamera/CameraHardButton;
    if-eqz v2, :cond_2

    .line 3329
    invoke-virtual {v2, p0}, Lcom/android/hwcamera/CameraHardButton;->setOnCameraHardButtonListener(Lcom/android/hwcamera/CameraHardButton$OnCameraHardButtonListener;)V

    .line 3330
    invoke-virtual {v2, v5}, Lcom/android/hwcamera/CameraHardButton;->enableCameraHardButton(Z)V

    .line 3333
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeZoom()V

    .line 3334
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    if-eqz v4, :cond_3

    .line 3335
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v4}, Lcom/android/hwcamera/ui/indicator/FaceView;->clear()V

    .line 3336
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v4, v6}, Lcom/android/hwcamera/ui/indicator/FaceView;->setVisibility(I)V

    .line 3337
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    iget v7, p0, Lcom/android/hwcamera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v4, v7}, Lcom/android/hwcamera/ui/indicator/FaceView;->setDisplayOrientation(I)V

    .line 3338
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    iget v7, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    aget-object v1, v4, v7

    .line 3339
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v7, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v5, :cond_b

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Lcom/android/hwcamera/ui/indicator/FaceView;->setMirror(Z)V

    .line 3340
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v4}, Lcom/android/hwcamera/ui/indicator/FaceView;->resume()V

    .line 3341
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v5, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/FocusOverlayManager;->setFaceView(Lcom/android/hwcamera/ui/indicator/FaceView;)V

    .line 3343
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeRenderOverlay()V

    .line 3344
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeTipsService()V

    .line 3345
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/PhotoModule;->onFullScreenChanged(Z)V

    .line 3346
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mJpegImageData:[B

    if-eqz v4, :cond_4

    .line 3347
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->showPostCaptureAlert()V

    .line 3350
    :cond_4
    iget-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    if-eqz v4, :cond_5

    .line 3351
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->hideUI()V

    .line 3352
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraActivity;->showBackGround()V

    .line 3355
    :cond_5
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/hwcamera/PhotoModule;->mStartTragetTracking:Z

    if-eqz v4, :cond_6

    .line 3356
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v4}, Lcom/android/hwcamera/ui/TargetView;->startTargetTrakingUI()V

    .line 3357
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v5, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/FocusOverlayManager;->setTargetView(Lcom/android/hwcamera/ui/TargetView;)V

    .line 3359
    :cond_6
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_7

    .line 3360
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    iget-object v5, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    iget-object v6, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5, v6}, Lcom/android/hwcamera/ui/TargetView;->setScale(II)V

    .line 3361
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    iget v5, p0, Lcom/android/hwcamera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/ui/TargetView;->setDisplayOrientation(I)V

    .line 3364
    :cond_7
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

    invoke-virtual {v4}, Lcom/android/hwcamera/ui/BeautyEffect;->reload()V

    .line 3365
    :cond_8
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    invoke-virtual {v4}, Lcom/android/hwcamera/ui/ColorEffect;->reload()V

    .line 3366
    :cond_9
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    if-eqz v4, :cond_a

    .line 3367
    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v4}, Lcom/android/hwcamera/ZoomController;->reload()V

    .line 3370
    :cond_a
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initPanorama()V

    .line 3371
    return-void

    .restart local v1       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_b
    move v4, v6

    .line 3339
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 6459
    invoke-super {p0}, Lcom/android/hwcamera/AbstractCameraModule;->onDestroy()V

    .line 6460
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6461
    return-void
.end method

.method public onFaceDetected([Lcom/android/hwcamera/facedetect/event/Face;)V
    .locals 2
    .parameter "facesDatas"

    .prologue
    .line 5414
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 5421
    :cond_0
    :goto_0
    return-void

    .line 5416
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 5417
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getFocusPolicyService()Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v0, v1, p1}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->onFaceDetected(Lcom/android/hwcamera/ui/indicator/FaceView;[Lcom/android/hwcamera/facedetect/event/Face;)V

    .line 5418
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isBackCamera(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/indicator/FaceView;->setVisible(Z)V

    .line 5419
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/ui/indicator/FaceView;->setFaces([Lcom/android/hwcamera/facedetect/event/Face;)V

    goto :goto_0
.end method

.method public onFakePictureTaken()V
    .locals 3

    .prologue
    .line 6028
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post image counter update:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6029
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 6
    .parameter "full"

    .prologue
    const v5, 0x7f1001d3

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2119
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule;->enableAutoFoucsMoving(Z)V

    .line 2121
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2122
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_d

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2125
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2126
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initPanorama()V

    .line 2129
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2130
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v1, p1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->onFullScreenChanged(Z)V

    .line 2133
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/tips/TipsService;->onFullScreenChanged(Z)V

    .line 2134
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/ui/ColorEffect;->onFullScreenChanged(Z)V

    .line 2135
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mBeautyEffect:Lcom/android/hwcamera/ui/BeautyEffect;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/ui/BeautyEffect;->onFullScreenChanged(Z)V

    .line 2136
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    if-eqz v1, :cond_6

    .line 2137
    iget-object v5, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    if-nez p1, :cond_e

    move v1, v4

    :goto_1
    invoke-virtual {v5, v1}, Lcom/android/hwcamera/ui/indicator/FaceView;->setBlockDraw(Z)V

    .line 2140
    :cond_6
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v1, :cond_7

    .line 2141
    iget-object v5, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-nez p1, :cond_f

    move v1, v4

    :goto_2
    invoke-virtual {v5, v1}, Lcom/android/hwcamera/ui/TargetView;->setBlockDraw(Z)V

    .line 2143
    :cond_7
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    if-eqz v1, :cond_8

    .line 2144
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    if-nez p1, :cond_10

    :goto_3
    invoke-interface {v1, v4}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->setBlockDraw(Z)V

    .line 2147
    :cond_8
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v1, :cond_9

    .line 2148
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 2149
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2150
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 2153
    :cond_9
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    if-eqz v1, :cond_a

    .line 2155
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mRenderOverlay:Lcom/android/hwcamera/ui/RenderOverlay;

    if-eqz p1, :cond_11

    :goto_4
    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ui/RenderOverlay;->setVisibility(I)V

    .line 2157
    :cond_a
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->hideZoomController()V

    .line 2158
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getVirtualButton()Lcom/android/hwcamera/VirtualButton;

    move-result-object v0

    .line 2159
    .local v0, mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    if-eqz v0, :cond_b

    .line 2160
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/VirtualButton;->enableVirtualButton(Z)V

    .line 2162
    :cond_b
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getCameraHardButton()Lcom/android/hwcamera/CameraHardButton;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/CameraHardButton;->enableCameraHardButton(Z)V

    .line 2164
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_12

    .line 2165
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v1, :cond_c

    .line 2166
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v1, v1, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/hwcamera/CameraScreenNail;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/CameraScreenNail;->setFullScreen(Z)V

    .line 2175
    :cond_c
    :goto_5
    return-void

    .end local v0           #mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    :cond_d
    move v1, v3

    .line 2122
    goto/16 :goto_0

    :cond_e
    move v1, v2

    .line 2137
    goto :goto_1

    :cond_f
    move v1, v2

    .line 2141
    goto :goto_2

    :cond_10
    move v4, v2

    .line 2144
    goto :goto_3

    :cond_11
    move v2, v3

    .line 2155
    goto :goto_4

    .line 2170
    .restart local v0       #mVirtualButton:Lcom/android/hwcamera/VirtualButton;
    :cond_12
    if-eqz p1, :cond_13

    .line 2171
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->expand()V

    goto :goto_5

    .line 2173
    :cond_13
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->shrink()V

    goto :goto_5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 3564
    sparse-switch p1, :sswitch_data_0

    .line 3600
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 3566
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3567
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/PhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 3571
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 3572
    invoke-direct {p0, p2}, Lcom/android/hwcamera/PhotoModule;->handleCameraHardButtonDown(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 3578
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3582
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->removeTopLevelPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3583
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 3584
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3585
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->requestFocusFromTouch()Z

    .line 3589
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ShutterButton;->setPressed(Z)V

    goto :goto_0

    .line 3587
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 3598
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/android/hwcamera/PhotoModule;->handleVirtualButtonDown(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 3564
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_1
        0x4f -> :sswitch_3
        0x50 -> :sswitch_0
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3666
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 3691
    :cond_0
    :goto_0
    return v0

    .line 3668
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/hwcamera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 3669
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/PhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 3673
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    .line 3674
    invoke-direct {p0, p2}, Lcom/android/hwcamera/PhotoModule;->handleCameraHardButtonUp(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 3681
    :sswitch_2
    iput-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsNeedCount:Z

    .line 3682
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->handleVirtualButtonUp()Z

    move-result v0

    goto :goto_0

    .line 3685
    :sswitch_3
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->isVolumSnapShotHintShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3686
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getGlobalPreference()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "key_volum_snap_shot_hint_has_shown"

    invoke-static {v2, v3, v0}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 3688
    :cond_1
    iput-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsNeedCount:Z

    .line 3689
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->handleVirtualButtonUp()Z

    move-result v0

    goto :goto_0

    .line 3666
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_1
        0x4f -> :sswitch_2
        0x50 -> :sswitch_0
        0x55 -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public onLastPictureTaken(Z)V
    .locals 9
    .parameter "isNeedStartPreview"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 5798
    iget-boolean v3, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-eqz v3, :cond_0

    .line 5880
    :goto_0
    return-void

    .line 5799
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/hwcamera/PhotoModule;->mJpegPictureCallbackTime:J

    .line 5803
    iget-wide v3, p0, Lcom/android/hwcamera/PhotoModule;->mPostViewPictureCallbackTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 5804
    iget-wide v3, p0, Lcom/android/hwcamera/PhotoModule;->mPostViewPictureCallbackTime:J

    iget-wide v5, p0, Lcom/android/hwcamera/PhotoModule;->mShutterCallbackTime:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/hwcamera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 5806
    iget-wide v3, p0, Lcom/android/hwcamera/PhotoModule;->mJpegPictureCallbackTime:J

    iget-wide v5, p0, Lcom/android/hwcamera/PhotoModule;->mPostViewPictureCallbackTime:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/hwcamera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 5814
    :goto_1
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/hwcamera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5821
    if-eqz p1, :cond_1

    .line 5822
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->animateFlash()V

    .line 5826
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->processHintsOnSnapShot()V

    .line 5829
    invoke-virtual {p0, v8}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V

    .line 5830
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->restartPreview()V

    .line 5832
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/FocusOverlayManager;->updateFocusUI()V

    .line 5833
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v3}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->clear()V

    .line 5835
    :cond_3
    iget v3, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v3}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/hwcamera/PhotoModule;->mIsTouchSnapshot:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getEyeCorrectionHintState()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 5836
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraActivity;->setEyeCorrectionHintState(I)V

    .line 5837
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5842
    :cond_4
    iget v3, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v3}, Lcom/android/hwcamera/Util;->isBackCamera(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5844
    sget-object v3, Lcom/android/hwcamera/enm/ShotMode;->VOICE_PHOTO:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getVoicePhotoHintShownState()Z

    move-result v3

    if-nez v3, :cond_7

    .line 5845
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/CameraActivity;->setVoicePhotoHintShownState(Z)V

    .line 5865
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5866
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v3}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5867
    const/16 v3, 0x19

    iput v3, v0, Landroid/os/Message;->what:I

    .line 5868
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5873
    .end local v0           #msg:Landroid/os/Message;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5874
    .local v1, now:J
    iget-wide v3, p0, Lcom/android/hwcamera/PhotoModule;->mJpegPictureCallbackTime:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/hwcamera/PhotoModule;->mJpegCallbackFinishTime:J

    .line 5875
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mJpegCallbackFinishTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/hwcamera/PhotoModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5877
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->resumeSoundShutterIfNeeded()V

    .line 5879
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->updatePictureRemainsText()V

    goto/16 :goto_0

    .line 5809
    .end local v1           #now:J
    :cond_6
    iget-wide v3, p0, Lcom/android/hwcamera/PhotoModule;->mRawPictureCallbackTime:J

    iget-wide v5, p0, Lcom/android/hwcamera/PhotoModule;->mShutterCallbackTime:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/hwcamera/PhotoModule;->mShutterToPictureDisplayedTime:J

    .line 5811
    iget-wide v3, p0, Lcom/android/hwcamera/PhotoModule;->mJpegPictureCallbackTime:J

    iget-wide v5, p0, Lcom/android/hwcamera/PhotoModule;->mRawPictureCallbackTime:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/hwcamera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 5846
    :cond_7
    sget-object v3, Lcom/android/hwcamera/enm/ShotMode;->HDR:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getHdrHintShownState()Z

    move-result v3

    if-nez v3, :cond_8

    .line 5848
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/CameraActivity;->setHdrHintShownState(Z)V

    goto :goto_2

    .line 5850
    :cond_8
    sget-object v3, Lcom/android/hwcamera/enm/ShotMode;->SMART:Lcom/android/hwcamera/enm/ShotMode;

    iget-object v4, p0, Lcom/android/hwcamera/PhotoModule;->mShootingMode:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/enm/ShotMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getSmartHintShouldShow()Z

    move-result v3

    if-ne v3, v7, :cond_9

    .line 5851
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3, v8}, Lcom/android/hwcamera/CameraActivity;->setSmartHintShouldShow(Z)V

    .line 5853
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/CameraActivity;->setSmartHintHasShown(Z)V

    goto/16 :goto_2

    .line 5858
    :cond_9
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isInMeterShootMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraActivity;->getMeterHintShownState()Z

    move-result v3

    if-nez v3, :cond_5

    .line 5859
    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/CameraActivity;->setMeterHintShownState(Z)V

    goto/16 :goto_2
.end method

.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 4
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/16 v3, 0x1f

    .line 5620
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isInMeterShootMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5622
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->clearMeteringFocus()V

    .line 5623
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5624
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5626
    :cond_0
    return-void
.end method

.method public onMenuClosed()V
    .locals 1

    .prologue
    .line 5561
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/PhotoModule;->enableAutoFoucsMoving(Z)V

    .line 5564
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 5565
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showPanoramaUI()V

    .line 5570
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->checkPictureRemainsTextShow()V

    .line 5572
    return-void
.end method

.method public onMenuKeyUp()V
    .locals 2

    .prologue
    .line 6232
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v0, :cond_0

    .line 6233
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuController;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6234
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuController;->popupDismissed()V

    .line 6239
    :cond_0
    :goto_0
    return-void

    .line 6235
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    const-string v1, "pref_camera_tab_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/settings/MenuController;->getMenuItem(Ljava/lang/String;)Lcom/android/hwcamera/settings/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6236
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    const-string v1, "pref_camera_tab_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/settings/MenuController;->getMenuItem(Ljava/lang/String;)Lcom/android/hwcamera/settings/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuItem;->onClick()V

    goto :goto_0
.end method

.method public onMenuOpened()V
    .locals 3

    .prologue
    .line 5530
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/PhotoModule;->enableAutoFoucsMoving(Z)V

    .line 5532
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/ColorEffect;->hideContent()V

    .line 5535
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v1, :cond_1

    .line 5536
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->hidePanoramaUI()V

    .line 5540
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v2, 0x7f1001d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/RotateTextView;

    .line 5541
    .local v0, remainPicText:Lcom/android/hwcamera/ui/RotateTextView;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/RotateTextView;->setVisibility(I)V

    .line 5543
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->hideZoomController()V

    .line 5544
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 2251
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 2296
    :cond_0
    :goto_0
    return-void

    .line 2252
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    .line 2253
    .local v0, orientationHistory:I
    invoke-static {p1, v0}, Lcom/android/hwcamera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    .line 2254
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    if-eq v1, v0, :cond_0

    .line 2256
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isPanoramaShooting()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2257
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->showPanoramaHint()V

    .line 2266
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/settings/MenuController;->onOrientationChanged(I)V

    .line 2267
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ui/ColorEffect;->onOrientationChanged(I)V

    .line 2268
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/tips/TipsService;->onOrientationChanged(I)V

    .line 2270
    :cond_6
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mFaceDetectionStarted:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v1, :cond_7

    .line 2271
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setFaceOrientation(I)V

    .line 2274
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_7

    .line 2275
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->getJpegRotation(II)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/PhotoModule;->mJpegRotation:I

    .line 2276
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2277
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2281
    :cond_7
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2284
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initPanorama()V

    .line 2285
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v1, :cond_8

    .line 2286
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->onOrientationChanged(I)V

    .line 2292
    :cond_8
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    if-eqz v1, :cond_0

    .line 2293
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ZoomController;->onOritationChanged(I)V

    goto/16 :goto_0

    .line 2258
    :cond_9
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isMTKPanorama()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->getPanoramaView()Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->isOnPanoramaPreview()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2259
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->showMTKPanoramaHint()V

    goto/16 :goto_1

    .line 2260
    :cond_a
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isMav()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/autorama/MavManager;->getPanoramaView()Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->isOnPanoramaPreview()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2261
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->showMAVHint()V

    goto/16 :goto_1
.end method

.method public onOverriddenPreferencesClicked()V
    .locals 0

    .prologue
    .line 5328
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3026
    const-string v0, "CAM_PhotoModule"

    const-string v1, "FLOW onPauseAfterSuper begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->hideZoomController()V

    .line 3029
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideAllOnsreenHint()V

    .line 3030
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsCounterDowning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->cancelTimer()V

    .line 3031
    :cond_0
    iput-boolean v3, p0, Lcom/android/hwcamera/PhotoModule;->mIsSmileCaptureState:Z

    .line 3032
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->waitCameraStartUpThread()V

    .line 3034
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    if-eqz v0, :cond_1

    .line 3035
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundShutter;->stop()V

    .line 3040
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceManager:Lcom/android/hwcamera/VoiceManager;

    if-eqz v0, :cond_2

    .line 3041
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceManager:Lcom/android/hwcamera/VoiceManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/VoiceManager;->stopUpdateVoiceState()V

    .line 3042
    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceManager:Lcom/android/hwcamera/VoiceManager;

    .line 3047
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v0, :cond_10

    .line 3048
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->hidePanoramaLayout()V

    .line 3053
    :goto_0
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->resumeMusicAndFMVolum()V

    .line 3058
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_6

    .line 3059
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/hwcamera/ActivityBase;->isFirstStartAfterScreenOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3061
    invoke-static {}, Lcom/android/hwcamera/ActivityBase;->resetFirstStartAfterScreenOn()V

    .line 3062
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraHolder;->keep(I)V

    .line 3067
    :cond_4
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_5

    .line 3068
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 3071
    :cond_5
    iput-boolean v3, p0, Lcom/android/hwcamera/PhotoModule;->mLongPressBurst:Z

    .line 3074
    :cond_6
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_8

    .line 3075
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageSaver:Lcom/android/hwcamera/PhotoModule$ImageSaver;

    if-eqz v0, :cond_7

    .line 3076
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageSaver:Lcom/android/hwcamera/PhotoModule$ImageSaver;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule$ImageSaver;->finish()V

    .line 3077
    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mImageSaver:Lcom/android/hwcamera/PhotoModule$ImageSaver;

    .line 3078
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageNamer:Lcom/android/hwcamera/PhotoModule$ImageNamer;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule$ImageNamer;->finish()V

    .line 3079
    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mImageNamer:Lcom/android/hwcamera/PhotoModule$ImageNamer;

    .line 3081
    :cond_7
    iput v3, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    .line 3083
    :cond_8
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->stopPreview()V

    .line 3085
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->closeCamera()V

    .line 3086
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 3087
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/hwcamera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 3088
    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mSurfaceTexture:Ljava/lang/Object;

    .line 3090
    :cond_9
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->resetScreenOn()V

    .line 3093
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->collapseCameraControls()Z

    .line 3094
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/FaceView;->clear()V

    .line 3095
    :cond_a
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v0}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->clear()V

    .line 3096
    :cond_b
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/TargetView;->clear()V

    .line 3098
    :cond_c
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    if-eqz v0, :cond_d

    .line 3099
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 3100
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/LocationManager;->setListener(Lcom/android/hwcamera/LocationManager$Listener;)V

    .line 3105
    :cond_d
    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mJpegImageData:[B

    .line 3106
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuController;->pause()V

    .line 3109
    :cond_e
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3111
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3112
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3113
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3114
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3115
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3116
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3117
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3118
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3119
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3120
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3121
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3122
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3123
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3124
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3125
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x601

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3126
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x602

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3127
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x603

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3129
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3132
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3134
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mPendingSwitchCameraId:I

    .line 3136
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->removeMessages()V

    .line 3137
    :cond_f
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->closeHwScopeIfNeeded()V

    .line 3139
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->releaseFocusIndicator()V

    .line 3141
    const-string v0, "CAM_PhotoModule"

    const-string v1, "FLOW onPauseAfterSuper end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    return-void

    .line 3050
    :cond_10
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->hidePanoramaLayout()V

    goto/16 :goto_0
.end method

.method public onPauseBeforeSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2963
    const-string v0, "CAM_PhotoModule"

    const-string v1, "FLOW onPauseBeforeSuper begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    .line 2966
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 2968
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2969
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2970
    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2972
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isProcessIng()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2973
    invoke-direct {p0, v3}, Lcom/android/hwcamera/PhotoModule;->waitProcessDone(Z)V

    .line 2975
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuController;->clearOverrideSettings()V

    .line 2976
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getFocusPolicyService()Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->reset()V

    .line 2977
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->processUIforNormal()V

    .line 2978
    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    .line 2980
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v0, :cond_4

    .line 2981
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->onPause()V

    .line 2983
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v0}, Lcom/android/hwcamera/tips/TipsService;->pause()V

    .line 2984
    :cond_5
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->hideSmallPreviewTips()V

    .line 2986
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    if-eqz v0, :cond_6

    .line 2987
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ZoomController;->setZoomChangeListener(Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;)V

    .line 2988
    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;

    .line 2991
    :cond_6
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isMTKPanorama()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->getPanoramaView()Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->isOnPanoramaIdle()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2993
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->onCameraClose()V

    .line 2994
    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    .line 2996
    :cond_7
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isMav()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/MavManager;->getPanoramaView()Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->isOnPanoramaIdle()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2998
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/autorama/MavManager;->onCameraClose()V

    .line 2999
    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mMavManager:Lcom/android/hwcamera/autorama/MavManager;

    .line 3001
    :cond_8
    const-string v0, "CAM_PhotoModule"

    const-string v1, "FLOW onPauseBeforeSuper end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    return-void
.end method

.method public onPhoneHangup()V
    .locals 4

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v0, :cond_0

    .line 2730
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_camera_sound_snapshot_key"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/settings/MenuController;->clearOverrideSettings([Ljava/lang/String;)V

    .line 2732
    :cond_0
    return-void
.end method

.method public onPhoneHook()V
    .locals 0

    .prologue
    .line 2743
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->onPhoneRing()V

    .line 2744
    return-void
.end method

.method public onPhoneRing()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2736
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    if-eqz v0, :cond_0

    .line 2737
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_sound_snapshot_key"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "off"

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/android/hwcamera/settings/MenuController;->overrideSettings(Z[Ljava/lang/String;)V

    .line 2739
    :cond_0
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 5292
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5293
    return-void
.end method

.method public onQuickThumbnail([BZ)V
    .locals 8
    .parameter "data"
    .parameter "isGenUrlEarlier"

    .prologue
    const/16 v6, 0x10

    .line 6042
    iget-boolean v5, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v5, :cond_0

    .line 6067
    :goto_0
    return-void

    .line 6046
    :cond_0
    :try_start_0
    array-length v5, p1

    if-gt v5, v6, :cond_1

    .line 6047
    const-string v5, "CAM_PhotoModule"

    const-string v6, "No quick thumbnail."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6062
    :catch_0
    move-exception v1

    .line 6063
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "CAM_PhotoModule"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6051
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/hwcamera/PhotoModule;->generateUriEarlier(Z)V

    .line 6053
    const/16 v3, 0x8

    .line 6054
    .local v3, quickThumbnailStart:I
    const/16 v5, 0x9

    aget-byte v5, p1, v5

    invoke-static {v5}, Lcom/android/hwcamera/Util;->byteToUnsigned(B)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    aget-byte v6, p1, v3

    invoke-static {v6}, Lcom/android/hwcamera/Util;->byteToUnsigned(B)I

    move-result v6

    add-int v4, v5, v6

    .line 6055
    .local v4, width:I
    const/16 v5, 0xd

    aget-byte v5, p1, v5

    invoke-static {v5}, Lcom/android/hwcamera/Util;->byteToUnsigned(B)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    const/16 v6, 0xc

    aget-byte v6, p1, v6

    invoke-static {v6}, Lcom/android/hwcamera/Util;->byteToUnsigned(B)I

    move-result v6

    add-int v2, v5, v6

    .line 6057
    .local v2, height:I
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App got RGB thumbnail, size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6058
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6059
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/16 v5, 0x10

    array-length v6, p1

    add-int/lit8 v6, v6, -0x10

    invoke-static {p1, v5, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 6061
    iget-object v5, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/hwcamera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/hwcamera/CameraActivity;->updatePictureThumbnail(Landroid/graphics/Bitmap;Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onRecordFailed()V
    .locals 2

    .prologue
    .line 2880
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2881
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    if-nez v0, :cond_0

    .line 2882
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundShutter;->pauseShutter()V

    .line 2884
    :cond_0
    return-void
.end method

.method public onRecordSucess()V
    .locals 1

    .prologue
    .line 2888
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    if-nez v0, :cond_0

    .line 2889
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutter:Lcom/android/hwcamera/SoundShutter;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundShutter;->pauseShutter()V

    .line 2891
    :cond_0
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 0

    .prologue
    .line 5318
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x400

    const/4 v4, 0x0

    .line 2748
    const-string v1, "PhotoModule.onResumeAfterSuper"

    invoke-static {v5, v6, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2749
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mOpenCameraFail:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDisabled:Z

    if-eqz v1, :cond_1

    .line 2786
    :cond_0
    :goto_0
    return-void

    .line 2750
    :cond_1
    const-string v1, "CAM_PhotoModule"

    const-string v2, "FLOW onResumeAfterSuper begin"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeRenderOverlay()V

    .line 2754
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/hwcamera/PhotoModule;->mJpegPictureCallbackTime:J

    .line 2755
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_zoom_value_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/PhotoModule;->mZoomValue:I

    .line 2757
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraStartUpThread:Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    if-nez v1, :cond_3

    .line 2758
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/PhotoModule;->getPreferredCameraId(Lcom/android/hwcamera/ComboPreferences;)I

    move-result v0

    .line 2759
    .local v0, _mCameraId:I
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    if-eq v1, v0, :cond_2

    .line 2760
    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    .line 2761
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget v3, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2762
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2764
    :cond_2
    new-instance v1, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    invoke-direct {v1, p0, v4}, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;-><init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraStartUpThread:Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    .line 2765
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraStartUpThread:Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->start()V

    .line 2769
    .end local v0           #_mCameraId:I
    :cond_3
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mFirstTimeInitialized:Z

    if-nez v1, :cond_6

    .line 2770
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2774
    :goto_1
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->keepScreenOnAwhile()V

    .line 2776
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v1}, Lcom/android/hwcamera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/hwcamera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/hwcamera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 2777
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->updatePictureRemainsText()V

    .line 2778
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v1}, Lcom/android/hwcamera/tips/TipsService;->resume()V

    .line 2780
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2781
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->unInitPanorama()V

    .line 2784
    :cond_5
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 2785
    const-string v1, "CAM_PhotoModule"

    const-string v2, "FLOW onResumeAfterSuper end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2772
    :cond_6
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method public onResumeBeforeSuper()V
    .locals 2

    .prologue
    .line 2722
    const-string v0, "CAM_PhotoModule"

    const-string v1, "FLOW onResumeBeforeSuper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    .line 2724
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/hwcamera/Util;->enableMenu(Z)V

    .line 2725
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"
    .annotation runtime Lcom/android/hwcamera/OnClickAttr;
    .end annotation

    .prologue
    .line 2315
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->doCancel()V

    .line 2316
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"
    .annotation runtime Lcom/android/hwcamera/OnClickAttr;
    .end annotation

    .prologue
    .line 2309
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->doAttach()V

    .line 2310
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/android/hwcamera/OnClickAttr;
    .end annotation

    .prologue
    .line 2321
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2325
    :goto_0
    return-void

    .line 2323
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->hidePostCaptureAlert()V

    .line 2324
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->setupPreview()V

    goto :goto_0
.end method

.method public onSceneDetected(I)V
    .locals 5
    .parameter "scene"

    .prologue
    .line 6366
    iget-boolean v2, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 6395
    :cond_0
    :goto_0
    return-void

    .line 6368
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    sget-object v2, Lcom/android/hwcamera/feature/shot/SmartModeFeature;->AUTO_DETECT_SCENE:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 6369
    sget-object v2, Lcom/android/hwcamera/feature/shot/SmartModeFeature;->AUTO_DETECT_SCENE:[Ljava/lang/String;

    aget-object v1, v2, p1

    .line 6370
    .local v1, detectMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    .line 6374
    .local v0, currentMode:Ljava/lang/String;
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6375
    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mSceneCount:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 6376
    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mSceneCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/hwcamera/PhotoModule;->mSceneCount:I

    .line 6377
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSceneDetecte detectMode = auto, mSceneCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/hwcamera/PhotoModule;->mSceneCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6382
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6384
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSceneDetecte update scene-mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6385
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 6386
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6390
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6392
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/hwcamera/PhotoModule;->mSceneCount:I

    goto/16 :goto_0
.end method

.method public onSharedPreferenceChanged(Lcom/android/hwcamera/CameraPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 4619
    const/4 v0, 0x0

    .line 4620
    .local v0, prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/CameraPreference;>;"
    if-nez p1, :cond_0

    .line 4621
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_camera_restore_key"

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->listPrefsExceptKey(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4626
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/PhotoModule;->onSharedPreferencesChanged(Ljava/util/List;)V

    .line 4627
    return-void

    .line 4623
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/CameraPreference;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4624
    .restart local v0       #prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/CameraPreference;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onSharedPreferencesChanged(Ljava/util/List;)V
    .locals 1
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
    .line 4698
    .local p1, prefs:Ljava/util/List;,"Ljava/util/List<+Lcom/android/hwcamera/CameraPreference;>;"
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 4701
    :cond_0
    :goto_0
    return-void

    .line 4699
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule;->processPreferences(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4700
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/hwcamera/PhotoModule;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .prologue
    .line 5404
    return-void
.end method

.method public onShowVoiceToast(Ljava/lang/String;)V
    .locals 3
    .parameter "strTips"

    .prologue
    .line 6447
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userGuide = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6448
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->PANORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->AUTORAMA:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->MAV:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mLastShootMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6451
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    const v2, 0x7f0d017b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6453
    :cond_0
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 1

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2452
    :goto_0
    return-void

    .line 2451
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->onSnap()V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 2421
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isPanorama()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isProcessIng()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isMTKPanorama()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isMav()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-eqz v0, :cond_1

    .line 2442
    :cond_0
    :goto_0
    return-void

    .line 2430
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2432
    :cond_2
    if-eqz p1, :cond_4

    .line 2433
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    if-ne v0, v1, :cond_3

    .line 2434
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideSwitcher()V

    .line 2435
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 2437
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->onShutterDown()V

    goto :goto_0

    .line 2439
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->startFaceDetection()V

    .line 2440
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onShutterButtonLongClick(Z)Z
    .locals 6
    .parameter "pressed"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2480
    iget-boolean v2, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-eqz v2, :cond_0

    .line 2510
    :goto_0
    return v0

    .line 2481
    :cond_0
    if-eqz p1, :cond_4

    .line 2482
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getStorageSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x1400000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mPictureRemains:I

    if-gtz v2, :cond_2

    .line 2483
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showStorageHintMessage()V

    move v0, v1

    .line 2484
    goto :goto_0

    .line 2486
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->canStartLongPressBurst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2487
    const-string v0, "Camera"

    const-string v2, "long pressed, go to burst and take picture"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    iput-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mLongPressBurst:Z

    .line 2491
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->onSnap()V

    move v0, v1

    .line 2492
    goto :goto_0

    .line 2495
    :cond_3
    const-string v1, "CAM_PhotoModule"

    const-string v2, "long pressed, we will focusing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusOverlayManager;->shutterLongPressed()V

    goto :goto_0

    .line 2501
    :cond_4
    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mLongPressBurst:Z

    .line 2502
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureShotMode()Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2503
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureShotMode()Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/hwcamera/feature/shot/IFeatureShotMode;->interruptTakePicture()V

    .line 2507
    :cond_5
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity;->getGlobalPreference()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "key_has_long_press_shot"

    invoke-static {v2, v3, v1}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3425
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    if-nez v1, :cond_1

    .line 3484
    :cond_0
    :goto_0
    return-void

    .line 3431
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPanoramaManager:Lcom/android/hwcamera/autorama/PanoramaManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->getPanoramaView()Lcom/android/hwcamera/autorama/PanoramaViewManager;

    invoke-static {}, Lcom/android/hwcamera/autorama/PanoramaViewManager;->isOnPanoramaCapture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3435
    :cond_2
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsShowSmallPreviewTipsonFrameAvailable:Z

    if-eqz v1, :cond_3

    .line 3436
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->hideSmallPreviewTips()V

    goto :goto_0

    .line 3441
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v1}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isPanoramaShooting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3445
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->hideZoomController()V

    .line 3447
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->removeTopLevelPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3449
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mStartTragetTracking:Z

    if-eqz v1, :cond_5

    .line 3450
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/PhotoModule;->touchTarget(II)V

    goto :goto_0

    .line 3454
    :cond_5
    const/4 v0, -0x1

    .line 3455
    .local v0, touchedFaceId:I
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsTouchSnapshot:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v1, p2, p3}, Lcom/android/hwcamera/ui/indicator/FaceView;->isTouchOnFaces(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 3456
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getFocusPolicyService()Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->touchFace(I)V

    goto :goto_0

    .line 3462
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isBackCamera(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusAreaSupported:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_8

    .line 3464
    :cond_7
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v1, p2, p3}, Lcom/android/hwcamera/FocusOverlayManager;->onSingleTapUp(II)V

    .line 3467
    :cond_8
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsTouchSnapshot:Z

    if-eqz v1, :cond_9

    .line 3468
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3470
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mIsTouchCapture:Z

    goto :goto_0

    .line 3475
    :cond_9
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    if-eqz v1, :cond_a

    .line 3476
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/ColorEffect;->hideContent()V

    .line 3480
    :cond_a
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isInMeterShootMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3482
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/hwcamera/FocusOverlayManager;->updateMeteringPos(IIZ)V

    goto/16 :goto_0
.end method

.method public onSizeChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 5347
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/FocusOverlayManager;->setPreviewSize(II)V

    .line 5348
    :cond_0
    return-void
.end method

.method public onSmartSenceReport(B)V
    .locals 5
    .parameter "type"

    .prologue
    .line 6100
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSmartSenceReport :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6102
    const/4 v1, -0x1

    .line 6103
    .local v1, resId:I
    packed-switch p1, :pswitch_data_0

    .line 6113
    :goto_0
    move v0, v1

    .line 6114
    .local v0, messageId:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/hwcamera/PhotoModule$28;

    invoke-direct {v3, p0, v0}, Lcom/android/hwcamera/PhotoModule$28;-><init>(Lcom/android/hwcamera/PhotoModule;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6120
    :cond_0
    return-void

    .line 6105
    .end local v0           #messageId:I
    :pswitch_0
    const v1, 0x7f0d0167

    .line 6106
    goto :goto_0

    .line 6108
    :pswitch_1
    const v1, 0x7f0d015e

    .line 6109
    goto :goto_0

    .line 6103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSoundLoud()V
    .locals 2

    .prologue
    .line 2872
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMenuController:Lcom/android/hwcamera/settings/MenuController;

    invoke-virtual {v0}, Lcom/android/hwcamera/settings/MenuController;->isMenuOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mSoundShutterEnable:Z

    if-nez v0, :cond_1

    .line 2876
    :cond_0
    :goto_0
    return-void

    .line 2874
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsNeedCount:Z

    .line 2875
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mVirtualButtonShutterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 2301
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 2302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 2304
    :cond_0
    return-void
.end method

.method public onTargetDetected(Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)V
    .locals 2
    .parameter "fouceTargetData"

    .prologue
    .line 5520
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5526
    :cond_0
    :goto_0
    return-void

    .line 5521
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v0, :cond_0

    .line 5522
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 5523
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 5524
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->getFocusPolicyService()Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0, v1, p1}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->onTargetDetected(Lcom/android/hwcamera/ui/TargetView;Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;

    move-result-object p1

    .line 5525
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/ui/TargetView;->setTargetView(Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 5301
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->keepScreenOnAwhile()V

    .line 5302
    :cond_0
    return-void
.end method

.method public onVoiceShutter()V
    .locals 2

    .prologue
    .line 6440
    const-string v0, "CAM_PhotoModule"

    const-string v1, "onVoiceShutter post DoSnapRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6441
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->collapseCameraControlsForUs()Z

    .line 6442
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6443
    return-void
.end method

.method public playSound(I)V
    .locals 1
    .parameter "stopVideoRecording"

    .prologue
    .line 6142
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/CameraActivity;->playSound(I)V

    .line 6143
    return-void
.end method

.method public prepareUIForRecording()V
    .locals 2

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 1477
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideMenu()V

    .line 1478
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideThumbnail()V

    .line 1479
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideSwitcher()V

    .line 1480
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->setThumbnailUpdateSilently(Z)V

    .line 1481
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideQuickRecordButton()V

    .line 1482
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mVoiceVisualizer:Lcom/android/hwcamera/PhotoModule$VoiceVisualizer;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PhotoModule$VoiceVisualizer;->onOrientationChanged(I)V

    .line 1483
    return-void
.end method

.method public reInitMorphoPanorama()V
    .locals 0

    .prologue
    .line 4511
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->initPanorama()V

    .line 4512
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 2

    .prologue
    .line 2235
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->removeTopLevelPopupForGoogle()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->removeTopLevelPopupForUs()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public resetTouchFocus()V
    .locals 1

    .prologue
    .line 5665
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->resetTouchFocus()V

    .line 5666
    return-void
.end method

.method public restartPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5999
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 6025
    :goto_0
    return-void

    .line 6001
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v1, "hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    iget-boolean v0, v0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_1

    .line 6002
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->showSwitcher()V

    .line 6003
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 6006
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraActivity;->setOrientationEnableWhenCapture(Z)V

    .line 6008
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 6013
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isUiThread(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6014
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->setupPreview()V

    .line 6024
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->updateStorageSpaceWhenStorageIsFull()V

    goto :goto_0

    .line 6016
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    :goto_2
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0x12c

    goto :goto_2
.end method

.method public setBeautyProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    const/16 v3, 0x12

    .line 5576
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5578
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5580
    return-void
.end method

.method public setCameraState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 1795
    iput p1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    .line 1796
    packed-switch p1, :pswitch_data_0

    .line 1857
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraState error: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :cond_0
    :goto_0
    return-void

    .line 1799
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isUiThread(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1800
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->enableSwitcherAndMenu(Z)V

    .line 1801
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->hideShootmodeLayout()V

    .line 1802
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->disableOperations()V

    goto :goto_0

    .line 1804
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$7;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$7;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1815
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isUiThread(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1816
    invoke-static {v1}, Lcom/android/hwcamera/Util;->enableMenu(Z)V

    .line 1817
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1818
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    goto :goto_0

    .line 1820
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$8;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$8;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1831
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isUiThread(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1832
    invoke-static {v1}, Lcom/android/hwcamera/Util;->enableMenu(Z)V

    .line 1833
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->disableOperations()V

    goto :goto_0

    .line 1835
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$9;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$9;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1845
    :pswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isUiThread(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1846
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->enableOperations()V

    goto :goto_0

    .line 1848
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$10;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$10;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1796
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 2076
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/hwcamera/PhotoModule;->setCameraParameters(I)V

    .line 2077
    return-void
.end method

.method public setMeteringParameters()V
    .locals 1

    .prologue
    .line 2082
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/hwcamera/PhotoModule;->setCameraParameters(I)V

    .line 2083
    return-void
.end method

.method setPreviewFrameLayoutAspectRatio()V
    .locals 6

    .prologue
    .line 5352
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_0

    .line 5369
    :goto_0
    return-void

    .line 5357
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 5359
    .local v0, size:Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    if-nez v1, :cond_1

    .line 5360
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mRootView:Landroid/view/View;

    const v2, 0x7f100011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/PreviewFrameLayout;

    iput-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    .line 5363
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 5364
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ui/TargetView;->setScale(II)V

    .line 5366
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v2}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/PhotoModule;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v3}, Lcom/android/hwcamera/PreviewFrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/FocusOverlayManager;->setPreviewSize(II)V

    goto :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 6126
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/CameraActivity;->setSwipingEnabled(Z)V

    .line 6127
    return-void
.end method

.method public setTipsViewMargin(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5660
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/hwcamera/tips/TipsService;->setViewMargin(IIII)V

    .line 5661
    :cond_0
    return-void
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 0
    .parameter "hasSignal"

    .prologue
    .line 1437
    return-void
.end method

.method public showMAVHint()V
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f0d01a5

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->showOnscreenHint(I)V

    .line 1132
    return-void
.end method

.method public showMTKPanoramaHint()V
    .locals 2

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    const v1, 0x7f0d01a4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->showOnscreenHint(I)V

    .line 1128
    return-void
.end method

.method public showMeteringFocus()V
    .locals 1

    .prologue
    .line 6413
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 6414
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isInMeterShootMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6415
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->clearMeteringFocus()V

    .line 6416
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->showMeteringFocus()V

    .line 6421
    :cond_0
    :goto_0
    return-void

    .line 6418
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusOverlayManager;->clearMeteringFocus()V

    goto :goto_0
.end method

.method public showOnscreenHint(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 5634
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/hwcamera/tips/TipsService;->makeTip(II)V

    .line 5635
    :cond_0
    return-void
.end method

.method public showOnscreenHintDelay(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 5644
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/hwcamera/tips/TipsService;->makeTipDelay(II)V

    .line 5645
    :cond_0
    return-void
.end method

.method public showOnscreenHintImmediately(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 5639
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/hwcamera/tips/TipsService;->makeTipImmediately(II)V

    .line 5640
    :cond_0
    return-void
.end method

.method public showOnscreenToast(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 5654
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5655
    return-void
.end method

.method public showPanoramaHint()V
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mMorphoPanorama:Lcom/morpho/app/panorama_gp/MorphoPanorama;

    invoke-virtual {v0}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->showPanoramaHint()V

    .line 1123
    :cond_0
    return-void
.end method

.method public showPictureReview([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 4570
    const-string v1, "CAM_PhotoModule"

    const-string v2, "showPictureReview begin"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4571
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/Util;->isBackCamera(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4579
    :cond_0
    :goto_0
    return-void

    .line 4572
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mReviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4574
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule;->decordPictureForReview([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4576
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4577
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mReviewImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4578
    const-string v1, "CAM_PhotoModule"

    const-string v2, "showPictureReview end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showVolumSnapShotHint()V
    .locals 2

    .prologue
    const/16 v1, 0x16

    .line 5714
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5715
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5717
    :cond_0
    return-void
.end method

.method public startFaceDetection()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/16 v2, 0x603

    .line 1353
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->isBeautyMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isSmart()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mIsSmileCaptureState:Z

    if-nez v0, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1357
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/FaceView;->clear()V

    .line 1358
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ui/indicator/FaceView;->setVisibility(I)V

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v0, :cond_0

    .line 1365
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    .line 1366
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mStartTragetTracking:Z

    if-nez v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->isAndroidCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 1371
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1372
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->startFaceDetection()V

    .line 1374
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setFaceOrientation(I)V

    .line 1387
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1404
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-nez v0, :cond_1

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->isAndroidCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 1407
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1409
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 1410
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    new-instance v1, Lcom/android/hwcamera/PhotoModule$6;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/PhotoModule$6;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public storeImage([BIIZLandroid/location/Location;Z)Ljava/lang/String;
    .locals 11
    .parameter "jpegData"
    .parameter "postWidth"
    .parameter "postHeight"
    .parameter "isHdr"
    .parameter "mLocation"
    .parameter "updateThumbnail"

    .prologue
    .line 5962
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageSaver:Lcom/android/hwcamera/PhotoModule$ImageSaver;

    if-nez v0, :cond_0

    .line 5963
    const-string v0, "CAM_PhotoModule"

    const-string v1, "storePostImage: mImageSaver == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5964
    const/4 v10, 0x0

    .line 5995
    :goto_0
    return-object v10

    .line 5968
    :cond_0
    mul-int v0, p2, p3

    if-eqz v0, :cond_1

    .line 5969
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 5970
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    .line 5971
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post image counter down:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5977
    :cond_1
    :goto_1
    const/4 v10, 0x0

    .line 5979
    .local v10, ret:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/hwcamera/Exif;->getOrientation([B)I

    move-result v4

    .line 5980
    .local v4, postOrientation:I
    mul-int v0, p2, p3

    if-nez v0, :cond_2

    .line 5981
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 5982
    .local v9, posts:Landroid/hardware/Camera$Size;
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mJpegRotation:I

    add-int/2addr v0, v4

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_4

    .line 5983
    iget p2, v9, Landroid/hardware/Camera$Size;->width:I

    .line 5984
    iget p3, v9, Landroid/hardware/Camera$Size;->height:I

    .end local v9           #posts:Landroid/hardware/Camera$Size;
    :cond_2
    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 5990
    invoke-direct/range {v0 .. v7}, Lcom/android/hwcamera/PhotoModule;->saveImage([BIIIZLandroid/location/Location;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_0

    .line 5973
    .end local v4           #postOrientation:I
    .end local v10           #ret:Ljava/lang/String;
    :cond_3
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post image counter error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5986
    .restart local v4       #postOrientation:I
    .restart local v9       #posts:Landroid/hardware/Camera$Size;
    .restart local v10       #ret:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget p2, v9, Landroid/hardware/Camera$Size;->height:I

    .line 5987
    iget p3, v9, Landroid/hardware/Camera$Size;->width:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 5991
    .end local v4           #postOrientation:I
    .end local v9           #posts:Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v8

    .line 5992
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storePostImage NullPointerException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public storeImage([BIILjava/lang/String;)V
    .locals 10
    .parameter "jpegData"
    .parameter "postWidth"
    .parameter "postHeight"
    .parameter "relativePath"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 6257
    iget-boolean v0, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 6275
    :goto_0
    return-void

    .line 6259
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageSaver:Lcom/android/hwcamera/PhotoModule$ImageSaver;

    if-nez v0, :cond_1

    .line 6260
    const-string v0, "CAM_PhotoModule"

    const-string v1, "storePostImage: mImageSaver == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6265
    :cond_1
    mul-int v0, p2, p3

    if-eqz v0, :cond_2

    .line 6266
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 6267
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    .line 6268
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "post image counter down:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6273
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/hwcamera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6274
    .local v3, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mImageSaver:Lcom/android/hwcamera/PhotoModule$ImageSaver;

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Lcom/android/hwcamera/PhotoModule$ImageSaver;->addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIIZZ)V

    goto :goto_0

    .line 6270
    .end local v3           #title:Ljava/lang/String;
    :cond_3
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "post image counter error:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/hwcamera/PhotoModule;->mFakePictureNum:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2179
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 2185
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2188
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraStartUpThread:Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_1

    .line 2196
    :cond_0
    :goto_0
    return-void

    .line 2190
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 2193
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_0

    .line 2194
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->setupPreview()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 2200
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2202
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->stopPreview()V

    .line 2203
    return-void
.end method

.method public unlockOrientation()V
    .locals 1

    .prologue
    .line 6278
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->unlockOrientation()V

    .line 6279
    return-void
.end method

.method public updateCameraAppView()V
    .locals 0

    .prologue
    .line 2718
    return-void
.end method

.method public updateCameraFocusParameters(Z)V
    .locals 3
    .parameter "isForce"

    .prologue
    const/4 v2, 0x4

    .line 5425
    iget-boolean v1, p0, Lcom/android/hwcamera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 5438
    :cond_0
    :goto_0
    return-void

    .line 5426
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5429
    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/hwcamera/PhotoModule;->setCameraParameters(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5430
    :catch_0
    move-exception v0

    .line 5431
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CAM_PhotoModule"

    const-string v2, "camera allready closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5437
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    if-eqz p1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/hwcamera/PhotoModule;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method public updateColorEffect(Ljava/lang/String;)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 5610
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/hwcamera/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5613
    :cond_0
    :goto_0
    return-void

    .line 5611
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 5612
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public updateEyeCorrectionHint()V
    .locals 0

    .prologue
    .line 906
    return-void
.end method

.method public updateMeteringPos(Landroid/view/View;IIZ)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "updatePara"

    .prologue
    .line 6407
    iget v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraId:I

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PhotoModule;->isInMeterShootMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6408
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mFocusManager:Lcom/android/hwcamera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/hwcamera/FocusOverlayManager;->updateMeteringPos(IIZ)V

    .line 6410
    :cond_0
    return-void
.end method

.method public updatePictureRemainsText()V
    .locals 2

    .prologue
    .line 1048
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->checkPictureRemains()I

    move-result v0

    .line 1049
    .local v0, remains:I
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mPictureRemains:I

    if-eq v1, v0, :cond_0

    .line 1050
    iput v0, p0, Lcom/android/hwcamera/PhotoModule;->mPictureRemains:I

    .line 1052
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/PhotoModule;->checkPictureRemainsTextShow()V

    .line 1054
    iget v1, p0, Lcom/android/hwcamera/PhotoModule;->mPictureRemains:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureShotMode()Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1055
    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureShotMode()Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/hwcamera/feature/shot/IFeatureShotMode;->interruptTakePicture()V

    .line 1058
    :cond_1
    return-void
.end method

.method public updateThumbnailUncached()V
    .locals 1

    .prologue
    .line 6301
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity;->updateThumbnailUncached()V

    .line 6302
    :cond_0
    return-void
.end method

.method waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 2950
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraStartUpThread:Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 2951
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraStartUpThread:Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->cancel()V

    .line 2952
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraStartUpThread:Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;->join()V

    .line 2953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/PhotoModule;->mCameraStartUpThread:Lcom/android/hwcamera/PhotoModule$CameraStartUpThread;

    .line 2954
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/PhotoModule;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2959
    :cond_0
    :goto_0
    return-void

    .line 2956
    :catch_0
    move-exception v0

    goto :goto_0
.end method
