.class public abstract Lcom/android/gallery3d/app/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIONBAR_BG_ID:I = 0x7f020001

.field protected static final FLAG_ALLOW_LOCK_WHILE_SCREEN_ON:I = 0x10

.field protected static final FLAG_HIDE_ACTION_BAR:I = 0x1

.field protected static final FLAG_HIDE_STATUS_BAR:I = 0x2

.field protected static final FLAG_SCREEN_ON_ALWAYS:I = 0x8

.field protected static final FLAG_SCREEN_ON_WHEN_PLUGGED:I = 0x4

.field protected static final FLAG_SHOW_WHEN_LOCKED:I = 0x20

.field private static final KEY_TRANSITION_IN:Ljava/lang/String; = "transition-in"


# instance fields
.field protected mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field protected mBackgroundColor:[F

.field private mContentPane:Lcom/android/gallery3d/ui/GLView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field protected mCustomActionBarBg:Z

.field protected mData:Landroid/os/Bundle;

.field private mDestroyed:Z

.field protected mFlags:I

.field protected mHapticsEnabled:Z

.field private mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

.field mIsFinishing:Z

.field private mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

.field private mPlugged:Z

.field mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

.field protected mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ActivityState;->mIsFinishing:Z

    .line 77
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 82
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ActivityState;->mCustomActionBarBg:Z

    .line 145
    new-instance v0, Lcom/android/gallery3d/app/ActivityState$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/ActivityState$1;-><init>(Lcom/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/ActivityState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/ActivityState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/ActivityState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;->setScreenFlags()V

    return-void
.end method

.method private setScreenFlags()V
    .locals 4

    .prologue
    .line 161
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 162
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 163
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/ActivityState;->mPlugged:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 165
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 169
    :goto_0
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    .line 170
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 174
    :goto_1
    iget v2, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3

    .line 175
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x8

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 179
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 180
    return-void

    .line 167
    :cond_1
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 172
    :cond_2
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 177
    :cond_3
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2
.end method


# virtual methods
.method protected clearStateResult()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method protected getBackgroundColor()[F
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mBackgroundColor:[F

    return-object v0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f0a001e

    return v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getSupportMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method initialize(Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Bundle;)V
    .locals 1
    .parameter "activity"
    .parameter "data"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 100
    iput-object p2, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    .line 101
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mContentResolver:Landroid/content/ContentResolver;

    .line 102
    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mIsFinishing:Z

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 110
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "storedState"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getBackgroundColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mBackgroundColor:[F

    .line 140
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ActivityState;->mDestroyed:Z

    .line 319
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method protected onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 314
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 203
    iget v0, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    sget-object v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    if-eq v0, v1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v0

    const-string v1, "transition-in"

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->prepareFadeOutTexture(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;)V

    .line 211
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 213
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v0

    .line 290
    .local v0, store:Lcom/android/gallery3d/app/TransitionStore;
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v1

    const-string v2, "transition-in"

    sget-object v3, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 292
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    sget-object v2, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    if-eq v1, v2, :cond_0

    .line 293
    new-instance v1, Lcom/android/gallery3d/anim/StateTransitionAnimation;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-direct {v1, v2, v0}, Lcom/android/gallery3d/anim/StateTransitionAnimation;-><init>(Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;Lcom/android/gallery3d/app/TransitionStore;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    .line 294
    sget-object v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 296
    :cond_0
    return-void
.end method

.method protected onResume(Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 283
    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 122
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 125
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "ActivityState onUserLeaveHint called!"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method resume()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/ActivityState;->resume(Landroid/os/Bundle;)V

    .line 222
    return-void
.end method

.method resume(Landroid/os/Bundle;)V
    .locals 12
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 226
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 227
    .local v1, activity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 228
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 229
    iget v7, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 230
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 234
    :goto_0
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v6

    .line 235
    .local v6, stateCount:I
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v10

    if-le v6, v8, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7, v8}, Lcom/android/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 237
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 238
    iget-boolean v7, p0, Lcom/android/gallery3d/app/ActivityState;->mCustomActionBarBg:Z

    if-nez v7, :cond_0

    .line 239
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v7

    const v10, 0x7f020001

    invoke-virtual {v7, v10}, Lcom/android/gallery3d/app/GalleryActionBar;->setBackgroundDrawable(I)V

    .line 242
    .end local v6           #stateCount:I
    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    .line 244
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;->setScreenFlags()V

    .line 246
    iget v7, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    move v5, v8

    .line 247
    .local v5, lightsOut:Z
    :goto_2
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 249
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 250
    .local v3, entry:Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    if-eqz v3, :cond_1

    .line 251
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 252
    iget v7, v3, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->requestCode:I

    iget v10, v3, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v11, v3, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p0, v7, v10, v11}, Lcom/android/gallery3d/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 255
    :cond_1
    iget v7, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_2

    .line 257
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 258
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mPowerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    .end local v4           #filter:Landroid/content/IntentFilter;
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "haptic_feedback_enabled"

    invoke-static {v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    iput-boolean v8, p0, Lcom/android/gallery3d/app/ActivityState;->mHapticsEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/ActivityState;->onResume(Landroid/os/Bundle;)V

    .line 272
    iget-object v7, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/app/TransitionStore;->clear()V

    .line 273
    return-void

    .line 232
    .end local v3           #entry:Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    .end local v5           #lightsOut:Z
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .restart local v6       #stateCount:I
    :cond_4
    move v7, v9

    .line 235
    goto :goto_1

    .end local v6           #stateCount:I
    :cond_5
    move v5, v9

    .line 246
    goto :goto_2

    .restart local v3       #entry:Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    .restart local v5       #lightsOut:Z
    :cond_6
    move v8, v9

    .line 263
    goto :goto_3

    .line 265
    :catch_0
    move-exception v2

    .line 266
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v9, p0, Lcom/android/gallery3d/app/ActivityState;->mHapticsEnabled:Z

    goto :goto_4
.end method

.method protected setContentPane(Lcom/android/gallery3d/ui/GLView;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->setIntroAnimation(Lcom/android/gallery3d/anim/StateTransitionAnimation;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mIntroAnimation:Lcom/android/gallery3d/anim/StateTransitionAnimation;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->getBackgroundColor()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->setBackgroundColor([F)V

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mContentPane:Lcom/android/gallery3d/ui/GLView;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 96
    return-void
.end method

.method protected setStateResult(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput p1, v0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput-object p2, v0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected transitionOnNextPause(Ljava/lang/Class;Ljava/lang/Class;Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;)V
    .locals 1
    .parameter
    .parameter
    .parameter "hint"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/gallery3d/app/ActivityState;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/gallery3d/app/ActivityState;",
            ">;",
            "Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, outgoing:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/gallery3d/app/ActivityState;>;"
    .local p2, incoming:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/gallery3d/app/ActivityState;>;"
    const-class v0, Lcom/android/gallery3d/app/PhotoPage;

    if-ne p1, v0, :cond_1

    const-class v0, Lcom/android/gallery3d/app/AlbumPage;

    if-ne p2, v0, :cond_1

    .line 186
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_HW_ANIMATION:Z

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    .line 200
    :goto_0
    return-void

    .line 189
    :cond_0
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 191
    :cond_1
    const-class v0, Lcom/android/gallery3d/app/AlbumPage;

    if-ne p1, v0, :cond_2

    const-class v0, Lcom/android/gallery3d/app/PhotoPage;

    if-ne p2, v0, :cond_2

    .line 192
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 194
    :cond_2
    const-class v0, Lcom/android/gallery3d/app/AlbumPage;

    if-ne p1, v0, :cond_3

    const-class v0, Lcom/android/gallery3d/app/AlbumSetPage;

    if-ne p2, v0, :cond_3

    .line 195
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 198
    :cond_3
    iput-object p3, p0, Lcom/android/gallery3d/app/ActivityState;->mNextTransition:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    goto :goto_0
.end method
