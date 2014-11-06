.class public Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;
.super Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleAnimation"
.end annotation


# instance fields
.field protected mIsCancel:Z

.field protected mScaleProgress:F

.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/PhotoView;Z)V
    .locals 2
    .parameter
    .parameter "isCancel"

    .prologue
    .line 1823
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$SlotAnimation;-><init>()V

    .line 1820
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;->mScaleProgress:F

    .line 1821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;->mIsCancel:Z

    .line 1824
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1825
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;->setDuration(I)V

    .line 1826
    iput-boolean p2, p0, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;->mIsCancel:Z

    .line 1827
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "canvas"
    .parameter "target"

    .prologue
    .line 1843
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mClickScaleTransition:Lcom/android/gallery3d/anim/ClickScaleTransition;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView;->access$4500(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/anim/ClickScaleTransition;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;->mScaleProgress:F

    invoke-virtual {v1, v2, p2}, Lcom/android/gallery3d/anim/ClickScaleTransition;->getTransformation3D(FLandroid/graphics/Rect;)Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;

    move-result-object v0

    .line 1844
    .local v0, info:Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;
    if-eqz v0, :cond_0

    .line 1845
    iget-boolean v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    if-eqz v1, :cond_0

    .line 1846
    iget-object v1, v0, Lcom/android/gallery3d/anim/BaseTransition$TransformationInfo;->mMatrix3D:[F

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 1849
    :cond_0
    return-void
.end method

.method protected onCalculate(F)V
    .locals 3
    .parameter "progress"

    .prologue
    const/4 v2, 0x1

    .line 1831
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;->mIsCancel:Z

    if-eqz v0, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mIsDelete:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$4402(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 1833
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V

    .line 1834
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;->mScaleProgress:F

    .line 1839
    :goto_0
    return-void

    .line 1836
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #setter for: Lcom/android/gallery3d/ui/PhotoView;->mIsDelete:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$4402(Lcom/android/gallery3d/ui/PhotoView;Z)Z

    .line 1837
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView$ScaleAnimation;->mScaleProgress:F

    goto :goto_0
.end method
