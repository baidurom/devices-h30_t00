.class public Lcom/android/gallery3d/ui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/android/gallery3d/ui/GLRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/GLRootView$IdleRunner;
    }
.end annotation


# static fields
.field private static final DEBUG_DRAWING_STAT:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_FPS_INTERVAL:J = 0xbebc200L

.field private static final DEBUG_FPS_MORE:Z = false

.field private static final DEBUG_FPS_RESET_LIMIT:J = 0x17d78400L

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DEBUG_PROFILE:Z = false

.field private static final DEBUG_PROFILE_SLOW_ONLY:Z = false

.field private static final FLAG_INITIALIZED:I = 0x1

.field private static final FLAG_NEED_LAYOUT:I = 0x2

.field private static final MILLSECOND_IN_NS:J = 0xf4240L

.field private static final SECOND_IN_NS:J = 0x3b9aca00L

.field private static final TAG:Ljava/lang/String; = "GLRootView"


# instance fields
.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/anim/CanvasAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field private mCompensation:I

.field private mCompensationMatrix:Landroid/graphics/Matrix;

.field private mContentView:Lcom/android/gallery3d/ui/GLView;

.field private mDisplayRotation:I

.field private final mEglConfigChooser:Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

.field private mFirstDraw:Z

.field private mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mFrameTotalCount:J

.field private mFrameTotalDuration:J

.field private mFreeze:Z

.field private final mFreezeCondition:Ljava/util/concurrent/locks/Condition;

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mIdleListeners:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

.field private mInDownState:Z

.field private mInvalidateColor:I

.field private mLastDrawFinishTime:J

.field private volatile mNeedGLIDFirst:Z

.field private mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z

