.class public Lcom/android/hwcamera/FocusOverlayManager;
.super Ljava/lang/Object;
.source "FocusOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/FocusOverlayManager$MainHandler;,
        Lcom/android/hwcamera/FocusOverlayManager$Listener;
    }
.end annotation


# static fields
.field private static METER_AREA_WIDTH_DP:I = 0x0

.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY:I = 0xbb8

.field private static final STATE_FAIL:I = 0x4

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CAM_FocusManager"


# instance fields
.field private mAeAwbLock:Z

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

.field private mFocusMode:Ljava/lang/String;

.field private mFocusPolicyService:Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field mListener:Lcom/android/hwcamera/FocusOverlayManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mMeteringIndicator:Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;

.field private mMeteringIndicatorRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

.field private mMirror:Z

.field private mOnPreviewStoppedRunnable:Ljava/lang/Runnable;

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mState:I

.field private mTargetView:Lcom/android/hwcamera/ui/TargetView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x3c

    sput v0, Lcom/android/hwcamera/FocusOverlayManager;->METER_AREA_WIDTH_DP:I

    return-void
.end method

.method public constructor <init>(Lcom/android/hwcamera/ComboPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/android/hwcamera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/hwcamera/focuspolicy/FocusPolicyService;)V
    .locals 1
    .parameter "preferences"
    .parameter "defaultFocusModes"
    .parameter "parameters"
    .parameter "listener"
    .parameter "mirror"
    .parameter "looper"
    .parameter "focusPolicyService"
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "EI_EXPOSE_REP2"
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    .line 159
    new-instance v0, Lcom/android/hwcamera/FocusOverlayManager$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/FocusOverlayManager$1;-><init>(Lcom/android/hwcamera/FocusOverlayManager;)V

    iput-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mOnPreviewStoppedRunnable:Ljava/lang/Runnable;

    .line 172
    new-instance v0, Lcom/android/hwcamera/FocusOverlayManager$MainHandler;

    invoke-direct {v0, p0, p6}, Lcom/android/hwcamera/FocusOverlayManager$MainHandler;-><init>(Lcom/android/hwcamera/FocusOverlayManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    .line 173
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    .line 174
    iput-object p1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 175
    iput-object p2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 176
    invoke-virtual {p0, p3}, Lcom/android/hwcamera/FocusOverlayManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 177
    iput-object p4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mListener:Lcom/android/hwcamera/FocusOverlayManager$Listener;

    .line 178
    invoke-virtual {p0, p5}, Lcom/android/hwcamera/FocusOverlayManager;->setMirror(Z)V

    .line 179
    iput-object p7, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusPolicyService:Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/FocusOverlayManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->cancelAutoFocus()V

    return-void
.end method

.method private autoFocus()V
    .locals 2

    .prologue
    .line 564
    const-string v0, "CAM_FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mListener:Lcom/android/hwcamera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusOverlayManager$Listener;->autoFocus()V

    .line 566
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    .line 569
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/FaceView;->pause()V

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusOverlayManager;->updateFocusUI()V

    .line 571
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 572
    return-void
.end method

.method private calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 685
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 686
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 687
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v3

    .line 688
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v5

    .line 690
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 691
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 692
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/hwcamera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 693
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 575
    const-string v0, "CAM_FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusOverlayManager;->resetTouchFocus()V

    .line 581
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mListener:Lcom/android/hwcamera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusOverlayManager$Listener;->cancelAutoFocus()V

    .line 582
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/FaceView;->resume()V

    .line 583
    :cond_0
    iput v2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    .line 584
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusOverlayManager;->updateFocusUI()V

    .line 585
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 586
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 589
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mListener:Lcom/android/hwcamera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusOverlayManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusPolicyService:Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    invoke-virtual {v0}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->reset()V

    .line 591
    iput v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    .line 592
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 594
    :cond_0
    return-void
.end method

.method private getMeterAreaHeight()I
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->getMeterAreaWidth()I

    move-result v0

    return v0
.end method

.method private getMeterAreaWidth()I
    .locals 1

    .prologue
    .line 116
    sget v0, Lcom/android/hwcamera/FocusOverlayManager;->METER_AREA_WIDTH_DP:I

    invoke-static {v0}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v0

    return v0
.end method

.method private initializeFocusAreas(IIIIII)V
    .locals 9
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    .line 383
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_0
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/hwcamera/FocusOverlayManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 389
    return-void
.end method

.method private initializeMeteringAreas(IIIIII)V
    .locals 9
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    .line 396
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_0
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/hwcamera/FocusOverlayManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 404
    return-void
.end method

.method private lockAeAwbIfNeeded()V
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mAeAwbLock:Z

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mAeAwbLock:Z

    .line 248
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mListener:Lcom/android/hwcamera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 250
    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 729
    iget-object v2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mListener:Lcom/android/hwcamera/FocusOverlayManager$Listener;

    invoke-interface {v2}, Lcom/android/hwcamera/FocusOverlayManager$Listener;->isInMeterShootMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 735
    :cond_0
    :goto_0
    return v1

    .line 733
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, focusMode:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 735
    const-string v2, "infinity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fixed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "edof"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setMatrix()V
    .locals 5

    .prologue
    .line 233
    iget v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 234
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 235
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMirror:Z

    iget v2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mDisplayOrientation:I

    iget v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewWidth:I

    iget v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/hwcamera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 240
    iget-object v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 241
    iget-object v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mInitialized:Z

    .line 243
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :cond_0
    return-void

    .line 241
    .restart local v0       #matrix:Landroid/graphics/Matrix;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unlockAeAwbIfNeeded()V
    .locals 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mAeAwbLock:Z

    .line 255
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mListener:Lcom/android/hwcamera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method public clearMeteringFocus()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringIndicator:Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringIndicator:Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;->clear()V

    .line 537
    :cond_0
    return-void
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 303
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->capture()V

    goto :goto_0

    .line 304
    :cond_3
    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 308
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    goto :goto_0

    .line 309
    :cond_4
    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->capture()V

    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusArea()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 597
    iget-object v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 630
    :cond_0
    :goto_0
    return-object v3

    .line 598
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_0

    .line 599
    iget-object v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 601
    .local v2, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 603
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 620
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 623
    const-string v3, "auto"

    iget-object v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 625
    const-string v3, "auto"

    iput-object v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 630
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 606
    :cond_4
    iget-object v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v5, "pref_camera_focusmode_key"

    invoke-virtual {v4, v5, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    .line 610
    iget-object v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 611
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 612
    iget-object v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 613
    .local v1, mode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 614
    iput-object v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 611
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 627
    .end local v0           #i:I
    .end local v1           #mode:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 700
    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusStateIdel()Z
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 708
    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMeteringRect(II)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x0

    .line 467
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    move v0, v9

    .line 479
    :goto_0
    return v0

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->getMeterAreaWidth()I

    move-result v1

    .line 469
    .local v1, meteringWidth:I
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->getMeterAreaHeight()I

    move-result v2

    .line 470
    .local v2, meteringHeight:I
    iget v6, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewWidth:I

    .line 471
    .local v6, previewWidth:I
    iget v7, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewHeight:I

    .line 472
    .local v7, previewHeight:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 473
    .local v8, tempRect:Landroid/graphics/Rect;
    const/high16 v3, 0x3f80

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/hwcamera/FocusOverlayManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 476
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v9

    .line 479
    goto :goto_0
.end method

.method public onAutoFocus(ZZ)V
    .locals 4
    .parameter "focused"
    .parameter "shutterButtonPressed"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 319
    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 323
    if-eqz p1, :cond_1

    .line 324
    iput v2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    .line 328
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusOverlayManager;->updateFocusUI()V

    .line 329
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->capture()V

    .line 353
    :cond_0
    :goto_1
    return-void

    .line 326
    :cond_1
    iput v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    goto :goto_0

    .line 330
    :cond_2
    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 334
    if-eqz p1, :cond_4

    .line 335
    iput v2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    .line 339
    :goto_2
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusOverlayManager;->updateFocusUI()V

    .line 342
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 343
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 345
    :cond_3
    if-eqz p2, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->lockAeAwbIfNeeded()V

    goto :goto_1

    .line 337
    :cond_4
    iput v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    goto :goto_2

    .line 349
    :cond_5
    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(Z)V
    .locals 2
    .parameter "moving"

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusPolicyService:Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->onAutoFoucsMoving(Z)V

    .line 359
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v0}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->clear()V

    goto :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/TargetView;->isTagetExit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v0}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->clear()V

    goto :goto_0

    .line 369
    :cond_3
    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    if-nez v0, :cond_0

    .line 371
    if-eqz p1, :cond_4

    .line 372
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v0}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->showStart()V

    goto :goto_0

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->showSuccess(Z)V

    goto :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusOverlayManager;->onPreviewStopped()V

    .line 561
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    .line 544
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .prologue
    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    .line 550
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusOverlayManager;->resetTouchFocus()V

    .line 552
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusOverlayManager;->updateFocusUI()V

    .line 557
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mOnPreviewStoppedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onShutterDown()V
    .locals 3

    .prologue
    .line 260
    iget-boolean v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x0

    .line 263
    .local v0, autoFocusCalled:Z
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    iget v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 266
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->autoFocus()V

    .line 267
    const/4 v0, 0x1

    .line 271
    :cond_2
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->lockAeAwbIfNeeded()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 281
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->cancelAutoFocus()V

    .line 287
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->unlockAeAwbIfNeeded()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x0

    .line 407
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 412
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->cancelAutoFocus()V

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v0}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->getSize()I

    move-result v1

    .line 416
    .local v1, focusWidth:I
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v0}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->getSize()I

    move-result v2

    .line 417
    .local v2, focusHeight:I
    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    .line 418
    iget v5, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewWidth:I

    .line 419
    .local v5, previewWidth:I
    iget v6, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewHeight:I

    .line 421
    .local v6, previewHeight:I
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_4

    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 422
    invoke-direct/range {v0 .. v6}, Lcom/android/hwcamera/FocusOverlayManager;->initializeFocusAreas(IIIIII)V

    .line 426
    :cond_4
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_5

    move-object v0, p0

    move v3, p1

    move v4, p2

    .line 427
    invoke-direct/range {v0 .. v6}, Lcom/android/hwcamera/FocusOverlayManager;->initializeMeteringAreas(IIIIII)V

    .line 431
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusPolicyService:Lcom/android/hwcamera/focuspolicy/FocusPolicyService;

    iget-object v3, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    iget-object v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    invoke-virtual {v0, v3, v4}, Lcom/android/hwcamera/focuspolicy/FocusPolicyService;->setFoucs2MeteringArea(Ljava/util/List;Ljava/util/List;)V

    .line 434
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 436
    .local v8, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v0, v1, 0x2

    sub-int v0, p1, v0

    sub-int v3, v5, v1

    invoke-static {v0, v11, v3}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v7

    .line 437
    .local v7, left:I
    div-int/lit8 v0, v2, 0x2

    sub-int v0, p2, v0

    sub-int v3, v6, v2

    invoke-static {v0, v11, v3}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v10

    .line 438
    .local v10, top:I
    invoke-virtual {v8, v7, v10, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 440
    invoke-virtual {v8}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v9

    .line 441
    .local v9, rules:[I
    const/16 v0, 0xd

    aput v11, v9, v0

    .line 442
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 445
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mListener:Lcom/android/hwcamera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusOverlayManager$Listener;->stopFaceDetection()V

    .line 448
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mListener:Lcom/android/hwcamera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusOverlayManager$Listener;->setFocusParameters()V

    .line 449
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_6

    .line 450
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v0}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->clear()V

    .line 451
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->autoFocus()V

    goto/16 :goto_0

    .line 453
    :cond_6
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusOverlayManager;->updateFocusUI()V

    .line 455
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 456
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v11, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 717
    return-void
.end method

.method public rectToFocusArea(Landroid/graphics/RectF;F)Ljava/util/List;
    .locals 10
    .parameter "mFaceRect"
    .parameter "rato"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "F)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v9, 0x0

    .line 753
    :goto_0
    return-object v9

    .line 743
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v9, focusArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x1

    invoke-direct {v0, v3, v8}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    iget v6, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewWidth:I

    .line 746
    .local v6, previewWidth:I
    iget v7, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewHeight:I

    .line 747
    .local v7, previewHeight:I
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    float-to-int v4, v0

    .line 748
    .local v4, x:I
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-int v5, v0

    .line 749
    .local v5, y:I
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v1, v0

    .line 750
    .local v1, focusWidth:I
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v2, v0

    .line 752
    .local v2, focusHeight:I
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/hwcamera/FocusOverlayManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public rectToFocusArea(Landroid/graphics/RectF;Lcom/android/hwcamera/ui/TargetView;F)Ljava/util/List;
    .locals 10
    .parameter "targetRect"
    .parameter "targetview"
    .parameter "rato"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Lcom/android/hwcamera/ui/TargetView;",
            "F)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 757
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v9, 0x0

    .line 762
    :goto_0
    return-object v9

    .line 758
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v9, focusArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    invoke-virtual {p2}, Lcom/android/hwcamera/ui/TargetView;->getTargetViewWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/hwcamera/ui/TargetView;->getTargetViewHeight()I

    move-result v2

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-int v5, v0

    iget v6, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewWidth:I

    iget v7, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewHeight:I

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/hwcamera/FocusOverlayManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 713
    return-void
.end method

.method public resetTouchFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 668
    iget-boolean v2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mInitialized:Z

    if-nez v2, :cond_0

    .line 681
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 673
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 674
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 675
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 676
    iget-object v2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    invoke-interface {v2}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->clear()V

    .line 678
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    goto :goto_0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 720
    iput-boolean p1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mAeAwbLock:Z

    .line 721
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "displayOrientation"

    .prologue
    .line 221
    iput p1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mDisplayOrientation:I

    .line 222
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->setMatrix()V

    .line 223
    return-void
.end method

.method public setFaceView(Lcom/android/hwcamera/ui/indicator/FaceView;)V
    .locals 0
    .parameter "faceView"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    .line 227
    return-void
.end method

.method public setFocusIndicator(Lcom/android/hwcamera/ui/indicator/FocusIndicator;)V
    .locals 1
    .parameter "focusIndicator"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    .line 184
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mInitialized:Z

    .line 185
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMeterIndicator(Lcom/android/hwcamera/ui/RotateLayout;)V
    .locals 1
    .parameter "meterIndicatorRotate"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringIndicatorRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    .line 190
    const v0, 0x7f100125

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/ui/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;

    iput-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringIndicator:Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;

    .line 192
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMirror:Z

    .line 217
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->setMatrix()V

    .line 218
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 200
    :cond_0
    iput-object p1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 201
    invoke-static {p1}, Lcom/android/hwcamera/Util;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusAreaSupported:Z

    .line 202
    invoke-static {p1}, Lcom/android/hwcamera/Util;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringAreaSupported:Z

    .line 203
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mLockAeAwbNeeded:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setPreviewSize(II)V
    .locals 1
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 208
    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 209
    :cond_0
    iput p1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewWidth:I

    .line 210
    iput p2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewHeight:I

    .line 211
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->setMatrix()V

    .line 213
    :cond_1
    return-void
.end method

.method public setTargetView(Lcom/android/hwcamera/ui/TargetView;)V
    .locals 0
    .parameter "targetView"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    .line 231
    return-void
.end method

.method public showMeteringFocus()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringIndicator:Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;

    if-eqz v0, :cond_0

    .line 501
    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->updateMeteringRect(II)V

    .line 502
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringIndicator:Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;->showStart()V

    .line 504
    :cond_0
    return-void
.end method

.method public shutterLongPressed()V
    .locals 2

    .prologue
    .line 292
    iget v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/FocusOverlayManager;->onSingleTapUp(II)V

    .line 293
    return-void
.end method

.method public updateFocusUI()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 634
    iget-boolean v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mInitialized:Z

    if-nez v4, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    invoke-virtual {v4}, Lcom/android/hwcamera/ui/indicator/FaceView;->faceExists()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 637
    .local v0, faceExists:Z
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;

    .line 638
    .local v1, focusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;
    if-eqz v0, :cond_2

    .line 639
    iget-object v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFaceView:Lcom/android/hwcamera/ui/indicator/FaceView;

    .line 641
    :cond_2
    iget-object v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    invoke-virtual {v4}, Lcom/android/hwcamera/ui/TargetView;->isTagetExit()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 642
    iget-object v1, p0, Lcom/android/hwcamera/FocusOverlayManager;->mTargetView:Lcom/android/hwcamera/ui/TargetView;

    .line 644
    :cond_3
    iget v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    if-nez v4, :cond_6

    .line 645
    iget-object v2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_5

    .line 646
    invoke-interface {v1}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->clear()V

    goto :goto_0

    .end local v0           #faceExists:Z
    .end local v1           #focusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;
    :cond_4
    move v0, v3

    .line 636
    goto :goto_1

    .line 651
    .restart local v0       #faceExists:Z
    .restart local v1       #focusIndicator:Lcom/android/hwcamera/ui/indicator/FocusIndicator;
    :cond_5
    invoke-interface {v1}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->showStart()V

    goto :goto_0

    .line 653
    :cond_6
    iget v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    if-eq v4, v2, :cond_7

    iget v2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_8

    .line 654
    :cond_7
    invoke-interface {v1}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->showStart()V

    goto :goto_0

    .line 656
    :cond_8
    const-string v2, "continuous-picture"

    iget-object v4, p0, Lcom/android/hwcamera/FocusOverlayManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 658
    invoke-interface {v1, v3}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->showSuccess(Z)V

    goto :goto_0

    .line 659
    :cond_9
    iget v2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_a

    .line 660
    invoke-interface {v1, v3}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->showSuccess(Z)V

    goto :goto_0

    .line 661
    :cond_a
    iget v2, p0, Lcom/android/hwcamera/FocusOverlayManager;->mState:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    .line 662
    invoke-interface {v1, v3}, Lcom/android/hwcamera/ui/indicator/FocusIndicator;->showFail(Z)V

    goto :goto_0
.end method

.method public updateMeteringPos(IIZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "updatePara"

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/hwcamera/FocusOverlayManager;->updateMeteringRect(II)V

    .line 488
    if-eqz p3, :cond_2

    .line 490
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mListener:Lcom/android/hwcamera/FocusOverlayManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusOverlayManager$Listener;->setMeteringParameters()V

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringIndicator:Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringIndicator:Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/indicator/MeteringIndicatorView;->showStart()V

    goto :goto_0
.end method

.method public updateMeteringRect(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->getMeterAreaWidth()I

    move-result v1

    .line 508
    .local v1, meteringWidth:I
    invoke-direct {p0}, Lcom/android/hwcamera/FocusOverlayManager;->getMeterAreaHeight()I

    move-result v2

    .line 509
    .local v2, meteringHeight:I
    iget v6, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewWidth:I

    .line 510
    .local v6, previewWidth:I
    iget v7, p0, Lcom/android/hwcamera/FocusOverlayManager;->mPreviewHeight:I

    .line 511
    .local v7, previewHeight:I
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    .line 513
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_0
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/hwcamera/FocusOverlayManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 521
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringIndicatorRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 523
    .local v10, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v0, v1, 0x2

    sub-int v0, p1, v0

    const/4 v3, 0x0

    sub-int v4, v6, v1

    invoke-static {v0, v3, v4}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v9

    .line 524
    .local v9, left:I
    div-int/lit8 v0, v2, 0x2

    sub-int v0, p2, v0

    const/4 v3, 0x0

    sub-int v4, v7, v2

    invoke-static {v0, v3, v4}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v12

    .line 525
    .local v12, top:I
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v9, v12, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 527
    invoke-virtual {v10}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v11

    .line 528
    .local v11, rules:[I
    const/16 v0, 0xd

    const/4 v3, 0x0

    aput v3, v11, v0

    .line 529
    iget-object v0, p0, Lcom/android/hwcamera/FocusOverlayManager;->mMeteringIndicatorRotateLayout:Lcom/android/hwcamera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/RotateLayout;->requestLayout()V

    .line 530
    return-void
.end method
