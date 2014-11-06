.class Lcom/huawei/gallery3d/freeshare/FreeShareView$5;
.super Ljava/lang/Object;
.source "FreeShareView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/gallery3d/freeshare/FreeShareView;->initializeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;


# direct methods
.method constructor <init>(Lcom/huawei/gallery3d/freeshare/FreeShareView;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$5;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    .line 313
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 314
    .local v0, updateFloat:Ljava/lang/Float;
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$5;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$900(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 315
    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$5;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;
    invoke-static {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1400(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x4348

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 316
    return-void
.end method
