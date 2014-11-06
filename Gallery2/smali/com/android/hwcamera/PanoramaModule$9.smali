.class Lcom/android/hwcamera/PanoramaModule$9;
.super Ljava/lang/Thread;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/PanoramaModule;->saveHighResMosaic(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PanoramaModule;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/PanoramaModule;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/hwcamera/PanoramaModule$9;->this$0:Lcom/android/hwcamera/PanoramaModule;

    iput-object p2, p0, Lcom/android/hwcamera/PanoramaModule$9;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 829
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule$9;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/hwcamera/PanoramaModule;->access$2700(Lcom/android/hwcamera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 832
    :try_start_0
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule$9;->this$0:Lcom/android/hwcamera/PanoramaModule;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PanoramaModule;->generateFinalMosaic(Z)Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 834
    .local v0, jpeg:Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule$9;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/hwcamera/PanoramaModule;->access$2700(Lcom/android/hwcamera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 837
    if-nez v0, :cond_0

    .line 838
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule$9;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/hwcamera/PanoramaModule;->access$1800(Lcom/android/hwcamera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 852
    :goto_0
    return-void

    .line 834
    .end local v0           #jpeg:Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule$9;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/hwcamera/PanoramaModule;->access$2700(Lcom/android/hwcamera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 839
    .restart local v0       #jpeg:Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;
    :cond_0
    iget-boolean v3, v0, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;->isValid:Z

    if-nez v3, :cond_1

    .line 840
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule$9;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/hwcamera/PanoramaModule;->access$1800(Lcom/android/hwcamera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 842
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule$9;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #calls: Lcom/android/hwcamera/PanoramaModule;->getCaptureOrientation()I
    invoke-static {v3}, Lcom/android/hwcamera/PanoramaModule;->access$2800(Lcom/android/hwcamera/PanoramaModule;)I

    move-result v1

    .line 843
    .local v1, orientation:I
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule$9;->this$0:Lcom/android/hwcamera/PanoramaModule;

    iget-object v4, v0, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;->data:[B

    iget v5, v0, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;->width:I

    iget v6, v0, Lcom/android/hwcamera/PanoramaModule$MosaicJpeg;->height:I

    #calls: Lcom/android/hwcamera/PanoramaModule;->savePanorama([BIII)Landroid/net/Uri;
    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/hwcamera/PanoramaModule;->access$2900(Lcom/android/hwcamera/PanoramaModule;[BIII)Landroid/net/Uri;

    move-result-object v2

    .line 844
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 845
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule$9;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v3}, Lcom/android/hwcamera/PanoramaModule;->access$1300(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule$9;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/hwcamera/CameraActivity;->updatePictureThumbnail(Landroid/graphics/Bitmap;Landroid/net/Uri;I)V

    .line 846
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule$9;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v3}, Lcom/android/hwcamera/PanoramaModule;->access$1300(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/hwcamera/CameraActivity;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 847
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule$9;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v3}, Lcom/android/hwcamera/PanoramaModule;->access$1300(Lcom/android/hwcamera/PanoramaModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/hwcamera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 849
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/PanoramaModule$9;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/hwcamera/PanoramaModule;->access$1800(Lcom/android/hwcamera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/PanoramaModule$9;->this$0:Lcom/android/hwcamera/PanoramaModule;

    #getter for: Lcom/android/hwcamera/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/PanoramaModule;->access$1800(Lcom/android/hwcamera/PanoramaModule;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
