.class public Lcom/android/hwcamera/CameraScreenNail;
.super Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;
.source "CameraScreenNail.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/CameraScreenNail$OnFrameDrawnListener;,
        Lcom/android/hwcamera/CameraScreenNail$Listener;
    }
.end annotation


# static fields
.field private static final ANIM_CAPTURE_RUNNING:I = 0x2

.field private static final ANIM_CAPTURE_START:I = 0x1

.field private static final ANIM_NONE:I = 0x0

.field private static final ANIM_SWITCH_COPY_TEXTURE:I = 0x3

.field private static final ANIM_SWITCH_DARK_PREVIEW:I = 0x4

.field private static final ANIM_SWITCH_RUNNING:I = 0x7

.field private static final ANIM_SWITCH_START:I = 0x6

.field private static final ANIM_SWITCH_WAITING_FIRST_FRAME:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CAM_ScreenNail"


# instance fields
.field private mAlpha:F

.field private mAnimState:I

.field private mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field private mCaptureAnimManager:Lcom/android/hwcamera/CaptureAnimManager;

.field private mEnableAspectRatioClamping:Z

.field private mFirstFrameArrived:Z

.field private mFrameTime:J

.field private mFramefps:J

.field private mFullScreen:Z

.field private mListener:Lcom/android/hwcamera/CameraScreenNail$Listener;

.field private mLock:Ljava/lang/Object;

.field private mOnFrameDrawnListener:Ljava/lang/Runnable;

.field private mOneTimeFrameDrawnListener:Lcom/android/hwcamera/CameraScreenNail$OnFrameDrawnListener;

.field private mRenderHeight:I

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field private mSwitchAnimManager:Lcom/android/hwcamera/SwitchAnimManager;

