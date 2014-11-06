.class final Lcom/android/hwcamera/settings/AnimationUtil$1;
.super Ljava/lang/Object;
.source "AnimationUtil.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/settings/AnimationUtil;->translate(Landroid/view/ViewGroup;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$newframe:Landroid/view/View;

.field final synthetic val$oldFrame:Landroid/view/View;

.field final synthetic val$revert:Z

.field final synthetic val$width:I

.field final synthetic val$x:F


# direct methods
.method constructor <init>(ZLandroid/view/View;FLandroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$revert:Z

    iput-object p2, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$oldFrame:Landroid/view/View;

    iput p3, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$x:F

    iput-object p4, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$newframe:Landroid/view/View;

    iput p5, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$width:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 36
    .local v0, ratio:F
    iget-boolean v1, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$revert:Z

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$oldFrame:Landroid/view/View;

    iget v2, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$x:F

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 38
    iget-object v1, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$newframe:Landroid/view/View;

    iget v2, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$x:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$width:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$oldFrame:Landroid/view/View;

    iget v2, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$x:F

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 41
    iget-object v1, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$newframe:Landroid/view/View;

    iget v2, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$x:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/android/hwcamera/settings/AnimationUtil$1;->val$width:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    goto :goto_0
.end method
