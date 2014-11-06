.class public Lcom/android/gallery3d/app/MovieActivity;
.super Landroid/app/Activity;
.source "MovieActivity.java"


# static fields
.field public static final KEY_LOGO_BITMAP:Ljava/lang/String; = "logo-bitmap"

.field public static final KEY_NEED_START_PAUSE:Ljava/lang/String; = "need_start_pause"

.field public static final KEY_SAVED_INSTANCE_STATE:Ljava/lang/String; = "savedInstanceStateIsNull"

.field public static final KEY_TREAT_UP_AS_BACK:Ljava/lang/String; = "treat-up-as-back"

.field public static final KEY_VIDEO_POSITION:Ljava/lang/String; = "video-position"

.field private static final MSG_EDIT_BOOKMARK:I = 0x204

.field private static final MSG_GOTO_URL:I = 0x201

.field private static final MSG_PARAMETERSETTINGS:I = 0x202

.field private static final MSG_SAVE_BOOKMARK:I = 0x203

.field public static final PLUG:I = 0x1

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_DTS_EFFECT:Z = false

.field private static final TAG:Ljava/lang/String; = "MovieActivity"

.field public static final UNPLUG:I

.field private static mIsCmccCustom:Z


# instance fields
.field private ACTION_DTS_ACTIVITY:Ljava/lang/String;

.field private isScreenChanged:Z

.field private mActivity:Landroid/app/Activity;

.field private mAirSharingItem:Landroid/view/MenuItem;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAudioReceiver:Landroid/content/BroadcastReceiver;

.field private mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

.field private mDtsItem:Landroid/view/MenuItem;

.field private mFinishOnCompletion:Z

.field private mHandSetPlug:Z

.field private mHasFocus:Z

.field private mIsHandSet:Z

.field private mIsHeadsetOn:Z

.field private mIsResumed:Z

.field private mIsSavedInstanceNull:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMenuCmdHandler:Landroid/os/Handler;

.field private mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

.field private mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

.field private mProvider:Landroid/widget/ShareActionProvider;

.field private mShareManager:Lcom/android/gallery3d/app/ShareManager;

.field private mSingleItemOnly:Z

.field private mSteamingVideo:Z

.field private mStrSoundEffect:Ljava/lang/String;

.field private mStreamVideoView:Landroid/widget/VideoView;

.field private mToast:Landroid/widget/Toast;

.field private mTreatUpAsBack:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    sput-boolean v1, Lcom/android/gallery3d/app/MovieActivity;->mIsCmccCustom:Z

    .line 198
    const-string v0, "ro.config.hw_dts_effect"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/MovieActivity;->SUPPORT_DTS_EFFECT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 117
    const-string v0, "com.huawei.dtseffect"

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->ACTION_DTS_ACTIVITY:Ljava/lang/String;

    .line 133
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mSteamingVideo:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandSetPlug:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHandSet:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->isScreenChanged:Z

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHasFocus:Z

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mStrSoundEffect:Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 147
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHeadsetOn:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsResumed:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsSavedInstanceNull:Z

    .line 153
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$1;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMenuCmdHandler:Landroid/os/Handler;

    .line 209
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$2;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    .line 433
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$6;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$6;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->isBrowserOfHuaweiExisted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MovieActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAirSharingItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MovieActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MovieActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/gallery3d/app/MovieActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandSetPlug:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/gallery3d/app/MovieActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHandSet:Z

    return p1
.end method

.method private createShareIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 523
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 526
    return-object v0
.end method

.method public static getStreamingcfg()Z
    .locals 1

    .prologue
    .line 377
    sget-boolean v0, Lcom/android/gallery3d/app/MovieActivity;->mIsCmccCustom:Z

    return v0
.end method