.field private mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-wide v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameTotalCount:J

    .line 72
    iput-wide v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameTotalDuration:J

    .line 75
    iput v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCount:I

    .line 76
    iput-wide v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    .line 77
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mNeedGLIDFirst:Z

    .line 80
    iput v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mInvalidateColor:I

    .line 100
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 104
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 106
    new-instance v0, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mEglConfigChooser:Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    .line 115
    new-instance v0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    invoke-direct {v0, p0, v4}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;-><init>(Lcom/android/gallery3d/ui/GLRootView;Lcom/android/gallery3d/ui/GLRootView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    .line 117
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    .line 123
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFirstDraw:Z

    .line 212
    new-instance v0, Lcom/android/gallery3d/ui/GLRootView$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/GLRootView$1;-><init>(Lcom/android/gallery3d/ui/GLRootView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    .line 132
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 133
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/ui/GLRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mEglConfigChooser:Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 135
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/ui/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 136
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/GLRootView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->superRequestRender()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/GLRootView;)Lcom/android/gallery3d/ui/GLCanvas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/GLRootView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/ui/GLRootView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/GLRootView;->mNeedGLIDFirst:Z

    return p1
.end method

.method private layoutContentPane()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 241
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 243
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getWidth()I

    move-result v4

    .line 244
    .local v4, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHeight()I

    move-result v2

    .line 245
    .local v2, h:I
    const/4 v1, 0x0

    .line 246
    .local v1, displayRotation:I
    const/4 v0, 0x0

    .line 249
    .local v0, compensation:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    if-eqz v5, :cond_3

    .line 250
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/OrientationSource;->getDisplayRotation()I

    move-result v1

    .line 251
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/OrientationSource;->getCompensation()I

    move-result v0

    .line 257
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    if-eq v5, v0, :cond_0

    .line 258
    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    .line 259
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_4

    .line 260
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 262
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    neg-int v6, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    neg-int v7, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 264
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 269
    :cond_0
    :goto_1
    iput v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mDisplayRotation:I

    .line 272
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_1

    .line 273
    move v3, v4

    .line 274
    .local v3, tmp:I
    move v4, v2

    .line 275
    move v2, v3

    .line 277
    .end local v3           #tmp:I
    :cond_1
    const-string v5, "GLRootView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "layout content pane "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (compensation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 280
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v5, v9, v9, v4, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 284
    :cond_2
    return-void

    .line 253
    :cond_3
    const/4 v1, 0x0

    .line 254
    const/4 v0, 0x0

    goto :goto_0

    .line 266
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_1
.end method

.method private onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    .line 429
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLCanvas;->deleteRecycledResources()V

    .line 432
    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->resetUploadLimit()V

    .line 434
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 436
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mDisplayRotation:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    invoke-interface {v5}, Lcom/android/gallery3d/ui/OrientationSource;->getDisplayRotation()I

    move-result v5

    if-ne v4, v5, :cond_1

    :cond_0
    iget v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 439
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->layoutContentPane()V

    .line 442
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 443
    iget v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    neg-int v4, v4

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/GLRootView;->rotateCanvas(I)V

    .line 444
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v4, :cond_3

    .line 445
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 447
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 449
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 450
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    .line 451
    .local v2, now:J
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 452
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v4, v2, v3}, Lcom/android/gallery3d/anim/CanvasAnimation;->setStartTime(J)V

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 457
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #now:J
    :cond_5
    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadLimitReached()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 458
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 461
    :cond_6
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v5

    .line 462
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 463
    :cond_7
    monitor-exit v5

    .line 473
    return-void

    .line 463
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private outputFps()V
    .locals 11

    .prologue
    .line 342
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 343
    .local v5, now:J
    iget-wide v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 345
    iput-wide v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    .line 369
    :cond_0
    :goto_0
    iget v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCount:I

    .line 370
    iget-wide v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameTotalCount:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameTotalCount:J

    .line 371
    return-void

    .line 346
    :cond_1
    iget-wide v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    sub-long v7, v5, v7

    const-wide/32 v9, 0x17d78400

    cmp-long v7, v7, v9

    if-ltz v7, :cond_2

    .line 348
    const-string v7, "GLRootView"

    const-string v8, "Reset, start to count fps"

    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iput-wide v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    .line 350
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCount:I

    .line 351
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameTotalDuration:J

    .line 352
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameTotalCount:J

    goto :goto_0

    .line 353
    :cond_2
    iget-wide v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    sub-long v7, v5, v7

    const-wide/32 v9, 0xbebc200

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 355
    iget-wide v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameTotalDuration:J

    iget-wide v9, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    sub-long v9, v5, v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameTotalDuration:J

    .line 356
    iget v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCount:I

    int-to-double v7, v7

    const-wide v9, 0x41cdcd6500000000L

    mul-double/2addr v7, v9

    iget-wide v9, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    sub-long v9, v5, v9

    long-to-double v9, v9

    div-double v2, v7, v9

    .line 357
    .local v2, fps:D
    iget-wide v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameTotalCount:J

    long-to-double v7, v7

    const-wide v9, 0x41cdcd6500000000L

    mul-double/2addr v7, v9

    iget-wide v9, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameTotalDuration:J

    long-to-double v9, v9

    div-double v0, v7, v9

    .line 358
    .local v0, averageFps:D
    const-string v7, "Now the fps is %f, average fps is %f"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, message:Ljava/lang/String;
    const-string v7, "GLRootView"

    invoke-static {v7, v4}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 366
    iput-wide v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    .line 367
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCount:I

    goto/16 :goto_0
.end method

.method private rotateCanvas(I)V
    .locals 8
    .parameter "degrees"

    .prologue
    const/4 v7, 0x0

    .line 476
    if-nez p1, :cond_0

    .line 488
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getWidth()I

    move-result v3

    .line 478
    .local v3, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHeight()I

    move-result v2

    .line 479
    .local v2, h:I
    div-int/lit8 v0, v3, 0x2

    .line 480
    .local v0, cx:I
    div-int/lit8 v1, v2, 0x2

    .line 481
    .local v1, cy:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-interface {v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 482
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    int-to-float v5, p1

    const/high16 v6, 0x3f80

    invoke-interface {v4, v5, v7, v7, v6}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 483
    rem-int/lit16 v4, p1, 0xb4

    if-eqz v4, :cond_1

    .line 484
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    neg-int v5, v1

    int-to-float v5, v5

    neg-int v6, v0

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 486
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    neg-int v5, v0

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    goto :goto_0
.end method

.method private superRequestRender()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 221
    return-void
.end method


# virtual methods
.method public addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 158
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;->stopFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mNeedGLIDFirst:Z

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 516
    :goto_0
    return v1

    .line 494
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 495
    .local v0, action:I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_6

    .line 497
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 502
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    if-eqz v3, :cond_3

    .line 503
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v3}, Lcom/android/gallery3d/util/MotionEventHelper;->transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 506
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 509
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 511
    .local v1, handled:Z
    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 512
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 498
    .end local v1           #handled:Z
    :cond_6
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 516
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 671
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    .line 675
    return-void

    .line 673
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    throw v0
.end method

