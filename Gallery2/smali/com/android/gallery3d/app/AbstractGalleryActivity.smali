.class public Lcom/android/gallery3d/app/AbstractGalleryActivity;
.super Landroid/app/Activity;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AbstractGalleryActivity$PrivacyModeChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractGalleryActivity"


# instance fields
.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDisableToggleStatusBar:Z

.field private mFreeShareAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

.field private mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

.field private mInPrivacyMode:Z

.field private mIsActive:Z

.field private mMountFilter:Landroid/content/IntentFilter;

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field private mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

.field private mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

.field private mPrivacyModeChangeFilter:Landroid/content/IntentFilter;

.field private mPrivacyModeChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/app/AbstractGalleryActivity$PrivacyModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivacyModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mStateManager:Lcom/android/gallery3d/app/StateManager;

.field private mSystemMuteReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemMutefilter:Landroid/content/IntentFilter;

.field private mTransitionStore:Lcom/android/gallery3d/app/TransitionStore;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Lcom/android/gallery3d/app/TransitionStore;

    invoke-direct {v0}, Lcom/android/gallery3d/app/TransitionStore;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mTransitionStore:Lcom/android/gallery3d/app/TransitionStore;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPrivacyModeChangeListeners:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 74
    new-instance v0, Lcom/android/gallery3d/app/AbstractGalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$1;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSystemMutefilter:Landroid/content/IntentFilter;

    .line 85
    new-instance v0, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSystemMuteReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Lcom/android/gallery3d/app/AbstractGalleryActivity$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$3;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPrivacyModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.actions.PRIVACY_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPrivacyModeChangeFilter:Landroid/content/IntentFilter;

    .line 106
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mInPrivacyMode:Z

    .line 299
    iput-boolean v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsActive:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/AbstractGalleryActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setPrivacyMode(Z)V

    return-void
.end method

.method private static clearBitmapPool(Lcom/android/gallery3d/data/BitmapPool;)V
    .locals 0
    .parameter "pool"

    .prologue
    .line 341
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/BitmapPool;->clear()V

    .line 342
    :cond_0
    return-void
.end method

