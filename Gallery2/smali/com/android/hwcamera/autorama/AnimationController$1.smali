.class Lcom/android/hwcamera/autorama/AnimationController$1;
.super Ljava/lang/Object;
.source "AnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/autorama/AnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDotCount:I

.field final synthetic this$0:Lcom/android/hwcamera/autorama/AnimationController;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/autorama/AnimationController;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/hwcamera/autorama/AnimationController$1;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 21
    iget v1, p0, Lcom/android/hwcamera/autorama/AnimationController$1;->mDotCount:I

    if-nez v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/android/hwcamera/autorama/AnimationController$1;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mCenterArrow:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/hwcamera/autorama/AnimationController;->access$000(Lcom/android/hwcamera/autorama/AnimationController;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/autorama/AnimationController$1;->mDotCount:I

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/autorama/AnimationController$1;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mCenterDotIndex:I
    invoke-static {v1}, Lcom/android/hwcamera/autorama/AnimationController;->access$100(Lcom/android/hwcamera/autorama/AnimationController;)I

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/autorama/AnimationController$1;->mDotCount:I

    if-lt v1, v2, :cond_1

    .line 36
    :goto_0
    return-void

    .line 27
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 28
    .local v0, alpha:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x5a0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 29
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 31
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start Arrow animation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/autorama/AnimationController$1;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mCenterDotIndex:I
    invoke-static {v3}, Lcom/android/hwcamera/autorama/AnimationController;->access$100(Lcom/android/hwcamera/autorama/AnimationController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v1, p0, Lcom/android/hwcamera/autorama/AnimationController$1;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mCenterArrow:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/hwcamera/autorama/AnimationController;->access$000(Lcom/android/hwcamera/autorama/AnimationController;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/autorama/AnimationController$1;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mCenterDotIndex:I
    invoke-static {v2}, Lcom/android/hwcamera/autorama/AnimationController;->access$100(Lcom/android/hwcamera/autorama/AnimationController;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 33
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 34
    iget-object v1, p0, Lcom/android/hwcamera/autorama/AnimationController$1;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    invoke-static {v1}, Lcom/android/hwcamera/autorama/AnimationController;->access$108(Lcom/android/hwcamera/autorama/AnimationController;)I

    .line 35
    iget-object v1, p0, Lcom/android/hwcamera/autorama/AnimationController$1;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mHanler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/autorama/AnimationController;->access$200(Lcom/android/hwcamera/autorama/AnimationController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x168

    iget v3, p0, Lcom/android/hwcamera/autorama/AnimationController$1;->mDotCount:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
