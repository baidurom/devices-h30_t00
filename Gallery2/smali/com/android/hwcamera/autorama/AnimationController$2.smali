.class Lcom/android/hwcamera/autorama/AnimationController$2;
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
    .line 39
    iput-object p1, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 43
    iget-object v5, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/hwcamera/autorama/AnimationController;->access$300(Lcom/android/hwcamera/autorama/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v1

    .local v1, arr$:[Landroid/view/ViewGroup;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 44
    .local v4, viewGroup:Landroid/view/ViewGroup;
    if-nez v4, :cond_1

    .line 45
    const-string v5, "AnimationController"

    const-string v6, "mDirectionIndicators is null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    :goto_1
    return-void

    .line 43
    .restart local v4       #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :cond_2
    iget v5, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->mDotCount:I

    if-nez v5, :cond_3

    .line 50
    iget-object v5, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/hwcamera/autorama/AnimationController;->access$300(Lcom/android/hwcamera/autorama/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    iput v5, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->mDotCount:I

    .line 52
    :cond_3
    iget-object v5, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mDirectionDotIndex:I
    invoke-static {v5}, Lcom/android/hwcamera/autorama/AnimationController;->access$400(Lcom/android/hwcamera/autorama/AnimationController;)I

    move-result v5

    iget v6, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->mDotCount:I

    if-ge v5, v6, :cond_0

    .line 56
    const-string v5, "camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start Direction animation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mDirectionDotIndex:I
    invoke-static {v7}, Lcom/android/hwcamera/autorama/AnimationController;->access$400(Lcom/android/hwcamera/autorama/AnimationController;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 58
    .local v0, alpha:Landroid/view/animation/AlphaAnimation;
    iget v5, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->mDotCount:I

    mul-int/lit16 v5, v5, 0xb4

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 59
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 61
    iget-object v5, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/hwcamera/autorama/AnimationController;->access$300(Lcom/android/hwcamera/autorama/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v5

    aget-object v5, v5, v8

    iget-object v6, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mDirectionDotIndex:I
    invoke-static {v6}, Lcom/android/hwcamera/autorama/AnimationController;->access$400(Lcom/android/hwcamera/autorama/AnimationController;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    iget-object v5, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/hwcamera/autorama/AnimationController;->access$300(Lcom/android/hwcamera/autorama/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->mDotCount:I

    iget-object v7, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mDirectionDotIndex:I
    invoke-static {v7}, Lcom/android/hwcamera/autorama/AnimationController;->access$400(Lcom/android/hwcamera/autorama/AnimationController;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    iget-object v5, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/hwcamera/autorama/AnimationController;->access$300(Lcom/android/hwcamera/autorama/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->mDotCount:I

    iget-object v7, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mDirectionDotIndex:I
    invoke-static {v7}, Lcom/android/hwcamera/autorama/AnimationController;->access$400(Lcom/android/hwcamera/autorama/AnimationController;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    iget-object v5, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/hwcamera/autorama/AnimationController;->access$300(Lcom/android/hwcamera/autorama/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mDirectionDotIndex:I
    invoke-static {v6}, Lcom/android/hwcamera/autorama/AnimationController;->access$400(Lcom/android/hwcamera/autorama/AnimationController;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 65
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 67
    iget-object v5, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    invoke-static {v5}, Lcom/android/hwcamera/autorama/AnimationController;->access$408(Lcom/android/hwcamera/autorama/AnimationController;)I

    .line 68
    iget-object v5, p0, Lcom/android/hwcamera/autorama/AnimationController$2;->this$0:Lcom/android/hwcamera/autorama/AnimationController;

    #getter for: Lcom/android/hwcamera/autorama/AnimationController;->mHanler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/hwcamera/autorama/AnimationController;->access$200(Lcom/android/hwcamera/autorama/AnimationController;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x5a

    invoke-virtual {v5, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method
