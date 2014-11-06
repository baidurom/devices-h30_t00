.class Lcom/huawei/gallery3d/freeshare/FreeShareView$7;
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
    .line 353
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .parameter "animation"

    .prologue
    const v7, 0x3eb33333

    const/4 v6, 0x0

    .line 357
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 358
    .local v1, updateFloat:Ljava/lang/Float;
    const-string v3, "FreeShare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAnimationUpdate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$900(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 360
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMainView:Landroid/view/View;
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1400(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x4348

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 375
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1800(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I

    move-result v3

    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1900(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 376
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1900(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1900(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I
    invoke-static {v5}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1900(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f2b851f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v2, v3

    .line 377
    .local v2, width:I
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1800(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1800(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I
    invoke-static {v5}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1800(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ec7ae14

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 382
    .local v0, height:I
    :goto_0
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$2000(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 383
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$2000(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 384
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$900(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$2000(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    return-void

    .line 379
    .end local v0           #height:I
    .end local v2           #width:I
    :cond_0
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1900(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1900(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayWidth:I
    invoke-static {v5}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1900(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v2, v3

    .line 380
    .restart local v2       #width:I
    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1800(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1800(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$7;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mDisplayHeight:I
    invoke-static {v5}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1800(Lcom/huawei/gallery3d/freeshare/FreeShareView;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .restart local v0       #height:I
    goto :goto_0
.end method
