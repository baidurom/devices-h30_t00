.class public Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;
.super Ljava/lang/Object;
.source "PreparePageFadeoutTexture.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# static fields
.field public static final KEY_ANIM_TEXTURE:Ljava/lang/String; = "anim_texture"

.field public static final KEY_FADE_TEXTURE:Ljava/lang/String; = "fade_texture"

.field public static final KEY_START_POS:Ljava/lang/String; = "start_pos"

.field private static final TIMEOUT:J = 0xc8L


# instance fields
.field public mAnimRect:Landroid/graphics/Rect;

.field private mCancelled:Z

.field private mResultReady:Landroid/os/ConditionVariable;

.field private mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mTexture:Lcom/android/gallery3d/ui/RawTexture;

.field private mTextureAnim:Lcom/android/gallery3d/ui/RawTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLView;)V
    .locals 6
    .parameter "rootPane"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2, v3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    .line 25
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    .line 30
    if-nez p1, :cond_0

    .line 31
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    .line 49
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v1

    .line 36
    .local v1, w:I
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v0

    .line 37
    .local v0, h:I
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 38
    :cond_1
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    goto :goto_0

    .line 41
    :cond_2
    new-instance v2, Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {v2, v1, v0, v5}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 44
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLView;->getAnimRect()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mAnimRect:Landroid/graphics/Rect;

    .line 45
    sget-boolean v2, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_HW_ANIMATION:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mAnimRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    .line 46
    new-instance v2, Lcom/android/gallery3d/ui/RawTexture;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mAnimRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mAnimRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4, v5}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTextureAnim:Lcom/android/gallery3d/ui/RawTexture;

    .line 48
    :cond_3
    iput-object p1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    goto :goto_0
.end method

.method public static prepareFadeOutTexture(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/GLView;)V
    .locals 7
    .parameter "activity"
    .parameter "rootPane"

    .prologue
    .line 109
    new-instance v1, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;-><init>(Lcom/android/gallery3d/ui/GLView;)V

    .line 110
    .local v1, task:Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 113
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    const/4 v2, 0x0

    .local v2, texture:Lcom/android/gallery3d/ui/RawTexture;
    const/4 v3, 0x0

    .line 114
    .local v3, textureAnim:Lcom/android/gallery3d/ui/RawTexture;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 116
    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 117
    const-string v4, "fade_texture"

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->get(Ljava/lang/String;)Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v2

    .line 118
    const-string v4, "anim_texture"

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->get(Ljava/lang/String;)Lcom/android/gallery3d/ui/RawTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 120
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 123
    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v4

    const-string v5, "fade_texture"

    invoke-virtual {v4, v5, v2}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    :cond_2
    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v4

    const-string v5, "anim_texture"

    invoke-virtual {v4, v5, v3}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;

    move-result-object v4

    const-string v5, "start_pos"

    iget-object v6, v1, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mAnimRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    throw v4
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/gallery3d/ui/RawTexture;
    .locals 4
    .parameter "textureType"

    .prologue
    const/4 v0, 0x0

    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 67
    :goto_0
    monitor-exit p0

    return-object v0

    .line 59
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    const-string v0, "fade_texture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTextureAnim:Lcom/android/gallery3d/ui/RawTexture;

    goto :goto_0

    .line 66
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    return v0
.end method

.method public onGLIdle(Lcom/android/gallery3d/ui/GLCanvas;Z)Z
    .locals 4
    .parameter "canvas"
    .parameter "renderRequested"

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    if-nez v1, :cond_2

    .line 76
    :try_start_0
    sget-boolean v1, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_HW_ANIMATION:Z

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    const-string v2, "fade_texture"

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLView;->setTransitionForRender(Ljava/lang/String;)V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 80
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 81
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V

    .line 83
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTextureAnim:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    const-string v2, "anim_texture"

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLView;->setTransitionForRender(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTextureAnim:Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 86
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 87
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/GLView;->setTransitionForRender(Ljava/lang/String;)V

    .line 98
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 99
    const/4 v1, 0x0

    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/RuntimeException;
    iput-object v3, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 91
    iput-object v3, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTextureAnim:Lcom/android/gallery3d/ui/RawTexture;

    goto :goto_0

    .line 96
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_2
    iput-object v3, p0, Lcom/android/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcom/android/gallery3d/ui/RawTexture;

    goto :goto_1
.end method

.method public stopFrame()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method
