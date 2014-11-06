.class Lcom/android/gallery3d/app/PhotoPage$10;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;


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
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 945
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 3
    .parameter "loadingFailed"

    .prologue
    .line 1001
    invoke-static {}, Lcom/android/gallery3d/ui/TiledScreenNail;->enableDrawPlaceholder()V

    .line 1002
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1004
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getUrlList()[Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mUriArray:[Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$5402(Lcom/android/gallery3d/app/PhotoPage;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1005
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getTitleList()[Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mTitleArray:[Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$5502(Lcom/android/gallery3d/app/PhotoPage;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1007
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1008
    .local v0, photo:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/PhotoPage;->access$3600(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    .line 1017
    .end local v0           #photo:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$5600(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/FilterDeleteSet;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$3300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/FilterDeleteSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/FilterDeleteSet;->getNumberOfDeletions()I

    move-result v1

    if-nez v1, :cond_0

    .line 1013
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 0

    .prologue
    .line 1021
    return-void
.end method

.method public onPhotoChanged(ILcom/android/gallery3d/data/Path;)V
    .locals 9
    .parameter "index"
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 949
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$5200(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v1

    .line 950
    .local v1, oldIndex:I
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v5, p1}, Lcom/android/gallery3d/app/PhotoPage;->access$5202(Lcom/android/gallery3d/app/PhotoPage;I)I

    .line 953
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/gallery3d/data/Path;->equalsIgnoreCase(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_0
    move v0, v4

    .line 954
    .local v0, isPhotoChanged:Z
    :goto_0
    if-nez v0, :cond_1

    .line 958
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$5300(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 959
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$5200(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v5

    if-lez v5, :cond_2

    .line 960
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v5, v3}, Lcom/android/gallery3d/app/PhotoPage;->access$3102(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    .line 963
    :cond_2
    if-nez v1, :cond_8

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$5200(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v5

    if-lez v5, :cond_8

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v5

    if-nez v5, :cond_8

    .line 967
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/app/PhotoPage;->onActionBarAllowed(Z)V

    .line 969
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 979
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$3100(Lcom/android/gallery3d/app/PhotoPage;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 980
    if-eqz p2, :cond_4

    .line 981
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 982
    .local v2, photo:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_4

    .line 983
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    invoke-static {v4, v2}, Lcom/android/gallery3d/app/PhotoPage;->access$3600(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V

    .line 986
    .end local v2           #photo:Lcom/android/gallery3d/data/MediaItem;
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateBars()V
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$2600(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 990
    :cond_5
    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$4700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 991
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mVoiceImageController:Lcom/huawei/gallery3d/voiceimage/VoiceImageController;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$4700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/huawei/gallery3d/voiceimage/VoiceImageController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/gallery3d/app/PhotoPage$Model;->isCamera(I)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/huawei/gallery3d/voiceimage/VoiceImageController;->stop(Z)V

    .line 996
    :cond_6
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V
    invoke-static {v3}, Lcom/android/gallery3d/app/PhotoPage;->access$600(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 997
    return-void

    .end local v0           #isPhotoChanged:Z
    :cond_7
    move v0, v3

    .line 953
    goto :goto_0

    .line 970
    .restart local v0       #isPhotoChanged:Z
    :cond_8
    const/4 v5, 0x2

    if-ne v1, v5, :cond_9

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$5200(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v5

    if-ne v5, v4, :cond_9

    .line 971
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x12c

    add-long/2addr v5, v7

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J
    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/app/PhotoPage;->access$3202(Lcom/android/gallery3d/app/PhotoPage;J)J

    .line 973
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PhotoView;->stopScrolling()V

    goto :goto_1

    .line 974
    :cond_9
    if-lt v1, v4, :cond_3

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$5200(Lcom/android/gallery3d/app/PhotoPage;)I

    move-result v5

    if-nez v5, :cond_3

    .line 975
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;
    invoke-static {v5}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 976
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z
    invoke-static {v5, v4}, Lcom/android/gallery3d/app/PhotoPage;->access$3102(Lcom/android/gallery3d/app/PhotoPage;Z)Z

    goto :goto_1
.end method
