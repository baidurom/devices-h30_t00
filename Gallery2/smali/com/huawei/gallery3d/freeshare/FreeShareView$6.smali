.class Lcom/huawei/gallery3d/freeshare/FreeShareView$6;
.super Ljava/lang/Object;
.source "FreeShareView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 322
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$6;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 350
    const-string v0, "FreeShare"

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 336
    const-string v0, "FreeShare"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$6;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpShown:Z
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1500(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$6;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$6;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 340
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$6;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$6;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1700(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 346
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$6;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1100(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$6;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1100(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 344
    iget-object v0, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$6;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;
    invoke-static {v0}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1100(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$6;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1700(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 331
    const-string v0, "FreeShare"

    const-string v1, "onAnimationRepeat"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 326
    const-string v0, "FreeShare"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method
