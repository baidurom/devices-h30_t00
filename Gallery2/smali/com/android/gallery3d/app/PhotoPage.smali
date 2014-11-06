.class public Lcom/android/gallery3d/app/PhotoPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/PhotoView$Listener;
.implements Lcom/android/gallery3d/app/AppBridge$Server;
.implements Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;
.implements Lcom/android/gallery3d/app/OrientationManager$Listener;
.implements Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;,
        Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;,
        Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;,
        Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;,
        Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;,
        Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;,
        Lcom/android/gallery3d/app/PhotoPage$Model;
    }
.end annotation


# static fields
.field public static final ACTION_NEXTGEN_EDIT:Ljava/lang/String; = "action_nextgen_edit"

.field private static BASE_ANGLE:I = 0x0

.field private static final CAMERA_SWITCH_CUTOFF_THRESHOLD_MS:J = 0x12cL

.field private static final DEFERRED_UPDATE_MS:J = 0xfaL

.field private static final DESTROY_FREE_SHARE:I = 0x1

.field private static final EMPTY_MEDIA_INFO:Ljava/lang/String; = ""

.field private static final HAS_HDR:Z = true

#the value of this static final field might be set in the static constructor
.field private static final HIDE_BARS_TIMEOUT:I = 0x0

.field private static final INIT_FREE_SHARE:I = 0x0

.field public static final KEY_ALBUMPAGE_TRANSITION:Ljava/lang/String; = "albumpage-transition"

.field public static final KEY_APP_BRIDGE:Ljava/lang/String; = "app-bridge"

.field public static final KEY_INDEX_HINT:Ljava/lang/String; = "index-hint"

.field public static final KEY_IN_CAMERA_ROLL:Ljava/lang/String; = "in_camera_roll"

.field public static final KEY_MEDIA_COUNT:Ljava/lang/String; = "media-count"

.field public static final KEY_MEDIA_ITEM_DATE_TAKEN:Ljava/lang/String; = "date_taken"

.field public static final KEY_MEDIA_ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final KEY_MEDIA_ITEM_PATH:Ljava/lang/String; = "media-item-path"

.field public static final KEY_MEDIA_SET_PATH:Ljava/lang/String; = "media-set-path"

.field public static final KEY_OPEN_ANIMATION_RECT:Ljava/lang/String; = "open-animation-rect"

.field public static final KEY_PASS_RETURN_INDEX_HINT:Ljava/lang/String; = "PASS_RETURN_INDEX_HINT"

.field public static final KEY_REPEAT_TIMES:Ljava/lang/String; = "repeat_times"

.field public static final KEY_RETURN_INDEX_HINT:Ljava/lang/String; = "return-index-hint"

.field public static final KEY_RETURN_OFFSET_HINT:Ljava/lang/String; = "return-offset-hint"

.field public static final KEY_SHOW_WHEN_LOCKED:Ljava/lang/String; = "show_when_locked"

.field public static final KEY_SINGLE_ITEM_ONLY:Ljava/lang/String; = "Single_Item_Only"

.field public static final KEY_START_IN_FILMSTRIP:Ljava/lang/String; = "start-in-filmstrip"

.field public static final KEY_TITLE_ARRAY:Ljava/lang/String; = "title-array"

.field public static final KEY_TREAT_BACK_AS_UP:Ljava/lang/String; = "treat-back-as-up"

.field public static final KEY_URI_ARRAY:Ljava/lang/String; = "uri-array"

.field public static final MSG_ALBUMPAGE_NONE:I = 0x0

.field public static final MSG_ALBUMPAGE_PICKED:I = 0x4

.field public static final MSG_ALBUMPAGE_RESUMED:I = 0x2

.field public static final MSG_ALBUMPAGE_STARTED:I = 0x1

.field private static final MSG_FACE_MENU_CHANGE:I = 0x25

.field private static final MSG_HICLOUD_LOGOUT:I = 0x22

.field private static final MSG_HIDE_BARS:I = 0x1

.field private static final MSG_LOCK_ORIENTATION:I = 0x2

.field private static final MSG_ON_CAMERA_CENTER:I = 0x9

.field private static final MSG_ON_FULL_SCREEN_CHANGED:I = 0x4

.field private static final MSG_ON_PICTURE_CENTER:I = 0xa

.field private static final MSG_REFRESH_BOTTOM_CONTROLS:I = 0x8

.field private static final MSG_REFRESH_IMAGE:I = 0xb

.field private static final MSG_REFRESH_VOICE_ICON:I = 0x24

.field private static final MSG_RELOAD_MAVSEEKBAR:I = 0x84

.field private static final MSG_SHOW_MULTISCREEN_TIPS:I = 0x23

.field private static final MSG_UNFREEZE_GLROOT:I = 0x6

.field private static final MSG_UNLOCK_ORIENTATION:I = 0x3

.field private static final MSG_UPDATE_ACTION_BAR:I = 0x5

.field private static final MSG_UPDATE_DEFERRED:I = 0xe

.field private static final MSG_UPDATE_MAVSEEKBAR:I = 0x83

.field private static final MSG_UPDATE_MAV_PROGRESS:I = 0x82

.field private static final MSG_UPDATE_METRICS:I = 0x21

.field private static final MSG_UPDATE_PANORAMA_UI:I = 0x10

.field private static final MSG_UPDATE_PHOTO_UI:I = 0xc

.field private static final MSG_UPDATE_PROGRESS:I = 0xd

.field private static final MSG_UPDATE_SHARE_URI:I = 0xf

.field private static final MSG_WANT_BARS:I = 0x7

.field private static final NS2S:F = 1.0E-9f

.field private static final OFFSET:F = 0.0f

.field private static final REQUEST_CROP:I = 0x2

.field private static final REQUEST_CROP_PICASA:I = 0x3

.field private static final REQUEST_EDIT:I = 0x4

.field private static final REQUEST_PHOTOSHARE_LOGIN:I = 0x91

.field private static final REQUEST_PICK_CONTACT:I = 0x81

.field private static final REQUEST_PLAY_VIDEO:I = 0x5

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field private static final REQUEST_TRIM:I = 0x6

.field private static final SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PhotoPage"

.field private static final TH:F = 0.0010f

.field private static final UNFREEZE_GLROOT_TIMEOUT:I = 0xfa


