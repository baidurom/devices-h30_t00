.class final Lcom/android/hwcamera/VideoModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/VideoModule;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 3785
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3786
    iput-object p2, p0, Lcom/android/hwcamera/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 3787
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3791
    const-string v0, "CAM_VideoModule"

    const-string v1, "onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xd8

    if-eq v0, v1, :cond_1

    .line 3794
    :cond_0
    const-string v0, "CAM_VideoModule"

    const-string v1, "it\'s not a real jpeg!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    :goto_0
    return-void

    .line 3798
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #setter for: Lcom/android/hwcamera/VideoModule;->mSnapshotInProgress:Z
    invoke-static {v0, v2}, Lcom/android/hwcamera/VideoModule;->access$002(Lcom/android/hwcamera/VideoModule;Z)Z

    .line 3800
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$700(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/PreviewGestures;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 3802
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$2100(Lcom/android/hwcamera/VideoModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/hwcamera/VideoModule$JpegPictureCallback$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoModule$JpegPictureCallback$1;-><init>(Lcom/android/hwcamera/VideoModule$JpegPictureCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3808
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$JpegPictureCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    #calls: Lcom/android/hwcamera/VideoModule;->storeImage([BLandroid/location/Location;)V
    invoke-static {v0, p1, v1}, Lcom/android/hwcamera/VideoModule;->access$4500(Lcom/android/hwcamera/VideoModule;[BLandroid/location/Location;)V

    goto :goto_0
.end method
