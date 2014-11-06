.class public abstract Lcom/android/hwcamera/ActivityBase;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/hwcamera/ui/LayoutChangeNotifier$Listener;
.implements Lcom/android/hwcamera/PhoneStateChangedListener$OnPhoneStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/ActivityBase$MyAppBridge;,
        Lcom/android/hwcamera/ActivityBase$HideCameraAppView;,
        Lcom/android/hwcamera/ActivityBase$CameraOpenThread;,
        Lcom/android/hwcamera/ActivityBase$ScreenOffReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_BLUETOOTH_MEDIA_BUTTON:Ljava/lang/String; = "android.intent.action.BLUETOOTH_BUTTON_COMMAND"

.field private static final ACTION_DELETE_PICTURE:Ljava/lang/String; = "com.android.gallery3d.action.DELETE_PICTURE"

.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field private static final CAMERA_APP_VIEW_TOGGLE_TIME:I = 0x64

.field protected static final CHECK_STORAGE_SDMOUNTED:I = 0x2

.field private static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field private static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE_FC:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE_FC"

.field protected static final PHONE_HANG_UP_MSG:I = 0x3

.field private static final PLUG_IN:I = 0x1

.field private static final PULL_OUT:I = 0x0

.field protected static final RESET_LCD_COMPENSATION:I = 0x1

.field public static final SECURE_CAMERA_EXTRA:Ljava/lang/String; = "secure_camera"

.field public static final START_BY_HARDKEY_CHORD:Ljava/lang/String; = "start_by_hardkey_chord"

.field protected static final SWITCH_CAMERA_VIDEO_MSG:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ActivityBase"

.field private static sFirstStartAfterScreenOn:Z

.field private static sScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private static sSecureAlbumId:I


# instance fields
.field protected mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field protected mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBlueToothMediaButtonFilter:Landroid/content/IntentFilter;

.field private mBlueToothMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field protected mCameraAppView:Landroid/view/View;

.field private mCameraAppViewFadeIn:Landroid/view/animation/Animation;

.field private mCameraAppViewFadeOut:Landroid/view/animation/Animation;

.field protected mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

.field protected mCameraDisabled:Z

.field protected mCameraId:I

.field protected mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mCurrentBucketPath:Ljava/lang/String;

.field protected mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

.field private mDeletePictureFilter:Landroid/content/IntentFilter;

.field private mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

.field private mFlashEnalbeState:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mHeadsetPlugFilter:Landroid/content/IntentFilter;

.field private mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsFilterOnFullScreenChanged:Z

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mNeedLowBatteryCallBack:Z

.field protected mNumberOfCameras:I

.field protected mOpenCameraFail:Z

.field protected mParameters:Landroid/hardware/Camera$Parameters;

.field protected mPaused:Z

.field protected mPendingSwitchCameraId:I

.field private mPhoneStateChangedAction:Ljava/lang/Runnable;

.field private mPhoneStateChangedListener:Lcom/android/hwcamera/PhoneStateChangedListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResultCodeForTesting:I

.field private mResultDataForTesting:Landroid/content/Intent;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field protected mSecureCamera:Z

.field protected mShowCameraAppView:Z

.field public mSingleTapArea:Landroid/view/View;

.field protected mStartByHardkeyChord:Z