.method public freeze()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreeze:Z

    .line 603
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 604
    return-void
.end method

.method public getCompensation()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensation:I

    return v0
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mDisplayRotation:I

    return v0
.end method

.method public lockRenderThread()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 560
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 665
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 666
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 376
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->update()V

    .line 382
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 384
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreeze:Z

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 389
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 397
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFirstDraw:Z

    if-eqz v0, :cond_1

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFirstDraw:Z

    .line 399
    new-instance v0, Lcom/android/gallery3d/ui/GLRootView$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/GLRootView$2;-><init>(Lcom/android/gallery3d/ui/GLRootView;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->post(Ljava/lang/Runnable;)Z

    .line 423
    :cond_1
    return-void

    .line 391
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 289
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestLayoutContentPane()V

    .line 290
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 570
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 577
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "gl1"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 326
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gl10: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 329
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->setRenderThread()V

    move-object v0, p1

    .line 334
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 335
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 337
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1, p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 338
    return-void

    .line 335
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .parameter "gl1"
    .parameter "config"

    .prologue
    .line 298
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 299
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_0

    .line 301
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLObject has changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 305
    :try_start_0
    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 306
    new-instance v1, Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/GLCanvasImpl;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 307
    invoke-static {}, Lcom/android/gallery3d/ui/BasicTexture;->invalidateAllTextures()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 315
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLRootView;->setRenderMode(I)V

    .line 317
    return-void

    .line 309
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public registerLaunchedAnimation(Lcom/android/gallery3d/anim/CanvasAnimation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public requestFullScreenLayout()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 633
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_SYSTEM_UI_VISIBILITY:Z

    if-nez v1, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-eqz v1, :cond_0

    .line 635
    const/16 v0, 0x500

    .line 636
    .local v0, flags:I
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public requestLayoutContentPane()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 238
    :goto_0
    return-void

    .line 231
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 233
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 234
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mNeedGLIDFirst:Z

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 205
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public requestRenderForced()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->superRequestRender()V

    .line 193
    return-void
.end method

.method public setContentPane(Lcom/android/gallery3d/ui/GLView;)V
    .locals 9
    .parameter "content"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 170
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-ne v2, p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v2, :cond_3

    .line 172
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    if-eqz v2, :cond_2

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 174
    .local v0, now:J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 176
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2, v8}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 177
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 178
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 180
    .end local v0           #now:J
    .end local v8           #cancelEvent:Landroid/view/MotionEvent;
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->detachFromRoot()V

    .line 181
    invoke-static {}, Lcom/android/gallery3d/ui/BasicTexture;->yieldAllTextures()V

    .line 183
    :cond_3
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    .line 184
    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/GLView;->attachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public setLightsOutMode(Z)V
    .locals 2
    .parameter "enabled"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 617
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_SET_SYSTEM_UI_VISIBILITY:Z

    if-nez v1, :cond_0

    .line 629
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getSystemUiVisibility()I

    move-result v0

    .line 620
    .local v0, flags:I
    if-eqz p1, :cond_2

    .line 621
    or-int/lit8 v0, v0, 0x1

    .line 622
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-eqz v1, :cond_1

    .line 623
    or-int/lit16 v0, v0, 0x104

    .line 628
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 626
    :cond_2
    and-int/lit8 v0, v0, -0x6

    goto :goto_1
.end method

.method public setOrientationSource(Lcom/android/gallery3d/ui/OrientationSource;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView;->mOrientationSource:Lcom/android/gallery3d/ui/OrientationSource;

    .line 582
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 647
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 648
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 653
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 654
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->unfreeze()V

    .line 659
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 660
    return-void
.end method

.method public unfreeze()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreeze:Z

    .line 610
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 611
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 612
    return-void
.end method

.method public unlockRenderThread()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 565
    return-void
.end method
