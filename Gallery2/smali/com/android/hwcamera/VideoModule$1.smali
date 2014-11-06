.class Lcom/android/hwcamera/VideoModule$1;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/hwcamera/OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 228
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-virtual {v3}, Lcom/android/hwcamera/VideoModule;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-virtual {v3}, Lcom/android/hwcamera/VideoModule;->canVideoSnapshot()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mSnapshotInProgress:Z
    invoke-static {v3}, Lcom/android/hwcamera/VideoModule;->access$000(Lcom/android/hwcamera/VideoModule;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mCameraId:I
    invoke-static {v3}, Lcom/android/hwcamera/VideoModule;->access$100(Lcom/android/hwcamera/VideoModule;)I

    move-result v3

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mOrientation:I
    invoke-static {v4}, Lcom/android/hwcamera/VideoModule;->access$200(Lcom/android/hwcamera/VideoModule;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/hwcamera/Util;->getJpegRotation(II)I

    move-result v2

    .line 234
    .local v2, rotation:I
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/android/hwcamera/VideoModule;->access$300(Lcom/android/hwcamera/VideoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 235
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v3}, Lcom/android/hwcamera/VideoModule;->access$400(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 236
    .local v0, loc:Landroid/location/Location;
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/android/hwcamera/VideoModule;->access$300(Lcom/android/hwcamera/VideoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/hwcamera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 237
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v3}, Lcom/android/hwcamera/VideoModule;->access$500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v4}, Lcom/android/hwcamera/VideoModule;->access$300(Lcom/android/hwcamera/VideoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 239
    const-string v3, "CAM_VideoModule"

    const-string v4, "Video snapshot start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    #setter for: Lcom/android/hwcamera/VideoModule;->mSnapshotInProgress:Z
    invoke-static {v3, v8}, Lcom/android/hwcamera/VideoModule;->access$002(Lcom/android/hwcamera/VideoModule;Z)Z

    .line 243
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v3}, Lcom/android/hwcamera/VideoModule;->access$500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    new-instance v4, Lcom/android/hwcamera/VideoModule$JpegPictureCallback;

    iget-object v5, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct {v4, v5, v0}, Lcom/android/hwcamera/VideoModule$JpegPictureCallback;-><init>(Lcom/android/hwcamera/VideoModule;Landroid/location/Location;)V

    invoke-virtual {v3, v6, v6, v6, v4}, Lcom/android/hwcamera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)I

    move-result v1

    .line 244
    .local v1, ret:I
    if-eqz v1, :cond_2

    .line 245
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    #setter for: Lcom/android/hwcamera/VideoModule;->mSnapshotInProgress:Z
    invoke-static {v3, v7}, Lcom/android/hwcamera/VideoModule;->access$002(Lcom/android/hwcamera/VideoModule;Z)Z

    goto :goto_0

    .line 251
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;
    invoke-static {v3}, Lcom/android/hwcamera/VideoModule;->access$600(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ZoomController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/ZoomController;->hide()V

    .line 252
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mGestures:Lcom/android/hwcamera/PreviewGestures;
    invoke-static {v3}, Lcom/android/hwcamera/VideoModule;->access$700(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/PreviewGestures;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/PreviewGestures;->setEnabled(Z)V

    .line 254
    iget-object v3, p0, Lcom/android/hwcamera/VideoModule$1;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-virtual {v3, v8}, Lcom/android/hwcamera/VideoModule;->showVideoSnapshotUI(Z)V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 224
    return-void
.end method

.method public onShutterButtonLongClick(Z)Z
    .locals 1
    .parameter "pressed"

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method