.field private mStorageSpace:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/hwcamera/ActivityBase;->sFirstStartAfterScreenOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.gallery3d.action.DELETE_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mDeletePictureFilter:Landroid/content/IntentFilter;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/ActivityBase;->mPendingSwitchCameraId:I

    .line 114
    iput-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    .line 129
    invoke-static {}, Lcom/android/hwcamera/CustomConfiguration;->getInstance()Lcom/android/hwcamera/CustomConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    .line 132
    iput-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mNeedLowBatteryCallBack:Z

    .line 136
    new-instance v0, Lcom/android/hwcamera/ActivityBase$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ActivityBase$1;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mPhoneStateChangedAction:Ljava/lang/Runnable;

    .line 143
    iput-boolean v3, p0, Lcom/android/hwcamera/ActivityBase;->mIsFilterOnFullScreenChanged:Z

    .line 144
    const-wide/32 v0, 0x1400000

    iput-wide v0, p0, Lcom/android/hwcamera/ActivityBase;->mStorageSpace:J

    .line 151
    iput-boolean v3, p0, Lcom/android/hwcamera/ActivityBase;->mFlashEnalbeState:Z

    .line 152
    new-instance v0, Lcom/android/hwcamera/ActivityBase$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ActivityBase$2;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Lcom/android/hwcamera/ActivityBase$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ActivityBase$3;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHeadsetPlugFilter:Landroid/content/IntentFilter;

    .line 202
    new-instance v0, Lcom/android/hwcamera/ActivityBase$4;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ActivityBase$4;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BLUETOOTH_BUTTON_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mBlueToothMediaButtonFilter:Landroid/content/IntentFilter;

    .line 216
    new-instance v0, Lcom/android/hwcamera/ActivityBase$5;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ActivityBase$5;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mBlueToothMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    new-instance v0, Lcom/android/hwcamera/ActivityBase$6;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ActivityBase$6;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Lcom/android/hwcamera/ActivityBase$7;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ActivityBase$7;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 309
    new-instance v0, Lcom/android/hwcamera/ActivityBase$9;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ActivityBase$9;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 819
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/ActivityBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onBatteryChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/ActivityBase;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->isInMeteringRect(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/hwcamera/ActivityBase;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/ActivityBase;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/hwcamera/ActivityBase;->updateMeteringPos(IIZ)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-boolean p0, Lcom/android/hwcamera/ActivityBase;->sFirstStartAfterScreenOn:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/ActivityBase;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onSingleTapUp(II)Z

    move-result v0

    return v0
.end method

.method public static isFirstStartAfterScreenOn()Z
    .locals 1

    .prologue
    .line 325
    sget-boolean v0, Lcom/android/hwcamera/ActivityBase;->sFirstStartAfterScreenOn:Z

    return v0
.end method

.method private isInMeteringRect(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 728
    const-string v1, "ActivityBase"

    const-string v3, "isInMeteringRect enter"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 740
    :goto_0
    return v1

    .line 731
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-static {v1, v3}, Lcom/android/hwcamera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    .line 733
    .local v0, relativeLocation:[I
    aget v1, v0, v2

    sub-int/2addr p1, v1

    .line 734
    const/4 v1, 0x1

    aget v1, v0, v1

    sub-int/2addr p2, v1

    .line 735
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ltz p2, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 738
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/hwcamera/ActivityBase;->isInMeteringRect(Landroid/view/View;II)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 740
    goto :goto_0
.end method

.method private onBatteryChanged(I)V
    .locals 0
    .parameter "percent"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ActivityBase;->processFlashModeOnBatteryChanged(I)V

    .line 272
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ActivityBase;->processIfCallingOnBatteryChanged(I)V

    .line 273
    return-void
.end method

.method private onSingleTapUp(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 708
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 719
    :goto_0
    return v1

    .line 710
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v4, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-static {v1, v4}, Lcom/android/hwcamera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    .line 712
    .local v0, relativeLocation:[I
    aget v1, v0, v3

    sub-int/2addr p1, v1

    .line 713
    aget v1, v0, v2

    sub-int/2addr p2, v1

    .line 714
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ltz p2, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 716
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onSingleTapUp(Landroid/view/View;II)V

    move v1, v2

    .line 717
    goto :goto_0

    :cond_2
    move v1, v3

    .line 719
    goto :goto_0
.end method

.method private processFlashModeOnBatteryChanged(I)V
    .locals 3
    .parameter "percent"

    .prologue
    const/4 v1, 0x1

    .line 291
    const/16 v2, 0xf

    if-le p1, v2, :cond_1

    move v0, v1

    .line 293
    .local v0, state:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mFlashEnalbeState:Z

    if-eq v0, v2, :cond_0

    .line 294
    iput-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mFlashEnalbeState:Z

    .line 296
    iget-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-nez v2, :cond_2

    .line 297
    iput-boolean v1, p0, Lcom/android/hwcamera/ActivityBase;->mNeedLowBatteryCallBack:Z

    .line 303
    :cond_0
    :goto_1
    return-void

    .line 291
    .end local v0           #state:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 301
    .restart local v0       #state:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->flashModeInLowBattery()V

    goto :goto_1
.end method

.method private processIfCallingOnBatteryChanged(I)V
    .locals 6
    .parameter "percent"

    .prologue
    .line 276
    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-static {p0}, Lcom/android/hwcamera/Util;->isCalling(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    new-instance v3, Lcom/android/hwcamera/ActivityBase$8;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/ActivityBase$8;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    .line 285
    .local v3, positiveRunable:Ljava/lang/Runnable;
    const v1, 0x7f0d016a

    const v2, 0x7f0d016b

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/hwcamera/Util;->initDailog(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private registerPhoneStateChangedLisener(Lcom/android/hwcamera/PhoneStateChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 393
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 394
    return-void
.end method

.method public static resetFirstStartAfterScreenOn()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/hwcamera/ActivityBase;->sFirstStartAfterScreenOn:Z

    .line 330
    return-void
.end method

.method private unRegisterPhoneStateChangedLisener(Lcom/android/hwcamera/PhoneStateChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 398
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 399
    return-void
.end method

.method private updateMeteringPos(IIZ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "updatePara"

    .prologue
    .line 745
    const-string v1, "ActivityBase"

    const-string v2, "updateMeteringPos enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-nez v1, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    .line 751
    .local v0, relativeLocation:[I
    const/4 v1, 0x0

    aget v1, v0, v1

    sub-int/2addr p1, v1

    .line 752
    const/4 v1, 0x1

    aget v1, v0, v1

    sub-int/2addr p2, v1

    .line 753
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/hwcamera/ActivityBase;->updateMeteringPos(Landroid/view/View;IIZ)V

    goto :goto_0
.end method


# virtual methods
.method protected addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "isVideo"
    .parameter "uri"

    .prologue
    .line 788
    iget-boolean v1, p0, Lcom/android/hwcamera/ActivityBase;->mSecureCamera:Z

    if-eqz v1, :cond_0

    .line 789
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 790
    .local v0, id:I
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-virtual {v1, p1, v0}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->addSecureAlbumItem(ZI)V

    .line 792
    .end local v0           #id:I
    :cond_0
    return-void
.end method

.method public createCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 5
    .parameter "getPictures"

    .prologue
    .line 532
    const v2, 0x7f10013f

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    .line 533
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 535
    .local v0, data:Landroid/os/Bundle;
    if-eqz p1, :cond_3

    .line 536
    iget-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mSecureCamera:Z

    if-eqz v2, :cond_2

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/secure/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/hwcamera/ActivityBase;->sSecureAlbumId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, path:Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mCurrentBucketPath:Ljava/lang/String;

    .line 545
    const-string v2, "media-set-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v2, "media-item-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v3, "show_when_locked"

    iget-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mSecureCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mStartByHardkeyChord:Z

    if-eqz v2, :cond_4

    :cond_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 550
    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    if-eqz v2, :cond_1

    .line 551
    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 553
    :cond_1
    new-instance v2, Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    iput-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    .line 554
    const-string v2, "app-bridge"

    iget-object v3, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 555
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 556
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 561
    :goto_2
    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-virtual {v2}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->getCameraScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 562
    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v2

    .line 539
    .end local v1           #path:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getBucketId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #path:Ljava/lang/String;
    goto :goto_0

    .line 542
    .end local v1           #path:Ljava/lang/String;
    :cond_3
    const-string v1, "/local/all/0"

    .restart local v1       #path:Ljava/lang/String;
    goto :goto_0

    .line 547
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 558
    :cond_5
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public doProcessOnPhoneHangup()V
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 955
    :goto_0
    return-void

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 954
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public draw(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 0
    .parameter "screenNail"
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 799
    invoke-virtual/range {p0 .. p6}, Lcom/android/hwcamera/ActivityBase;->drawSmallPreviewIfNeeded(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 800
    invoke-virtual/range {p0 .. p6}, Lcom/android/hwcamera/ActivityBase;->drawPanoramaPreviewIfNeeded(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 801
    return-void
.end method

.method public abstract drawPanoramaPreviewIfNeeded(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V
.end method

.method public abstract drawSmallPreviewIfNeeded(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V
.end method

.method protected exitGallery()V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    const/4 v1, -0x1

    #calls: Lcom/android/hwcamera/ActivityBase$MyAppBridge;->switchWithCaptureAnimation(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->access$400(Lcom/android/hwcamera/ActivityBase$MyAppBridge;I)V

    .line 807
    :cond_0
    return-void
.end method

.method public abstract flashModeInLowBattery()V
.end method

.method public getFlashEnable()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mFlashEnalbeState:Z

    return v0
.end method

.method public getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/android/hwcamera/ActivityBase;->mResultCodeForTesting:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    return-object v0
.end method

.method protected getStorageSpace()J
    .locals 2

    .prologue
    .line 522
    iget-wide v0, p0, Lcom/android/hwcamera/ActivityBase;->mStorageSpace:J

    return-wide v0
.end method

.method protected gotoGallery()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    const/4 v1, 0x1

    #calls: Lcom/android/hwcamera/ActivityBase$MyAppBridge;->switchWithCaptureAnimation(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->access$400(Lcom/android/hwcamera/ActivityBase$MyAppBridge;I)V

    .line 528
    return-void
.end method

.method protected installIntentFilter()V
    .locals 2

    .prologue
    .line 504
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 515
    return-void
.end method

.method protected isInMeteringRect(Landroid/view/View;II)Z
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method public isPanoramaActivity()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public isSecureCamera()Z
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mSecureCamera:Z

    return v0
.end method

.method public notifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/hwcamera/ActivityBase$MyAppBridge;->notifyScreenNailChanged()V
    invoke-static {v0}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->access$800(Lcom/android/hwcamera/ActivityBase$MyAppBridge;)V

    .line 779
    return-void
.end method

.method protected abstract onBluetoothButtonClick()V
.end method

.method public onCallHook()V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->onPhoneHook()V

    .line 186
    return-void
.end method

.method public onCallRing()V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->onPhoneRing()V

    .line 196
    return-void
.end method

.method protected onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 785
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 348
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->disableToggleStatusBar()V

    .line 355
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getThemeID(Landroid/content/Context;)I

    move-result v3

    .line 356
    .local v3, themeId:I
    if-nez v3, :cond_3

    .line 357
    const v4, 0x7f0e0051

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/ActivityBase;->setTheme(I)V

    .line 361
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 362
    sget-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_ACTION_BAR:Z

    if-eqz v4, :cond_4

    .line 363
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/ActivityBase;->requestWindowFeature(I)Z

    .line 368
    :goto_1
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 369
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE_FC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 371
    :cond_0
    iput-boolean v6, p0, Lcom/android/hwcamera/ActivityBase;->mSecureCamera:Z

    .line 373
    sget v4, Lcom/android/hwcamera/ActivityBase;->sSecureAlbumId:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/hwcamera/ActivityBase;->sSecureAlbumId:I

    .line 379
    :goto_2
    const-string v4, "start_by_hardkey_chord"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/hwcamera/ActivityBase;->mStartByHardkeyChord:Z

    .line 380
    iget-boolean v4, p0, Lcom/android/hwcamera/ActivityBase;->mSecureCamera:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/hwcamera/ActivityBase;->mStartByHardkeyChord:Z

    if-eqz v4, :cond_2

    .line 381
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 382
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/hwcamera/ActivityBase;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/hwcamera/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    sget-object v4, Lcom/android/hwcamera/ActivityBase;->sScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_2

    .line 384
    new-instance v4, Lcom/android/hwcamera/ActivityBase$ScreenOffReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/hwcamera/ActivityBase$ScreenOffReceiver;-><init>(Lcom/android/hwcamera/ActivityBase$1;)V

    sput-object v4, Lcom/android/hwcamera/ActivityBase;->sScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 385
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/hwcamera/ActivityBase;->sScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 389
    return-void

    .line 359
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/ActivityBase;->setTheme(I)V

    goto :goto_0

    .line 365
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/hwcamera/ActivityBase;->requestWindowFeature(I)Z

    goto :goto_1

    .line 374
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_5
    const-string v4, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 375
    iput-boolean v6, p0, Lcom/android/hwcamera/ActivityBase;->mSecureCamera:Z

    goto :goto_2

    .line 377
    :cond_6
    const-string v4, "secure_camera"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/hwcamera/ActivityBase;->mSecureCamera:Z

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 497
    invoke-static {p0}, Lcom/android/hwcamera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    .line 498
    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mSecureCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mStartByHardkeyChord:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 499
    :cond_1
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 500
    return-void
.end method

.method protected onFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-ne v0, p1, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iput-boolean p1, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    .line 667
    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->updateCameraAppView()V

    .line 670
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mNeedLowBatteryCallBack:Z

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->flashModeInLowBattery()V

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mNeedLowBatteryCallBack:Z

    goto :goto_0
.end method

.method public onHangup()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mPhoneStateChangedAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 191
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->onPhoneHangup()V

    .line 192
    return-void
.end method

.method public abstract onHeadSetPlugIn()V
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x52

    const/4 v0, 0x1

    .line 454
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_2

    .line 456
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 462
    :cond_1
    :goto_0
    return v0

    .line 458
    :cond_2
    if-ne p1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-nez v1, :cond_1

    .line 462
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 467
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->onMenuKeyUp()V

    .line 471
    const/4 v0, 0x1

    .line 473
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 4
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 685
    iget-object v3, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    if-nez v3, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    sub-int v2, p4, p2

    .line 688
    .local v2, width:I
    sub-int v0, p5, p3

    .line 689
    .local v0, height:I
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v3, :cond_0

    .line 690
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/android/hwcamera/CameraScreenNail;

    .line 691
    .local v1, screenNail:Lcom/android/hwcamera/CameraScreenNail;
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_2

    .line 692
    invoke-virtual {v1, v2, v0}, Lcom/android/hwcamera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 698
    :goto_1
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->notifyScreenNailChanged()V

    goto :goto_0

    .line 696
    :cond_2
    invoke-virtual {v1, v0, v2}, Lcom/android/hwcamera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_1
.end method

.method protected abstract onMenuKeyUp()V
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 424
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 425
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 426
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 427
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mBlueToothMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 428
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 430
    .local v0, manager:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 431
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mPhoneStateChangedListener:Lcom/android/hwcamera/PhoneStateChangedListener;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/ActivityBase;->unRegisterPhoneStateChangedLisener(Lcom/android/hwcamera/PhoneStateChangedListener;)V

    .line 432
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mPhoneStateChangedListener:Lcom/android/hwcamera/PhoneStateChangedListener;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/PhoneStateChangedListener;->setOnPhoneStateChangedListener(Lcom/android/hwcamera/PhoneStateChangedListener$OnPhoneStateChangedListener;)V

    .line 433
    iput-object v3, p0, Lcom/android/hwcamera/ActivityBase;->mPhoneStateChangedListener:Lcom/android/hwcamera/PhoneStateChangedListener;

    .line 434
    return-void
.end method

.method protected abstract onPhoneHangup()V
.end method

.method protected abstract onPhoneHook()V
.end method

.method protected abstract onPhoneRing()V
.end method

.method protected onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 782
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 407
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 408
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->installIntentFilter()V

    .line 410
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mBlueToothMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mBlueToothMediaButtonFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/hwcamera/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mHeadsetPlugFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/hwcamera/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    invoke-static {}, Lcom/android/hwcamera/Util;->isBlueToothBonded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->onHeadSetPlugIn()V

    .line 415
    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 416
    .local v0, manager:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mDeletePictureFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 417
    invoke-static {}, Lcom/android/hwcamera/PhoneStateChangedListener;->getInstance()Lcom/android/hwcamera/PhoneStateChangedListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mPhoneStateChangedListener:Lcom/android/hwcamera/PhoneStateChangedListener;

    .line 418
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mPhoneStateChangedListener:Lcom/android/hwcamera/PhoneStateChangedListener;

    invoke-virtual {v1, p0}, Lcom/android/hwcamera/PhoneStateChangedListener;->setOnPhoneStateChangedListener(Lcom/android/hwcamera/PhoneStateChangedListener$OnPhoneStateChangedListener;)V

    .line 419
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mPhoneStateChangedListener:Lcom/android/hwcamera/PhoneStateChangedListener;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/ActivityBase;->registerPhoneStateChangedLisener(Lcom/android/hwcamera/PhoneStateChangedListener;)V

    .line 420
    return-void
.end method

.method protected abstract onSdCardRemoved()V
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 723
    return-void
.end method

.method protected abstract onStorageStateChanged(Ljava/lang/String;)V
.end method

.method public refreshGalleryPictures(Z)V
    .locals 5
    .parameter "getPictures"

    .prologue
    .line 597
    iget-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mSecureCamera:Z

    if-eqz v2, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    if-eqz v2, :cond_0

    .line 600
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 602
    .local v0, data:Landroid/os/Bundle;
    if-eqz p1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getBucketId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, path:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mCurrentBucketPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 606
    iput-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mCurrentBucketPath:Ljava/lang/String;

    .line 607
    const-string v2, "media-set-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v2, "media-item-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v3, "show_when_locked"

    iget-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mSecureCamera:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mStartByHardkeyChord:Z

    if-eqz v2, :cond_4

    :cond_2
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 611
    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-virtual {v2}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->holdHoldScreenNail()V

    .line 613
    const-string v2, "app-bridge"

    iget-object v3, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 614
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 615
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 602
    .end local v1           #path:Ljava/lang/String;
    :cond_3
    const-string v1, "/local/all/0"

    goto :goto_1

    .line 609
    .restart local v1       #path:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 617
    :cond_5
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v3

    const-class v4, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public abstract resetLcdCompensateLight()V
.end method

.method protected reuseCameraScreenNail(Z)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 4
    .parameter "getPictures"

    .prologue
    .line 567
    const v2, 0x7f10013f

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    .line 568
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 570
    .local v0, data:Landroid/os/Bundle;
    if-eqz p1, :cond_4

    .line 571
    iget-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mSecureCamera:Z

    if-eqz v2, :cond_3

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/secure/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/hwcamera/ActivityBase;->sSecureAlbumId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, path:Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mCurrentBucketPath:Ljava/lang/String;

    .line 580
    const-string v2, "media-set-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v2, "media-item-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v3, "show_when_locked"

    iget-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mSecureCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/hwcamera/ActivityBase;->mStartByHardkeyChord:Z

    if-eqz v2, :cond_5

    :cond_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 585
    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    if-nez v2, :cond_1

    .line 586
    new-instance v2, Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;-><init>(Lcom/android/hwcamera/ActivityBase;)V

    iput-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    .line 588
    :cond_1
    const-string v2, "app-bridge"

    iget-object v3, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 589
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 590
    invoke-virtual {p0}, Lcom/android/hwcamera/ActivityBase;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 592
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    invoke-virtual {v2}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->getCameraScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 593
    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase;->mCameraScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v2

    .line 574
    .end local v1           #path:Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getBucketId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #path:Ljava/lang/String;
    goto :goto_0

    .line 577
    .end local v1           #path:Ljava/lang/String;
    :cond_4
    const-string v1, "/local/all/0"

    .restart local v1       #path:Ljava/lang/String;
    goto :goto_0

    .line 582
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setContentView(I)V
    .locals 3
    .parameter "layoutResID"

    .prologue
    const-wide/16 v1, 0x400

    .line 438
    const-string v0, "ActivityBase.setContentView"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 439
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setContentView(I)V

    .line 441
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/GalleryActionBar;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 442
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/GalleryActionBar;->hide()V

    .line 443
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 444
    return-void
.end method

.method public setOrientationEnableWhenCapture(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/hwcamera/ActivityBase$MyAppBridge;->setOrientationEnableWhenCapture(Z)V
    invoke-static {v0, p1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->access$700(Lcom/android/hwcamera/ActivityBase$MyAppBridge;Z)V

    .line 775
    return-void
.end method

.method protected setResultEx(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 477
    iput p1, p0, Lcom/android/hwcamera/ActivityBase;->mResultCodeForTesting:I

    .line 478
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/ActivityBase;->setResult(I)V

    .line 479
    return-void
.end method

.method protected setResultEx(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 482
    iput p1, p0, Lcom/android/hwcamera/ActivityBase;->mResultCodeForTesting:I

    .line 483
    iput-object p2, p0, Lcom/android/hwcamera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    .line 484
    invoke-virtual {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 485
    return-void
.end method

.method protected setSingleTapUpListener(Landroid/view/View;)V
    .locals 0
    .parameter "singleTapArea"

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    .line 704
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mAppBridge:Lcom/android/hwcamera/ActivityBase$MyAppBridge;

    #calls: Lcom/android/hwcamera/ActivityBase$MyAppBridge;->setSwipingEnabled(Z)V
    invoke-static {v0, p1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->access$600(Lcom/android/hwcamera/ActivityBase$MyAppBridge;Z)V

    .line 771
    return-void
.end method

.method protected abstract switchCameraModule(Z)V
.end method

.method protected updateCameraAppView()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 641
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 642
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    .line 643
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 644
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 646
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    .line 647
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 648
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 649
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/hwcamera/ActivityBase$HideCameraAppView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/hwcamera/ActivityBase$HideCameraAppView;-><init>(Lcom/android/hwcamera/ActivityBase;Lcom/android/hwcamera/ActivityBase$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 652
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 658
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 662
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected updateMeteringPos(Landroid/view/View;IIZ)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "updatePara"

    .prologue
    .line 767
    return-void
.end method

.method protected updateStorageSpace()V
    .locals 2

    .prologue
    .line 518
    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/ActivityBase;->mStorageSpace:J

    .line 519
    return-void
.end method

.method protected abstract updateThumbnail()V
.end method

.method public abstract updateThumbnailUncached()V
.end method
