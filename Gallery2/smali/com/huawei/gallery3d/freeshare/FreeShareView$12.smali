.class Lcom/huawei/gallery3d/freeshare/FreeShareView$12;
.super Ljava/lang/Object;
.source "FreeShareView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 476
    iput-object p1, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 479
    const-string v2, "FreeShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "never show again : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$2200(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$2200(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$2400(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 482
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "key-freeshare-help"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 483
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #setter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpShown:Z
    invoke-static {v2, v5}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1502(Lcom/huawei/gallery3d/freeshare/FreeShareView;Z)Z

    .line 485
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #setter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsHelpShow:Z
    invoke-static {v2, v6}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$2302(Lcom/huawei/gallery3d/freeshare/FreeShareView;Z)Z

    .line 486
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$2400(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    const v3, 0x7f050004

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 487
    .local v1, shiftAnimation:Landroid/view/animation/Animation;
    new-instance v2, Lcom/huawei/gallery3d/freeshare/FreeShareView$12$1;

    invoke-direct {v2, p0}, Lcom/huawei/gallery3d/freeshare/FreeShareView$12$1;-><init>(Lcom/huawei/gallery3d/freeshare/FreeShareView$12;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 499
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHelpView:Landroid/view/View;
    invoke-static {v2}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1600(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 501
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #setter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mIsMenuShow:Z
    invoke-static {v2, v5}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$702(Lcom/huawei/gallery3d/freeshare/FreeShareView;Z)Z

    .line 502
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;
    invoke-static {v2}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1100(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mMenuView:Landroid/view/View;
    invoke-static {v2}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1100(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1700(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 504
    iget-object v2, p0, Lcom/huawei/gallery3d/freeshare/FreeShareView$12;->this$0:Lcom/huawei/gallery3d/freeshare/FreeShareView;

    #getter for: Lcom/huawei/gallery3d/freeshare/FreeShareView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/gallery3d/freeshare/FreeShareView;->access$1300(Lcom/huawei/gallery3d/freeshare/FreeShareView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 505
    return-void
.end method
