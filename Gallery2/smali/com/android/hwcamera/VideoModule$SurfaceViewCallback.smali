.class Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 3985
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3989
    const-string v0, "CAM_VideoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface changed. width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 3994
    const-string v0, "CAM_VideoModule"

    const-string v1, "Surface created"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3995
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    const/4 v1, 0x1

    #setter for: Lcom/android/hwcamera/VideoModule;->mSurfaceViewReady:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoModule;->access$4602(Lcom/android/hwcamera/VideoModule;Z)Z

    .line 3996
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1100(Lcom/android/hwcamera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4003
    :cond_0
    :goto_0
    return-void

    .line 3997
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    .line 3998
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mPreviewSurfaceView:Lcom/android/hwcamera/ui/PreviewSurfaceView;
    invoke-static {v1}, Lcom/android/hwcamera/VideoModule;->access$2400(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ui/PreviewSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/ui/PreviewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 3999
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    iget-boolean v0, v0, Lcom/android/hwcamera/VideoModule;->mPreviewing:Z

    if-nez v0, :cond_0

    .line 4000
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->startPreview()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1900(Lcom/android/hwcamera/VideoModule;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 4007
    const-string v0, "CAM_VideoModule"

    const-string v1, "Surface destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/VideoModule;->mSurfaceViewReady:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoModule;->access$4602(Lcom/android/hwcamera/VideoModule;Z)Z

    .line 4009
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1100(Lcom/android/hwcamera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4014
    :cond_0
    :goto_0
    return-void

    .line 4010
    :cond_1
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    .line 4011
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->stopVideoRecording()Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$4700(Lcom/android/hwcamera/VideoModule;)Z

    .line 4012
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$SurfaceViewCallback;->this$0:Lcom/android/hwcamera/VideoModule;

    #calls: Lcom/android/hwcamera/VideoModule;->stopPreview()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$4800(Lcom/android/hwcamera/VideoModule;)V

    goto :goto_0
.end method