.method private static setAlertDialogIconAttribute(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .parameter "builder"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 272
    const v0, 0x1010355

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 273
    return-void
.end method

.method private setPrivacyMode(Z)V
    .locals 3
    .parameter "privacyMode"

    .prologue
    .line 112
    invoke-static {p1}, Lcom/android/gallery3d/util/GalleryUtils;->setPrivacyMode(Z)V

    .line 113
    sget-boolean v2, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mInPrivacyMode:Z

    if-ne v2, p1, :cond_1

    .line 120
    :cond_0
    return-void

    .line 115
    :cond_1
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mInPrivacyMode:Z

    .line 117
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPrivacyModeChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/AbstractGalleryActivity$PrivacyModeChangeListener;

    .line 118
    .local v1, listener:Lcom/android/gallery3d/app/AbstractGalleryActivity$PrivacyModeChangeListener;
    invoke-interface {v1, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity$PrivacyModeChangeListener;->onPrivacyModeChange(Z)V

    goto :goto_0
.end method

.method private toggleStatusBarByOrientation()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 423
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mDisableToggleStatusBar:Z

    if-eqz v1, :cond_0

    .line 431
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 426
    .local v0, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 427
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public addPrivacyModeChangeListener(Lcom/android/gallery3d/app/AbstractGalleryActivity$PrivacyModeChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 123
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPrivacyModeChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPrivacyModeChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected disableToggleStatusBar()V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mDisableToggleStatusBar:Z

    .line 419
    return-void
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 180
    return-object p0
.end method

.method public getDataManager()Lcom/android/gallery3d/data/DataManager;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFreeShare()Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;
    .locals 1

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mFreeShareAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->getInstance(Landroid/content/Context;)Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mFreeShareAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mFreeShareAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGLRoot()Lcom/android/gallery3d/ui/GLRoot;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method public getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/GalleryActionBar;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method public getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    return-object v0
.end method

.method public getPanoramaViewHelper()Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    return-object v0
.end method

.method public declared-synchronized getStateManager()Lcom/android/gallery3d/app/StateManager;
    .locals 1

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/android/gallery3d/app/StateManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/StateManager;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getTabsBar(I)Lcom/android/gallery3d/ui/AlbumSetTabsBar;
    .locals 1
    .parameter "action"

    .prologue
    .line 456
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadPool()Lcom/android/gallery3d/util/ThreadPool;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mTransitionStore:Lcom/android/gallery3d/app/TransitionStore;

    return-object v0
.end method

.method public isActivityActive()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsActive:Z

    return v0
.end method

.method protected isFullscreen()Z
    .locals 1

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrivacyMode()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mInPrivacyMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 367
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/app/StateManager;->notifyActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 372
    return-void

    .line 370
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 378
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 380
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 384
    return-void

    .line 382
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->onConfigurationChange(Landroid/content/res/Configuration;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    .line 169
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->toggleStatusBarByOrientation()V

    .line 170
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 139
    const v0, 0x7f0e0068

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setTheme(I)V

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    new-instance v0, Lcom/android/gallery3d/app/OrientationManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/OrientationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    .line 142
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->toggleStatusBarByOrientation()V

    .line 143
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    new-instance v0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->onCreate()V

    .line 146
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/ContactManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ContactManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ContactManage;->registerContactChange()V

    .line 147
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->isPrivacyMode(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setPrivacyMode(Z)V

    .line 148
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 175
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 346
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 348
    monitor-enter p0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mFreeShareAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mFreeShareAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    invoke-virtual {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;->destroy()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mFreeShareAdapter:Lcom/huawei/gallery3d/freeshare/FreeShareAdapter;

    .line 353
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 357
    :try_start_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 359
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 361
    return-void

    .line 353
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 359
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/StateManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 408
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 396
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 398
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/StateManager;->itemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 400
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 414
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsActive:Z

    .line 325
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->pause()V

    .line 326
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->onPause()V

    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 329
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->pause()V

    .line 330
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 334
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->clearBitmapPool(Lcom/android/gallery3d/data/BitmapPool;)V

    .line 335
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->clearBitmapPool(Lcom/android/gallery3d/data/BitmapPool;)V

    .line 337
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/BytesBufferPool;->clear()V

    .line 338
    return-void

    .line 332
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mIsActive:Z

    .line 309
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 311
    :try_start_0
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->isPrivacyMode(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setPrivacyMode(Z)V

    .line 312
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->resume()V

    .line 313
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->onResume()V

    .line 318
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->resume()V

    .line 319
    return-void

    .line 315
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 154
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->saveState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 159
    return-void

    .line 157
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const v4, 0x7f0d035c

    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 231
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->ensureExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    instance-of v3, p0, Lcom/android/hwcamera/CameraActivity;

    if-nez v3, :cond_0

    .line 233
    new-instance v1, Lcom/android/gallery3d/app/AbstractGalleryActivity$4;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$4;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 239
    .local v1, onCancel:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v2, Lcom/android/gallery3d/app/AbstractGalleryActivity$5;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$5;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 245
    .local v2, onClick:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 250
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_ICON_ATTRIBUTE:Z

    if-eqz v3, :cond_2

    .line 251
    invoke-static {v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->setAlertDialogIconAttribute(Landroid/app/AlertDialog$Builder;)V

    .line 255
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 256
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #onCancel:Landroid/content/DialogInterface$OnCancelListener;
    .end local v2           #onClick:Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    invoke-virtual {v3}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->onStart()V

    .line 259
    sget-boolean v3, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    if-eqz v3, :cond_1

    .line 260
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPrivacyModeChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPrivacyModeChangeFilter:Landroid/content/IntentFilter;

    const-string v5, "com.huawei.privacymode.permission.SEND_MODE_CHANGED"

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 264
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSystemMuteReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSystemMutefilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    return-void

    .line 253
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v1       #onCancel:Landroid/content/DialogInterface$OnCancelListener;
    .restart local v2       #onClick:Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPanoramaViewHelper:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;->onStop()V

    .line 284
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPrivacyModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mSystemMuteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 290
    return-void
.end method

.method protected onStorageReady()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {v0, p0}, Lcom/android/gallery3d/util/GalleryUtils;->dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->userLeaveHint()V

    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 296
    return-void
.end method

.method public removePrivacyModeChangeListener(Lcom/android/gallery3d/app/AbstractGalleryActivity$PrivacyModeChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPrivacyModeChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPrivacyModeChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 215
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    .line 216
    return-void
.end method

.method protected updateSystemMute(Z)V
    .locals 1
    .parameter "isSystemMute"

    .prologue
    .line 461
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSoundPlayer()Lcom/android/gallery3d/app/SoundClips$Player;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/SoundClips$Player;->setMute(Z)V

    .line 462
    return-void
.end method
