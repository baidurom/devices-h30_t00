.class public Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;
.super Lcom/android/gallery3d/ui/SlotView$SlotAnimation;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlotClickDownAnimation"
.end annotation


# instance fields
.field protected mDownProgress:F

.field private mTargetIndex:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/SlotView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/SlotView;I)V
    .locals 1
    .parameter
    .parameter "targetIndex"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;->this$0:Lcom/android/gallery3d/ui/SlotView;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$SlotAnimation;-><init>()V

    .line 467
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;->mDownProgress:F

    .line 468
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;->mTargetIndex:I

    .line 470
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;->mTargetIndex:I

    .line 471
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 472
    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;->setDuration(I)V

    .line 473
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/gallery3d/ui/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 3
    .parameter "canvas"
    .parameter "slotIndex"
    .parameter "target"

    .prologue
    .line 480
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;->mTargetIndex:I

    if-ne p2, v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;->this$0:Lcom/android/gallery3d/ui/SlotView;

    #getter for: Lcom/android/gallery3d/ui/SlotView;->mClickThumbDownTransition:Lcom/android/gallery3d/anim/ClickThumbDownTransition;
    invoke-static {v1}, Lcom/android/gallery3d/ui/SlotView;->access$700(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/anim/ClickThumbDownTransition;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;->mDownProgress:F

    invoke-virtual {v1, v2, p3}, Lcom/android/gallery3d/anim/ClickThumbDownTransition;->getTransformation3D(FLandroid/graphics/Rect;)Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    move-result-object v0

    .line 482
    .local v0, info:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;
    if-eqz v0, :cond_1

    .line 483
    iget-boolean v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 486
    :cond_0
    iget-boolean v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    if-eqz v1, :cond_1

    .line 487
    iget v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlpha:F

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 491
    .end local v0           #info:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;
    :cond_1
    return-void
.end method

.method protected onCalculate(F)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 476
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$SlotClickDownAnimation;->mDownProgress:F

    .line 477
    return-void
.end method
