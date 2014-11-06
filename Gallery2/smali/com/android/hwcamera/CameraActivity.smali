.class public Lcom/android/hwcamera/CameraActivity;
.super Lcom/android/hwcamera/ActivityBase;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_CAMERA_BRIGHTNESS:F = 0.45f

.field private static final DRAW_IDS:[I = null

.field private static final EXTRA_FAST_CAPTURE:Ljava/lang/String; = "android.intent.extra.fastCapture"

.field public static final EYE_CORRECT_HINT_HAS_SHOWN:I = 0x2

.field public static final EYE_CORRECT_HINT_IS_SHOWING:I = 0x1

.field public static final EYE_CORRECT_HINT_NOT_SHOW_YET:I = 0x0

.field public static final EYE_CORRECT_HINT_WILL_HIDE:I = 0x3

.field public static final LIGHTCYCLE_MODULE_INDEX:I = 0x3

.field public static final PANORAMA_MODULE_INDEX:I = 0x2

.field public static final PHOTO_MODULE_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CAM_activity"

.field public static final VIDEO_MODULE_INDEX:I = 0x1

.field private static mNeedRemovedKey:[Ljava/lang/String;


# instance fields
.field private mBackground:Landroid/view/View;

.field private mBurstSoundPlayer:Lcom/android/hwcamera/SoundClipsBurst$BurstPlayer;

.field private mCameraHardButton:Lcom/android/hwcamera/CameraHardButton;

.field private mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

.field private mCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDrawResId:I

.field mCurrentModule:Lcom/android/hwcamera/CameraModule;

.field private mCurrentModuleIndex:I

.field private mDefaultEventCenter:Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

.field private mDown:Landroid/view/MotionEvent;

.field private mEyeHintHasShown:I

.field private mFadeInCameraScreenNail:Ljava/lang/Runnable;

.field private mFocusPolicyService:Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

.field private mFrame:Landroid/widget/FrameLayout;

.field private mGlobalPreferences:Landroid/content/SharedPreferences;

.field private mIsClickToGallery:Z

.field private mIsFirstTimeForHwScope:Z

.field private mIsHdrHintShown:Z

.field private mIsHeadSetPlugOrBlueToothHintShown:Z

.field private mIsMeterHintShown:Z

.field private mIsPhoneCall:Z

.field private mIsSmartHintHasShown:Z

.field private mIsSmartHintShouldShow:Z

.field private mIsSystemMute:Z

.field private mIsVoicePhotoHintShown:Z

.field private mLastRawOrientation:I

.field private mMenuSettingsLayout:Landroid/view/ViewGroup;

.field private mOnFrameDrawn:Ljava/lang/Runnable;

.field private mOrientation:I

.field private mOrientationListener:Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mQuickRecordingShutter:Lcom/android/hwcamera/ShutterButton;

.field private mQuickRecordingShutterListener:Lcom/android/hwcamera/OnShutterButtonListener;

.field private mRotatableIndicatorResIds:[I

.field private mRotateViews:Z

.field private mShutter:Lcom/android/hwcamera/ShutterButton;

.field private mShutterSwitcher:Landroid/view/View;

.field private mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

.field private mStorageService:Lcom/android/hwcamera/storage/StorageService;

.field private mThumbnailLayout:Landroid/view/ViewGroup;

.field private mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

.field private mThumbnailView:Lcom/android/hwcamera/ui/RotateImageView;

.field private mThumbnailWidth:I

.field private mUpdateStoragePathDelayed:Z

.field private mUpdateThumbnailDelayed:Z

.field private mVirtualButton:Lcom/android/hwcamera/VirtualButton;

.field private mVolumKeySnapShotAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 143
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key_volum_snap_shot_hint_has_shown"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "key_countS_of_no_use_volum_snap_shot"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "key_count_of_continue_snap_shot"

    aput-object v2, v0, v1

    const-string v1, "DO_NOT_REMAIND_SMAILLPREVIEW_KEY"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "key_has_long_press_shot"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/hwcamera/CameraActivity;->mNeedRemovedKey:[Ljava/lang/String;

    .line 159
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/hwcamera/CameraActivity;->DRAW_IDS:[I

    return-void

    :array_0
    .array-data 0x4
        0xdt 0x3t 0x2t 0x7ft
        0xet 0x3t 0x2t 0x7ft
        0xft 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/android/hwcamera/ActivityBase;-><init>()V

    .line 112
    iput v1, p0, Lcom/android/hwcamera/CameraActivity;->mLastRawOrientation:I

    .line 125
    iput v1, p0, Lcom/android/hwcamera/CameraActivity;->mEyeHintHasShown:I

    .line 136
    iput-boolean v2, p0, Lcom/android/hwcamera/CameraActivity;->mIsFirstTimeForHwScope:Z

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCounts:Ljava/util/Map;

    .line 149
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraActivity;->mIsHeadSetPlugOrBlueToothHintShown:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraActivity;->mIsPhoneCall:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraActivity;->mIsSmartHintHasShown:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraActivity;->mIsSmartHintShouldShow:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraActivity;->mIsHdrHintShown:Z

    .line 179
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraActivity;->mIsMeterHintShown:Z

    .line 182
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraActivity;->mIsVoicePhotoHintShown:Z

    .line 233
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraActivity;->mIsSystemMute:Z

    .line 369
    new-instance v0, Lcom/android/hwcamera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/CameraActivity$1;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mQuickRecordingShutterListener:Lcom/android/hwcamera/OnShutterButtonListener;

    .line 404
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraActivity;->mIsClickToGallery:Z

    .line 464
    iput v1, p0, Lcom/android/hwcamera/CameraActivity;->mOrientation:I

    .line 465
    iput-boolean v2, p0, Lcom/android/hwcamera/CameraActivity;->mRotateViews:Z

    .line 494
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mRotatableIndicatorResIds:[I

    .line 562
    new-instance v0, Lcom/android/hwcamera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/CameraActivity$3;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mOnFrameDrawn:Ljava/lang/Runnable;

    .line 570
    new-instance v0, Lcom/android/hwcamera/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/CameraActivity$4;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mFadeInCameraScreenNail:Ljava/lang/Runnable;

    .line 79
    return-void

    .line 494
    :array_0
    .array-data 0x4
        0x13t 0x0t 0x10t 0x7ft
        0xf5t 0x1t 0x10t 0x7ft
        0x10t 0x2t 0x10t 0x7ft
        0x2ct 0x0t 0x10t 0x7ft
        0xd3t 0x1t 0x10t 0x7ft
        0x22t 0x2t 0x10t 0x7ft
        0x1ft 0x2t 0x10t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/hwcamera/CameraActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModuleIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/hwcamera/CameraActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/hwcamera/CameraActivity;->mIsClickToGallery:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/hwcamera/CameraActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/hwcamera/CameraActivity;->mLastRawOrientation:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/hwcamera/CameraActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/hwcamera/CameraActivity;->mOrientation:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/hwcamera/CameraActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/hwcamera/CameraActivity;->mOrientation:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/hwcamera/CameraActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mRotateViews:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/CameraActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mFadeInCameraScreenNail:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/CameraActivity;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/hwcamera/CameraActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/hwcamera/CameraActivity;->mCameraSwitchAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/hwcamera/CameraActivity;)Lcom/android/hwcamera/storage/StorageService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mStorageService:Lcom/android/hwcamera/storage/StorageService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/hwcamera/CameraActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/hwcamera/CameraActivity;->mVolumKeySnapShotAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private canReuseScreenNail()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1202
    iget v1, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModuleIndex:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModuleIndex:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canReuseViews(II)Z
    .locals 1
    .parameter "currentModule"
    .parameter "moduleIndex"

    .prologue
    const/4 v0, 0x1

    .line 1303
    if-eq p1, v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-eq p2, v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeModule(Lcom/android/hwcamera/CameraModule;Z)V
    .locals 3
    .parameter "module"
    .parameter "isRemoveViews"

    .prologue
    .line 598
    invoke-interface {p1}, Lcom/android/hwcamera/CameraModule;->onPauseBeforeSuper()V

    .line 599
    invoke-interface {p1}, Lcom/android/hwcamera/CameraModule;->onPauseAfterSuper()V

    .line 600
    const-string v0, "CAM_activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRemoveViews : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 602
    :cond_0
    return-void
.end method

.method private getSettingsMute()Z
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_sound_state_key"

    const v2, 0x7f0d0117

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0119

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getSystemMute()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsSystemMute:Z

    return v0
.end method

.method private initThumbnailService()V
    .locals 4

    .prologue
    .line 428
    const v1, 0x7f10002f

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ui/RotateImageView;

    iput-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailView:Lcom/android/hwcamera/ui/RotateImageView;

    .line 429
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailView:Lcom/android/hwcamera/ui/RotateImageView;

    new-instance v2, Lcom/android/hwcamera/CameraActivity$2;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/CameraActivity$2;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailView:Lcom/android/hwcamera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailWidth:I

    .line 443
    const v1, 0x7f10002e

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailLayout:Landroid/view/ViewGroup;

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, isFirstInit:Z
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    if-nez v1, :cond_0

    .line 446
    const/4 v0, 0x1

    .line 447
    new-instance v1, Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    iput-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailView:Lcom/android/hwcamera/ui/RotateImageView;

    iget-object v3, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->setThumbnailView(Lcom/android/hwcamera/ui/RotateImageView;Landroid/view/ViewGroup;)V

    .line 450
    if-nez v0, :cond_1

    .line 451
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-virtual {v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->keep()V

    .line 452
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-virtual {v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnailCached()V

    .line 454
    :cond_1
    return-void
.end method

.method private initializeScreenBrightness()V
    .locals 0

    .prologue
    .line 1484
    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->resetScreenBrightness()V

    .line 1485
    return-void
.end method

.method private isGooglePanoramaNeeded()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 311
    invoke-static {p0}, Lcom/android/hwcamera/Util;->isImageCaptureIntent(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v2

    .line 312
    :cond_1
    iget-boolean v4, p0, Lcom/android/hwcamera/ActivityBase;->mStartByHardkeyChord:Z

    if-nez v4, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.fastCapture"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eq v4, v3, :cond_0

    .line 314
    iget-object v4, p0, Lcom/android/hwcamera/CameraActivity;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v4, p0}, Lcom/android/hwcamera/CameraSettings;->isPanoramaMode(Lcom/android/hwcamera/ComboPreferences;Landroid/content/Context;)Z

    move-result v1

    .line 315
    .local v1, isPano:Z
    invoke-static {}, Lcom/morpho/app/panorama_gp/MorphoPanorama;->isMorphoPanoramaSupported()Z

    move-result v0

    .line 316
    .local v0, isMorpho:Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private isInVideoReviewState()Z
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    instance-of v0, v0, Lcom/android/hwcamera/VideoModule;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    check-cast v0, Lcom/android/hwcamera/VideoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/VideoModule;->isInReviewState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 633
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMustOpenPhotoModule()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1020
    invoke-static {p0}, Lcom/android/hwcamera/Util;->isExtalCaptureIntent(Landroid/app/Activity;)Z

    move-result v0

    .line 1021
    .local v0, isExtalCaptureIntent:Z
    if-nez v0, :cond_1

    if-nez v0, :cond_0

    iget v2, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModuleIndex:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPersist(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1617
    const-string v0, "key_volum_snap_shot_hint_has_shown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_countS_of_no_use_volum_snap_shot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DO_NOT_REMAIND_SMAILLPREVIEW_KEY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_has_long_press_shot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private needsQuickRecordingShutter()Z
    .locals 1

    .prologue
    .line 423
    invoke-static {p0}, Lcom/android/hwcamera/Util;->isExtalCaptureIntent(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModuleIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openModule(Lcom/android/hwcamera/CameraModule;Z)V
    .locals 3
    .parameter "module"
    .parameter "canReuse"

    .prologue
    const/4 v1, 0x0

    .line 589
    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->showQuickRecordingShutterIfNeeded()V

    .line 591
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->canReuseScreenNail()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, p0, v2, v0}, Lcom/android/hwcamera/CameraModule;->init(Lcom/android/hwcamera/CameraActivity;Landroid/view/View;Z)V

    .line 592
    iput-boolean v1, p0, Lcom/android/hwcamera/ActivityBase;->mPaused:Z

    .line 593
    invoke-interface {p1}, Lcom/android/hwcamera/CameraModule;->onResumeBeforeSuper()V

    .line 594
    invoke-interface {p1}, Lcom/android/hwcamera/CameraModule;->onResumeAfterSuper()V

    .line 595
    return-void

    :cond_0
    move v0, v1

    .line 591
    goto :goto_0
.end method

.method private reSizeView(Landroid/view/View;II)V
    .locals 4
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 847
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 848
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .line 849
    .local v0, isChange:Z
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v2, v3, :cond_3

    .line 851
    if-eqz p2, :cond_0

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, p2, :cond_0

    .line 852
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 853
    const/4 v0, 0x1

    .line 855
    :cond_0
    if-eqz p3, :cond_1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, p3, :cond_1

    .line 856
    iput p3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 857
    const/4 v0, 0x1

    .line 870
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 871
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    .line 872
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    :cond_2
    :goto_1
    return-void

    .line 860
    :cond_3
    if-eqz p2, :cond_4

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, p2, :cond_4

    .line 861
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 862
    const/4 v0, 0x1

    .line 864
    :cond_4
    if-eqz p3, :cond_1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, p3, :cond_1

    .line 865
    iput p3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 866
    const/4 v0, 0x1

    goto :goto_0

    .line 876
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 878
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 879
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    new-instance v2, Lcom/android/hwcamera/CameraActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/android/hwcamera/CameraActivity$5;-><init>(Lcom/android/hwcamera/CameraActivity;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private relocateView(Landroid/view/View;ZII)V
    .locals 4
    .parameter "view"
    .parameter "isLand"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 891
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 892
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x0

    .line 893
    .local v0, isChange:Z
    if-eqz p2, :cond_2

    .line 894
    if-eqz p3, :cond_0

    .line 895
    invoke-static {v2}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 896
    const/4 v0, 0x1

    .line 905
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 906
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 907
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    :cond_1
    :goto_1
    return-void

    .line 899
    :cond_2
    if-eqz p3, :cond_0

    .line 900
    invoke-static {v2}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 901
    const/4 v0, 0x1

    goto :goto_0

    .line 911
    :cond_3
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 912
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    new-instance v2, Lcom/android/hwcamera/CameraActivity$6;

    invoke-direct {v2, p0, p1}, Lcom/android/hwcamera/CameraActivity$6;-><init>(Lcom/android/hwcamera/CameraActivity;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private relocateViews(ZII)V
    .locals 8
    .parameter "isLandscape"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 838
    const/4 v6, 0x1

    new-array v5, v6, [I

    const/4 v6, 0x0

    const v7, 0x7f10016e

    aput v7, v5, v6

    .line 839
    .local v5, viewResIds:[I
    const/4 v4, 0x0

    .line 840
    .local v4, v:Landroid/view/View;
    move-object v0, v5

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 841
    .local v3, resId:I
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 842
    if-eqz v4, :cond_0

    invoke-direct {p0, v4, p1, p2, p3}, Lcom/android/hwcamera/CameraActivity;->relocateView(Landroid/view/View;ZII)V

    .line 840
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 844
    .end local v3           #resId:I
    :cond_1
    return-void
.end method

.method private resetScreenBrightness()V
    .locals 4

    .prologue
    .line 1379
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1380
    .local v0, mode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v1, 0x3ee66666

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/hwcamera/CameraActivity;->setScreenBrightness(F)V

    .line 1381
    return-void

    .line 1380
    :cond_0
    const/high16 v1, -0x4080

    goto :goto_0
.end method

.method private resizeViews(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 948
    const/4 v6, 0x3

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 949
    .local v5, viewResIds:[I
    const/4 v4, 0x0

    .line 950
    .local v4, v:Landroid/view/View;
    move-object v0, v5

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 951
    .local v3, resId:I
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 952
    if-eqz v4, :cond_0

    invoke-direct {p0, v4, p1, p2}, Lcom/android/hwcamera/CameraActivity;->reSizeView(Landroid/view/View;II)V

    .line 950
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 954
    .end local v3           #resId:I
    :cond_1
    return-void

    .line 948
    nop

    :array_0
    .array-data 0x4
        0x27t 0x0t 0x10t 0x7ft
        0x2ct 0x0t 0x10t 0x7ft
        0xf5t 0x1t 0x10t 0x7ft
    .end array-data
.end method

.method private setScreenBackgroud(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1366
    return-void
.end method

.method private setScreenBrightness(F)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 1395
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/CameraActivity;->setScreenBrightness(FZ)V

    .line 1396
    return-void
.end method

.method private setScreenBrightness(FZ)V
    .locals 3
    .parameter "brightness"
    .parameter "isLower"

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1385
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1386
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    if-eqz p2, :cond_0

    .line 1387
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    sub-float/2addr v2, p1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1391
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1392
    return-void

    .line 1389
    :cond_0
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0
.end method

.method private setScreenMaxBrightness(Z)V
    .locals 1
    .parameter "isMax"

    .prologue
    .line 1370
    if-eqz p1, :cond_0

    .line 1371
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/android/hwcamera/CameraActivity;->setScreenBrightness(F)V

    .line 1375
    :goto_0
    return-void

    .line 1373
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->resetScreenBrightness()V

    goto :goto_0
.end method

.method private showQuickRecordingShutterIfNeeded()V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 412
    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->needsQuickRecordingShutter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mQuickRecordingShutter:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mQuickRecordingShutter:Lcom/android/hwcamera/ShutterButton;

    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mQuickRecordingShutterListener:Lcom/android/hwcamera/OnShutterButtonListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/OnShutterButtonListener;)V

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mQuickRecordingShutter:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "isVideo"
    .parameter "uri"

    .prologue
    .line 457
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 458
    iget-boolean v1, p0, Lcom/android/hwcamera/ActivityBase;->mSecureCamera:Z

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 460
    .local v0, id:I
    invoke-static {p1, v0}, Lcom/android/hwcamera/thumbnail/Thumbnail;->addMediaItem(ZI)V

    .line 462
    .end local v0           #id:I
    :cond_0
    return-void
.end method

.method public cancelActivityTouchHandling()V
    .locals 2

    .prologue
    .line 1150
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mDown:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 1151
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mDown:Landroid/view/MotionEvent;

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1152
    .local v0, cancel:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1153
    invoke-super {p0, v0}, Lcom/android/hwcamera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1155
    .end local v0           #cancel:Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method public changeCameraBlackgroud(Lcom/android/hwcamera/PreviewFrameLayout;)V
    .locals 12
    .parameter "previewFrameLayout"

    .prologue
    const/16 v11, 0x14

    const/4 v10, 0x0

    .line 800
    if-nez p1, :cond_0

    .line 814
    :goto_0
    return-void

    .line 802
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 803
    .local v7, rootView:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 804
    .local v1, displayWidth:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 806
    .local v2, displayheight:I
    invoke-virtual {p1}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v6

    .line 807
    .local v6, previewWidth:I
    invoke-virtual {p1}, Lcom/android/hwcamera/PreviewFrameLayout;->getHeight()I

    move-result v5

    .line 808
    .local v5, previewHeight:I
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->isLandscapeLocked()Z

    move-result v3

    .line 809
    .local v3, isLandscape:Z
    if-eqz v3, :cond_1

    sub-int v9, v1, v6

    :goto_1
    div-int/lit8 v0, v9, 0x2

    .line 810
    .local v0, controlBarDistance:I
    if-eqz v3, :cond_2

    sub-int v9, v2, v5

    :goto_2
    div-int/lit8 v8, v9, 0x2

    .line 811
    .local v8, twoSideDistance:I
    const/16 v9, 0x50

    invoke-static {v9}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v4

    .line 812
    .local v4, longPixels:I
    if-le v8, v11, :cond_3

    sget-object v9, Lcom/android/hwcamera/CameraActivity;->DRAW_IDS:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    :goto_3
    iput v9, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentDrawResId:I

    .line 813
    iget-object v9, p0, Lcom/android/hwcamera/CameraActivity;->mBackground:Landroid/view/View;

    iget v10, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentDrawResId:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 809
    .end local v0           #controlBarDistance:I
    .end local v4           #longPixels:I
    .end local v8           #twoSideDistance:I
    :cond_1
    sub-int v9, v2, v5

    goto :goto_1

    .line 810
    .restart local v0       #controlBarDistance:I
    :cond_2
    sub-int v9, v1, v6

    goto :goto_2

    .line 812
    .restart local v4       #longPixels:I
    .restart local v8       #twoSideDistance:I
    :cond_3
    if-lt v0, v4, :cond_4

    sget-object v9, Lcom/android/hwcamera/CameraActivity;->DRAW_IDS:[I

    aget v9, v9, v10

    goto :goto_3

    :cond_4
    if-ge v0, v11, :cond_5

    move v9, v10

    goto :goto_3

    :cond_5
    sget-object v9, Lcom/android/hwcamera/CameraActivity;->DRAW_IDS:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    goto :goto_3
.end method

.method public collapseCameraControls()V
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->collapseCameraControls()Z

    .line 1522
    :cond_0
    return-void
.end method

.method public disableOrientationListener()V
    .locals 1

    .prologue
    .line 1531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mRotateViews:Z

    .line 1532
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 1159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    iput-object p1, p0, Lcom/android/hwcamera/CameraActivity;->mDown:Landroid/view/MotionEvent;

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/CameraModule;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public doCameraScreenNailAnimation()V
    .locals 2

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getCameraScreenNail()Lcom/android/hwcamera/CameraScreenNail;

    move-result-object v0

    .line 528
    .local v0, screenNail:Lcom/android/hwcamera/CameraScreenNail;
    if-eqz v0, :cond_0

    .line 529
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraScreenNail;->setAlpha(F)V

    .line 530
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mOnFrameDrawn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraScreenNail;->setOnFrameDrawnOneShot(Ljava/lang/Runnable;)V

    .line 532
    :cond_0
    return-void
.end method

.method public doSmileCapture(I)V
    .locals 1
    .parameter "smileScore"

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/CameraModule;->doSmileCapture(I)V

    .line 1413
    :cond_0
    return-void
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
    .line 1642
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    instance-of v0, v0, Lcom/android/hwcamera/PhotoModule;

    if-nez v0, :cond_1

    .line 1644
    :cond_0
    :goto_0
    return-void

    .line 1643
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    check-cast v0, Lcom/android/hwcamera/PhotoModule;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/PhotoModule;->drawPanoramaPreviewIfNeeded(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public drawSmallPreviewIfNeeded(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 7
    .parameter "screenNail"
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    instance-of v0, v0, Lcom/android/hwcamera/PhotoModule;

    if-nez v0, :cond_1

    .line 1639
    :cond_0
    :goto_0
    return-void

    .line 1638
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    check-cast v0, Lcom/android/hwcamera/PhotoModule;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/PhotoModule;->drawSmallPreviewIfNeeded(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public enableOrientationListener()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1535
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraActivity;->mRotateViews:Z

    .line 1536
    iget v0, p0, Lcom/android/hwcamera/CameraActivity;->mOrientation:I

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/CameraActivity;->setOrientationIndicator(IZ)V

    .line 1537
    return-void
.end method

.method public enableSwitcherAndMenu(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 733
    invoke-static {p1}, Lcom/android/hwcamera/Util;->enableMenu(Z)V

    .line 734
    return-void
.end method

.method public flashModeInLowBattery()V
    .locals 1

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->flashModeInLowBattery()V

    .line 1474
    :cond_0
    return-void
.end method

.method public getAutoFocusTime()J
    .locals 2

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    instance-of v0, v0, Lcom/android/hwcamera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    check-cast v0, Lcom/android/hwcamera/PhotoModule;

    iget-wide v0, v0, Lcom/android/hwcamera/PhotoModule;->mAutoFocusTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getBeautySeekBarLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1493
    const v0, 0x7f10000a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCameraHardButton()Lcom/android/hwcamera/CameraHardButton;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCameraHardButton:Lcom/android/hwcamera/CameraHardButton;

    return-object v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->getCameraId()I

    move-result v0

    return v0
.end method

.method public getCameraScreenNail()Lcom/android/hwcamera/CameraScreenNail;
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/hwcamera/CameraScreenNail;

    return-object v0
.end method

.method public getCaptureStartTime()J
    .locals 2

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    instance-of v0, v0, Lcom/android/hwcamera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    check-cast v0, Lcom/android/hwcamera/PhotoModule;

    iget-wide v0, v0, Lcom/android/hwcamera/PhotoModule;->mCaptureStartTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getColorEffectLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1501
    const v0, 0x7f100041

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCountsByKey(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 1562
    invoke-direct {p0, p1}, Lcom/android/hwcamera/CameraActivity;->isPersist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1563
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getGlobalPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1566
    :cond_0
    :goto_0
    return v0

    .line 1565
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mCounts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentModule()Lcom/android/hwcamera/CameraModule;
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    return-object v0
.end method

.method public getEyeCorrectionHintState()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/android/hwcamera/CameraActivity;->mEyeHintHasShown:I

    return v0
.end method

.method public getFocusPolicyService()Lcom/android/hwcamera/focuspolicy/FocusPolicyService;
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mFocusPolicyService:Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    return-object v0
.end method

.method public getGlobalPreference()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 1591
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mGlobalPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 1592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_preferences_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Global"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1593
    .local v0, prefName:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mGlobalPreferences:Landroid/content/SharedPreferences;

    .line 1595
    .end local v0           #prefName:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mGlobalPreferences:Landroid/content/SharedPreferences;

    return-object v1
.end method

.method public getHdrHintShownState()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsHdrHintShown:Z

    return v0
.end method

.method public getJpegCallbackFinishTime()J
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    instance-of v0, v0, Lcom/android/hwcamera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    check-cast v0, Lcom/android/hwcamera/PhotoModule;

    iget-wide v0, v0, Lcom/android/hwcamera/PhotoModule;->mJpegCallbackFinishTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getMeterHintShownState()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsMeterHintShown:Z

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Lcom/android/hwcamera/CameraActivity;->mOrientation:I

    return v0
.end method

.method public getPictureDisplayedToJpegCallbackTime()J
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    instance-of v0, v0, Lcom/android/hwcamera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    check-cast v0, Lcom/android/hwcamera/PhotoModule;

    iget-wide v0, v0, Lcom/android/hwcamera/PhotoModule;->mPictureDisplayedToJpegCallbackTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getShotWide()I
    .locals 3

    .prologue
    .line 1689
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1690
    .local v0, display:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getShutterButton()Lcom/android/hwcamera/ShutterButton;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mShutter:Lcom/android/hwcamera/ShutterButton;

    return-object v0
.end method

.method public getShutterLag()J
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    instance-of v0, v0, Lcom/android/hwcamera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    check-cast v0, Lcom/android/hwcamera/PhotoModule;

    iget-wide v0, v0, Lcom/android/hwcamera/PhotoModule;->mShutterLag:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getShutterToPictureDisplayedTime()J
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    instance-of v0, v0, Lcom/android/hwcamera/PhotoModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    check-cast v0, Lcom/android/hwcamera/PhotoModule;

    iget-wide v0, v0, Lcom/android/hwcamera/PhotoModule;->mShutterToPictureDisplayedTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getSmartHintHasShown()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsSmartHintHasShown:Z

    return v0
.end method

.method public getSmartHintShouldShow()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsSmartHintShouldShow:Z

    return v0
.end method

.method public getStorageService()Lcom/android/hwcamera/storage/StorageService;
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mStorageService:Lcom/android/hwcamera/storage/StorageService;

    return-object v0
.end method

.method public getThumbnailButtonWidth()I
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailView:Lcom/android/hwcamera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 1

    .prologue
    .line 1312
    iget v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailWidth:I

    return v0
.end method

.method public getVirtualButton()Lcom/android/hwcamera/VirtualButton;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mVirtualButton:Lcom/android/hwcamera/VirtualButton;

    return-object v0
.end method

.method public getVoicePhotoHintShownState()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsVoicePhotoHintShown:Z

    return v0
.end method

.method public getZoomControlLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1497
    const v0, 0x7f10021e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hideAllOnsreenHint()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->hideOnsreenHint()V

    .line 362
    :cond_0
    return-void
.end method

.method public hideBackGround()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mBackground:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 654
    :cond_0
    return-void
.end method

.method public hideMenu()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mMenuSettingsLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 687
    return-void
.end method

.method public hideMeteringGuide(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->hideMeteringGuide()V

    .line 1127
    return-void
.end method

.method public hideQuickRecordButton()V
    .locals 2

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mQuickRecordingShutter:Lcom/android/hwcamera/ShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mQuickRecordingShutter:Lcom/android/hwcamera/ShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 1669
    :cond_0
    return-void
.end method

.method public hideShootmodeLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 677
    const v1, 0x7f10000a

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 678
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 680
    :cond_0
    const v1, 0x7f100041

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 683
    :cond_1
    return-void
.end method

.method public hideSwitcher()V
    .locals 0

    .prologue
    .line 723
    return-void
.end method

.method public hideThumbnail()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 709
    return-void
.end method

.method public hideUI()V
    .locals 2

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->isInVideoReviewState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->hideUIExceptShutter()V

    .line 621
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mShutter:Lcom/android/hwcamera/ShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 622
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->hideQuickRecordButton()V

    .line 624
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->hideZoomController()V

    goto :goto_0
.end method

.method public hideUIExceptShutter()V
    .locals 0

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->hideMenu()V

    .line 639
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->hideSwitcher()V

    .line 640
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->hideThumbnail()V

    .line 641
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->hideBackGround()V

    .line 642
    return-void
.end method

.method public hideZoomController()V
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->hideZoomController()V

    .line 1697
    return-void
.end method

.method public increaseCountsByKey(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 1571
    const/4 v0, 0x0

    .line 1572
    .local v0, count:I
    invoke-direct {p0, p1}, Lcom/android/hwcamera/CameraActivity;->isPersist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1573
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/CameraActivity;->getCountsByKey(Ljava/lang/String;)I

    move-result v0

    .line 1574
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getGlobalPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, p1, v2}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 1579
    :goto_0
    return-void

    .line 1576
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/CameraActivity;->getCountsByKey(Ljava/lang/String;)I

    move-result v0

    .line 1577
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mCounts:Ljava/util/Map;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x400

    .line 386
    const-string v0, "CameraActivity.init"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 387
    const v0, 0x7f100026

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mMenuSettingsLayout:Landroid/view/ViewGroup;

    .line 388
    const v0, 0x7f10002c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mShutterSwitcher:Landroid/view/View;

    .line 389
    const v0, 0x7f10002d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ShutterButton;

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mShutter:Lcom/android/hwcamera/ShutterButton;

    .line 390
    const v0, 0x7f100033

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ShutterButton;

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mQuickRecordingShutter:Lcom/android/hwcamera/ShutterButton;

    .line 391
    new-instance v0, Lcom/android/hwcamera/VirtualButton;

    invoke-direct {v0}, Lcom/android/hwcamera/VirtualButton;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mVirtualButton:Lcom/android/hwcamera/VirtualButton;

    .line 392
    new-instance v0, Lcom/android/hwcamera/CameraHardButton;

    invoke-direct {v0}, Lcom/android/hwcamera/CameraHardButton;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCameraHardButton:Lcom/android/hwcamera/CameraHardButton;

    .line 393
    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->initThumbnailService()V

    .line 394
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/hwcamera/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/android/hwcamera/SoundClips$Player;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    .line 395
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mDefaultEventCenter:Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    .line 396
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mFocusPolicyService:Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    invoke-direct {v0}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mFocusPolicyService:Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mStorageService:Lcom/android/hwcamera/storage/StorageService;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/hwcamera/storage/StorageService;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/storage/StorageService;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mStorageService:Lcom/android/hwcamera/storage/StorageService;

    .line 401
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 402
    return-void
.end method

.method protected installIntentFilter()V
    .locals 1

    .prologue
    .line 1082
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->installIntentFilter()V

    .line 1083
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->installIntentFilter()V

    .line 1084
    return-void
.end method

.method public isClickToGallery()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsClickToGallery:Z

    return v0
.end method

.method public isFirstTimeForHwScope()Z
    .locals 1

    .prologue
    .line 1463
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsFirstTimeForHwScope:Z

    return v0
.end method

.method public isInCameraApp()Z
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    return v0
.end method

.method protected isInMeteringRect(Landroid/view/View;II)Z
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/hwcamera/CameraModule;->isInMeteringRect(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isLandscape()Z
    .locals 2

    .prologue
    .line 932
    iget v0, p0, Lcom/android/hwcamera/CameraActivity;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/CameraActivity;->mOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLandscapeLocked()Z
    .locals 2

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->isPanorama()Z

    move-result v0

    .line 1541
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanoramaActivity()Z
    .locals 2

    .prologue
    .line 1208
    iget v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModuleIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneCall()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsPhoneCall:Z

    return v0
.end method

.method public isPortrait()Z
    .locals 1

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortraitLocked()Z
    .locals 1

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->isLandscapeLocked()Z

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
    .line 1243
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTheSameOrientationAsLocked()Z
    .locals 1

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->isLandscapeLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->isPortraitLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVolumSnapShotHintShown()Z
    .locals 3

    .prologue
    .line 1611
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getGlobalPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_volum_snap_shot_hint_has_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isZoomming()Z
    .locals 1

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->isZoomming()Z

    move-result v0

    return v0
.end method

.method public lockOrientation()V
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->lockOrientation()V

    .line 1665
    return-void
.end method

.method public needsThumbnail()Z
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 719
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->needsThumbnail()Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x2

    .line 1095
    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/app/PhotoPage;

    if-nez v0, :cond_0

    .line 1097
    const/4 p2, 0x0

    .line 1099
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/hwcamera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 1101
    if-ne p2, v1, :cond_1

    .line 1102
    const/4 p2, 0x0

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/hwcamera/CameraModule;->onActivityResult(IILandroid/content/Intent;)V

    .line 1105
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1131
    const-string v0, "CAM_activity"

    const-string v1, "FLOW onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onBackPressed()V

    .line 1135
    :cond_0
    return-void
.end method

.method protected onBluetoothButtonClick()V
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->onBluetoothButtonClick()V

    .line 1089
    :cond_0
    return-void
.end method

.method public onCameraError(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 1721
    const-string v0, "CAM_activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got camera error callback. error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    const v0, 0x7f0d01b5

    invoke-static {p0, v0}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 1723
    return-void
.end method

.method public onCaptureTextureCopied()V
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->onCaptureTextureCopied()V

    .line 1187
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "config"

    .prologue
    .line 738
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 739
    const v5, 0x7f100025

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 741
    .local v0, appRoot:Landroid/view/ViewGroup;
    const v5, 0x7f10002c

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 742
    .local v1, cameraControlsView:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 745
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 746
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04000d

    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 748
    const v5, 0x7f100026

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 749
    .local v2, cameraMenuView:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 751
    const v5, 0x7f04000c

    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 753
    const v5, 0x7f1001f5

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 754
    .local v4, reviewcontrol:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 756
    const v5, 0x7f040070

    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 757
    iget v5, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentDrawResId:I

    if-eqz v5, :cond_0

    .line 759
    iget-object v5, p0, Lcom/android/hwcamera/CameraActivity;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentDrawResId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 763
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->init()V

    .line 764
    iget-boolean v5, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v5, :cond_1

    .line 770
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->showUI()V

    .line 780
    :goto_1
    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->showQuickRecordingShutterIfNeeded()V

    .line 783
    iget v5, p0, Lcom/android/hwcamera/CameraActivity;->mOrientation:I

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/hwcamera/CameraActivity;->setOrientationIndicator(IZ)V

    .line 785
    iget-object v5, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v5, p1}, Lcom/android/hwcamera/CameraModule;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 786
    return-void

    .line 761
    :cond_0
    iget-object v5, p0, Lcom/android/hwcamera/CameraActivity;->mBackground:Landroid/view/View;

    const v6, 0x106000d

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 777
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->hideUI()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "state"

    .prologue
    const-wide/16 v4, 0x400

    const/4 v3, 0x1

    .line 262
    const-string v1, "CameraActivity.onCreate"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 263
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 264
    const-string v1, "CAM_activity"

    const-string v2, "FLOW onCreate begin"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const v1, 0x7f04000b

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/CameraActivity;->setContentView(I)V

    .line 267
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    const v1, 0x7f1000f4

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, cover:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 273
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :goto_0
    const v1, 0x7f100024

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    .line 280
    const v1, 0x7f100023

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mBackground:Landroid/view/View;

    .line 285
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->init()V

    .line 287
    new-instance v1, Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 288
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v1, p0}, Lcom/android/hwcamera/CameraSettings;->resetCompensation(Lcom/android/hwcamera/ComboPreferences;Landroid/content/Context;)V
    
    invoke-static {p0}, Lcom/android/hwcamera/storage/Storage;->updateSaveLocationSharedPreferences(Landroid/content/Context;)V

    .line 289
    invoke-static {p0}, Lcom/android/hwcamera/Util;->isVideoCaptureIntent(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    new-instance v1, Lcom/android/hwcamera/VideoModule;

    invoke-direct {v1}, Lcom/android/hwcamera/VideoModule;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    .line 291
    iput v3, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModuleIndex:I

    .line 300
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mStorageService:Lcom/android/hwcamera/storage/StorageService;

    invoke-virtual {v1}, Lcom/android/hwcamera/storage/StorageService;->initialize()V

    .line 301
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mFrame:Landroid/widget/FrameLayout;

    invoke-interface {v1, p0, v2, v3}, Lcom/android/hwcamera/CameraModule;->init(Lcom/android/hwcamera/CameraActivity;Landroid/view/View;Z)V

    .line 303
    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->showQuickRecordingShutterIfNeeded()V

    .line 305
    new-instance v1, Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;

    invoke-direct {v1, p0, p0}, Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;-><init>(Lcom/android/hwcamera/CameraActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mOrientationListener:Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;

    .line 306
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 307
    const-string v1, "CAM_activity"

    const-string v2, "FLOW onCreate end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 276
    :cond_0
    const-string v1, "CAM_activity"

    const-string v2, "gl_root_cover view is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :cond_1
    new-instance v1, Lcom/android/hwcamera/PhotoModule;

    invoke-direct {v1}, Lcom/android/hwcamera/PhotoModule;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    .line 295
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModuleIndex:I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1714
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onDestroy()V

    .line 1715
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->onDestroy()V

    .line 1716
    return-void
.end method

.method public onFaceDetected([Lcom/android/hwcamera/facedetect/event/Face;)V
    .locals 1
    .parameter "facesDatas"

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/CameraModule;->onFaceDetected([Lcom/android/hwcamera/facedetect/event/Face;)V

    .line 1351
    :cond_0
    return-void
.end method

.method protected onFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    const/4 v2, 0x0

    .line 1026
    if-eqz p1, :cond_0

    iput-boolean v2, p0, Lcom/android/hwcamera/CameraActivity;->mIsClickToGallery:Z

    .line 1027
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mIsFilterOnFullScreenChanged:Z

    if-eqz v0, :cond_2

    .line 1028
    iput-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mIsFilterOnFullScreenChanged:Z

    .line 1029
    if-nez p1, :cond_2

    .line 1065
    :cond_1
    :goto_0
    return-void

    .line 1032
    :cond_2
    if-eqz p1, :cond_6

    .line 1037
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->setUpdateSilently(Z)V

    .line 1039
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->showUI()V

    .line 1051
    :goto_1
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mUpdateThumbnailDelayed:Z

    if-eqz v0, :cond_3

    .line 1052
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-virtual {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnailUncached()V

    .line 1053
    iput-boolean v2, p0, Lcom/android/hwcamera/CameraActivity;->mUpdateThumbnailDelayed:Z

    .line 1056
    :cond_3
    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mUpdateStoragePathDelayed:Z

    if-eqz v0, :cond_5

    .line 1057
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->updateStorageSpace()V

    .line 1058
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    instance-of v0, v0, Lcom/android/hwcamera/PhotoModule;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    check-cast v0, Lcom/android/hwcamera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/hwcamera/PhotoModule;->updatePictureRemainsText()V

    .line 1059
    :cond_4
    iput-boolean v2, p0, Lcom/android/hwcamera/CameraActivity;->mUpdateStoragePathDelayed:Z

    .line 1061
    :cond_5
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onFullScreenChanged(Z)V

    .line 1063
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/CameraModule;->onFullScreenChanged(Z)V

    goto :goto_0

    .line 1045
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->setUpdateSilently(Z)V

    .line 1047
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->hideUI()V

    goto :goto_1
.end method

.method public onHeadSetPlugIn()V
    .locals 2

    .prologue
    .line 1630
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsHeadSetPlugOrBlueToothHintShown:Z

    if-nez v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    const v1, 0x7f0d0174

    invoke-interface {v0, v1}, Lcom/android/hwcamera/CameraModule;->showOnscreenToast(I)V

    .line 1632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsHeadSetPlugOrBlueToothHintShown:Z

    .line 1634
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1, p2}, Lcom/android/hwcamera/CameraModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

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

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1, p2}, Lcom/android/hwcamera/CameraModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

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

.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 6
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 791
    invoke-super/range {p0 .. p5}, Lcom/android/hwcamera/ActivityBase;->onLayoutChange(Landroid/view/View;IIII)V

    .line 792
    instance-of v0, p1, Lcom/android/hwcamera/PreviewFrameLayout;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 793
    check-cast v0, Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraActivity;->changeCameraBlackgroud(Lcom/android/hwcamera/PreviewFrameLayout;)V

    move-object v0, p1

    .line 794
    check-cast v0, Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraActivity;->resizeContorlbars(Lcom/android/hwcamera/PreviewFrameLayout;)V

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModuleIndex:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/hwcamera/CameraModule;->onLayoutChange(Landroid/view/View;IIII)V

    .line 797
    :cond_1
    return-void
.end method

.method protected onMenuKeyUp()V
    .locals 1

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mMenuSettingsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mMenuSettingsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1653
    :cond_0
    :goto_0
    return-void

    .line 1652
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->onMenuKeyUp()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1076
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 1077
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->clearActivityResult()V

    .line 1078
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 959
    const-string v0, "CAM_activity"

    const-string v1, "FLOW onPause begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iput-boolean v3, p0, Lcom/android/hwcamera/ActivityBase;->mPaused:Z

    .line 961
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/CameraActivity;->playBurstSound(Z)V

    .line 962
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mDefaultEventCenter:Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    invoke-virtual {v0}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->pause()V

    .line 963
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mFocusPolicyService:Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    invoke-virtual {v0}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->pause()V

    .line 964
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mOrientationListener:Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;->disable()V

    .line 965
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-virtual {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->pause()V

    .line 966
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mStorageService:Lcom/android/hwcamera/storage/StorageService;

    invoke-virtual {v0}, Lcom/android/hwcamera/storage/StorageService;->pause()V

    .line 967
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->onPauseBeforeSuper()V

    .line 968
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onPause()V

    .line 969
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->onPauseAfterSuper()V

    .line 970
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 971
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 972
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    invoke-interface {v0}, Lcom/android/hwcamera/SoundClips$Player;->release()V

    .line 973
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    .line 975
    iput-boolean v2, p0, Lcom/android/hwcamera/CameraActivity;->mIsSmartHintShouldShow:Z

    .line 978
    iput-boolean v2, p0, Lcom/android/hwcamera/CameraActivity;->mIsSmartHintHasShown:Z

    .line 980
    const-string v0, "CAM_activity"

    const-string v1, "FLOW onPause end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return-void
.end method

.method protected onPhoneHangup()V
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsPhoneCall:Z

    .line 539
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->onPhoneHangup()V

    .line 540
    :cond_0
    return-void
.end method

.method protected onPhoneHook()V
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsPhoneCall:Z

    .line 555
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->onPhoneHook()V

    .line 556
    :cond_0
    return-void
.end method

.method protected onPhoneRing()V
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsPhoneCall:Z

    .line 547
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->onPhoneRing()V

    .line 548
    :cond_0
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->onPreviewTextureCopied()V

    .line 1182
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    const/4 v1, 0x0

    .line 985
    const-string v2, "CameraActivity.onResume"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 986
    const-string v2, "CAM_activity"

    const-string v3, "FLOW onResume begin"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iput-boolean v1, p0, Lcom/android/hwcamera/ActivityBase;->mPaused:Z

    .line 990
    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->initializeScreenBrightness()V

    .line 994
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v2}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 995
    .local v0, cameraId:I
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v2, p0, v0}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 997
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_zoom_value_key"

    invoke-static {v2, v3, v1}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 998
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/hwcamera/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/android/hwcamera/SoundClips$Player;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    .line 999
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mDefaultEventCenter:Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    invoke-virtual {v2, p0}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->resume(Lcom/android/hwcamera/CameraActivity;)V

    .line 1000
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mFocusPolicyService:Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    invoke-virtual {v2}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->resume()V

    .line 1001
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mOrientationListener:Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraActivity$MyOrientationEventListener;->enable()V

    .line 1002
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-virtual {v2}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->resume()V

    .line 1003
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mStorageService:Lcom/android/hwcamera/storage/StorageService;

    invoke-virtual {v2}, Lcom/android/hwcamera/storage/StorageService;->resume()V

    .line 1004
    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->isMustOpenPhotoModule()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1005
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onResume()V

    .line 1006
    iput v1, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModuleIndex:I

    .line 1007
    new-instance v1, Lcom/android/hwcamera/PhotoModule;

    invoke-direct {v1}, Lcom/android/hwcamera/PhotoModule;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    .line 1008
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->canReuseScreenNail()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/CameraActivity;->openModule(Lcom/android/hwcamera/CameraModule;Z)V

    .line 1017
    :goto_0
    return-void

    .line 1011
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v2}, Lcom/android/hwcamera/CameraModule;->onResumeBeforeSuper()V

    .line 1012
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onResume()V

    .line 1013
    invoke-static {p0}, Lcom/android/hwcamera/Util;->isExtalCaptureIntent(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/CameraActivity;->refreshGalleryPictures(Z)V

    .line 1014
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v1}, Lcom/android/hwcamera/CameraModule;->onResumeAfterSuper()V

    .line 1015
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1016
    const-string v1, "CAM_activity"

    const-string v2, "FLOW onResume end "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSceneDetected(I)V
    .locals 1
    .parameter "scene"

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/CameraModule;->onSceneDetected(I)V

    .line 1705
    :cond_0
    return-void
.end method

.method protected onSdCardRemoved()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1526
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1527
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->onSdCardRemoved()V

    .line 1528
    :cond_1
    return-void
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/hwcamera/CameraModule;->onSingleTapUp(Landroid/view/View;II)V

    .line 1111
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1069
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onStop()V

    .line 1070
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->onStop()V

    .line 1071
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->clearTasks()V

    .line 1072
    return-void
.end method

.method public onStorageStateChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "action"

    .prologue
    const/4 v3, 0x2

    .line 1416
    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1417
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1418
    const/4 v2, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1419
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1447
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 1422
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mStorageService:Lcom/android/hwcamera/storage/StorageService;

    invoke-virtual {v2, p1}, Lcom/android/hwcamera/storage/StorageService;->onStorageChanged(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1424
    new-instance v1, Lcom/android/hwcamera/CameraActivity$7;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/CameraActivity$7;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    .line 1430
    .local v1, runnable:Ljava/lang/Runnable;
    invoke-static {p0}, Lcom/android/hwcamera/Util;->isUiThread(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1431
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1436
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/hwcamera/CameraActivity$8;

    invoke-direct {v3, p0, p1}, Lcom/android/hwcamera/CameraActivity$8;-><init>(Lcom/android/hwcamera/CameraActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1433
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public onSwitchChanged(Z)Z
    .locals 3
    .parameter "onOff"

    .prologue
    const/4 v2, 0x4

    .line 1252
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1253
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1255
    const/4 v0, 0x1

    return v0
.end method

.method public onTargetDetected(Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)V
    .locals 1
    .parameter "fouceTargetDate"

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/CameraModule;->onTargetDetected(Lcom/android/hwcamera/eventcenter/targettraking/TargetInfo;)V

    .line 1480
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1191
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onUserInteraction()V

    .line 1192
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->onUserInteraction()V

    .line 1193
    return-void
.end method

.method public playBurstSound(Z)V
    .locals 1
    .parameter "isOn"

    .prologue
    .line 332
    if-eqz p1, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mBurstSoundPlayer:Lcom/android/hwcamera/SoundClipsBurst$BurstPlayer;

    if-nez v0, :cond_0

    .line 334
    invoke-static {p0}, Lcom/android/hwcamera/SoundClipsBurst;->getPlayer(Landroid/content/Context;)Lcom/android/hwcamera/SoundClipsBurst$BurstPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mBurstSoundPlayer:Lcom/android/hwcamera/SoundClipsBurst$BurstPlayer;

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mBurstSoundPlayer:Lcom/android/hwcamera/SoundClipsBurst$BurstPlayer;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mBurstSoundPlayer:Lcom/android/hwcamera/SoundClipsBurst$BurstPlayer;

    invoke-interface {v0}, Lcom/android/hwcamera/SoundClipsBurst$BurstPlayer;->release()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mBurstSoundPlayer:Lcom/android/hwcamera/SoundClipsBurst$BurstPlayer;

    goto :goto_0
.end method

.method public playSound(I)V
    .locals 1
    .parameter "soundSource"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mSoundPlayer:Lcom/android/hwcamera/SoundClips$Player;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/SoundClips$Player;->play(I)V

    .line 329
    :cond_0
    return-void
.end method

.method public processPreference(Lcom/android/hwcamera/IconListPreference;)Z
    .locals 3
    .parameter "pref"

    .prologue
    .line 1450
    const-string v0, "pref_camera_storage_path_key"

    invoke-virtual {p1}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1451
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v0

    new-instance v1, Lcom/android/hwcamera/storage/StoragePathChangedEvent;

    const-string v2, "triggered_by_user"

    invoke-direct {v1, v2}, Lcom/android/hwcamera/storage/StoragePathChangedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V

    .line 1452
    const/4 v0, 0x1

    .line 1454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetCountsByKey(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 1582
    invoke-direct {p0, p1}, Lcom/android/hwcamera/CameraActivity;->isPersist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1583
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getGlobalPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 1588
    :cond_0
    :goto_0
    return-void

    .line 1585
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCounts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resetLcdCompensateLight()V
    .locals 2

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/CameraActivity;->setScreenBackgroud(I)V

    .line 1361
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/CameraActivity;->setScreenMaxBrightness(Z)V

    .line 1362
    return-void
.end method

.method public resizeContorlbars(Lcom/android/hwcamera/PreviewFrameLayout;)V
    .locals 12
    .parameter "previewFrameLayout"

    .prologue
    .line 817
    if-nez p1, :cond_0

    .line 835
    :goto_0
    return-void

    .line 819
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 820
    .local v8, rootView:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 821
    .local v1, displayWidth:I
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 823
    .local v2, displayheight:I
    invoke-virtual {p1}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v7

    .line 824
    .local v7, previewWidth:I
    invoke-virtual {p1}, Lcom/android/hwcamera/PreviewFrameLayout;->getHeight()I

    move-result v6

    .line 825
    .local v6, previewHeight:I
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->isLandscapeLocked()Z

    move-result v4

    .line 826
    .local v4, isLandscape:Z
    const/4 v3, 0x0

    .line 827
    .local v3, height:I
    if-eqz v4, :cond_2

    sub-int v11, v1, v7

    :goto_1
    div-int/lit8 v0, v11, 0x2

    .line 828
    .local v0, controlBarDistance:I
    const/16 v11, 0x50

    invoke-static {v11}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v5

    .line 829
    .local v5, longPixels:I
    const/16 v11, 0x38

    invoke-static {v11}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v9

    .line 830
    .local v9, shotPixels:I
    if-ge v0, v5, :cond_1

    const/16 v11, 0x14

    if-ge v0, v11, :cond_3

    :cond_1
    move v10, v5

    .line 832
    .local v10, width:I
    :goto_2
    invoke-direct {p0, v10, v3}, Lcom/android/hwcamera/CameraActivity;->resizeViews(II)V

    .line 834
    invoke-direct {p0, v4, v10, v3}, Lcom/android/hwcamera/CameraActivity;->relocateViews(ZII)V

    goto :goto_0

    .line 827
    .end local v0           #controlBarDistance:I
    .end local v5           #longPixels:I
    .end local v9           #shotPixels:I
    .end local v10           #width:I
    :cond_2
    sub-int v11, v2, v6

    goto :goto_1

    .restart local v0       #controlBarDistance:I
    .restart local v5       #longPixels:I
    .restart local v9       #shotPixels:I
    :cond_3
    move v10, v9

    .line 830
    goto :goto_2
.end method

.method public restoreDefaults()V
    .locals 5

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getGlobalPreference()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1600
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/hwcamera/CameraActivity;->mNeedRemovedKey:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1601
    sget-object v2, Lcom/android/hwcamera/CameraActivity;->mNeedRemovedKey:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/android/hwcamera/CameraActivity;->isPersist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1602
    sget-object v2, Lcom/android/hwcamera/CameraActivity;->mNeedRemovedKey:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1600
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1604
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mCounts:Ljava/util/Map;

    sget-object v3, Lcom/android/hwcamera/CameraActivity;->mNeedRemovedKey:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1607
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1608
    return-void
.end method

.method public rotatateView(Landroid/view/View;IZ)V
    .locals 3
    .parameter "rotatableView"
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 505
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 522
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 507
    .restart local p1
    :cond_1
    if-eqz p1, :cond_0

    .line 509
    instance-of v2, p1, Lcom/android/hwcamera/ui/Rotatable;

    if-eqz v2, :cond_2

    .line 510
    check-cast p1, Lcom/android/hwcamera/ui/Rotatable;

    .end local p1
    invoke-interface {p1, p2, p3}, Lcom/android/hwcamera/ui/Rotatable;->setOrientation(IZ)V

    goto :goto_0

    .line 514
    .restart local p1
    :cond_2
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 515
    check-cast v1, Landroid/view/ViewGroup;

    .line 516
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 518
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/hwcamera/CameraActivity;->rotatateView(Landroid/view/View;IZ)V

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setBeautyProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/CameraModule;->setBeautyProgress(I)V

    .line 1490
    :cond_0
    return-void
.end method

.method public setEyeCorrectionHintState(I)V
    .locals 0
    .parameter "show"

    .prologue
    .line 253
    iput p1, p0, Lcom/android/hwcamera/CameraActivity;->mEyeHintHasShown:I

    .line 254
    return-void
.end method

.method public setFirstTimeForHwScope(Z)V
    .locals 0
    .parameter "mIsFirstTimeForHwScope"

    .prologue
    .line 1467
    iput-boolean p1, p0, Lcom/android/hwcamera/CameraActivity;->mIsFirstTimeForHwScope:Z

    .line 1468
    return-void
.end method

.method public setHdrHintShownState(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/android/hwcamera/CameraActivity;->mIsHdrHintShown:Z

    .line 215
    return-void
.end method

.method public setLcdCompensateLight()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1354
    invoke-direct {p0, v3}, Lcom/android/hwcamera/CameraActivity;->setScreenMaxBrightness(Z)V

    .line 1355
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/CameraActivity;->setScreenBackgroud(I)V

    .line 1356
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1357
    return-void
.end method

.method public setMeterHintShownState(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/android/hwcamera/CameraActivity;->mIsMeterHintShown:Z

    .line 229
    return-void
.end method

.method public setOrientationIndicator(IZ)V
    .locals 6
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    add-int/lit8 p1, p1, 0x5a

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mRotatableIndicatorResIds:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 500
    .local v3, resId:I
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/hwcamera/CameraActivity;->rotatateView(Landroid/view/View;IZ)V

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v3           #resId:I
    :cond_1
    return-void
.end method

.method public setSmartHintHasShown(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/hwcamera/CameraActivity;->mIsSmartHintHasShown:Z

    .line 197
    return-void
.end method

.method public setSmartHintShouldShow(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/android/hwcamera/CameraActivity;->mIsSmartHintShouldShow:Z

    .line 206
    return-void
.end method

.method public setThumbnailUpdateSilently(Z)V
    .locals 1
    .parameter "silent"

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->setUpdateSilently(Z)V

    .line 1627
    :cond_0
    return-void
.end method

.method public setTipsViewMargin(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/hwcamera/CameraModule;->setTipsViewMargin(IIII)V

    .line 366
    :cond_0
    return-void
.end method

.method public setVoicePhotoHintShownState(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/android/hwcamera/CameraActivity;->mIsVoicePhotoHintShown:Z

    .line 187
    return-void
.end method

.method public showBackGround()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->needBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 648
    :cond_0
    return-void
.end method

.method public showCanVolumSnapShotHint()V
    .locals 7

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mVolumKeySnapShotAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1559
    :cond_0
    :goto_0
    return-void

    .line 1547
    :cond_1
    new-instance v4, Lcom/android/hwcamera/CameraActivity$9;

    invoke-direct {v4, p0}, Lcom/android/hwcamera/CameraActivity$9;-><init>(Lcom/android/hwcamera/CameraActivity;)V

    .line 1555
    .local v4, positiveRunable:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1556
    const v1, 0x7f0d0175

    const v2, 0x7f0d016e

    const v3, 0x7f0d016c

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/hwcamera/Util;->initDailogNotCancelable(Landroid/content/Context;IIILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mVolumKeySnapShotAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public showMenu()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->needMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mMenuSettingsLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 693
    :cond_0
    return-void
.end method

.method public showOnscreenHint(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/CameraModule;->showOnscreenHint(I)V

    .line 346
    :cond_0
    return-void
.end method

.method public showOnscreenHintDelay(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/CameraModule;->showOnscreenHintDelay(I)V

    .line 358
    :cond_0
    return-void
.end method

.method public showOnscreenHintImmediately(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/CameraModule;->showOnscreenHintImmediately(I)V

    .line 354
    :cond_0
    return-void
.end method

.method public showOnscreenToast(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/CameraModule;->showOnscreenToast(I)V

    .line 350
    :cond_0
    return-void
.end method

.method public showQuickRecordButton()V
    .locals 2

    .prologue
    .line 1672
    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->needsQuickRecordingShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mQuickRecordingShutter:Lcom/android/hwcamera/ShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mQuickRecordingShutter:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 1673
    :cond_0
    return-void
.end method

.method public showShootmodeLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 664
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v1}, Lcom/android/hwcamera/CameraModule;->needsBeautyProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    const v1, 0x7f10000a

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 666
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 669
    .end local v0           #v:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v1}, Lcom/android/hwcamera/CameraModule;->needColorEffect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 670
    const v1, 0x7f100041

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 671
    .restart local v0       #v:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 674
    .end local v0           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public showStorageHintMessage()V
    .locals 0

    .prologue
    .line 1509
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->updateStorageSpaceWhenStorageIsFull()V

    .line 1510
    return-void
.end method

.method public showSwitcher()V
    .locals 0

    .prologue
    .line 726
    return-void
.end method

.method public showThumbnail()V
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->needsThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 715
    :cond_0
    return-void
.end method

.method public showUI()V
    .locals 2

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->isInVideoReviewState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    :goto_0
    return-void

    .line 699
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->showUIExceptShtter()V

    .line 700
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mShutter:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 701
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->showQuickRecordButton()V

    .line 703
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mShutter:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->requestLayout()V

    goto :goto_0
.end method

.method public showUIExceptShtter()V
    .locals 0

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->showMenu()V

    .line 658
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->showSwitcher()V

    .line 659
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->showThumbnail()V

    .line 660
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->showBackGround()V

    .line 661
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/hwcamera/ProxyLauncher;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1168
    .local v0, proxyIntent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1169
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1170
    invoke-super {p0, v0, p2}, Lcom/android/hwcamera/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1171
    return-void
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 1174
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public switchCameraModule(I)V
    .locals 4
    .parameter "moduleIndex"

    .prologue
    const/4 v2, 0x1

    .line 1274
    iget-boolean v3, p0, Lcom/android/hwcamera/ActivityBase;->mPaused:Z

    if-eqz v3, :cond_0

    .line 1300
    :goto_0
    return-void

    .line 1275
    :cond_0
    iput-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mPaused:Z

    .line 1276
    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->canReuseScreenNail()Z

    move-result v0

    .line 1277
    .local v0, canReuse:Z
    iget v3, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModuleIndex:I

    invoke-direct {p0, v3, p1}, Lcom/android/hwcamera/CameraActivity;->canReuseViews(II)Z

    move-result v1

    .line 1278
    .local v1, canReuseViews:Z
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraHolder;->keep()V

    .line 1279
    iget-object v3, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-nez v1, :cond_1

    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/android/hwcamera/CameraActivity;->closeModule(Lcom/android/hwcamera/CameraModule;Z)V

    .line 1280
    iput p1, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModuleIndex:I

    .line 1281
    packed-switch p1, :pswitch_data_0

    .line 1297
    :goto_2
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-direct {p0, v2, v0}, Lcom/android/hwcamera/CameraActivity;->openModule(Lcom/android/hwcamera/CameraModule;Z)V

    .line 1298
    iget-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    iget v3, p0, Lcom/android/hwcamera/CameraActivity;->mLastRawOrientation:I

    invoke-interface {v2, v3}, Lcom/android/hwcamera/CameraModule;->onOrientationChanged(I)V

    .line 1299
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->doCameraScreenNailAnimation()V

    goto :goto_0

    .line 1279
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1283
    :pswitch_0
    new-instance v2, Lcom/android/hwcamera/VideoModule;

    invoke-direct {v2}, Lcom/android/hwcamera/VideoModule;-><init>()V

    iput-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    goto :goto_2

    .line 1286
    :pswitch_1
    new-instance v2, Lcom/android/hwcamera/PhotoModule;

    invoke-direct {v2}, Lcom/android/hwcamera/PhotoModule;-><init>()V

    iput-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    goto :goto_2

    .line 1289
    :pswitch_2
    new-instance v2, Lcom/android/hwcamera/PanoramaModule;

    invoke-direct {v2}, Lcom/android/hwcamera/PanoramaModule;-><init>()V

    iput-object v2, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    goto :goto_2

    .line 1281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public switchCameraModule(Z)V
    .locals 4
    .parameter "onOff"

    .prologue
    .line 1261
    const-string v1, "CAM_activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-boolean v1, p0, Lcom/android/hwcamera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1269
    :goto_0
    return-void

    .line 1263
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1264
    .local v0, moduleIndex:I
    :goto_1
    iget v1, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModuleIndex:I

    if-ne v0, v1, :cond_2

    .line 1265
    const-string v1, "CAM_activity"

    const-string v2, "onSwitchChanged: this mode is currentMode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1263
    .end local v0           #moduleIndex:I
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 1268
    .restart local v0       #moduleIndex:I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraActivity;->switchCameraModule(I)V

    goto :goto_0
.end method

.method public switchFromGooglePano2Photo()V
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v0, p0}, Lcom/android/hwcamera/CameraSettings;->resetShootMode(Lcom/android/hwcamera/ComboPreferences;Landroid/content/Context;)V

    .line 1309
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraActivity;->switchCameraModule(I)V

    .line 1310
    return-void
.end method

.method public tryMuteSoundPlayer()Z
    .locals 3

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->getSettingsMute()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/hwcamera/CameraActivity;->getSystemMute()Z

    move-result v2

    or-int v0, v1, v2

    .line 322
    .local v0, isMute:Z
    invoke-static {v0}, Lcom/android/hwcamera/SoundClips;->setMute(Z)V

    .line 323
    invoke-static {v0}, Lcom/android/hwcamera/SoundClipsBurst;->setMute(Z)V

    .line 324
    return v0
.end method

.method public unlockOrientation()V
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->unlockOrientation()V

    .line 1661
    return-void
.end method

.method public updateCameraAppView()V
    .locals 1

    .prologue
    .line 1197
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->updateCameraAppView()V

    .line 1198
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraModule;->updateCameraAppView()V

    .line 1199
    return-void
.end method

.method public updateCameraFocusParameters(Z)V
    .locals 1
    .parameter "isForce"

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/CameraModule;->updateCameraFocusParameters(Z)V

    .line 1409
    :cond_0
    return-void
.end method

.method public updateColorEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/CameraModule;->updateColorEffect(Ljava/lang/String;)V

    .line 1506
    :cond_0
    return-void
.end method

.method protected updateMeteringPos(Landroid/view/View;IIZ)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "updatePara"

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mCurrentModule:Lcom/android/hwcamera/CameraModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/hwcamera/CameraModule;->updateMeteringPos(Landroid/view/View;IIZ)V

    .line 1123
    return-void
.end method

.method public updatePictureThumbnail(Landroid/graphics/Bitmap;Landroid/net/Uri;I)V
    .locals 2
    .parameter "bitmap"
    .parameter "uri"
    .parameter "orientation"

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    iget p3, p0, Lcom/android/hwcamera/CameraActivity;->mOrientation:I

    .end local p3
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updatePictureThumbnail(Landroid/graphics/Bitmap;Landroid/net/Uri;I)V

    .line 1338
    :cond_1
    return-void
.end method

.method public updatePictureThumbnail(Ljava/lang/String;IILandroid/net/Uri;I)V
    .locals 6
    .parameter "filePath"
    .parameter "orientation"
    .parameter "inSampleSize"
    .parameter "uri"
    .parameter "stereo3DType"

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updatePictureThumbnail(Ljava/lang/String;IILandroid/net/Uri;I)V

    .line 1341
    :cond_0
    return-void
.end method

.method public updatePictureThumbnail([BIILandroid/net/Uri;)V
    .locals 1
    .parameter "data"
    .parameter "orientation"
    .parameter "inSampleSize"
    .parameter "uri"

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updatePictureThumbnail([BIILandroid/net/Uri;)V

    .line 1333
    :cond_0
    return-void
.end method

.method public updateStorageSpace()V
    .locals 1

    .prologue
    .line 1324
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->updateStorageSpace()V

    .line 1329
    :goto_0
    return-void

    .line 1327
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mUpdateStoragePathDelayed:Z

    goto :goto_0
.end method

.method public updateStorageSpaceWhenStorageIsFull()V
    .locals 4

    .prologue
    .line 1513
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->updateStorageSpace()V

    .line 1514
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1516
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraActivity;->onStorageStateChanged(Ljava/lang/String;)V

    .line 1518
    :cond_0
    return-void
.end method

.method protected updateSystemMute(Z)V
    .locals 1
    .parameter "isSystemMute"

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->updateSystemMute(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-virtual {v0}, Lcom/android/hwcamera/CustomConfiguration;->isMuteSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mIsSystemMute:Z

    .line 239
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateThumbnail()V
    .locals 1

    .prologue
    .line 1316
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->isInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-virtual {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnailUncached()V

    .line 1321
    :goto_0
    return-void

    .line 1319
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraActivity;->mUpdateThumbnailDelayed:Z

    goto :goto_0
.end method

.method public updateThumbnailUncached()V
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-virtual {v0}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateThumbnailUncached()V

    .line 1460
    return-void
.end method

.method public updateVideoThumbnail(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 1
    .parameter "mCurrentVideoFilename"
    .parameter "thumbnailWidth"
    .parameter "mCurrentVideoUri"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/hwcamera/thumbnail/ThumbnailService;->updateVideoThumbnail(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1345
    :cond_0
    return-void
.end method

.method public getThumbnailService()Lcom/android/hwcamera/thumbnail/ThumbnailService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/hwcamera/CameraActivity;->mThumbnailService:Lcom/android/hwcamera/thumbnail/ThumbnailService;

    return-object v0
.end method
