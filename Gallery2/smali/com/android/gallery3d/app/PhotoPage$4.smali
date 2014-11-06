.class Lcom/android/gallery3d/app/PhotoPage$4;
.super Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreen$MultiScreenListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideTips(Z)V
    .locals 2
    .parameter "noLongerRemind"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    const-string v0, "AirSharing_PhotoPage"

    const-string v1, "onHideTips"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    move-result-object v0

    #getter for: Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->needTips:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->access$900(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->onShowTips:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->access$1002(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;Z)Z

    .line 457
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->hideTips(Z)V

    goto :goto_0
.end method

.method public onShowTips(Z)V
    .locals 3
    .parameter "isConnected"

    .prologue
    const/4 v2, 0x1

    .line 439
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    const-string v0, "AirSharing_PhotoPage"

    const-string v1, "onShowTips"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    move-result-object v0

    #getter for: Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->needTips:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->access$900(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    move-result-object v0

    #setter for: Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->onShowTips:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->access$1002(Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;Z)Z

    .line 445
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->showBars()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1100(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 447
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->showTipsDelay()V

    goto :goto_0
.end method

.method public updateAirSaringItem(ZZ)V
    .locals 2
    .parameter "isVisible"
    .parameter "isConnected"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAirSharingItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAirSharingItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 464
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$4;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAirSharingItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz p2, :cond_2

    const v0, 0x7f020199

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 467
    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/gallery3d/app/PhotoPage$4;->onShowTips(Z)V

    goto :goto_0

    .line 464
    :cond_2
    const v0, 0x7f02019a

    goto :goto_1
.end method
