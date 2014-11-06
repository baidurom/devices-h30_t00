.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# static fields
.field static final DEBUG_HWANIMATION:Z = false

.field static DEBUG_STATE:Z = false

.field static DEBUG_TRANSFORMS:Z = false

.field static final FREEZE_LAYER:I = 0x1e8480

.field static final TAG:Ljava/lang/String; = "ScreenRotationAnimation"

.field static TWO_PHASE_ANIMATION:Z

.field static USE_CUSTOM_BLACK_FRAME:Z


# instance fields
.field mAnimRunning:Z

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mDisplay:Landroid/view/Display;

.field mEnterAnimId:I

.field final mEnterTransformation:Landroid/view/animation/Transformation;

.field mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mExitAnimId:I

.field final mExitFrameFinalMatrix:Landroid/graphics/Matrix;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mFinishAnimReady:Z

.field mFinishAnimStartTime:J

.field mFinishEnterAnimation:Landroid/view/animation/Animation;

.field final mFinishEnterTransformation:Landroid/view/animation/Transformation;

.field mFinishExitAnimation:Landroid/view/animation/Animation;

.field final mFinishExitTransformation:Landroid/view/animation/Transformation;

.field mFinishFrameAnimation:Landroid/view/animation/Animation;

.field final mFinishFrameTransformation:Landroid/view/animation/Transformation;

.field final mFrameInitialMatrix:Landroid/graphics/Matrix;

.field final mFrameTransformation:Landroid/view/animation/Transformation;

.field mHalfwayPoint:J

.field mHeight:I

.field mLastRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mLastRotateExitAnimation:Landroid/view/animation/Animation;

.field final mLastRotateExitTransformation:Landroid/view/animation/Transformation;

.field mLastRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

.field private mMoreFinishEnter:Z

.field private mMoreFinishExit:Z

.field private mMoreFinishFrame:Z

.field private mMoreRotateEnter:Z

.field private mMoreRotateExit:Z

.field private mMoreRotateFrame:Z

.field private mMoreStartEnter:Z

.field private mMoreStartExit:Z

.field private mMoreStartFrame:Z

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field mRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mRotateExitAnimation:Landroid/view/animation/Animation;

.field final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field mRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mRotateFrameTransformation:Landroid/view/animation/Transformation;

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mStartEnterAnimation:Landroid/view/animation/Animation;

.field final mStartEnterTransformation:Landroid/view/animation/Transformation;

.field mStartExitAnimation:Landroid/view/animation/Animation;

.field final mStartExitTransformation:Landroid/view/animation/Transformation;

.field mStartFrameAnimation:Landroid/view/animation/Animation;

.field final mStartFrameTransformation:Landroid/view/animation/Transformation;

.field mStarted:Z