# instance fields
.field private angle:[F

.field private canPauseMenuExecutor:Z

.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private volatile mActionBarAllowed:Z

.field private mAirSharingItem:Landroid/view/MenuItem;

.field private mAppBridge:Lcom/android/gallery3d/app/AppBridge;

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

.field private mCameraSwitchCutoff:J

.field private mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private mCurrentIndex:I

.field private mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

.field private mDeferUpdateUntil:J

.field private mDeferredUpdateWaiting:Z

.field private mDeleteIsFocus:Z

.field private mDeletePath:Lcom/android/gallery3d/data/Path;

.field private mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

.field private mDisplay:Landroid/view/Display;

.field private mEnableOrientationWhenCapture:Z

.field private mFaceMenuOperation:Lcom/android/gallery3d/app/FaceMenuOperation;

.field private mFirstTime:Z

.field private mFreeShareAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

.field private mFreeShareItem:Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;

.field private mFreeShareStopView:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

.field private mFreeShareView:Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

.field private mGyroSensor:Landroid/hardware/Sensor;

.field private mHandler:Landroid/os/Handler;

.field private mHasCameraScreennailOrPlaceholder:Z

.field private mHasGyroSensor:Z

.field private mHasMenuClicked:Z

.field private mHaveImageEditor:Z

.field private mHdrLableView:Lcom/android/gallery3d/ui/HdrLableView;

.field private mIsActive:Z

.field private mIsAnyMapAvailable:Z

.field private mIsFreeShareInit:Z

.field private mIsMavSeekBarAllowed:Z

.field private mIsMenuVisible:Z

.field private mIsPanorama:Z

.field private mIsPanorama360:Z

.field private mLastIndex:I

.field private mLaunchedFromDmsSetPage:Z

.field private mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

.field private mMediaInfoLocationAllowed:Z

.field private mMediaInfoTimeAllowed:Z

.field private mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;

.field private mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

.field private mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private final mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

.field private mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

.field private mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

.field private mNfcPushUris:[Landroid/net/Uri;

.field private mNonSynchronizedHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mOrientationChanged:I

.field private mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

.field private mOriginalSetPathString:Ljava/lang/String;

.field private mPanoramaShareManager:Lcom/android/gallery3d/app/ShareManager;

.field private mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

.field private mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

.field private mPhotoShareItemListener:Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

.field private mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

.field private mRecenterCameraOnResume:Z

.field private final mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private mResolveAddressPhoto:Lcom/android/gallery3d/data/MediaItem;

.field private final mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mRotateProcessListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

.field private mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

.field private mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

.field private mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSetPathString:Ljava/lang/String;

.field private mSettingsItem:Landroid/view/MenuItem;

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShareManager:Lcom/android/gallery3d/app/ShareManager;

.field private mShowBars:Z

.field private mShowDetails:Z

.field private mSingleItemOnly:Z

.field private mSkipUpdateCurrentPhoto:Z

.field private mStartInFilmstrip:Z

.field private mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

.field private mTitleArray:[Ljava/lang/String;

.field private mTreatBackAsUp:Z

.field private final mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private final mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private mUriArray:[Ljava/lang/String;

.field private mValue:F

.field private mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

.field private final mVoiceImageDelegate:Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;

.field private mVoiceImageShareListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

.field private timestamp:F

.field private valueBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    const/16 v0, 0xdac

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getDelayTime(I)I

    move-result v0

    sput v0, Lcom/android/gallery3d/app/PhotoPage;->HIDE_BARS_TIMEOUT:I

    .line 3164
    const/16 v0, 0xf

    sput v0, Lcom/android/gallery3d/app/PhotoPage;->BASE_ANGLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 270
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaInfoTimeAllowed:Z

    .line 271
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaInfoLocationAllowed:Z

    .line 280
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 282
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 283
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 290
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 291
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mResolveAddressPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 305
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 306
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 312
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    .line 313
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    .line 317
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    .line 318
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    .line 337
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasMenuClicked:Z

    .line 340
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsFreeShareInit:Z

    .line 349
    new-array v0, v3, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    .line 350
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mEnableOrientationWhenCapture:Z

    .line 351
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationChanged:I

    .line 357
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-direct {v0, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    .line 370
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMavSeekBarAllowed:Z

    .line 373
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$1;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 384
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$2;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 395
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$3;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 406
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;

    invoke-direct {v0, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageDelegate:Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;

    .line 434
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$4;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    .line 516
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$6;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$6;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 539
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$7;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$7;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNonSynchronizedHandler:Landroid/os/Handler;

    .line 1708
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$14;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$14;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 1734
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$15;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$15;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRotateProcessListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 3074
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$17;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$17;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoShareItemListener:Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;

    .line 3157
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientation:I

    .line 3158
    iput v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mValue:F

    .line 3160
    iput v5, p0, Lcom/android/gallery3d/app/PhotoPage;->timestamp:F

    .line 3161
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    .line 3165
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mFirstTime:Z

    .line 3166
    const v0, 0xffff

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastIndex:I

    .line 3203
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->valueBuffer:Ljava/util/LinkedList;

    .line 3309
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->canPauseMenuExecutor:Z

    .line 3310
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$18;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$18;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageShareListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    return-void

    .line 3161
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/data/MediaItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAirSharingItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/HdrLableView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHdrLableView:Lcom/android/gallery3d/ui/HdrLableView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MediaItemInfoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/DetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->initFreeShare()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->destroyFreeShare()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/OrientationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPageBottomControls;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama360:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateBars()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->wantBars()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/app/PhotoPage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/PhotoPage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/android/gallery3d/app/PhotoPage;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchCamera()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$3800(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    invoke-static {p0}, Lcom/android/gallery3d/app/PhotoPage;->createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/ShareManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaShareManager:Lcom/android/gallery3d/app/ShareManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    invoke-static {p0}, Lcom/android/gallery3d/app/PhotoPage;->createShareIntent(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/ShareManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/app/PhotoPage;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->setNfcBeamPushUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/app/PhotoPage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->updatePanoramaUI(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsFreeShareInit:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareView:Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/gallery3d/app/PhotoPage;)Lcom/huawei/gallery3d/freeshare/FreeShareStopView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareStopView:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/huawei/gallery3d/voiceimage/VoiceImageController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/FaceMenuOperation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFaceMenuOperation:Lcom/android/gallery3d/app/FaceMenuOperation;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MavSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasMenuClicked:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMavSeekBar()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasMenuClicked:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->reloadMavSeekBar()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/gallery3d/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/gallery3d/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/gallery3d/app/PhotoPage;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mUriArray:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/android/gallery3d/app/PhotoPage;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mTitleArray:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$5800(Lcom/android/gallery3d/app/PhotoPage;)[Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MenuExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/GLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onPhotoShareItemClicked()V

    return-void
.end method

.method static synthetic access$6602(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->canPauseMenuExecutor:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    return-object v0
.end method

.method private canDoSlideShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1460
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return v0

    .line 1463
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1466
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/data/MtpSource;->isMtpPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1469
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canShowBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1535
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSingleItemOnly:Z

    if-eqz v1, :cond_1

    .line 1546
    :cond_0
    :goto_0
    return v0

    .line 1540
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1544
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    if-eqz v1, :cond_0

    .line 1546
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canShowMavSeekBar()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3099
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v1, :cond_1

    .line 3103
    :cond_0
    :goto_0
    return v0

    .line 3101
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMavSeekBarAllowed:Z

    if-eqz v1, :cond_0

    .line 3103
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static createShareIntent(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;
    .locals 5
    .parameter "mediaObject"

    .prologue
    .line 1239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .local v0, pathCharSequence:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-static {p0}, Lcom/android/gallery3d/util/ImageVideoTranser;->isItemSupportTransVer(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    .line 1243
    .local v1, type:I
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "KEY_PATH_ARRAY"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "watermark_item"

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 1241
    .end local v1           #type:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v1

    goto :goto_0
.end method

.method private static createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "contentUri"

    .prologue
    .line 1252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized destroyFreeShare()V
    .locals 2

    .prologue
    .line 572
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareItem:Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/ShareManager;->removeShareItem(Lcom/android/gallery3d/app/ShareManager$IShareItem;)V

    .line 575
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsFreeShareInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 581
    :goto_0
    monitor-exit p0

    return-void

    .line 578
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareView:Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;->onDestroy()V

    .line 579
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareStopView:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->onDestroy()V

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsFreeShareInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSreenOrientationWithCompensation()I
    .locals 3

    .prologue
    .line 2747
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    .line 2748
    .local v0, rotateCompensation:I
    const/4 v1, 0x1

    .line 2749
    .local v1, screenOrientation:I
    sparse-switch v0, :sswitch_data_0

    .line 2765
    :goto_0
    return v1

    .line 2751
    :sswitch_0
    const/4 v1, 0x1

    .line 2752
    goto :goto_0

    .line 2754
    :sswitch_1
    const/16 v1, 0x8

    .line 2755
    goto :goto_0

    .line 2757
    :sswitch_2
    const/16 v1, 0x9

    .line 2758
    goto :goto_0

    .line 2760
    :sswitch_3
    const/4 v1, 0x0

    .line 2761
    goto :goto_0

    .line 2749
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private hideBars()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1505
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_0

    .line 1513
    :goto_0
    return-void

    .line 1506
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 1507
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 1508
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1509
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1510
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1512
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->hideFace()V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 1

    .prologue
    .line 1955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1956
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->hide()V

    .line 1957
    return-void
.end method

.method private declared-synchronized initFreeShare()V
    .locals 2

    .prologue
    .line 559
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 569
    :goto_0
    monitor-exit p0

    return-void

    .line 562
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getFreeShare()Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    .line 563
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareFactory;->getView(Lcom/android/gallery3d/app/AbstractGalleryActivity;)Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareView:Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    .line 564
    new-instance v0, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareStopView:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    .line 565
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareItem:Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;

    .line 566
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareView:Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;->setModel(Lcom/android/gallery3d/app/PhotoPage$Model;)V

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsFreeShareInit:Z

    .line 568
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initGyroSensor()V
    .locals 2

    .prologue
    .line 3169
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSensorManager:Landroid/hardware/SensorManager;

    .line 3171
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mGyroSensor:Landroid/hardware/Sensor;

    .line 3172
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mGyroSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasGyroSensor:Z

    .line 3173
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasGyroSensor:Z

    if-nez v0, :cond_0

    .line 3178
    const-string v0, "PhotoPage"

    const-string v1, "not has gyro sensor"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDisplay:Landroid/view/Display;

    .line 3182
    return-void

    .line 3172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initValueBuffer()V
    .locals 4

    .prologue
    .line 3206
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 3207
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->valueBuffer:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3209
    :cond_0
    return-void
.end method

.method private isCameraItem(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1456
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    instance-of v0, v0, Lcom/android/hwcamera/CameraScreenNail;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchCamera()V
    .locals 4

    .prologue
    .line 1278
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v3, Lcom/android/hwcamera/CameraActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1282
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 1283
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 1284
    return-void
.end method

.method private launchPhotoEditor()V
    .locals 5

    .prologue
    .line 1287
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1288
    .local v0, current:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_1

    .line 1308
    :cond_0
    :goto_0
    return-void

    .line 1293
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_nextgen_edit"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1297
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1299
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    :cond_2
    const-string v2, "launch-fullscreen"

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isFullscreen()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1303
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private launchTinyPlanet()V
    .locals 4

    .prologue
    .line 1265
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1266
    .local v0, current:Lcom/android/gallery3d/data/MediaItem;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.TINY_PLANET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1267
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1268
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1270
    const-string v2, "launch-fullscreen"

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isFullscreen()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1272
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1273
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->overrideTransitionToEditor()V

    .line 1274
    return-void
.end method

.method private onPhotoShareItemClicked()V
    .locals 1

    .prologue
    .line 3083
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->cacheShareItem(Ljava/lang/String;)V

    .line 3084
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    if-eqz v0, :cond_0

    .line 3085
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->onShareOperationConfirm()V

    .line 3088
    :cond_0
    return-void
.end method

.method private onUpPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1595
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1597
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1635
    :cond_1
    :goto_0
    return-void

    .line 1601
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 1602
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onUpPressed()V

    .line 1603
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 1604
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1608
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1610
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v2, :cond_4

    .line 1611
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onUpPressed()V

    .line 1613
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1614
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "media-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    const-string v2, "parent-media-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1622
    .local v1, extraData:Landroid/os/Bundle;
    const-string v2, "PASS_RETURN_INDEX_HINT"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1623
    const-string v2, "return-index-hint"

    iget v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1625
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, p0, v3, v0, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1629
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #extraData:Landroid/os/Bundle;
    :cond_4
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_5

    .line 1630
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 1633
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->startGalleryActivity(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private overrideTransitionToEditor()V
    .locals 3

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x10a0002

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1261
    return-void
.end method

.method public static playVideo(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 6
    .parameter "activity"
    .parameter "uriArray"
    .parameter "titleArray"
    .parameter "repeatTimes"

    .prologue
    const/4 v5, 0x0

    .line 2212
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "treat-up-as-back"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "uri-array"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title-array"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "repeat_times"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 2219
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2224
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 2220
    :catch_0
    move-exception v0

    .line 2221
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0d029b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private playVideoByMovieActivity(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .parameter "activity"
    .parameter "uri"
    .parameter "title"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2230
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/gallery3d/app/MovieActivity;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "video/*"

    invoke-virtual {v4, p2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "treat-up-as-back"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.finishOnCompletion"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "need_start_pause"

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-eqz v6, :cond_0

    :goto_0
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 2238
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2243
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 2230
    goto :goto_0

    .line 2239
    :catch_0
    move-exception v0

    .line 2240
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0d029b

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private preparePhotoFallbackView()V
    .locals 5

    .prologue
    .line 2365
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 2366
    .local v1, root:Lcom/android/gallery3d/ui/GLRoot;
    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    .line 2367
    .local v2, task:Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 2370
    :try_start_0
    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 2371
    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoPage$PreparePhotoFallback;->get()Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2373
    .local v0, anim:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 2375
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v3

    const-string v4, "resume_animation"

    invoke-virtual {v3, v4, v0}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2377
    return-void

    .line 2373
    .end local v0           #anim:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    throw v3
.end method

.method private refreshHidingMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1523
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1526
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasMenuClicked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    #getter for: Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->showTips:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->access$5900(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    #getter for: Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->onShowTips:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->access$1000(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1529
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/android/gallery3d/app/PhotoPage;->HIDE_BARS_TIMEOUT:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1531
    :cond_0
    return-void
.end method

.method private registerGyroSensorListener()V
    .locals 3

    .prologue
    .line 3185
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasGyroSensor:Z

    if-eqz v0, :cond_0

    .line 3186
    const-string v0, "PhotoPage"

    const-string v1, "register gyro sensor listener"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mGyroSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3189
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->initValueBuffer()V

    .line 3191
    :cond_0
    return-void
.end method

.method private reloadMavSeekBar()V
    .locals 4

    .prologue
    .line 3132
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    if-nez v2, :cond_0

    .line 3142
    :goto_0
    return-void

    .line 3133
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/android/gallery3d/app/Config$PhotoPage;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$PhotoPage;

    move-result-object v0

    .line 3134
    .local v0, config:Lcom/android/gallery3d/app/Config$PhotoPage;
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/MavSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3135
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3137
    iget v2, v0, Lcom/android/gallery3d/app/Config$PhotoPage;->mavSeekBarWidthInPortrait:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3141
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/ui/MavSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3139
    :cond_1
    iget v2, v0, Lcom/android/gallery3d/app/Config$PhotoPage;->mavSeekBarWidthInLandscape:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method private requestDeferredUpdate()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 1311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    .line 1312
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    if-nez v0, :cond_0

    .line 1313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    .line 1314
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1316
    :cond_0
    return-void
.end method

.method private setCurrentPhotoByIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 2246
    if-nez p1, :cond_1

    .line 2263
    :cond_0
    :goto_0
    return-void

    .line 2247
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 2249
    .local v2, path:Lcom/android/gallery3d/data/Path;
    if-eqz v2, :cond_0

    .line 2250
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 2251
    .local v0, albumPath:Lcom/android/gallery3d/data/Path;
    if-eqz v0, :cond_0

    .line 2252
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/Path;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2255
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2256
    .local v1, data:Landroid/os/Bundle;
    const-string v3, "media-set-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    const-string v3, "media-item-path"

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v3, v4, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2261
    .end local v1           #data:Landroid/os/Bundle;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v3, v2, v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0
.end method

.method private setNfcBeamPushUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1236
    return-void
.end method

.method private setResult()V
    .locals 3

    .prologue
    .line 1638
    const/4 v0, 0x0

    .line 1639
    .local v0, result:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1640
    .restart local v0       #result:Landroid/content/Intent;
    const-string v1, "return-index-hint"

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1641
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    .line 1642
    return-void
.end method

.method private setupNfcBeamPush()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1220
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    if-nez v1, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1222
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1223
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 1224
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 1225
    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$13;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$13;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private showBars()V
    .locals 2

    .prologue
    .line 1478
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSingleItemOnly:Z

    if-eqz v0, :cond_1

    .line 1491
    :cond_0
    :goto_0
    return-void

    .line 1480
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 1482
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v0, :cond_2

    .line 1483
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 1486
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->show()V

    .line 1487
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1488
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->showFace()V

    .line 1489
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1490
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    goto :goto_0
.end method

.method private showDetails()V
    .locals 5

    .prologue
    .line 1960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 1961
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 1962
    new-instance v0, Lcom/android/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/DetailsHelper;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    .line 1963
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$16;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$16;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 1970
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->show()V

    .line 1971
    return-void
.end method

.method private switchToGrid()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1762
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v5, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1763
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    .line 1794
    :cond_0
    :goto_0
    return-void

    .line 1765
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1766
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    if-eqz v2, :cond_2

    .line 1767
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    .line 1768
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->hideProgress()V

    .line 1770
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1771
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "media-path"

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    const-string v2, "parent-media-path"

    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v5, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v1

    .line 1779
    .local v1, inAlbum:Z
    const-string v5, "cluster-menu"

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1782
    const-string v2, "app-bridge"

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1785
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v3

    const-string v4, "return-index-hint"

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/lit8 v2, v2, -0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1788
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_6

    .line 1789
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 1779
    goto :goto_1

    :cond_4
    move v3, v4

    .line 1782
    goto :goto_2

    .line 1785
    :cond_5
    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    goto :goto_3

    .line 1791
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, p0, v3, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private toggleBars()V
    .locals 1

    .prologue
    .line 1555
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_1

    .line 1556
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 1560
    :cond_0
    :goto_0
    return-void

    .line 1558
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    goto :goto_0
.end method

.method private transitionFromAlbumPageIfNeeded()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2492
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v2

    .line 2494
    .local v2, transitions:Lcom/android/gallery3d/app/TransitionStore;
    const-string v3, "albumpage-transition"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2497
    .local v0, albumPageTransition:I
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsFreeShareInit:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareView:Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    invoke-virtual {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;->isShow()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2501
    iput v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 2502
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->resetToFirstPicture()V

    .line 2517
    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 2518
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v3, :cond_5

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 2522
    :cond_2
    :goto_2
    return-void

    .line 2504
    :cond_3
    const-string v3, "index-hint"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2505
    .local v1, resumeIndex:I
    if-ltz v1, :cond_0

    .line 2506
    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v3, :cond_4

    .line 2508
    add-int/lit8 v1, v1, 0x1

    .line 2510
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2511
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 2512
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v3, v5}, Lcom/android/gallery3d/app/PhotoPage$Model;->moveTo(I)V

    goto :goto_0

    .end local v1           #resumeIndex:I
    :cond_5
    move v3, v4

    .line 2518
    goto :goto_1

    .line 2519
    :cond_6
    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 2520
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto :goto_2
.end method

.method private unregisterGyroSensorListener()V
    .locals 2

    .prologue
    .line 3194
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasGyroSensor:Z

    if-eqz v0, :cond_0

    .line 3195
    const-string v0, "PhotoPage"

    const-string v1, "unregister gyro listener"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3198
    :cond_0
    return-void
.end method

.method private updateBars()V
    .locals 1

    .prologue
    .line 1563
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1564
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 1566
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateNavigationBar()V

    .line 1567
    return-void
.end method

.method private updateBufferAndGet(F)F
    .locals 4
    .parameter "newValue"

    .prologue
    .line 3212
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->valueBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 3213
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->valueBuffer:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3214
    const/4 v1, 0x0

    .line 3215
    .local v1, total:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 3216
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->valueBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    .line 3215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3218
    :cond_0
    const/high16 v2, 0x40a0

    div-float v2, v1, v2

    return v2
.end method

.method private updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 3
    .parameter "photo"

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-ne v0, p1, :cond_1

    .line 1353
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v0, :cond_0

    .line 1354
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->isHomePressed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;Z)V

    .line 1357
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateTitle()V

    .line 1371
    :goto_0
    return-void

    .line 1361
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 1362
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v0, :cond_2

    .line 1363
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;Z)V

    .line 1365
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1366
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->requestDeferredUpdate()V

    .line 1370
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMediaItemInfoView()V

    goto :goto_0

    .line 1368
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    goto :goto_1
.end method

.method private updateMavSeekBar()V
    .locals 2

    .prologue
    .line 3107
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_1

    .line 3118
    :cond_0
    :goto_0
    return-void

    .line 3110
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    if-eqz v0, :cond_0

    .line 3113
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowMavSeekBar()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3114
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/MavSeekBar;->setVisibility(I)V

    goto :goto_0

    .line 3116
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/MavSeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMediaItemInfoView()V
    .locals 14

    .prologue
    const/4 v10, 0x2

    const-wide/16 v12, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1177
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 1178
    .local v0, currentPhoto:Lcom/android/gallery3d/data/MediaItem;
    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaInfoTimeAllowed:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaInfoLocationAllowed:Z

    if-eqz v8, :cond_2

    :cond_0
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->isCameraItem(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v8

    if-ne v8, v10, :cond_2

    move v5, v6

    .line 1181
    .local v5, visible:Z
    :goto_0
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;

    invoke-virtual {v8, v5}, Lcom/android/gallery3d/ui/MediaItemInfoView;->setLableVisible(Z)V

    .line 1182
    if-nez v5, :cond_3

    .line 1211
    :cond_1
    :goto_1
    return-void

    .end local v5           #visible:Z
    :cond_2
    move v5, v7

    .line 1178
    goto :goto_0

    .line 1184
    .restart local v5       #visible:Z
    :cond_3
    const-string v1, ""

    .line 1185
    .local v1, date:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaInfoTimeAllowed:Z

    if-eqz v8, :cond_4

    .line 1186
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    .line 1187
    .local v2, dateInMs:J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_4

    .line 1188
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->getSettingFormatShortDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 1191
    .end local v2           #dateInMs:J
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;

    invoke-virtual {v8, v1}, Lcom/android/gallery3d/ui/MediaItemInfoView;->setDate(Ljava/lang/String;)V

    .line 1193
    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaInfoLocationAllowed:Z

    if-nez v8, :cond_5

    .line 1194
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/MediaItemInfoView;->setLocation(Ljava/lang/String;)V

    goto :goto_1

    .line 1197
    :cond_5
    new-array v4, v10, [D

    .line 1198
    .local v4, latlng:[D
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 1199
    aget-wide v8, v4, v7

    aget-wide v10, v4, v6

    invoke-static {v8, v9, v10, v11}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1200
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;

    aget-wide v9, v4, v7

    aget-wide v11, v4, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/gallery3d/ui/MediaItemInfoView;->needResolveAddress(DD)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1201
    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mResolveAddressPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 1202
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/MediaItemInfoView;->setLocation(Ljava/lang/String;)V

    .line 1203
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;

    aget-wide v9, v4, v7

    aget-wide v11, v4, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/gallery3d/ui/MediaItemInfoView;->setLocation(DD)V

    .line 1204
    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, v4, p0, v7}, Lcom/android/gallery3d/ui/DetailsHelper;->resolveAddress(Lcom/android/gallery3d/app/AbstractGalleryActivity;[DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;Z)Ljava/lang/String;

    goto :goto_1

    .line 1207
    :cond_6
    invoke-static {p0}, Lcom/android/gallery3d/ui/DetailsHelper;->cancel(Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)V

    .line 1208
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/MediaItemInfoView;->setLocation(Ljava/lang/String;)V

    .line 1209
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;

    invoke-virtual {v6, v12, v13, v12, v13}, Lcom/android/gallery3d/ui/MediaItemInfoView;->setLocation(DD)V

    goto :goto_1
.end method

.method private updateMenuOperations()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1399
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/GalleryActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 1402
    .local v3, menu:Landroid/view/Menu;
    if-nez v3, :cond_1

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    iget-boolean v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mSingleItemOnly:Z

    if-eqz v5, :cond_2

    .line 1406
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Landroid/view/Menu;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1407
    invoke-interface {v3, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1406
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1413
    .end local v1           #i:I
    :cond_2
    const v5, 0x7f100236

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1414
    .local v2, item:Landroid/view/MenuItem;
    if-eqz v2, :cond_3

    .line 1415
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canDoSlideShow()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_2
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1419
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 1420
    .local v0, currentPhoto:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->isCameraItem(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1422
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v4

    .line 1425
    .local v4, supportedOperations:I
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mSettingsItem:Landroid/view/MenuItem;

    if-eqz v5, :cond_4

    .line 1426
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mSettingsItem:Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v8, :cond_8

    instance-of v8, v0, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v8, :cond_8

    sget-object v8, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    :goto_3
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1431
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-eqz v5, :cond_9

    .line 1432
    and-int/lit8 v4, v4, 0x1

    .line 1444
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->isFreeShareEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1445
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareItem:Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/ShareManager;->addShareItem(Lcom/android/gallery3d/app/ShareManager$IShareItem;)Z

    .line 1447
    :cond_6
    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    .line 1448
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdatePanoramaMenuItemsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/data/MediaItem;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 1449
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mAirSharingItem:Landroid/view/MenuItem;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mAirSharingItem:Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    #getter for: Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->needTips:Z
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->access$900(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1450
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    invoke-virtual {v5}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->showTipsDelay()V

    goto/16 :goto_0

    .end local v0           #currentPhoto:Lcom/android/gallery3d/data/MediaItem;
    .end local v4           #supportedOperations:I
    :cond_7
    move v5, v7

    .line 1415
    goto :goto_2

    .restart local v0       #currentPhoto:Lcom/android/gallery3d/data/MediaItem;
    .restart local v4       #supportedOperations:I
    :cond_8
    move v6, v7

    .line 1426
    goto :goto_3

    .line 1433
    :cond_9
    iget-boolean v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-nez v5, :cond_a

    .line 1434
    and-int/lit16 v4, v4, -0x201

    goto :goto_4

    .line 1435
    :cond_a
    iget-boolean v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsAnyMapAvailable:Z

    if-nez v5, :cond_b

    .line 1436
    and-int/lit8 v4, v4, -0x11

    goto :goto_4

    .line 1438
    :cond_b
    iget-boolean v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mSingleItemOnly:Z

    if-eqz v5, :cond_5

    .line 1439
    and-int/lit8 v4, v4, -0x5

    .line 1440
    and-int/lit8 v4, v4, -0x2

    goto :goto_4
.end method

.method private updateNavigationBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1494
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v0, :cond_0

    .line 1502
    :goto_0
    return-void

    .line 1495
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v0, :cond_1

    .line 1496
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    goto :goto_0

    .line 1497
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_2

    .line 1498
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    goto :goto_0

    .line 1500
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    goto :goto_0
.end method

.method private updatePanoramaUI(Z)V
    .locals 4
    .parameter "isPanorama360"

    .prologue
    const v3, 0x7f10022d

    .line 2699
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 2702
    .local v1, menu:Landroid/view/Menu;
    if-nez v1, :cond_1

    .line 2721
    :cond_0
    :goto_0
    return-void

    .line 2706
    :cond_1
    invoke-static {v1, p1, p1}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuForPanorama(Landroid/view/Menu;ZZ)V

    .line 2708
    if-eqz p1, :cond_2

    .line 2709
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2710
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2711
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2712
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d026f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 2714
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 2715
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2716
    .restart local v0       #item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 2717
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2718
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d026d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateProgressBar()V
    .locals 4

    .prologue
    .line 1386
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    if-eqz v2, :cond_0

    .line 1387
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->hideProgress()V

    .line 1388
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v1

    .line 1389
    .local v1, progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_0

    .line 1390
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/StitchingProgressManager;->getProgress(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 1391
    .local v0, progress:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1392
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/PhotoPageProgressBar;->setProgress(I)V

    .line 1396
    .end local v0           #progress:Ljava/lang/Integer;
    .end local v1           #progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    :cond_0
    return-void
.end method

.method private updateScaleGesture()V
    .locals 2

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    .line 3129
    :goto_0
    return-void

    .line 3124
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3125
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setScaleGestureEnabled(Z)V

    goto :goto_0

    .line 3127
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setScaleGestureEnabled(Z)V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 2

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    .line 1382
    :goto_0
    return-void

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1378
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1380
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUIForCurrentPhoto()V
    .locals 2

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 1329
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 1331
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateTitle()V

    .line 1333
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1334
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageDelegate:Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->refreshIconWhenReady()V

    .line 1335
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_2

    .line 1336
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsHelper;->reloadDetails()V

    .line 1338
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1340
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mUpdateShareURICallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaItem;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 1342
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateProgressBar()V

    .line 1345
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMavSeekBar()V

    .line 1347
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateScaleGesture()V

    goto :goto_0
.end method

.method private wantBars()V
    .locals 1

    .prologue
    .line 1550
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 1551
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 1552
    :cond_1
    return-void
.end method


# virtual methods
.method public addSecureAlbumItem(ZI)V
    .locals 1
    .parameter "isVideo"
    .parameter "id"

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/data/SecureAlbum;->addMediaItem(ZI)V

    .line 1685
    return-void
.end method

.method public alertDeivceDown(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 472
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d03c0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d03c2

    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$5;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/PhotoPage$5;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 481
    .local v0, alertDialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 482
    return-void
.end method

.method public canDisplayBottomControl(I)Z
    .locals 4
    .parameter "control"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1129
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v2, :cond_0

    .line 1144
    :goto_0
    return v1

    .line 1132
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1134
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1139
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama:Z

    goto :goto_0

    .line 1141
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama360:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 1132
    nop

    :pswitch_data_0
    .packed-switch 0x7f100183
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public canDisplayBottomControls()Z
    .locals 1

    .prologue
    .line 1124
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->canUndo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 513
    const v0, 0x7f0a0027

    return v0
.end method

.method public getShareMenuPoint(ILandroid/graphics/Point;[I)Z
    .locals 1
    .parameter "faceId"
    .parameter "point"
    .parameter "leftPadding"

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2138
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/ui/PhotoView;->getShareMenuPoint(ILandroid/graphics/Point;[I)Z

    move-result v0

    goto :goto_0
.end method

.method public isFreeShareEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2998
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v4, :cond_0

    move v0, v3

    .line 2999
    .local v0, supportOperation:I
    :goto_0
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_1

    move v1, v2

    .line 3000
    .local v1, supportShare:Z
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    return v2

    .line 2998
    .end local v0           #supportOperation:I
    .end local v1           #supportShare:Z
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    goto :goto_0

    .restart local v0       #supportOperation:I
    :cond_1
    move v1, v3

    .line 2999
    goto :goto_1

    .restart local v1       #supportShare:Z
    :cond_2
    move v2, v3

    .line 3000
    goto :goto_2
.end method

.method public isInMeteringRect(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2048
    const-string v0, "PhotoPage"

    const-string v1, "isInMeteringRect enter"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 2051
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/AppBridge;->isInMeteringRect(II)Z

    move-result v0

    .line 2053
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockOrientation()V
    .locals 2

    .prologue
    .line 2738
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2739
    return-void
.end method

.method public notifyScreenNailChanged()V
    .locals 2

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    if-nez v0, :cond_1

    .line 1680
    :cond_0
    :goto_0
    return-void

    .line 1677
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1678
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/SnailAlbum;->notifyChange()V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 3201
    return-void
.end method

.method public onActionBarAllowed(Z)V
    .locals 2
    .parameter "allowed"

    .prologue
    .line 2067
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 2068
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2069
    return-void
.end method

.method public onActionBarNotWanted()V
    .locals 0

    .prologue
    .line 3092
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 3093
    return-void
.end method

.method public onActionBarWanted()V
    .locals 2

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2074
    return-void
.end method

.method public onAddressAvailable(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 1171
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mResolveAddressPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eq v0, v1, :cond_1

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/MediaItemInfoView;->setLocation(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1571
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_1

    .line 1572
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 1592
    :cond_0
    :goto_0
    return-void

    .line 1573
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    #getter for: Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->showTips:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->access$5900(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1574
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->hideTips(Z)V

    goto :goto_0

    .line 1575
    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsFreeShareInit:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareView:Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1576
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareView:Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;->hide()V

    goto :goto_0

    .line 1577
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsFreeShareInit:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareStopView:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->hide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1578
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->switchWithCaptureAnimation(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1580
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->setResult()V

    .line 1581
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1582
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto :goto_0

    .line 1583
    :cond_6
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    if-eqz v0, :cond_7

    .line 1584
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    goto :goto_0

    .line 1586
    :cond_7
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onBackPressed()V

    .line 1587
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1589
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 1590
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    goto :goto_0
.end method

.method public onBottomControlClicked(I)V
    .locals 2
    .parameter "control"

    .prologue
    .line 1150
    packed-switch p1, :pswitch_data_0

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1153
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getDeleteAnimationValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchPhotoEditor()V

    goto :goto_0

    .line 1158
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getPanoramaViewHelper()Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->showPanorama(Landroid/net/Uri;)V

    goto :goto_0

    .line 1162
    :pswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->launchTinyPlanet()V

    goto :goto_0

    .line 1150
    :pswitch_data_0
    .packed-switch 0x7f100183
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCommitDeleteImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2109
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 2114
    :goto_0
    return-void

    .line 2110
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2111
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 2112
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const v1, 0x7f100230

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 2113
    iput-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 1517
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsFreeShareInit:Z

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareView:Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;->onConfigurationChanged()V

    .line 1519
    :cond_0
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1520
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 25
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 585
    invoke-super/range {p0 .. p2}, Lcom/android/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 586
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/ActivityState;->mCustomActionBarBg:Z

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    const v4, 0x7f02003c

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/GalleryActionBar;->setBackgroundDrawable(I)V

    .line 589
    new-instance v3, Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 590
    new-instance v3, Lcom/android/gallery3d/ui/MenuExecutor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v3, v4, v5}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 592
    new-instance v3, Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/PhotoView;->setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V

    .line 595
    new-instance v3, Lcom/android/gallery3d/ui/MediaItemInfoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/ui/MediaItemInfoView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/app/OrientationManager;->addListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-interface {v3, v4}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 603
    new-instance v3, Lcom/android/gallery3d/app/ShareManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/app/ShareManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    const-string v4, "share_history.xml"

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/ShareManager;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 605
    new-instance v3, Lcom/android/gallery3d/app/ShareManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/app/ShareManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaShareManager:Lcom/android/gallery3d/app/ShareManager;

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaShareManager:Lcom/android/gallery3d/app/ShareManager;

    const-string v4, "panorama_share_history.xml"

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/ShareManager;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/DmsSetPage;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mLaunchedFromDmsSetPage:Z

    .line 609
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    .line 610
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    invoke-virtual {v3, v4}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->addListener(Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;)V

    .line 611
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->searchDevice()V

    .line 613
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$8;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/gallery3d/app/PhotoPage$8;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/GLRoot;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    .line 789
    const-string v3, "Single_Item_Only"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSingleItemOnly:Z

    .line 791
    const-string v3, "media-set-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 792
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    .line 793
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->setupNfcBeamPush()V

    .line 794
    const-string v3, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 795
    .local v17, itemPathString:Ljava/lang/String;
    if-eqz v17, :cond_e

    const-string v3, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 798
    .local v6, itemPath:Lcom/android/gallery3d/data/Path;
    :goto_0
    const-string v3, "treat-back-as-up"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    .line 799
    const-string v3, "start-in-filmstrip"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    .line 803
    const-string v3, "index-hint"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 805
    const-string v3, "item_id"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 806
    .local v12, cursor_id:I
    const-string v3, "date_taken"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 808
    .local v13, dateTaken:J
    new-instance v3, Lcom/android/gallery3d/app/FaceMenuOperation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v5, 0x81

    move-object/from16 v0, p0

    invoke-direct {v3, v4, v5, v0}, Lcom/android/gallery3d/app/FaceMenuOperation;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;ILcom/android/gallery3d/app/PhotoPage;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mFaceMenuOperation:Lcom/android/gallery3d/app/FaceMenuOperation;

    .line 814
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f1000f6

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/MavSeekBar;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    .line 816
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->reloadMavSeekBar()V

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    if-eqz v3, :cond_0

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    new-instance v4, Lcom/android/gallery3d/app/PhotoPage$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/gallery3d/app/PhotoPage$9;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/MavSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 840
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->initGyroSensor()V

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 844
    const-string v3, "app-bridge"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/app/AppBridge;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v3, :cond_4

    .line 846
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 847
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 848
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 850
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 853
    invoke-static {}, Lcom/android/gallery3d/data/SnailSource;->newId()I

    move-result v16

    .line 854
    .local v16, id:I
    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/data/SnailSource;->getSetPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v23

    .line 855
    .local v23, screenNailSetPath:Lcom/android/gallery3d/data/Path;
    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/data/SnailSource;->getItemPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v22

    .line 856
    .local v22, screenNailItemPath:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/SnailAlbum;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/SnailItem;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 860
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 861
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AppBridge;->attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->setCameraScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 863
    const-string v3, "show_when_locked"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 865
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    or-int/lit8 v3, v3, 0x20

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    .line 869
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    const-string v4, "/local/all/0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/gallery3d/data/SecureSource;->isSecurePath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 872
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/SecureAlbum;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    .line 876
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/filter/empty/{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 881
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/combo/item/{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 885
    move-object/from16 v6, v22

    .line 895
    .end local v16           #id:I
    .end local v22           #screenNailItemPath:Lcom/android/gallery3d/data/Path;
    .end local v23           #screenNailSetPath:Lcom/android/gallery3d/data/Path;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v20

    .line 897
    .local v20, originalSet:Lcom/android/gallery3d/data/MediaSet;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, v20

    instance-of v3, v0, Lcom/android/gallery3d/data/ComboAlbum;

    if-eqz v3, :cond_5

    move-object/from16 v3, v20

    .line 900
    check-cast v3, Lcom/android/gallery3d/data/ComboAlbum;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/ComboAlbum;->useNameOfChild(I)V

    .line 902
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 903
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/filter/delete/{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 904
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    .line 906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-nez v3, :cond_6

    .line 907
    const-string v3, "PhotoPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to restore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_6
    if-nez v6, :cond_8

    .line 910
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v19

    .line 911
    .local v19, mediaItemCount:I
    if-lez v19, :cond_d

    .line 912
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    move/from16 v0, v19

    if-lt v3, v0, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 913
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 921
    .end local v19           #mediaItemCount:I
    :cond_8
    const/4 v3, -0x1

    if-eq v12, v3, :cond_9

    .line 922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v3, v12, v13, v14}, Lcom/android/gallery3d/data/FilterDeleteSet;->getItemCountById(IJ)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 926
    :cond_9
    const-string v3, "media-count"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 927
    .local v11, mediaSetSize:I
    new-instance v2, Lcom/android/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v8, :cond_f

    const/4 v8, -0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v9, :cond_10

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v10, :cond_11

    const/4 v10, 0x0

    :goto_3
    invoke-direct/range {v2 .. v11}, Lcom/android/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;IIZZI)V

    .line 933
    .local v2, pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 938
    const-string v3, "PhotoPage"

    const-string v4, "oncreate() -->  new mHdrLableView"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    new-instance v3, Lcom/android/gallery3d/ui/HdrLableView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f02017f

    invoke-direct {v3, v4, v5}, Lcom/android/gallery3d/ui/HdrLableView;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mHdrLableView:Lcom/android/gallery3d/ui/HdrLableView;

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mHdrLableView:Lcom/android/gallery3d/ui/HdrLableView;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mFaceMenuOperation:Lcom/android/gallery3d/app/FaceMenuOperation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/FaceMenuOperation;->setModel(Lcom/android/gallery3d/app/PhotoPage$Model;)V

    .line 945
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/app/PhotoPage$10;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    if-eqz v3, :cond_a

    .line 1026
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/app/PhotoPage$11;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V

    .line 1087
    .end local v2           #pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    .end local v11           #mediaSetSize:I
    .end local v20           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_a
    :goto_4
    new-instance v3, Lcom/android/gallery3d/app/PhotoShareItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v5, 0x91

    invoke-direct {v3, v4, v5}, Lcom/android/gallery3d/app/PhotoShareItem;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    .line 1088
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoShareItemListener:Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/PhotoShareItem;->setOnItemClickedListener(Lcom/android/gallery3d/app/PhotoShareItem$OnItemClickedListener;)V

    .line 1089
    new-instance v3, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    .line 1091
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_15

    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v3, :cond_16

    const v3, 0x7f100025

    :goto_6
    invoke-virtual {v4, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 1094
    .local v15, galleryRoot:Landroid/widget/RelativeLayout;
    if-eqz v15, :cond_c

    .line 1095
    new-instance v3, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageDelegate:Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4, v5, v15}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;-><init>(Lcom/huawei/gallery3d/voiceimage/VoiceImageController$VoiceImageCallback;Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    .line 1096
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v3, :cond_b

    .line 1097
    new-instance v3, Lcom/android/gallery3d/app/PhotoPageBottomControls;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v15}, Lcom/android/gallery3d/app/PhotoPageBottomControls;-><init>(Lcom/android/gallery3d/app/PhotoPageBottomControls$Delegate;Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    .line 1099
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v21

    .line 1100
    .local v21, progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    if-eqz v21, :cond_c

    .line 1101
    new-instance v3, Lcom/android/gallery3d/app/PhotoPageProgressBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4, v15}, Lcom/android/gallery3d/app/PhotoPageProgressBar;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressBar:Lcom/android/gallery3d/app/PhotoPageProgressBar;

    .line 1102
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    .line 1103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mProgressListener:Lcom/android/gallery3d/app/PhotoPage$UpdateProgressListener;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-eqz v3, :cond_c

    .line 1105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V

    .line 1109
    .end local v21           #progressManager:Lcom/android/gallery3d/app/StitchingProgressManager;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mNonSynchronizedHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1110
    .end local v15           #galleryRoot:Landroid/widget/RelativeLayout;
    :cond_d
    :goto_7
    return-void

    .line 795
    .end local v6           #itemPath:Lcom/android/gallery3d/data/Path;
    .end local v12           #cursor_id:I
    .end local v13           #dateTaken:J
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 927
    .restart local v6       #itemPath:Lcom/android/gallery3d/data/Path;
    .restart local v11       #mediaSetSize:I
    .restart local v12       #cursor_id:I
    .restart local v13       #dateTaken:J
    .restart local v20       #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AppBridge;->isPanorama()Z

    move-result v9

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v10}, Lcom/android/gallery3d/app/AppBridge;->isStaticCamera()Z

    move-result v10

    goto/16 :goto_3

    .line 1047
    .end local v11           #mediaSetSize:I
    .end local v20           #originalSet:Lcom/android/gallery3d/data/MediaSet;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v18

    check-cast v18, Lcom/android/gallery3d/data/MediaItem;

    .line 1050
    .local v18, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    if-nez v18, :cond_13

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0d024c

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 1058
    :cond_13
    new-instance v24, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v4, v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V

    .line 1059
    .local v24, spda:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 1060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mFaceMenuOperation:Lcom/android/gallery3d/app/FaceMenuOperation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/FaceMenuOperation;->setModel(Lcom/android/gallery3d/app/PhotoPage$Model;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    if-eqz v3, :cond_14

    .line 1064
    new-instance v3, Lcom/android/gallery3d/app/PhotoPage$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/app/PhotoPage$12;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V

    .line 1083
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_4

    .line 1091
    .end local v18           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    .end local v24           #spda:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 1092
    :cond_16
    const v3, 0x7f1000fb

    goto/16 :goto_6
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const v4, 0x7f100239

    const/4 v3, 0x1

    .line 1689
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLaunchedFromDmsSetPage:Z

    if-eqz v1, :cond_1

    const v1, 0x7f120004

    :goto_0
    invoke-virtual {v2, v1, p1}, Lcom/android/gallery3d/app/GalleryActionBar;->createActionBarMenu(ILandroid/view/Menu;)V

    .line 1690
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1691
    .local v0, settingsItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1692
    sget-object v1, Lcom/android/gallery3d/settings/GallerySettings;->SUPPORTED_MENU:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1695
    :cond_0
    const v1, 0x7f100246

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mAirSharingItem:Landroid/view/MenuItem;

    .line 1696
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onCreateActionBar(Landroid/view/Menu;)V

    .line 1697
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mSettingsItem:Landroid/view/MenuItem;

    .line 1698
    new-instance v1, Landroid/widget/ShareActionProvider;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 1699
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v2, "image/*"

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    .line 1700
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->isAnyMapAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsAnyMapAvailable:Z

    .line 1701
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 1703
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateTitle()V

    .line 1705
    return v3

    .line 1689
    .end local v0           #settingsItem:Landroid/view/MenuItem;
    :cond_1
    const v1, 0x7f12000e

    goto :goto_0
.end method

.method public onCurrentImageUpdated()V
    .locals 1

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 2453
    return-void
.end method

.method public onDeleteImage(Lcom/android/gallery3d/data/Path;I)V
    .locals 2
    .parameter "path"
    .parameter "offset"

    .prologue
    .line 2091
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 2092
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    .line 2093
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    .line 2094
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->addDeletion(Lcom/android/gallery3d/data/Path;I)V

    .line 2095
    return-void

    .line 2093
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2611
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 2612
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/AppBridge;->setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V

    .line 2613
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/SnailItem;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 2614
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AppBridge;->detachScreenNail()V

    .line 2615
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    .line 2616
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/android/gallery3d/data/SnailAlbum;

    .line 2617
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    .line 2619
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/OrientationManager;->removeListener(Lcom/android/gallery3d/app/OrientationManager$Listener;)V

    .line 2620
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V

    .line 2621
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->cleanup()V

    .line 2622
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->cleanup()V

    .line 2624
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v0, :cond_3

    .line 2626
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V

    .line 2628
    :cond_3
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->removeListener(Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;)V

    .line 2629
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    if-eqz v0, :cond_4

    .line 2630
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->destroy()V

    .line 2633
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFaceMenuOperation:Lcom/android/gallery3d/app/FaceMenuOperation;

    if-eqz v0, :cond_5

    .line 2634
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFaceMenuOperation:Lcom/android/gallery3d/app/FaceMenuOperation;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/FaceMenuOperation;->cleanup()V

    .line 2638
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2639
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mNonSynchronizedHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2640
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaItemInfoView:Lcom/android/gallery3d/ui/MediaItemInfoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MediaItemInfoView;->recycle()V

    .line 2641
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onDestroy()V

    .line 2642
    return-void
.end method

.method public onFaceMenuChange()V
    .locals 2

    .prologue
    const/16 v1, 0x25

    .line 2132
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2133
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2134
    return-void
.end method

.method public onFaceTouched(IILandroid/graphics/Point;I)V
    .locals 1
    .parameter "faceId"
    .parameter "nameType"
    .parameter "point"
    .parameter "padding"

    .prologue
    .line 2118
    if-gez p1, :cond_1

    .line 2128
    :cond_0
    :goto_0
    return-void

    .line 2119
    :cond_1
    if-nez p2, :cond_2

    .line 2120
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFaceMenuOperation:Lcom/android/gallery3d/app/FaceMenuOperation;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->startContactActivity(I)V

    goto :goto_0

    .line 2121
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p2, :cond_3

    .line 2123
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFaceMenuOperation:Lcom/android/gallery3d/app/FaceMenuOperation;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/FaceMenuOperation;->showNameList(I)V

    goto :goto_0

    .line 2124
    :cond_3
    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFaceMenuOperation:Lcom/android/gallery3d/app/FaceMenuOperation;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/gallery3d/app/FaceMenuOperation;->showShareMenu(ILandroid/graphics/Point;I)V

    goto :goto_0
.end method

.method public onFilmModeChanged(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2458
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMediaItemInfoView()V

    .line 2460
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 2461
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageDelegate:Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->refreshIconWhenReady()V

    .line 2470
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->isFreeShareEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2471
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareItem:Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/ShareManager;->addShareItem(Lcom/android/gallery3d/app/ShareManager$IShareItem;)Z

    .line 2475
    :goto_0
    if-eqz p1, :cond_2

    .line 2476
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2479
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->isMav(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2480
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->cancelCurrentMavDecodeTask()V

    .line 2489
    :cond_0
    :goto_1
    return-void

    .line 2473
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareItem:Lcom/android/gallery3d/app/PhotoPage$FreeShareItem;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/ShareManager;->removeShareItem(Lcom/android/gallery3d/app/ShareManager$IShareItem;)V

    goto :goto_0

    .line 2484
    :cond_2
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 2485
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 2486
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 2487
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->isCameraItem(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->lockOrientation()V

    goto :goto_1
.end method

.method public onFlingDown()V
    .locals 3

    .prologue
    .line 2168
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->isCamera(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2181
    :cond_0
    :goto_0
    return-void

    .line 2169
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v1, :cond_2

    .line 2170
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 2174
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsFreeShareInit:Z

    if-eqz v1, :cond_0

    .line 2175
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareStopView:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    invoke-virtual {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->show()Z

    move-result v0

    .line 2176
    .local v0, result:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    if-eqz v1, :cond_0

    .line 2177
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->stop(Z)V

    goto :goto_0
.end method

.method public onFlingUp()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2143
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v3, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->isCamera(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2164
    :cond_0
    :goto_0
    return-void

    .line 2145
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-nez v3, :cond_2

    move v0, v2

    .line 2146
    .local v0, supportOperation:I
    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_3

    .line 2147
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0d03cd

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0d03bb

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2148
    .local v1, supportString:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2145
    .end local v0           #supportOperation:I
    .end local v1           #supportString:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    goto :goto_1

    .line 2152
    .restart local v0       #supportOperation:I
    :cond_3
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_4

    .line 2153
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 2155
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    if-eqz v2, :cond_5

    .line 2156
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    invoke-virtual {v2, v5}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->stop(Z)V

    .line 2160
    :cond_5
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsFreeShareInit:Z

    if-eqz v2, :cond_0

    .line 2161
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareView:Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    invoke-virtual {v2}, Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;->show()V

    goto :goto_0
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .parameter "full"

    .prologue
    const/4 v2, 0x0

    .line 2078
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2080
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2081
    return-void

    .end local v0           #m:Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 2078
    goto :goto_0
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    const/4 v12, 0x4

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x1

    .line 1798
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-nez v11, :cond_0

    move v9, v10

    .line 1950
    :goto_0
    return v9

    .line 1799
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1800
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v11, v9}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v3

    .line 1802
    .local v3, current:Lcom/android/gallery3d/data/MediaItem;
    if-nez v3, :cond_1

    move v9, v10

    .line 1804
    goto :goto_0

    .line 1808
    :cond_1
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v11, v9}, Lcom/android/gallery3d/app/PhotoPage$Model;->isCamera(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move v9, v10

    goto :goto_0

    .line 1811
    :cond_2
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v11}, Lcom/android/gallery3d/ui/MenuExecutor;->getDeleteAnimationValue()Z

    move-result v11

    if-eqz v11, :cond_3

    move v9, v10

    goto :goto_0

    .line 1813
    :cond_3
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v11}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v4

    .line 1814
    .local v4, currentIndex:I
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v8

    .line 1816
    .local v8, path:Lcom/android/gallery3d/data/Path;
    iget-object v11, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v7

    .line 1817
    .local v7, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1818
    .local v0, action:I
    const/4 v2, 0x0

    .line 1819
    .local v2, confirmMsg:Ljava/lang/String;
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1821
    :sswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUpPressed()V

    move v9, v10

    .line 1822
    goto :goto_0

    .line 1825
    :sswitch_1
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onItemSelected(Lcom/android/gallery3d/data/MediaItem;)V

    .line 1827
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    if-eqz v9, :cond_4

    .line 1828
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->noMoreTips()V

    :cond_4
    move v9, v10

    .line 1831
    goto :goto_0

    .line 1834
    :sswitch_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1835
    .local v5, data:Landroid/os/Bundle;
    const-string v9, "media-set-path"

    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v11}, Lcom/android/gallery3d/data/FilterDeleteSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    const-string v9, "media-item-path"

    invoke-virtual {v8}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    const-string v9, "photo-index"

    invoke-virtual {v5, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1838
    const-string v9, "repeat"

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1839
    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v9

    const-class v11, Lcom/android/gallery3d/app/SlideshowPage;

    invoke-virtual {v9, v11, v10, v5}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 1841
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageDelegate:Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->refreshIconWhenReady()V

    move v9, v10

    .line 1842
    goto/16 :goto_0

    .line 1845
    .end local v5           #data:Landroid/os/Bundle;
    :sswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 1846
    .local v1, activity:Landroid/app/Activity;
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.android.camera.action.EDITOR_CROP"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1847
    .local v6, intent:Landroid/content/Intent;
    const-class v9, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v6, v1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1848
    invoke-virtual {v7, v8}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1850
    invoke-static {v3}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x3

    :goto_1
    invoke-virtual {v1, v6, v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v9, v10

    .line 1853
    goto/16 :goto_0

    .line 1850
    :cond_5
    const/4 v9, 0x2

    goto :goto_1

    .line 1861
    .end local v1           #activity:Landroid/app/Activity;
    .end local v6           #intent:Landroid/content/Intent;
    :sswitch_4
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    if-eqz v9, :cond_7

    .line 1862
    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isSupportPhotoShareFeature(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_6

    .line 1864
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    invoke-virtual {v9, v11}, Lcom/android/gallery3d/app/ShareManager;->addShareItem(Lcom/android/gallery3d/app/ShareManager$IShareItem;)Z

    .line 1866
    :cond_6
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v9

    if-ne v12, v9, :cond_7

    .line 1867
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoShareItem:Lcom/android/gallery3d/app/PhotoShareItem;

    invoke-virtual {v9, v11}, Lcom/android/gallery3d/app/ShareManager;->removeShareItem(Lcom/android/gallery3d/app/ShareManager$IShareItem;)V

    .line 1870
    :cond_7
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageShareListener:Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;

    invoke-virtual {v9, v11}, Lcom/android/gallery3d/app/ShareManager;->setSingleVoiceShareListener(Lcom/android/gallery3d/app/ShareManager$ShareProcessListener;)V

    .line 1871
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/ShareManager;->show()V

    move v9, v10

    .line 1872
    goto/16 :goto_0

    .line 1875
    :sswitch_5
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mPanoramaShareManager:Lcom/android/gallery3d/app/ShareManager;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/ShareManager;->show()V

    move v9, v10

    .line 1876
    goto/16 :goto_0

    .line 1879
    :sswitch_6
    new-instance v6, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v11, Lcom/android/gallery3d/app/TrimVideo;

    invoke-direct {v6, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1880
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual {v7, v8}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1882
    const-string v9, "media-item-path"

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1883
    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v11, 0x6

    invoke-virtual {v9, v6, v11}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v9, v10

    .line 1884
    goto/16 :goto_0

    .line 1888
    .end local v6           #intent:Landroid/content/Intent;
    :sswitch_7
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1889
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual {v7, v8}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1891
    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, v13}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v9, v11, v12}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v9, v10

    .line 1893
    goto/16 :goto_0

    .line 1896
    .end local v6           #intent:Landroid/content/Intent;
    :sswitch_8
    iget-boolean v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v9, :cond_8

    .line 1897
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    :goto_2
    move v9, v10

    .line 1901
    goto/16 :goto_0

    .line 1899
    :cond_8
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showDetails()V

    goto :goto_2

    .line 1904
    :sswitch_9
    iget-object v11, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f11

    invoke-virtual {v11, v12, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 1908
    sget-boolean v11, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_HW_ANIMATION:Z

    if-eqz v11, :cond_9

    .line 1909
    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v11, v9}, Lcom/android/gallery3d/ui/PhotoView;->startScaleAnimation(Z)V

    .line 1914
    :cond_9
    :sswitch_a
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1915
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9, v8}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1917
    sget-boolean v9, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_HW_ANIMATION:Z

    if-eqz v9, :cond_a

    .line 1918
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    iget-object v12, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v9, p1, v2, v11, v12}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Lcom/android/gallery3d/ui/PhotoView;)V

    :goto_3
    move v9, v10

    .line 1922
    goto/16 :goto_0

    .line 1920
    :cond_a
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v9, p1, v2, v11, v13}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Lcom/android/gallery3d/ui/PhotoView;)V

    goto :goto_3

    .line 1925
    :sswitch_b
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->isVoiceImage()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    if-eqz v9, :cond_b

    .line 1926
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    invoke-virtual {v9, v10}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->stop(Z)V

    .line 1928
    :cond_b
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1929
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9, v8}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1930
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mRotateProcessListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v9, p1, v2, v11, v13}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Lcom/android/gallery3d/ui/PhotoView;)V

    move v9, v10

    .line 1932
    goto/16 :goto_0

    .line 1935
    :sswitch_c
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1936
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9, v8}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1937
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    new-instance v11, Lcom/android/gallery3d/ui/ImportCompleteListener;

    iget-object v12, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v11, v12}, Lcom/android/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v9, p1, v2, v11, v13}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Lcom/android/gallery3d/ui/PhotoView;)V

    move v9, v10

    .line 1939
    goto/16 :goto_0

    .line 1941
    :sswitch_d
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 1942
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9, v8}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 1943
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    new-instance v11, Lcom/android/gallery3d/ui/PhotoShareDownloadCompleteListener;

    iget-object v12, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v11, v12}, Lcom/android/gallery3d/ui/PhotoShareDownloadCompleteListener;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v9, p1, v2, v11, v13}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Lcom/android/gallery3d/ui/PhotoView;)V

    move v9, v10

    .line 1945
    goto/16 :goto_0

    .line 1947
    :sswitch_e
    iget-object v9, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v11, Landroid/content/Intent;

    iget-object v12, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v13, Lcom/android/gallery3d/settings/GallerySettings;

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v9, v11}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    move v9, v10

    .line 1948
    goto/16 :goto_0

    .line 1819
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10022d -> :sswitch_4
        0x7f10022f -> :sswitch_d
        0x7f100230 -> :sswitch_9
        0x7f100236 -> :sswitch_2
        0x7f100239 -> :sswitch_e
        0x7f100246 -> :sswitch_1
        0x7f100271 -> :sswitch_c
        0x7f100272 -> :sswitch_5
        0x7f100273 -> :sswitch_7
        0x7f100274 -> :sswitch_b
        0x7f100275 -> :sswitch_b
        0x7f100276 -> :sswitch_3
        0x7f100277 -> :sswitch_a
        0x7f100278 -> :sswitch_a
        0x7f10027a -> :sswitch_8
        0x7f10027b -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2771
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 2772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasMenuClicked:Z

    .line 2773
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsFreeShareInit:Z

    if-eqz v0, :cond_0

    .line 2774
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareView:Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2775
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareView:Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;->hide()V

    .line 2780
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 2782
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 2777
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFreeShareStopView:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->hide()Z

    goto :goto_0
.end method

.method public onMavSeekBarAllowed(Z)V
    .locals 2
    .parameter "allowed"

    .prologue
    .line 3146
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMavSeekBarAllowed:Z

    .line 3147
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3148
    return-void
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 2786
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasMenuClicked:Z

    .line 2787
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 2788
    return-void
.end method

.method public onOrientationCompensationChanged()V
    .locals 1

    .prologue
    .line 2730
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mEnableOrientationWhenCapture:Z

    if-nez v0, :cond_0

    .line 2731
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationChanged:I

    .line 2735
    :goto_0
    return-void

    .line 2734
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 2382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 2384
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ShareManager;->hideIfShowing()V

    .line 2385
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    .line 2386
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2388
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_HW_ANIMATION:Z

    if-eqz v0, :cond_a

    .line 2392
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v0, :cond_0

    .line 2393
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->preparePhotoFallbackView()V

    .line 2401
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/gallery3d/ui/DetailsHelper;->pause()V

    .line 2403
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_1

    .line 2404
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->dismissAlertDialog()V

    .line 2408
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 2409
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v0, :cond_3

    .line 2410
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->pause()V

    .line 2412
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->pause()V

    .line 2413
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2414
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2415
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 2416
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/GalleryActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 2420
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 2421
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->canPauseMenuExecutor:Z

    if-eqz v0, :cond_4

    .line 2422
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->pause()V

    .line 2424
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    if-eqz v0, :cond_5

    .line 2425
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoShareExecutor:Lcom/android/gallery3d/ui/PhotoShareShareExecutor;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoShareShareExecutor;->onPause()V

    .line 2428
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/FilterDeleteSet;->clearDeletion()V

    .line 2431
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHdrLableView:Lcom/android/gallery3d/ui/HdrLableView;

    if-eqz v0, :cond_7

    .line 2432
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHdrLableView:Lcom/android/gallery3d/ui/HdrLableView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/HdrLableView;->recycle()V

    .line 2435
    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    if-eqz v0, :cond_8

    .line 2436
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    invoke-virtual {v0, v2}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->stop(Z)V

    .line 2438
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFaceMenuOperation:Lcom/android/gallery3d/app/FaceMenuOperation;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/FaceMenuOperation;->resetMenu()V

    .line 2441
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    if-eqz v0, :cond_9

    .line 2442
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/MavSeekBar;->setVisibility(I)V

    .line 2443
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/MavSeekBar;->restore()V

    .line 2446
    :cond_9
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->unregisterGyroSensorListener()V

    .line 2448
    return-void

    .line 2398
    :cond_a
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    goto :goto_0
.end method

.method public onPictureCenter(Z)V
    .locals 4
    .parameter "isCamera"

    .prologue
    const/16 v2, 0xa

    const/16 v1, 0x9

    const/4 v0, 0x0

    .line 1114
    if-nez p1, :cond_0

    iget-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v3, :cond_2

    :cond_0
    const/4 p1, 0x1

    .line 1115
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 1116
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1117
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1118
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1119
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->lockOrientation()V

    .line 1120
    :cond_1
    return-void

    :cond_2
    move p1, v0

    .line 1114
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1118
    goto :goto_1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2526
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 2528
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-nez v2, :cond_0

    .line 2529
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 2597
    :goto_0
    return-void

    .line 2532
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->transitionFromAlbumPageIfNeeded()V

    .line 2535
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 2536
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v2, :cond_1

    .line 2537
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onResume()V

    .line 2539
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/PhotoPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 2541
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->isCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 2543
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->resume()V

    .line 2544
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->resume()V

    .line 2546
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2, v3}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 2550
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2553
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/app/GalleryActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 2554
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 2555
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageDelegate:Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/PhotoPage$VoiceImageDelegate;->refreshIconWhenReady()V

    .line 2560
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    #getter for: Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->showTips:Z
    invoke-static {v2}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->access$5900(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2561
    iput-boolean v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 2563
    :cond_3
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v2, :cond_4

    .line 2564
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 2565
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v2, :cond_a

    .line 2566
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 2570
    :goto_3
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->hideFace()V

    .line 2572
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v4, "image/*"

    invoke-static {v2, v4}, Lcom/android/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2573
    .local v0, haveImageEditor:Z
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eq v0, v2, :cond_5

    .line 2574
    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    .line 2575
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 2577
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->isAnyMapAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 2578
    .local v1, isAnyMapAvailable:Z
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsAnyMapAvailable:Z

    if-eq v1, v2, :cond_6

    .line 2579
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsAnyMapAvailable:Z

    .line 2580
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 2583
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    const-string v4, "photoshare"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->isCloudPhotoNotReady(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2585
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x22

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2589
    :cond_7
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMavSeekBar()V

    .line 2590
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->registerGyroSensorListener()V

    .line 2592
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 2593
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2595
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateSettings()V

    .line 2596
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMediaItemInfoView()V

    goto/16 :goto_0

    .end local v0           #haveImageEditor:Z
    .end local v1           #isAnyMapAvailable:Z
    :cond_8
    move v2, v4

    .line 2546
    goto/16 :goto_1

    :cond_9
    move v2, v4

    .line 2550
    goto/16 :goto_2

    .line 2568
    :cond_a
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    goto :goto_3
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    .line 3222
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 3304
    :cond_0
    :goto_0
    return-void

    .line 3227
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v6}, Lcom/android/gallery3d/app/PhotoPage$Model;->isMavLoadingFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3235
    const v5, 0x3d4ccccd

    .line 3240
    .local v5, xSmallRotateTH:F
    const/4 v4, 0x0

    .line 3241
    .local v4, valueToUse:F
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 3242
    .local v2, newRotation:I
    iget v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientation:I

    if-eq v6, v2, :cond_2

    .line 3244
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientation:I

    .line 3245
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mValue:F

    .line 3246
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 3247
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 3248
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 3249
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mFirstTime:Z

    .line 3251
    :cond_2
    iget v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientation:I

    packed-switch v6, :pswitch_data_0

    .line 3267
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v4, v6, v7

    .line 3269
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/PhotoPage;->updateBufferAndGet(F)F

    move-result v6

    const v7, 0x3d4ccccd

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 3273
    const/4 v6, 0x0

    add-float/2addr v6, v4

    iput v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mValue:F

    .line 3274
    iget v6, p0, Lcom/android/gallery3d/app/PhotoPage;->timestamp:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mValue:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 3275
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v6, v6

    iget v7, p0, Lcom/android/gallery3d/app/PhotoPage;->timestamp:F

    sub-float/2addr v6, v7

    const v7, 0x3089705f

    mul-float v0, v6, v7

    .line 3277
    .local v0, dT:F
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x1

    aget v8, v6, v7

    float-to-double v8, v8

    iget v10, p0, Lcom/android/gallery3d/app/PhotoPage;->mValue:F

    mul-float/2addr v10, v0

    const/high16 v11, 0x4334

    mul-float/2addr v10, v11

    float-to-double v10, v10

    const-wide v12, 0x400921fb54442d18L

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v6, v7

    .line 3278
    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mFirstTime:Z

    if-eqz v6, :cond_6

    .line 3279
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sget v9, Lcom/android/gallery3d/app/PhotoPage;->BASE_ANGLE:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 3280
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sget v9, Lcom/android/gallery3d/app/PhotoPage;->BASE_ANGLE:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 3281
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mFirstTime:Z

    .line 3290
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v6}, Lcom/android/gallery3d/app/PhotoPage$Model;->getTotalFrameCount()I

    move-result v3

    .line 3292
    .local v3, totalCount:I
    if-eqz v3, :cond_5

    .line 3293
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    mul-int/2addr v6, v3

    sget v7, Lcom/android/gallery3d/app/PhotoPage;->BASE_ANGLE:I

    mul-int/lit8 v7, v7, 0x2

    div-int v1, v6, v7

    .line 3294
    .local v1, index:I
    if-ltz v1, :cond_5

    if-ge v1, v3, :cond_5

    .line 3295
    iget v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastIndex:I

    const v7, 0xffff

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastIndex:I

    if-eq v6, v1, :cond_5

    .line 3296
    :cond_4
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v6, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setImageBitmap(I)V

    .line 3297
    iput v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mLastIndex:I

    .line 3298
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;

    invoke-virtual {v6, v1}, Lcom/android/gallery3d/ui/MavSeekBar;->syncProgressByGyroSensor(I)V

    .line 3303
    .end local v0           #dT:F
    .end local v1           #index:I
    .end local v3           #totalCount:I
    :cond_5
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v6, v6

    iput v6, p0, Lcom/android/gallery3d/app/PhotoPage;->timestamp:F

    goto/16 :goto_0

    .line 3253
    :pswitch_0
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x1

    aget v4, v6, v7

    .line 3254
    goto/16 :goto_1

    .line 3257
    :pswitch_1
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v4, v6, v7

    .line 3258
    goto/16 :goto_1

    .line 3261
    :pswitch_2
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    neg-float v4, v6

    .line 3262
    goto/16 :goto_1

    .line 3264
    :pswitch_3
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    neg-float v4, v6

    .line 3265
    goto/16 :goto_1

    .line 3282
    .restart local v0       #dT:F
    :cond_6
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_7

    .line 3283
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    aput v8, v6, v7

    .line 3284
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget v9, Lcom/android/gallery3d/app/PhotoPage;->BASE_ANGLE:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v6, v7

    goto/16 :goto_2

    .line 3285
    :cond_7
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    .line 3286
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    aput v8, v6, v7

    .line 3287
    iget-object v6, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->angle:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sget v9, Lcom/android/gallery3d/app/PhotoPage;->BASE_ANGLE:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v6, v7

    goto/16 :goto_2

    .line 3251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSingleTapUp(II)V
    .locals 16
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1981
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v13, :cond_1

    .line 1982
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/gallery3d/app/AppBridge;->onSingleTapUp(II)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2043
    :cond_0
    :goto_0
    return-void

    .line 1985
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v6

    .line 1986
    .local v6, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/android/gallery3d/data/SnailItem;

    if-eq v6, v13, :cond_0

    .line 1991
    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v9

    .line 1992
    .local v9, supported:I
    and-int/lit16 v13, v9, 0x80

    if-eqz v13, :cond_4

    const/4 v8, 0x1

    .line 1993
    .local v8, playVideo:Z
    :goto_1
    and-int/lit16 v13, v9, 0x2000

    if-eqz v13, :cond_5

    const/4 v11, 0x1

    .line 1994
    .local v11, unlock:Z
    :goto_2
    and-int/lit16 v13, v9, 0x4000

    if-eqz v13, :cond_6

    const/4 v3, 0x1

    .line 1995
    .local v3, goBack:Z
    :goto_3
    const/high16 v13, 0x1

    and-int/2addr v13, v9

    if-eqz v13, :cond_7

    const/4 v7, 0x1

    .line 1997
    .local v7, launchCamera:Z
    :goto_4
    if-eqz v8, :cond_3

    .line 2000
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v12

    .line 2001
    .local v12, w:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v13}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v4

    .line 2003
    .local v4, h:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    .line 2004
    .local v2, compensation:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v13, :cond_2

    rem-int/lit16 v13, v2, 0xb4

    if-eqz v13, :cond_2

    .line 2005
    move/from16 v10, p1

    .line 2006
    .local v10, temp:I
    move/from16 p1, p2

    .line 2007
    move/from16 p2, v10

    .line 2010
    .end local v10           #temp:I
    :cond_2
    div-int/lit8 v13, v12, 0x2

    sub-int v13, p1, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    mul-int/lit8 v13, v13, 0xc

    if-gt v13, v12, :cond_8

    div-int/lit8 v13, v4, 0x2

    sub-int v13, p2, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    mul-int/lit8 v13, v13, 0xc

    if-gt v13, v4, :cond_8

    const/4 v8, 0x1

    .line 2014
    .end local v2           #compensation:I
    .end local v4           #h:I
    .end local v12           #w:I
    :cond_3
    :goto_5
    if-eqz v8, :cond_a

    .line 2015
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/android/gallery3d/data/SecureAlbum;

    if-nez v13, :cond_9

    .line 2016
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->prepareMediaItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 2018
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v13

    invoke-virtual {v13}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onSingleTapUp()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2021
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/gallery3d/app/PhotoPage;->playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1992
    .end local v3           #goBack:Z
    .end local v7           #launchCamera:Z
    .end local v8           #playVideo:Z
    .end local v11           #unlock:Z
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1993
    .restart local v8       #playVideo:Z
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1994
    .restart local v11       #unlock:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 1995
    .restart local v3       #goBack:Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    .line 2010
    .restart local v2       #compensation:I
    .restart local v4       #h:I
    .restart local v7       #launchCamera:Z
    .restart local v12       #w:I
    :cond_8
    const/4 v8, 0x0

    goto :goto_5

    .line 2025
    .end local v2           #compensation:I
    .end local v4           #h:I
    .end local v12           #w:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/gallery3d/app/PhotoPage;->playVideoByMovieActivity(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 2027
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto/16 :goto_0

    .line 2029
    :cond_a
    if-eqz v3, :cond_b

    .line 2030
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->onBackPressed()V

    goto/16 :goto_0

    .line 2031
    :cond_b
    if-eqz v11, :cond_c

    .line 2032
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-class v14, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v5, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2033
    .local v5, intent:Landroid/content/Intent;
    const-string v13, "dismiss-keyguard"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2034
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13, v5}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 2036
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto/16 :goto_0

    .line 2038
    .end local v5           #intent:Landroid/content/Intent;
    :cond_c
    if-eqz v7, :cond_d

    .line 2039
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->launchCamera()V

    goto/16 :goto_0

    .line 2041
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/PhotoPage;->toggleBars()V

    goto/16 :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v11, 0x0

    .line 2267
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v8, :cond_0

    .line 2268
    invoke-static {}, Lcom/android/gallery3d/ui/TiledScreenNail;->disableDrawPlaceholder()V

    .line 2270
    :cond_0
    if-nez p2, :cond_2

    .line 2335
    :cond_1
    :goto_0
    return-void

    .line 2274
    :cond_2
    const/4 v8, -0x2

    if-ne p2, v8, :cond_3

    .line 2276
    const/4 p2, 0x0

    .line 2278
    :cond_3
    iput-boolean v11, p0, Lcom/android/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 2279
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2314
    :sswitch_0
    if-eqz p3, :cond_1

    .line 2315
    const-string v8, "media-item-path"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2316
    .local v6, path:Ljava/lang/String;
    const-string v8, "photo-index"

    invoke-virtual {p3, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2317
    .local v2, index:I
    if-eqz v6, :cond_1

    .line 2318
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-static {v6}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-interface {v8, v9, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 2281
    .end local v2           #index:I
    .end local v6           #path:Ljava/lang/String;
    :sswitch_1
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2284
    :sswitch_2
    if-ne p2, v9, :cond_1

    .line 2285
    invoke-direct {p0, p3}, Lcom/android/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2289
    :sswitch_3
    if-ne p2, v9, :cond_1

    .line 2290
    iget-object v8, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 2291
    .local v0, context:Landroid/content/Context;
    const v8, 0x7f0d02ac

    new-array v9, v10, [Ljava/lang/Object;

    const v10, 0x7f0d0381

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2293
    .local v4, message:Ljava/lang/String;
    invoke-static {v0, v4, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2298
    .end local v0           #context:Landroid/content/Context;
    .end local v4           #message:Ljava/lang/String;
    :sswitch_4
    if-eqz p3, :cond_1

    .line 2299
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v7

    .line 2300
    .local v7, totalCount:I
    iget v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 2301
    .local v1, currentIndex:I
    const-string v8, "return-offset-hint"

    invoke-virtual {p3, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2302
    .local v5, offset:I
    add-int v2, v1, v5

    .line 2303
    .restart local v2       #index:I
    add-int/lit8 v8, v7, -0x1

    invoke-static {v2, v11, v8}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 2305
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v8, v2, v10}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 2307
    .local v3, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/MediaItem;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 2308
    iput v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 2309
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v8

    invoke-interface {v9, v8, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto/16 :goto_0

    .line 2323
    .end local v1           #currentIndex:I
    .end local v2           #index:I
    .end local v3           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v5           #offset:I
    .end local v7           #totalCount:I
    :sswitch_5
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage;->mFaceMenuOperation:Lcom/android/gallery3d/app/FaceMenuOperation;

    invoke-virtual {v8, p2, p3}, Lcom/android/gallery3d/app/FaceMenuOperation;->handleContactResult(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 2327
    :sswitch_6
    if-ne p2, v9, :cond_1

    .line 2328
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->onPhotoShareItemClicked()V

    goto/16 :goto_0

    .line 2279
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_1
        0x5 -> :sswitch_4
        0x81 -> :sswitch_5
        0x91 -> :sswitch_6
    .end sparse-switch
.end method

.method public onUndoBarVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 2725
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 2726
    return-void
.end method

.method public onUndoDeleteImage()V
    .locals 2

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 2105
    :goto_0
    return-void

    .line 2102
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->setFocusHintPath(Lcom/android/gallery3d/data/Path;)V

    .line 2103
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->removeDeletion(Lcom/android/gallery3d/data/Path;)V

    .line 2104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDeletePath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-nez v0, :cond_0

    .line 2602
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "onUserLeaveHint@PhotoPage called!"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->homePressed()Z

    .line 2604
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onUserLeaveHint()V

    .line 2606
    :cond_0
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onUserLeaveHint()V

    .line 2607
    return-void
.end method

.method public playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .parameter "activity"
    .parameter "uri"
    .parameter "title"

    .prologue
    const/4 v5, 0x0

    .line 2185
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "video/*"

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "treat-up-as-back"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 2191
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "uri-array"

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mUriArray:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2192
    const-string v2, "title-array"

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mTitleArray:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2196
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/OrientationManager;->getRotationLockedSetting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2197
    const-string v2, "android.intent.extra.screenOrientation"

    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->getSreenOrientationWithCompensation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2199
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2201
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2207
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 2203
    :catch_0
    move-exception v0

    .line 2204
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0d029b

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public refreshBottomControlsWhenReady()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2674
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHdrLableView:Lcom/android/gallery3d/ui/HdrLableView;

    if-eqz v1, :cond_0

    .line 2675
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHdrLableView:Lcom/android/gallery3d/ui/HdrLableView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/HdrLableView;->hide()V

    .line 2676
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2677
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/android/gallery3d/data/LocalMediaItem;

    if-eqz v1, :cond_0

    .line 2678
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    check-cast v1, Lcom/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/LocalMediaItem;->isHdr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2679
    const-string v1, "PhotoPage"

    const-string v2, "refreshBottomControlsWhenReady() -->  new mHdrLableView show"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHdrLableView:Lcom/android/gallery3d/ui/HdrLableView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/HdrLableView;->show()V

    .line 2687
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;

    if-nez v1, :cond_1

    .line 2696
    :goto_0
    return-void

    .line 2690
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 2691
    .local v0, currentPhoto:Lcom/android/gallery3d/data/MediaObject;
    if-nez v0, :cond_2

    .line 2692
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2694
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mRefreshBottomControlsCallback:Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaItem;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    goto :goto_0
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    .line 1661
    return-void
.end method

.method public setOrientationEnableWhenCapture(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1649
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mEnableOrientationWhenCapture:Z

    .line 1650
    if-eqz p1, :cond_0

    .line 1651
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationChanged:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 1652
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mOrientationChanged:I

    .line 1653
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onOrientationCompensationChanged()V

    .line 1656
    :cond_0
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V

    .line 1671
    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimation(I)Z

    move-result v0

    return v0
.end method

.method public unlockOrientation()V
    .locals 2

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2743
    return-void
.end method

.method public updateMeteringPos(IIZ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "updatePara"

    .prologue
    .line 2058
    const-string v0, "PhotoPage"

    const-string v1, "updateMeteringPos enter"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 2061
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/app/AppBridge;->updateMeteringPos(IIZ)V

    .line 2063
    :cond_0
    return-void
.end method

.method public updateSettings()V
    .locals 3

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v1, "key_display_time_info"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/settings/GallerySettings;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaInfoTimeAllowed:Z

    .line 1215
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const-string v1, "key_display_location_info"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/settings/GallerySettings;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaInfoLocationAllowed:Z

    .line 1216
    return-void
.end method