.method private initializeActionBar(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/16 v4, 0x9

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 393
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    .line 394
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    .line 395
    .local v8, actionBar:Landroid/app/ActionBar;
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieActivity;->setActionBarLogoFromIntent(Landroid/content/Intent;)V

    .line 396
    invoke-virtual {v8, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 398
    invoke-virtual {v8, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 399
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 400
    .local v9, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 402
    .local v10, title:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 403
    invoke-virtual {v8, v10}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    :goto_0
    return-void

    .line 407
    :cond_0
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$5;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3, v8}, Lcom/android/gallery3d/app/MovieActivity$5;-><init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/content/ContentResolver;Landroid/app/ActionBar;)V

    .line 426
    .local v0, queryHandler:Landroid/content/AsyncQueryHandler;
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "_display_name"

    aput-object v5, v4, v1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isBrowserOfHuaweiExisted()Z
    .locals 7

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 701
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 703
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.android.browser"

    const-string v6, "com.android.browser.ComboViewActivity"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .local v1, cn:Landroid/content/ComponentName;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 713
    :goto_0
    const/4 v3, 0x0

    .line 714
    .local v3, isBrowserExit:Z
    if-eqz v0, :cond_0

    .line 715
    const/4 v3, 0x1

    .line 717
    :cond_0
    return v3

    .line 709
    .end local v3           #isBrowserExit:Z
    :catch_0
    move-exception v2

    .line 711
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private resetAudioRoute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 734
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHandSet:Z

    if-nez v0, :cond_0

    .line 736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHandSet:Z

    .line 741
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakermediaOn(Z)V

    .line 744
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->invalidateOptionsMenu()V

    .line 746
    return-void

    .line 739
    :cond_2
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHandSet:Z

    goto :goto_0
.end method

.method private setActionBarLogoFromIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 385
    const-string v1, "logo-bitmap"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 386
    .local v0, logo:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 390
    :cond_0
    return-void
.end method

.method private static setStreamingcfg()V
    .locals 3

    .prologue
    .line 380
    const-string v0, "ro.product.streaming.custom"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/MovieActivity;->mIsCmccCustom:Z

    .line 381
    const-string v0, "MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ro.product.streaming.custom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/gallery3d/app/MovieActivity;->mIsCmccCustom:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method private setSystemUiVisibility(Landroid/view/View;)V
    .locals 1
    .parameter "rootView"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 202
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-eqz v0, :cond_0

    .line 203
    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 207
    :cond_0
    return-void
.end method

.method private showTextToast(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 687
    if-nez p1, :cond_0

    .line 696
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 691
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mToast:Landroid/widget/Toast;

    .line 695
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public isStreamMedia()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mSteamingVideo:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/16 v6, 0x400

    .line 871
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 873
    .local v3, win:Landroid/view/Window;
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mStreamVideoView:Landroid/widget/VideoView;

    iget-boolean v4, v4, Landroid/widget/VideoView;->mIsFullscreenMode:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 875
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 876
    .local v0, ScreenHeight:I
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 877
    .local v1, ScreenWidth:I
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mStreamVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4, v1, v0}, Landroid/widget/VideoView;->setVideoScale(II)V

    .line 879
    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    .line 885
    .end local v0           #ScreenHeight:I
    .end local v1           #ScreenWidth:I
    .end local v2           #display:Landroid/view/Display;
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 886
    return-void

    .line 882
    :cond_0
    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 229
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 232
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 368
    :goto_0
    return-void

    .line 238
    :cond_0
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/MovieActivity;->requestWindowFeature(I)Z

    .line 239
    const/16 v2, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/MovieActivity;->requestWindowFeature(I)Z

    .line 241
    const v2, 0x7f04003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/MovieActivity;->setContentView(I)V

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/MovieActivity;->mActivity:Landroid/app/Activity;

    .line 243
    const v2, 0x7f10012f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 245
    .local v4, rootView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/gallery3d/app/MovieActivity;->setSystemUiVisibility(Landroid/view/View;)V

    .line 249
    const-string v2, "SingleItemOnly"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mSingleItemOnly:Z

    .line 251
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/gallery3d/app/MovieActivity;->initializeActionBar(Landroid/content/Intent;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mAudioReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/app/MovieActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 256
    invoke-virtual {v11}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v14

    .line 258
    .local v14, scheme:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    :cond_1
    const-string v2, "content://external/media/video/-1"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    .line 263
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    .line 265
    .local v16, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 267
    .local v10, extras:Landroid/os/Bundle;
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mIsHeadsetOn:Z

    .line 269
    invoke-static {}, Lcom/android/gallery3d/app/MovieActivity;->setStreamingcfg()V

    .line 270
    const-string v2, "file"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".sdp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v12, 0x1

    .line 273
    .local v12, isLocalSDPFile:Z
    :goto_1
    invoke-virtual {v11}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 274
    .local v15, type:Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "rtsp"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v12, :cond_3

    const-string v2, "/sdp"

    invoke-virtual {v15, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 275
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mSteamingVideo:Z

    .line 278
    :cond_4
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mSteamingVideo:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/gallery3d/app/MovieActivity;->mIsCmccCustom:Z

    if-eqz v2, :cond_6

    .line 279
    if-nez p1, :cond_5

    .line 280
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct/range {p1 .. p1}, Landroid/os/Bundle;-><init>()V

    .line 281
    .restart local p1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mIsSavedInstanceNull:Z

    .line 283
    :cond_5
    const-string v2, "uri-array"

    const-string v3, "uri-array"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 285
    const-string v2, "title-array"

    const-string v3, "title-array"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 287
    const-string v2, "repeat_times"

    const-string v3, "repeat_times"

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    const-string v2, "savedInstanceStateIsNull"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/app/MovieActivity;->mIsSavedInstanceNull:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    :cond_6
    const-string v2, "android.intent.extra.finishOnCompletion"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    .line 295
    const-string v2, "treat-up-as-back"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mTreatUpAsBack:Z

    .line 296
    new-instance v2, Lcom/android/gallery3d/app/MovieActivity$3;

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    if-nez v3, :cond_b

    const/4 v8, 0x1

    :goto_2
    const-string v3, "video-position"

    const/4 v5, -0x1

    invoke-virtual {v11, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v3, p0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/gallery3d/app/MovieActivity$3;-><init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;ZI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    const-string v3, "need_start_pause"

    const/4 v5, 0x0

    invoke-virtual {v11, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->setStartPause(Z)V

    .line 323
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/MovieActivity;->mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    invoke-virtual {v2, v3}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->addListener(Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MoviePlayer;->getStreamVideoView()Landroid/widget/VideoView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mStreamVideoView:Landroid/widget/VideoView;

    .line 327
    const-string v2, "android.intent.extra.screenOrientation"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 328
    const-string v2, "android.intent.extra.screenOrientation"

    const/4 v3, -0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 331
    .local v13, orientation:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/MovieActivity;->getRequestedOrientation()I

    move-result v2

    if-eq v13, v2, :cond_7

    .line 332
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    .line 335
    .end local v13           #orientation:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 336
    .local v17, win:Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    .line 337
    .local v18, winParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 338
    move-object/from16 v0, v18

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    move-object/from16 v0, v18

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 339
    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 340
    new-instance v2, Lcom/android/gallery3d/app/ShareManager;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/gallery3d/app/ShareManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    .line 344
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_8

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mIsHeadsetOn:Z

    .line 349
    :cond_8
    sget-boolean v2, Lcom/android/gallery3d/app/MovieActivity;->SUPPORT_DTS_EFFECT:Z

    if-eqz v2, :cond_9

    .line 350
    new-instance v2, Lcom/android/gallery3d/app/DtsEffect;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/gallery3d/app/DtsEffect;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    new-instance v3, Lcom/android/gallery3d/app/MovieActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/app/MovieActivity$4;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/DtsEffect;->setDtsEffectOnListener(Lcom/android/gallery3d/app/DtsEffect$DtsEffectOnListener;)V

    .line 367
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 270
    .end local v12           #isLocalSDPFile:Z
    .end local v15           #type:Ljava/lang/String;
    .end local v17           #win:Landroid/view/Window;
    .end local v18           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 296
    .restart local v12       #isLocalSDPFile:Z
    .restart local v15       #type:Ljava/lang/String;
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 479
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 481
    iget-boolean v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mSingleItemOnly:Z

    if-eqz v6, :cond_0

    .line 519
    :goto_0
    return v5

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const v7, 0x7f12000b

    invoke-virtual {v6, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 485
    const v6, 0x7f100266

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsItem:Landroid/view/MenuItem;

    .line 487
    sget-boolean v6, Lcom/android/gallery3d/app/MovieActivity;->SUPPORT_DTS_EFFECT:Z

    if-nez v6, :cond_1

    .line 488
    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsItem:Landroid/view/MenuItem;

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 490
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    if-eqz v6, :cond_2

    .line 491
    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/DtsEffect;->notifyMenuChange()V

    .line 496
    :cond_2
    const v6, 0x7f10022d

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 497
    .local v2, shareItem:Landroid/view/MenuItem;
    const v6, 0x7f100246

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mAirSharingItem:Landroid/view/MenuItem;

    .line 498
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onCreateOptionMenu(Landroid/view/Menu;)V

    .line 500
    if-nez v2, :cond_3

    move v5, v4

    .line 501
    goto :goto_0

    .line 504
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v6}, Lcom/android/gallery3d/util/GalleryUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, filePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/gallery3d/util/DrmUtils;->isDrmFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v0}, Lcom/android/gallery3d/util/DrmUtils;->canForward(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    move v3, v5

    .line 507
    .local v3, supportShare:Z
    :goto_1
    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, scheme:Ljava/lang/String;
    const-string v6, "content"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "file"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_5
    if-eqz v3, :cond_7

    .line 512
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 513
    new-instance v4, Landroid/widget/ShareActionProvider;

    invoke-direct {v4, p0}, Landroid/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mProvider:Landroid/widget/ShareActionProvider;

    .line 514
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mProvider:Landroid/widget/ShareActionProvider;

    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->createShareIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    goto :goto_0

    .end local v1           #scheme:Ljava/lang/String;
    .end local v3           #supportShare:Z
    :cond_6
    move v3, v4

    .line 505
    goto :goto_1

    .line 516
    .restart local v1       #scheme:Ljava/lang/String;
    .restart local v3       #supportShare:Z
    :cond_7
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 843
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 844
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, scheme:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 846
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onDestroy()V

    .line 849
    :cond_0
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMultiScreenListener:Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;

    invoke-virtual {v1, v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->removeListener(Lcom/huawei/gallery3d/multiscreen/MultiScreen$Listener;)V

    .line 850
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->onDestroy()V

    .line 854
    .end local v0           #scheme:Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 855
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

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
    .line 865
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    .line 531
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    .line 532
    .local v5, id:I
    const v9, 0x102002c

    if-ne v5, v9, :cond_1

    .line 533
    iget-boolean v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mTreatUpAsBack:Z

    if-eqz v9, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 539
    :goto_0
    const/4 v9, 0x1

    .line 683
    :goto_1
    return v9

    .line 536
    :cond_0
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v9}, Lcom/android/gallery3d/app/MovieActivity;->startActivity(Landroid/content/Intent;)V

    .line 537
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    goto :goto_0

    .line 540
    :cond_1
    const v9, 0x7f10022d

    if-ne v5, v9, :cond_2

    .line 542
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->createShareIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/app/ShareManager;->setIntent(Landroid/content/Intent;)V

    .line 543
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/ShareManager;->show()V

    .line 544
    const/4 v9, 0x0

    goto :goto_1

    .line 545
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    const v10, 0x7f100246

    if-ne v9, v10, :cond_3

    .line 546
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-static {v10}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->formatUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v11}, Lcom/android/gallery3d/app/MoviePlayer;->getCurrentPosition()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onOptionItemSelected(Landroid/net/Uri;I)V

    .line 548
    const/4 v9, 0x1

    goto :goto_1

    .line 551
    :cond_3
    sget-boolean v9, Lcom/android/gallery3d/app/MovieActivity;->SUPPORT_DTS_EFFECT:Z

    if-eqz v9, :cond_5

    .line 552
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    const v10, 0x7f100266

    if-ne v9, v10, :cond_5

    .line 554
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    iput-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 555
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v9, :cond_4

    .line 556
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHeadsetOn:Z

    .line 558
    :cond_4
    const-string v9, "MovieActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIsHeadsetOn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHeadsetOn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-boolean v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHeadsetOn:Z

    if-eqz v9, :cond_7

    .line 560
    const-string v9, "MovieActivity"

    const-string v10, "mIsHeadsetOn = true"

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->ACTION_DTS_ACTIVITY:Ljava/lang/String;

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    .local v6, sendIntent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/android/gallery3d/app/MovieActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    .end local v6           #sendIntent:Landroid/content/Intent;
    :cond_5
    :goto_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 683
    :cond_6
    :goto_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 565
    :catch_0
    move-exception v4

    .line 566
    .local v4, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v4}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 569
    .end local v4           #e:Landroid/content/ActivityNotFoundException;
    :cond_7
    const-string v9, "MovieActivity"

    const-string v10, "mIsHeadsetOn = false"

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    if-eqz v9, :cond_5

    .line 572
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/DtsEffect;->getSettingsSystemDTSModeFieldValue()I

    move-result v3

    .line 573
    .local v3, dtsSettingValue:I
    if-nez v3, :cond_8

    .line 575
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/app/DtsEffect;->startDtsPreview(I)V

    .line 576
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/app/DtsEffect;->saveIntoSettingSystem(I)V

    .line 577
    const v9, 0x7f0d0491

    invoke-virtual {p0, v9}, Lcom/android/gallery3d/app/MovieActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/gallery3d/app/MovieActivity;->showTextToast(Ljava/lang/String;)V

    .line 578
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/DtsEffect;->notifyMenuChange()V

    goto :goto_2

    .line 581
    :cond_8
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/app/DtsEffect;->startDtsPreview(I)V

    .line 582
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/app/DtsEffect;->saveIntoSettingSystem(I)V

    .line 583
    const v9, 0x7f0d0492

    invoke-virtual {p0, v9}, Lcom/android/gallery3d/app/MovieActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/gallery3d/app/MovieActivity;->showTextToast(Ljava/lang/String;)V

    .line 584
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/DtsEffect;->notifyMenuChange()V

    goto :goto_2

    .line 595
    .end local v3           #dtsSettingValue:I
    :pswitch_0
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mMenuCmdHandler:Landroid/os/Handler;

    const/16 v10, 0x201

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 602
    :pswitch_1
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mStreamVideoView:Landroid/widget/VideoView;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/widget/VideoView;->mIsFullscreenMode:Z

    .line 603
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mStreamVideoView:Landroid/widget/VideoView;

    invoke-virtual {v9}, Landroid/widget/VideoView;->getVideoWidth()I

    move-result v8

    .line 604
    .local v8, streamWidth:I
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mStreamVideoView:Landroid/widget/VideoView;

    invoke-virtual {v9}, Landroid/widget/VideoView;->getVideoHeight()I

    move-result v7

    .line 605
    .local v7, streamHeight:I
    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    .line 606
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mStreamVideoView:Landroid/widget/VideoView;

    invoke-virtual {v9, v8, v7}, Landroid/widget/VideoView;->setVideoScale(II)V

    .line 609
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x400

    invoke-virtual {v9, v10}, Landroid/view/Window;->clearFlags(I)V

    .line 612
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->invalidateOptionsMenu()V

    goto/16 :goto_3

    .line 616
    .end local v7           #streamHeight:I
    .end local v8           #streamWidth:I
    :pswitch_2
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mStreamVideoView:Landroid/widget/VideoView;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/widget/VideoView;->mIsFullscreenMode:Z

    .line 617
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 618
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 619
    .local v0, ScreenHeight:I
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 620
    .local v1, ScreenWidth:I
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mStreamVideoView:Landroid/widget/VideoView;

    invoke-virtual {v9, v1, v0}, Landroid/widget/VideoView;->setVideoScale(II)V

    .line 622
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x400

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 625
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->invalidateOptionsMenu()V

    goto/16 :goto_3

    .line 628
    .end local v0           #ScreenHeight:I
    .end local v1           #ScreenWidth:I
    .end local v2           #display:Landroid/view/Display;
    :pswitch_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHandSet:Z

    .line 631
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v9, :cond_9

    .line 632
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setSpeakermediaOn(Z)V

    .line 637
    :cond_9
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->invalidateOptionsMenu()V

    goto/16 :goto_3

    .line 640
    :pswitch_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHandSet:Z

    .line 643
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v9, :cond_a

    .line 644
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setSpeakermediaOn(Z)V

    .line 649
    :cond_a
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->invalidateOptionsMenu()V

    goto/16 :goto_3

    .line 652
    :pswitch_5
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mMenuCmdHandler:Landroid/os/Handler;

    const/16 v10, 0x202

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 657
    :pswitch_6
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mMenuCmdHandler:Landroid/os/Handler;

    const/16 v10, 0x203

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 662
    :pswitch_7
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieActivity;->mMenuCmdHandler:Landroid/os/Handler;

    const/16 v10, 0x204

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 593
    :pswitch_data_0
    .packed-switch 0x7f100268
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 767
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsResumed:Z

    .line 768
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 769
    .local v1, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 770
    .local v2, cn:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, activityClassName:Ljava/lang/String;
    const-string v3, "com.android.deskclock.AlarmAlert"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer;->isLiveStream()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 772
    const-string v3, "MovieActivity"

    const-string v4, "LiveStream is should not be interrunpted in AlarmAlert"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_0
    return-void

    .line 777
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareManager:Lcom/android/gallery3d/app/ShareManager;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/ShareManager;->hideIfShowing()V

    .line 778
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer;->onPause()V

    .line 780
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 783
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f100267

    const v4, 0x7f10026c

    const v3, 0x7f10026b

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 890
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mSteamingVideo:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/gallery3d/app/MovieActivity;->mIsCmccCustom:Z

    if-eqz v0, :cond_5

    .line 892
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->isBrowserOfHuaweiExisted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    const v0, 0x7f10026f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 903
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mStreamVideoView:Landroid/widget/VideoView;

    iget-boolean v0, v0, Landroid/widget/VideoView;->mIsFullscreenMode:Z

    if-eqz v0, :cond_2

    .line 904
    const v0, 0x7f10026a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 905
    const v0, 0x7f100269

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 910
    :goto_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandSetPlug:Z

    if-eqz v0, :cond_4

    .line 911
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHandSet:Z

    if-eqz v0, :cond_3

    .line 912
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 913
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 927
    :cond_0
    :goto_2
    return v2

    .line 898
    :cond_1
    const v0, 0x7f10026f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 907
    :cond_2
    const v0, 0x7f10026a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 908
    const v0, 0x7f100269

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 915
    :cond_3
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 916
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 919
    :cond_4
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 920
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 923
    :cond_5
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 924
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 789
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsResumed:Z

    .line 794
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 798
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->formatUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onResume(Landroid/net/Uri;)V

    .line 799
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onResume()V

    .line 800
    sget-boolean v0, Lcom/android/gallery3d/app/MoviePlayer;->SUPPROT_SUBTITLE_CONFIG:Z

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->subtitleExists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    .line 807
    :cond_0
    sget-boolean v0, Lcom/android/gallery3d/app/MovieActivity;->SUPPORT_DTS_EFFECT:Z

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mDtsEffect:Lcom/android/gallery3d/app/DtsEffect;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/DtsEffect;->notifyMenuChange()V

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mProvider:Landroid/widget/ShareActionProvider;

    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->createShareIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 817
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 820
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 821
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHandSet:Z

    if-nez v0, :cond_3

    .line 822
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsHandSet:Z

    .line 823
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandSetPlug:Z

    .line 828
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->invalidateOptionsMenu()V

    .line 831
    return-void

    .line 826
    :cond_4
    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mHandSetPlug:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 835
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 836
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 837
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 724
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 728
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 729
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 751
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 753
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->resetAudioRoute()V

    .line 755
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 756
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 760
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->getManager()Lcom/huawei/gallery3d/multiscreen/MultiScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->onUserLeaveHint(I)V

    .line 761
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 762
    return-void
.end method