.field mSurface:Landroid/view/Surface;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    .line 43
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    .line 47
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    .line 48
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/SurfaceSession;ZIIIII)V
    .locals 9
    .parameter "context"
    .parameter "display"
    .parameter "session"
    .parameter "inTransaction"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "originalRotation"
    .parameter "exitAnim"
    .parameter "enterAnim"

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    .line 76
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    .line 78
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    .line 85
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    .line 87
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    .line 89
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    .line 95
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 97
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 99
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 104
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 106
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 108
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 111
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    .line 112
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    .line 113
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    .line 120
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    .line 121
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 122
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    .line 123
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    .line 124
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 125
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 202
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 203
    iput-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplay:Landroid/view/Display;

    .line 204
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimId:I

    .line 205
    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimId:I

    .line 208
    const/4 v1, 0x1

    move/from16 v0, p7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    move/from16 v0, p7

    if-ne v0, v1, :cond_4

    .line 210
    :cond_0
    iput p6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 211
    iput p5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 217
    :goto_0
    move/from16 v0, p7

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 218
    iput p5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 219
    iput p6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 221
    if-nez p4, :cond_2

    .line 222
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_1

    const-string v1, "WindowManager"

    const-string v2, ">>> OPEN TRANSACTION ScreenRotationAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 229
    :cond_2
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v1, :cond_5

    .line 230
    new-instance v1, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    const-string v3, "FreezeSurface"

    iget v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    const/4 v6, -0x1

    const v7, 0x30004

    move-object v2, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    .line 238
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_6

    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    if-nez p4, :cond_3

    .line 259
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 260
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_3

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION ScreenRotationAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_3
    :goto_2
    return-void

    .line 213
    :cond_4
    iput p5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 214
    iput p6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    goto :goto_0

    .line 234
    :cond_5
    :try_start_1
    new-instance v1, Landroid/view/Surface;

    const-string v3, "FreezeSurface"

    iget v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    const/4 v6, -0x1

    const v7, 0x30004

    move-object v2, p3

    invoke-direct/range {v1 .. v7}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 247
    :catch_0
    move-exception v8

    .line 248
    .local v8, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_2
    const-string v1, "ScreenRotationAnimation"

    const-string v2, "Unable to allocate freeze surface"

    invoke-static {v1, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v8           #e:Landroid/view/Surface$OutOfResourcesException;
    :goto_3
    const-wide/16 v1, 0x20

    const-string v3, "ScreenRotationAnimation:Create"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 253
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  FREEZE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": CREATE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 256
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationInTransaction(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    if-nez p4, :cond_3

    .line 259
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 260
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_3

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION ScreenRotationAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 243
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setLayerStack(I)V

    .line 244
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    const v2, 0x1e8481

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setLayer(I)V

    .line 245
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setAlpha(F)V

    .line 246
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 258
    :catchall_0
    move-exception v1

    if-nez p4, :cond_7

    .line 259
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 260
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_7

    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v1
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .locals 2
    .parameter "rotation"
    .parameter "width"
    .parameter "height"
    .parameter "outMatrix"

    .prologue
    const/4 v1, 0x0

    .line 300
    packed-switch p0, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 302
    :pswitch_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 305
    :pswitch_1
    const/high16 v0, 0x42b4

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 306
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 309
    :pswitch_2
    const/high16 v0, 0x4334

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 310
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 313
    :pswitch_3
    const/high16 v0, 0x4387

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 314
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static deltaRotation(II)I
    .locals 1
    .parameter "oldRotation"
    .parameter "newRotation"

    .prologue
    .line 271
    sub-int v0, p1, p0

    .line 272
    .local v0, delta:I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 273
    :cond_0
    return v0
.end method

.method private hasAnimations()Z
    .locals 1

    .prologue
    .line 717
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRotationInTransaction(I)V
    .locals 4
    .parameter "rotation"

    .prologue
    .line 321
    iput p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 326
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 327
    .local v0, delta:I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 330
    sget-boolean v1, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** ROTATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f80

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V

    .line 332
    return-void
.end method

.method private setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V
    .locals 12
    .parameter "matrix"
    .parameter "alpha"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 277
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 279
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/Surface;->setPosition(FF)V

    .line 281
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    aget v4, v4, v10

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    aget v5, v5, v8

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    aget v6, v6, v11

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/Surface;->setMatrix(FFFF)V

    .line 284
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, p2}, Landroid/view/Surface;->setAlpha(F)V

    .line 285
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v2, :cond_0

    .line 286
    new-array v1, v11, [F

    const/4 v2, 0x0

    aput v2, v1, v7

    const/4 v2, 0x0

    aput v2, v1, v8

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    int-to-float v2, v2

    aput v2, v1, v9

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    int-to-float v2, v2

    aput v2, v1, v10

    .line 287
    .local v1, srcPnts:[F
    new-array v0, v11, [F

    .line 288
    .local v0, dstPnts:[F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 290
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original  : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")-("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transformed: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")-("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0           #dstPnts:[F
    .end local v1           #srcPnts:[F
    :cond_0
    return-void
.end method

.method private startAnimation(Landroid/view/SurfaceSession;JFIIZ)Z
    .locals 18
    .parameter "session"
    .parameter "maxAnimationDuration"
    .parameter "animationScale"
    .parameter "finalWidth"
    .parameter "finalHeight"
    .parameter "dismissing"

    .prologue
    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-nez v2, :cond_0

    .line 354
    const/4 v2, 0x0

    .line 616
    :goto_0
    return v2

    .line 356
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-eqz v2, :cond_1

    .line 357
    const/4 v2, 0x1

    goto :goto_0

    .line 360
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 362
    const/4 v11, 0x0

    .line 365
    .local v11, firstStart:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v9

    .line 367
    .local v9, delta:I
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_5

    if-eqz p7, :cond_2

    if-eqz v9, :cond_5

    .line 369
    :cond_2
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_3

    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Creating start and finish animations"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_3
    const/4 v11, 0x1

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004d

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004c

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    .line 375
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_4

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004e

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    .line 379
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0044

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0043

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    .line 383
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_5

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0045

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    .line 389
    :cond_5
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_6

    const-string v2, "ScreenRotationAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rotation delta: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " finalWidth="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " finalHeight="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " origWidth="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " origHeight="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimId:I

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimId:I

    if-eqz v2, :cond_19

    .line 395
    const/4 v8, 0x1

    .line 396
    .local v8, customAnim:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitAnimId:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterAnimId:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 474
    :cond_7
    :goto_1
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v2, :cond_9

    if-eqz v11, :cond_9

    .line 478
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    add-int v2, v2, p5

    div-int/lit8 v13, v2, 0x2

    .line 479
    .local v13, halfWidth:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    add-int v2, v2, p6

    div-int/lit8 v12, v2, 0x2

    .line 481
    .local v12, halfHeight:I
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_8

    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Initializing start and finish animations"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v13, v12}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v2, v13, v12, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v13, v12}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v2, v13, v12, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 490
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_9

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 497
    .end local v12           #halfHeight:I
    .end local v13           #halfWidth:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 499
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_a

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 503
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 504
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 505
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 507
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v2, :cond_b

    if-eqz v11, :cond_b

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 516
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_b

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 523
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 527
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_c

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 532
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v7

    .line 533
    .local v7, layerStack:I
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v2, :cond_10

    .line 534
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_d

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_e

    :cond_d
    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_e
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 545
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v9, v2, v3, v6}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 548
    :try_start_0
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    mul-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    invoke-direct {v4, v2, v3, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 550
    .local v4, outer:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v5, v2, v3, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 551
    .local v5, inner:Landroid/graphics/Rect;
    new-instance v2, Lcom/android/server/wm/BlackFrame;

    const v6, 0x1e8483

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 558
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_f

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_10

    :cond_f
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v4           #outer:Landroid/graphics/Rect;
    .end local v5           #inner:Landroid/graphics/Rect;
    :cond_10
    :goto_2
    if-nez v8, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v2, :cond_14

    .line 565
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_11

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_12

    :cond_11
    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_12
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 576
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v9, v2, v3, v6}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 578
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    mul-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    invoke-direct {v4, v2, v3, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 580
    .restart local v4       #outer:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v5, v2, v3, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 581
    .restart local v5       #inner:Landroid/graphics/Rect;
    new-instance v2, Lcom/android/server/wm/BlackFrame;

    const v6, 0x1e8482

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    .line 587
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 588
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_13

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_14

    :cond_13
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .end local v4           #outer:Landroid/graphics/Rect;
    .end local v5           #inner:Landroid/graphics/Rect;
    :cond_14
    :goto_3
    if-eqz v8, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v2, :cond_18

    .line 595
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_15

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_16

    :cond_15
    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_16
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 601
    :try_start_2
    new-instance v4, Landroid/graphics/Rect;

    move/from16 v0, p5

    neg-int v2, v0

    mul-int/lit8 v2, v2, 0x1

    move/from16 v0, p6

    neg-int v3, v0

    mul-int/lit8 v3, v3, 0x1

    mul-int/lit8 v6, p5, 0x2

    mul-int/lit8 v17, p6, 0x2

    move/from16 v0, v17

    invoke-direct {v4, v2, v3, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 603
    .restart local v4       #outer:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {v5, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 604
    .restart local v5       #inner:Landroid/graphics/Rect;
    new-instance v2, Lcom/android/server/wm/BlackFrame;

    const v6, 0x1e8480

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_2

    .line 609
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 610
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_17

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_18

    :cond_17
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .end local v4           #outer:Landroid/graphics/Rect;
    .end local v5           #inner:Landroid/graphics/Rect;
    :cond_18
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 399
    .end local v7           #layerStack:I
    .end local v8           #customAnim:Z
    :cond_19
    const/4 v8, 0x0

    .line 402
    .restart local v8       #customAnim:Z
    const/4 v14, 0x0

    .line 403
    .local v14, hwextContext:Landroid/content/Context;
    const/16 v16, 0x0

    .local v16, rotateExitAnimationId:I
    const/4 v15, 0x0

    .line 405
    .local v15, rotateEnterAnimationId:I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const-string v3, "androidhwext"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v14

    .line 412
    :goto_5
    if-eqz v14, :cond_1a

    .line 414
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screen_rotate_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_exit"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "anim"

    const-string v17, "androidhwext"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 415
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screen_rotate_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_enter"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "anim"

    const-string v17, "androidhwext"

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 416
    if-eqz v16, :cond_1a

    if-eqz v15, :cond_1a

    .line 417
    move/from16 v0, v16

    invoke-static {v14, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 418
    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 423
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_7

    .line 424
    :cond_1b
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_1

    .line 426
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a003e

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a003d

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 430
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_7

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a003f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 436
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0049

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 440
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_7

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004b

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 446
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0041

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0040

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 450
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_7

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0042

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 456
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0047

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0046

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 460
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_7

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0048

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 554
    .end local v14           #hwextContext:Landroid/content/Context;
    .end local v15           #rotateEnterAnimationId:I
    .end local v16           #rotateExitAnimationId:I
    .restart local v7       #layerStack:I
    :catch_0
    move-exception v10

    .line 555
    .local v10, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_4
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate black surface"

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 557
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 558
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_1c

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_10

    :cond_1c
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 557
    .end local v10           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 558
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v3, :cond_1d

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_1e

    :cond_1d
    const-string v3, "WindowManager"

    const-string v6, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    throw v2

    .line 584
    :catch_1
    move-exception v10

    .line 585
    .restart local v10       #e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_5
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate black surface"

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 587
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 588
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_1f

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_14

    :cond_1f
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 587
    .end local v10           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_1
    move-exception v2

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 588
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v3, :cond_20

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_21

    :cond_20
    const-string v3, "WindowManager"

    const-string v6, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    throw v2

    .line 606
    :catch_2
    move-exception v10

    .line 607
    .restart local v10       #e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_6
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate black surface"

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 609
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 610
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_22

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_18

    :cond_22
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 609
    .end local v10           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_2
    move-exception v2

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 610
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v3, :cond_23

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_24

    :cond_23
    const-string v3, "WindowManager"

    const-string v6, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    throw v2

    .line 406
    .end local v7           #layerStack:I
    .restart local v14       #hwextContext:Landroid/content/Context;
    .restart local v15       #rotateEnterAnimationId:I
    .restart local v16       #rotateExitAnimationId:I
    :catch_3
    move-exception v2

    goto/16 :goto_5

    .line 424
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private stepAnimation(J)Z
    .locals 7
    .parameter "now"

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 727
    iget-wide v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 728
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 730
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    cmp-long v3, v3, v0

    if-gez v3, :cond_2

    .line 731
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_1

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Step: finish anim now ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_1
    iput-wide p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 735
    :cond_2
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_4

    .line 736
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    .line 737
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_3

    .line 738
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    .line 739
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_3

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped start exit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    .line 743
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_4

    .line 744
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    .line 745
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_4

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped start enter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_4
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_5

    .line 749
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    .line 750
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_5

    .line 751
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    .line 752
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_5

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped start frame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v3, :cond_6

    iget-wide v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    sub-long v0, p1, v3

    .line 757
    .local v0, finishNow:J
    :cond_6
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_7

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Step: finishNow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_7
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_9

    .line 760
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    .line 761
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_8

    .line 762
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v0, v1, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    .line 763
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_8

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped finish exit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_8
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    .line 767
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_9

    .line 768
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v0, v1, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    .line 769
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_9

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped finish enter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_9
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_a

    .line 773
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    .line 774
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_a

    .line 775
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v0, v1, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    .line 776
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_a

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped finish frame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_a
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 781
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_b

    .line 782
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 783
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_b

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped rotate exit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_b
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 787
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_c

    .line 788
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 789
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_c

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped rotate enter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_c
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_d

    .line 793
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    .line 794
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_d

    .line 795
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    .line 796
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_d

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped rotate frame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_d
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v3, :cond_14

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v3, :cond_14

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v3, :cond_14

    .line 801
    :cond_e
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_12

    .line 802
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_10

    .line 803
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_f

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Exit animations done, clearing start exit anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_f
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 805
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    .line 806
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 808
    :cond_10
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_12

    .line 809
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_11

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Exit animations done, clearing finish exit anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_11
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 811
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    .line 812
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 815
    :cond_12
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_14

    .line 816
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_13

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Exit animations done, clearing rotate exit anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_13
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 818
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 819
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 823
    :cond_14
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v3, :cond_1b

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_15

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    if-nez v3, :cond_1b

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    if-nez v3, :cond_1b

    .line 824
    :cond_15
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_19

    .line 825
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_17

    .line 826
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_16

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Enter animations done, clearing start enter anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_16
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 828
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    .line 829
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 831
    :cond_17
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_19

    .line 832
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_18

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Enter animations done, clearing finish enter anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_18
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 834
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    .line 835
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 838
    :cond_19
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_1b

    .line 839
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_1a

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Enter animations done, clearing rotate enter anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_1a
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 841
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 842
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 846
    :cond_1b
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_21

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    if-nez v3, :cond_21

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    if-nez v3, :cond_21

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    if-nez v3, :cond_21

    .line 847
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_1d

    .line 848
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_1c

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Frame animations done, clearing start frame anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_1c
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 850
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    .line 851
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 853
    :cond_1d
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_1f

    .line 854
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_1e

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Frame animations done, clearing finish frame anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_1e
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 856
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    .line 857
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 859
    :cond_1f
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_21

    .line 860
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_20

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Frame animations done, clearing rotate frame anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_20
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 862
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    .line 863
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 867
    :cond_21
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 868
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 869
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_22

    .line 870
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 871
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 873
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 874
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 877
    :cond_22
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_23

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final exit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_23
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_24

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final enter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_24
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_25

    .line 884
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 885
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 886
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 887
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 888
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_25

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final frame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_25
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_26

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v3, :cond_28

    :cond_26
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    if-nez v3, :cond_28

    :cond_27
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-nez v3, :cond_29

    :cond_28
    const/4 v2, 0x1

    .line 898
    .local v2, more:Z
    :cond_29
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 900
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_2a

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Step: more="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_2a
    return v2
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceSession;JFII)Z
    .locals 9
    .parameter "session"
    .parameter "maxAnimationDuration"
    .parameter "animationScale"
    .parameter "finalWidth"
    .parameter "finalHeight"

    .prologue
    const-wide/16 v2, 0x20

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 625
    const-string v0, "ScreenRotationAnimation:Begin"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 626
    const-string v0, "WindowManager"

    const-string v1, "Dismiss!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    move v7, v8

    .line 641
    :goto_0
    return v7

    .line 632
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    .line 633
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceSession;JFIIZ)Z

    .line 636
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_2

    move v7, v8

    .line 637
    goto :goto_0

    .line 639
    :cond_2
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_3

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Setting mFinishAnimReady = true"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_3
    iput-boolean v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    goto :goto_0
.end method

.method public enableDebugLog(Z)V
    .locals 1
    .parameter "en"

    .prologue
    const/4 v0, 0x0

    .line 1003
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    .line 1004
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    .line 1005
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    .line 1006
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    .line 1007
    return-void
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method hasScreenshot()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRotating()Z
    .locals 2

    .prologue
    .line 713
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kill()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x20

    const/4 v3, 0x0

    .line 645
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Kill!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 648
    const-string v0, "ScreenRotationAnimation:End"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 649
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  FREEZE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": DESTROY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 651
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 652
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 656
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_3

    .line 659
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 660
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 662
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_4

    .line 663
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 664
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 666
    :cond_4
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_8

    .line 667
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5

    .line 668
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 669
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    .line 671
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6

    .line 672
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 673
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    .line 675
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7

    .line 676
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 677
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    .line 679
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_8

    .line 680
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 681
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    .line 684
    :cond_8
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v0, :cond_b

    .line 685
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 686
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 687
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    .line 689
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    .line 690
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 691
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    .line 693
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_b

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 695
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    .line 698
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_c

    .line 699
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 700
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 702
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_d

    .line 703
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 704
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 706
    :cond_d
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 139
    const-string v0, " mWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 140
    const-string v0, " mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 141
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCustomBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 147
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitingBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 151
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnteringBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 155
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 156
    const-string v0, " mOriginalRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 157
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 158
    const-string v0, " mOriginalHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 159
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 160
    const-string v0, " mAnimRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 161
    const-string v0, " mFinishAnimReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 162
    const-string v0, " mFinishAnimStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 163
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 164
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 165
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 166
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 167
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 168
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 169
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFinishExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 170
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 171
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFinishEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 172
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 173
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFinishFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 174
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 175
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 176
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 177
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 178
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 179
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 180
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 181
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 183
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 185
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrameTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 187
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrameInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 189
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 190
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSnapshotInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 192
    const-string v0, " mSnapshotFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 193
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 194
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitFrameFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 196
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 197
    return-void
.end method

.method public setRotationInTransaction(ILandroid/view/SurfaceSession;JFII)Z
    .locals 8
    .parameter "rotation"
    .parameter "session"
    .parameter "maxAnimationDuration"
    .parameter "animationScale"
    .parameter "finalWidth"
    .parameter "finalHeight"

    .prologue
    const/4 v7, 0x0

    .line 337
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationInTransaction(I)V

    .line 338
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move v6, p7

    .line 339
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceSession;JFIIZ)Z

    move-result v7

    .line 344
    :cond_0
    return v7
.end method

.method public stepAnimationLocked(J)Z
    .locals 4
    .parameter "now"

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 949
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v1

    if-nez v1, :cond_1

    .line 950
    sget-boolean v1, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v1, :cond_0

    const-string v1, "ScreenRotationAnimation"

    const-string v2, "Step: no animations running"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 992
    :goto_0
    return v0

    .line 955
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    if-nez v0, :cond_c

    .line 956
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_2

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Step: starting start, finish, rotate"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_2
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_6

    .line 958
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 959
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 961
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4

    .line 962
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 964
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5

    .line 965
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 967
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6

    .line 968
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 971
    :cond_6
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v0, :cond_9

    .line 972
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7

    .line 973
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 975
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_8

    .line 976
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 978
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 979
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 982
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    .line 983
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 985
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_b

    .line 986
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 988
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 989
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 992
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimation(J)Z

    move-result v0

    goto :goto_0
.end method

.method updateSurfacesInTransaction()V
    .locals 3

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_0

    .line 946
    :goto_0
    return-void

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 911
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v0, :cond_2

    .line 912
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_1

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Exit animations done, hiding screenshot surface"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->hide()V

    .line 917
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_4

    .line 918
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    if-nez v0, :cond_9

    .line 919
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_3

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Frame animations done, hiding black frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 926
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_6

    .line 927
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v0, :cond_a

    .line 928
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_5

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Frame animations done, hiding exiting frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 936
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_8

    .line 937
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v0, :cond_b

    .line 938
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_7

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Frame animations done, hiding entering frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 945
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V

    goto/16 :goto_0

    .line 922
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 931
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 932
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 941
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_3
.end method