.field private final mTextureTransformMatrix:[F

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraScreenNail$Listener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 102
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;-><init>()V

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mTextureTransformMatrix:[F

    .line 62
    new-instance v0, Lcom/android/hwcamera/CaptureAnimManager;

    invoke-direct {v0}, Lcom/android/hwcamera/CaptureAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/hwcamera/CaptureAnimManager;

    .line 63
    new-instance v0, Lcom/android/hwcamera/SwitchAnimManager;

    invoke-direct {v0}, Lcom/android/hwcamera/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/hwcamera/SwitchAnimManager;

    .line 64
    iput v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    .line 79
    iput v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleX:F

    iput v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleY:F

    .line 81
    iput-boolean v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 82
    iput v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mAlpha:F

    .line 85
    iput-wide v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mFrameTime:J

    .line 86
    iput-wide v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mFramefps:J

    .line 103
    iput-object p1, p0, Lcom/android/hwcamera/CameraScreenNail;->mListener:Lcom/android/hwcamera/CameraScreenNail$Listener;

    .line 104
    return-void
.end method

.method private callbackIfNeeded()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/hwcamera/CameraScreenNail$OnFrameDrawnListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/hwcamera/CameraScreenNail$OnFrameDrawnListener;

    invoke-interface {v0, p0}, Lcom/android/hwcamera/CameraScreenNail$OnFrameDrawnListener;->onFrameDrawn(Lcom/android/hwcamera/CameraScreenNail;)V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/hwcamera/CameraScreenNail$OnFrameDrawnListener;

    .line 301
    :cond_0
    return-void
.end method

.method private copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 403
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getWidth()I

    move-result v5

    .line 404
    .local v5, width:I
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->getHeight()I

    move-result v6

    .line 405
    .local v6, height:I
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->beginRenderTarget(Lcom/android/gallery3d/ui/RawTexture;)V

    .line 408
    const/4 v0, 0x0

    int-to-float v1, v6

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 409
    const/high16 v0, -0x4080

    invoke-interface {p1, v2, v0, v2}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 410
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 411
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraScreenNail;->updateTransformMatrix([F)V

    .line 412
    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mTextureTransformMatrix:[F

    move-object v0, p1

    move v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;[FIIII)V

    .line 414
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endRenderTarget()V

    .line 415
    return-void
.end method

.method private getTextureHeight()I
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getHeight()I

    move-result v0

    return v0
.end method

.method private getTextureWidth()I
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->getWidth()I

    move-result v0

    return v0
.end method

.method private setPreviewLayoutSize(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 166
    const-string v0, "CAM_ScreenNail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview layout size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iput p1, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderWidth:I

    .line 168
    iput p2, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderHeight:I

    .line 169
    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->updateRenderSize()V

    .line 170
    return-void
.end method

.method private updateRenderSize()V
    .locals 6

    .prologue
    .line 173
    iget-boolean v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-nez v3, :cond_0

    .line 174
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleY:F

    iput v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleX:F

    .line 175
    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mUncroppedRenderWidth:I

    .line 176
    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mUncroppedRenderHeight:I

    .line 177
    const-string v3, "CAM_ScreenNail"

    const-string v4, "aspect ratio clamping disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->getTextureHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 183
    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 188
    .local v0, aspectRatio:F
    :goto_1
    iget v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderHeight:I

    if-le v3, v4, :cond_2

    .line 189
    iget v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v2, v3

    .line 191
    .local v2, scaledTextureWidth:F
    iget v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v1, v3

    .line 199
    .local v1, scaledTextureHeight:F
    :goto_2
    iget v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iput v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleX:F

    .line 200
    iget v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iput v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleY:F

    .line 201
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mUncroppedRenderWidth:I

    .line 202
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mUncroppedRenderHeight:I

    .line 203
    const-string v3, "CAM_ScreenNail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aspect ratio clamping enabled, surfaceTexture scale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v0           #aspectRatio:F
    .end local v1           #scaledTextureHeight:F
    .end local v2           #scaledTextureWidth:F
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->getTextureWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .restart local v0       #aspectRatio:F
    goto :goto_1

    .line 194
    :cond_2
    iget v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v2, v3

    .line 196
    .restart local v2       #scaledTextureWidth:F
    iget v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v1, v3

    .restart local v1       #scaledTextureHeight:F
    goto :goto_2
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 5

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 210
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->acquireSurfaceTexture()V

    .line 211
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->getTextureWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->getTextureHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 212
    monitor-exit v1

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateCapture(I)V
    .locals 2
    .parameter "displayRotation"

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/hwcamera/CaptureAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/CaptureAnimManager;->setOrientation(I)V

    .line 254
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/hwcamera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/CaptureAnimManager;->animateFlashAndSlide()V

    .line 255
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mListener:Lcom/android/hwcamera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraScreenNail$Listener;->requestRender()V

    .line 256
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    .line 257
    monitor-exit v1

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateFlash(I)V
    .locals 2
    .parameter "displayRotation"

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mFirstFrameArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mVisible:Z

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 268
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/hwcamera/CaptureAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/CaptureAnimManager;->setOrientation(I)V

    .line 264
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/hwcamera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/CaptureAnimManager;->animateFlash()V

    .line 265
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mListener:Lcom/android/hwcamera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraScreenNail$Listener;->requestRender()V

    .line 266
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    .line 267
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSlide()V
    .locals 4

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    iget v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 277
    const-string v0, "CAM_ScreenNail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot animateSlide outside of animateCapture! Animation state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    monitor-exit v1

    .line 284
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/hwcamera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/CaptureAnimManager;->animateSlide()V

    .line 282
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mListener:Lcom/android/hwcamera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraScreenNail$Listener;->requestRender()V

    .line 283
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSlide(I)V
    .locals 2
    .parameter "displayRotation"

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/hwcamera/CaptureAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/CaptureAnimManager;->animateSlide(I)V

    .line 290
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mListener:Lcom/android/hwcamera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraScreenNail$Listener;->requestRender()V

    .line 291
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    .line 292
    monitor-exit v1

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSwitchCamera()V
    .locals 3

    .prologue
    .line 241
    const-string v0, "CAM_ScreenNail"

    const-string v1, "animateSwitchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_0
    iget v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 246
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    .line 248
    :cond_0
    monitor-exit v1

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copyTexture()V
    .locals 2

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mListener:Lcom/android/hwcamera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraScreenNail$Listener;->requestRender()V

    .line 236
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    .line 237
    monitor-exit v1

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 312
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 313
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 14
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 321
    const-wide/16 v2, 0x400

    const-string v4, "CameraScreenNail.draw"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 322
    iget-object v13, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 323
    :try_start_0
    iget-boolean v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mVisible:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mVisible:Z

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v12

    .line 325
    .local v12, surfaceTexture:Landroid/graphics/SurfaceTexture;
    if-eqz v12, :cond_1

    iget-boolean v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v2, :cond_2

    :cond_1
    monitor-exit v13

    .line 400
    :goto_0
    return-void

    .line 326
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 327
    iget-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 328
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    .line 330
    :cond_3
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getAlpha()F

    move-result v11

    .line 331
    .local v11, oldAlpha:F
    iget v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mAlpha:F

    invoke-interface {p1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 333
    iget v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    packed-switch v2, :pswitch_data_0

    .line 372
    :goto_1
    :pswitch_0
    iget v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 374
    :cond_4
    iget v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 375
    iget-boolean v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mFullScreen:Z

    if-nez v2, :cond_6

    .line 377
    const/4 v10, 0x0

    .line 387
    .local v10, drawn:Z
    :goto_2
    if-eqz v10, :cond_8

    .line 388
    iget-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mListener:Lcom/android/hwcamera/CameraScreenNail$Listener;

    invoke-interface {v2}, Lcom/android/hwcamera/CameraScreenNail$Listener;->requestRender()V

    .line 396
    .end local v10           #drawn:Z
    :cond_5
    :goto_3
    invoke-interface {p1, v11}, Lcom/android/gallery3d/ui/GLCanvas;->setAlpha(F)V

    .line 397
    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->callbackIfNeeded()V

    .line 398
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 335
    :pswitch_1
    :try_start_1
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 336
    iget-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mListener:Lcom/android/hwcamera/CameraScreenNail$Listener;

    move-object v3, p0

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/android/hwcamera/CameraScreenNail$Listener;->draw(Lcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_1

    .line 398
    .end local v11           #oldAlpha:F
    .end local v12           #surfaceTexture:Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 339
    .restart local v11       #oldAlpha:F
    .restart local v12       #surfaceTexture:Landroid/graphics/SurfaceTexture;
    :pswitch_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/hwcamera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 340
    iget-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/hwcamera/SwitchAnimManager;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1}, Lcom/android/hwcamera/SwitchAnimManager;->setReviewDrawingSize(II)V

    .line 341
    iget-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mListener:Lcom/android/hwcamera/CameraScreenNail$Listener;

    invoke-interface {v2}, Lcom/android/hwcamera/CameraScreenNail$Listener;->onPreviewTextureCopied()V

    .line 342
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    .line 350
    :pswitch_3
    invoke-virtual {v12}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 351
    iget-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/hwcamera/SwitchAnimManager;

    iget-object v8, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/hwcamera/SwitchAnimManager;->drawDarkPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    goto :goto_1

    .line 355
    :pswitch_4
    iget-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/hwcamera/SwitchAnimManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/SwitchAnimManager;->startAnimation()V

    .line 356
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    goto :goto_1

    .line 359
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/hwcamera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 360
    iget-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mListener:Lcom/android/hwcamera/CameraScreenNail$Listener;

    invoke-interface {v2}, Lcom/android/hwcamera/CameraScreenNail$Listener;->onCaptureTextureCopied()V

    .line 362
    iget-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/hwcamera/CaptureAnimManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/CaptureAnimManager;->startAnimation()V

    .line 364
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    goto :goto_1

    .line 380
    :cond_6
    iget-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/hwcamera/CaptureAnimManager;

    iget-object v9, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v8, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/hwcamera/CaptureAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v10

    .restart local v10       #drawn:Z
    goto :goto_2

    .line 384
    .end local v10           #drawn:Z
    :cond_7
    iget-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/hwcamera/SwitchAnimManager;

    iget-object v9, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v8, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/hwcamera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/hwcamera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v10

    .restart local v10       #drawn:Z
    goto/16 :goto_2

    .line 392
    :cond_8
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    .line 393
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public drawSmallPreview(Lcom/android/gallery3d/ui/GLCanvas;FFIIII)V
    .locals 9
    .parameter "canvas"
    .parameter "scaleX"
    .parameter "scaleY"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 216
    iget v7, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleX:F

    .line 217
    .local v7, tempScaleX:F
    iget v8, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleY:F

    .line 218
    .local v8, tempScaleY:F
    iput p2, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleX:F

    .line 219
    iput p3, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleY:F

    .line 220
    const/high16 v6, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-super/range {v0 .. v6}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIIIF)V

    .line 221
    iput v7, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleX:F

    .line 222
    iput v8, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleY:F

    .line 223
    return-void
.end method

.method public drawThumbnail(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 316
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 317
    return-void
.end method

.method public enableAspectRatioClamping()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 162
    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->updateRenderSize()V

    .line 163
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    iget v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mAlpha:F

    monitor-exit v1

    return v0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderHeight:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->getTextureHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getUncroppedRenderHeight()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getUncroppedRenderWidth()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderWidth:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->getTextureWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getmFramefps()J
    .locals 2

    .prologue
    .line 495
    iget-wide v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mFramefps:J

    return-wide v0
.end method

.method public noDraw()V
    .locals 2

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mVisible:Z

    .line 421
    monitor-exit v1

    .line 422
    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 8
    .parameter "surfaceTexture"

    .prologue
    .line 433
    iget-object v3, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 434
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eq v2, p1, :cond_0

    .line 435
    monitor-exit v3

    .line 455
    :goto_0
    return-void

    .line 438
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 439
    .local v0, now:J
    iget-wide v4, p0, Lcom/android/hwcamera/CameraScreenNail;->mFrameTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    .line 440
    iget-wide v4, p0, Lcom/android/hwcamera/CameraScreenNail;->mFrameTime:J

    sub-long v4, v0, v4

    iput-wide v4, p0, Lcom/android/hwcamera/CameraScreenNail;->mFramefps:J

    .line 442
    :cond_1
    iput-wide v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mFrameTime:J

    .line 443
    const-string v2, "CAM_ScreenNail"

    const-string v4, "onFrameAvailable  time"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 446
    iget-boolean v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mVisible:Z

    if-eqz v2, :cond_3

    .line 447
    iget v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 448
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    .line 452
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/CameraScreenNail;->mListener:Lcom/android/hwcamera/CameraScreenNail$Listener;

    invoke-interface {v2}, Lcom/android/hwcamera/CameraScreenNail$Listener;->requestRender()V

    .line 454
    :cond_3
    monitor-exit v3

    goto :goto_0

    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mVisible:Z

    .line 428
    monitor-exit v1

    .line 429
    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    invoke-super {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mAnimState:I

    .line 230
    monitor-exit v1

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_0
    iput p1, p0, Lcom/android/hwcamera/CameraScreenNail;->mAlpha:F

    .line 490
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mListener:Lcom/android/hwcamera/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/CameraScreenNail$Listener;->requestRender()V

    .line 491
    monitor-exit v1

    .line 492
    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFullScreen(Z)V
    .locals 2
    .parameter "full"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iput-boolean p1, p0, Lcom/android/hwcamera/CameraScreenNail;->mFullScreen:Z

    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnFrameDrawnOneShot(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "run"

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    :try_start_0
    iput-object p1, p0, Lcom/android/hwcamera/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    .line 478
    monitor-exit v1

    .line 479
    return-void

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOneTimeOnFrameDrawnListener(Lcom/android/hwcamera/CameraScreenNail$OnFrameDrawnListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 471
    iput-object p1, p0, Lcom/android/hwcamera/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/android/hwcamera/CameraScreenNail$OnFrameDrawnListener;

    .line 472
    monitor-exit v1

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/hwcamera/SwitchAnimManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/SwitchAnimManager;->setPreviewFrameLayoutSize(II)V

    .line 464
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/CameraScreenNail;->setPreviewLayoutSize(II)V

    .line 465
    monitor-exit v1

    .line 466
    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 148
    iput p1, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderWidth:I

    .line 149
    iput p2, p0, Lcom/android/hwcamera/CameraScreenNail;->mRenderHeight:I

    .line 150
    invoke-direct {p0}, Lcom/android/hwcamera/CameraScreenNail;->updateRenderSize()V

    .line 151
    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 6
    .parameter "matrix"

    .prologue
    const/high16 v0, 0x3f00

    const/4 v5, 0x0

    const/high16 v4, -0x4100

    const/4 v3, 0x0

    .line 305
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 306
    invoke-static {p1, v3, v0, v0, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 307
    iget v0, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleX:F

    iget v1, p0, Lcom/android/hwcamera/CameraScreenNail;->mScaleY:F

    const/high16 v2, 0x3f80

    invoke-static {p1, v3, v0, v1, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 308
    invoke-static {p1, v3, v4, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 309
    return-void
.end method
