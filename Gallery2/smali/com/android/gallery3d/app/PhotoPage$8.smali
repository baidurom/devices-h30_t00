.class Lcom/android/gallery3d/app/PhotoPage$8;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "message"

    .prologue
    .line 616
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 784
    new-instance v8, Ljava/lang/AssertionError;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(I)V

    throw v8

    .line 619
    :sswitch_0
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHasMenuClicked:Z
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$500(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->hideBars()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2100(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 625
    :sswitch_1
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    goto :goto_0

    .line 629
    :sswitch_2
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    goto :goto_0

    .line 633
    :sswitch_3
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPageBottomControls;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 634
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2

    const/4 v8, 0x1

    :goto_1
    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama:Z
    invoke-static {v9, v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2402(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 635
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget v8, p1, Landroid/os/Message;->arg2:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_3

    const/4 v8, 0x1

    :goto_2
    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mIsPanorama360:Z
    invoke-static {v9, v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2502(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 636
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mBottomControls:Lcom/android/gallery3d/app/PhotoPageBottomControls;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPageBottomControls;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/PhotoPageBottomControls;->refresh()V

    goto :goto_0

    .line 634
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 635
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 641
    :sswitch_4
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 642
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v9

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v9, v8}, Lcom/android/gallery3d/app/AppBridge;->onFullScreenChanged(Z)V

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 647
    :sswitch_5
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateBars()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2600(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 651
    :sswitch_6
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->wantBars()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2700(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 655
    :sswitch_7
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v8, v8, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    goto/16 :goto_0

    .line 659
    :sswitch_8
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2800(Lcom/android/gallery3d/app/PhotoPage;)J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 660
    .local v2, nextUpdate:J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gtz v8, :cond_5

    .line 661
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v9, 0x0

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/PhotoPage;->access$2902(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 662
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$3000(Lcom/android/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 664
    :cond_5
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xe

    invoke-virtual {v8, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 669
    .end local v2           #nextUpdate:J
    :sswitch_9
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v9, 0x0

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/PhotoPage;->access$3102(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 670
    const/4 v7, 0x0

    .line 671
    .local v7, stayedOnCamera:Z
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v8

    if-nez v8, :cond_6

    .line 672
    const/4 v7, 0x1

    .line 681
    :goto_4
    if-eqz v7, :cond_0

    .line 682
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v8

    if-nez v8, :cond_9

    .line 683
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->launchCamera()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$3400(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 688
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/PhotoView;->switchToImage(I)V

    goto/16 :goto_0

    .line 673
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$3200(Lcom/android/gallery3d/app/PhotoPage;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_7

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$3300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_7

    .line 675
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/PhotoView;->switchToImage(I)V

    goto :goto_4

    .line 677
    :cond_7
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 678
    :cond_8
    const/4 v7, 0x1

    goto :goto_4

    .line 690
    :cond_9
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateBars()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$2600(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 691
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/PhotoPage;->access$3600(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    .line 697
    .end local v7           #stayedOnCamera:Z
    :sswitch_a
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v8

    const v9, 0x8000

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    .line 699
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto/16 :goto_0

    .line 704
    :sswitch_b
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    .line 705
    .local v5, photo:Lcom/android/gallery3d/data/MediaItem;
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v9, 0x0

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8, v9}, Lcom/android/gallery3d/app/PhotoPage;->access$102(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/data/MediaItem;

    .line 706
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v8, v5}, Lcom/android/gallery3d/app/PhotoPage;->access$3600(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    .line 710
    .end local v5           #photo:Lcom/android/gallery3d/data/MediaItem;
    :sswitch_c
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$3000(Lcom/android/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 714
    :sswitch_d
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateProgressBar()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$3700(Lcom/android/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 718
    :sswitch_e
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v8, v9, :cond_0

    .line 719
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_b

    const/4 v1, 0x1

    .line 720
    .local v1, isPanorama360:Z
    :goto_5
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 721
    .local v0, contentUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 722
    .local v4, panoramaIntent:Landroid/content/Intent;
    if-eqz v1, :cond_a

    .line 723
    #calls: Lcom/android/gallery3d/app/PhotoPage;->createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$3800(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 724
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPanoramaShareManager:Lcom/android/gallery3d/app/ShareManager;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$3900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/ShareManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/gallery3d/app/ShareManager;->setIntent(Landroid/content/Intent;)V

    .line 727
    :cond_a
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    #calls: Lcom/android/gallery3d/app/PhotoPage;->createShareIntent(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$4000(Lcom/android/gallery3d/data/MediaObject;)Landroid/content/Intent;

    move-result-object v6

    .line 728
    .local v6, shareIntent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$4100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/ShareManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v9, v9, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/app/ShareManager;->setGalleryActivity(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 729
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mShareManager:Lcom/android/gallery3d/app/ShareManager;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$4100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/ShareManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/gallery3d/app/ShareManager;->setIntent(Landroid/content/Intent;)V

    .line 730
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->setNfcBeamPushUri(Landroid/net/Uri;)V
    invoke-static {v8, v0}, Lcom/android/gallery3d/app/PhotoPage;->access$4200(Lcom/android/gallery3d/app/PhotoPage;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 719
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #isPanorama360:Z
    .end local v4           #panoramaIntent:Landroid/content/Intent;
    .end local v6           #shareIntent:Landroid/content/Intent;
    :cond_b
    const/4 v1, 0x0

    goto :goto_5

    .line 735
    :sswitch_f
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v8, v9, :cond_0

    .line 736
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_c

    const/4 v1, 0x1

    .line 737
    .restart local v1       #isPanorama360:Z
    :goto_6
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updatePanoramaUI(Z)V
    invoke-static {v8, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$4300(Lcom/android/gallery3d/app/PhotoPage;Z)V

    goto/16 :goto_0

    .line 736
    .end local v1           #isPanorama360:Z
    :cond_c
    const/4 v1, 0x0

    goto :goto_6

    .line 742
    :sswitch_10
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mIsFreeShareInit:Z
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$4400(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 745
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mFreeShareView:Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$4500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;->isShow()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 746
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mFreeShareView:Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$4500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/gallery3d/freeshare/FreeShareBaseView;->onConfigurationChanged()V

    .line 748
    :cond_d
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mFreeShareStopView:Lcom/huawei/gallery3d/freeshare/FreeShareStopView;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$4600(Lcom/android/gallery3d/app/PhotoPage;)Lcom/huawei/gallery3d/freeshare/FreeShareStopView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/gallery3d/freeshare/FreeShareStopView;->onLayout()V

    goto/16 :goto_0

    .line 752
    :sswitch_11
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v8, v8, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto/16 :goto_0

    .line 756
    :sswitch_12
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mTipsManager:Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/PhotoPage$AirSharingTipsManager;->showTips()V

    goto/16 :goto_0

    .line 760
    :sswitch_13
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$4700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 761
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$4700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v9}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v10}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/data/MediaItem;->getVoiceOffset()J

    move-result-wide v10

    invoke-virtual {v8, v9, v10, v11}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->refresh(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 766
    :sswitch_14
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mFaceMenuOperation:Lcom/android/gallery3d/app/FaceMenuOperation;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$4800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/FaceMenuOperation;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 767
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mFaceMenuOperation:Lcom/android/gallery3d/app/FaceMenuOperation;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$4800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/FaceMenuOperation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/gallery3d/app/FaceMenuOperation;->updateShareMenu()V

    goto/16 :goto_0

    .line 775
    :sswitch_15
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMavSeekBar:Lcom/android/gallery3d/ui/MavSeekBar;
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$4900(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/MavSeekBar;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/ui/MavSeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 778
    :sswitch_16
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateMavSeekBar()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$5000(Lcom/android/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 781
    :sswitch_17
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->reloadMavSeekBar()V
    invoke-static {v8}, Lcom/android/gallery3d/app/PhotoPage;->access$5100(Lcom/android/gallery3d/app/PhotoPage;)V

    goto/16 :goto_0

    .line 616
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_3
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_8
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x21 -> :sswitch_10
        0x22 -> :sswitch_11
        0x23 -> :sswitch_12
        0x24 -> :sswitch_13
        0x25 -> :sswitch_14
        0x82 -> :sswitch_15
        0x83 -> :sswitch_16
        0x84 -> :sswitch_17
    .end sparse-switch
.end method
