.class public Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;
.super Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteAnimation"
.end annotation


# instance fields
.field protected mDeleteProgress:F

.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1863
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;-><init>()V

    .line 1860
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;->mDeleteProgress:F

    .line 1864
    new-instance v0, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;

    invoke-direct {v0}, Lcom/android/gallery3d/anim/DeleteAnimationInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1865
    const/16 v0, 0x29e

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;->setDuration(I)V

    .line 1866
    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mIsDelete:Z
    invoke-static {p1, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$4402(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 1867
    invoke-virtual {p1, v1}, Lcom/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V

    .line 1868
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "canvas"
    .parameter "target"

    .prologue
    .line 1883
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mClickDeleteTransition:Lcom/android/gallery3d/anim/ClickDeleteTransition;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$4600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/anim/ClickDeleteTransition;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;->mDeleteProgress:F

    invoke-virtual {v1, v2, p2}, Lcom/android/gallery3d/anim/ClickDeleteTransition;->getTransformation3D(FLandroid/graphics/Rect;)Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    move-result-object v0

    .line 1884
    .local v0, info:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;
    if-eqz v0, :cond_1

    .line 1885
    iget-boolean v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    if-eqz v1, :cond_0

    .line 1886
    iget-object v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 1889
    :cond_0
    iget-boolean v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    if-eqz v1, :cond_1

    .line 1890
    iget v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mAlpha:F

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 1893
    :cond_1
    return-void
.end method

.method protected getSoundAction()I
    .locals 1

    .prologue
    .line 1879
    const/4 v0, 0x0

    return v0
.end method

.method protected onCalculate(F)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 1871
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;->mDeleteProgress:F

    .line 1872
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;->mDeleteProgress:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$DeleteAnimation;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V

    .line 1875
    :cond_0
    return-void
.end method
