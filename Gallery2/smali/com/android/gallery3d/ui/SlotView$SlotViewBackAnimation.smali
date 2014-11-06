.class public Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;
.super Lcom/android/gallery3d/ui/SlotView$SlotAnimation;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlotViewBackAnimation"
.end annotation


# instance fields
.field private STRAT_AT:F

.field protected mBackProgress:F

.field mTargetIndex:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/SlotView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/SlotView;I)V
    .locals 2
    .parameter
    .parameter "targetIndex"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;-><init>()V

    .line 495
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->mBackProgress:F

    .line 496
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->mTargetIndex:I

    .line 497
    const v1, 0x3f19999a

    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->STRAT_AT:F

    .line 499
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 500
    const/16 v0, 0x15e

    .line 501
    .local v0, dur:I
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->setDuration(I)V

    .line 502
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->mTargetIndex:I

    .line 503
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/gallery3d/ui/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "slotIndex"
    .parameter "target"

    .prologue
    .line 510
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->mTargetIndex:I

    if-ne p2, v1, :cond_0

    .line 511
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->mBackProgress:F

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->STRAT_AT:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 513
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->mBackProgress:F

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->STRAT_AT:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->STRAT_AT:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->mBackProgress:F

    .line 518
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mSlotViewBackTransition:Lcom/android/gallery3d/anim/SlotViewBackTransition;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$800(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/anim/SlotViewBackTransition;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->mBackProgress:F

    invoke-virtual {v1, v2, p3}, Lcom/android/gallery3d/anim/SlotViewBackTransition;->getTransformation3D(FLandroid/graphics/Rect;)Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    move-result-object v0

    .line 519
    .local v0, info:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;
    if-eqz v0, :cond_0

    .line 520
    iget-boolean v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    if-eqz v1, :cond_2

    .line 521
    iget-object v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 523
    :cond_2
    iget-boolean v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    if-eqz v1, :cond_0

    .line 524
    iget v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlpha:F

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    goto :goto_0
.end method

.method protected onCalculate(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 506
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$SlotViewBackAnimation;->mBackProgress:F

    .line 507
    return-void
.end method
