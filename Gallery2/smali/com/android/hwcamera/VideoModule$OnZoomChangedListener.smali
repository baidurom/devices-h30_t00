.class Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnZoomChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 3605
    iput-object p1, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoModule;Lcom/android/hwcamera/VideoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3605
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;-><init>(Lcom/android/hwcamera/VideoModule;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 3630
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$2100(Lcom/android/hwcamera/VideoModule;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3631
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$2100(Lcom/android/hwcamera/VideoModule;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;
    invoke-static {v1}, Lcom/android/hwcamera/VideoModule;->access$600(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ZoomController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/ZoomController;->getHideDelayTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3632
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$3800(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_zoom_value_key"

    iget-object v2, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mZoomValue:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoModule;->access$4400(Lcom/android/hwcamera/VideoModule;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 3633
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 3619
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$2100(Lcom/android/hwcamera/VideoModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3620
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    const/4 v1, 0x0

    #calls: Lcom/android/hwcamera/VideoModule;->enableAutoFoucsMoving(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoModule;->access$3100(Lcom/android/hwcamera/VideoModule;Z)V

    .line 3622
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$2500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3623
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$2500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/tips/TipsService;->pauseAndHideTips()V

    .line 3626
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 3609
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$1100(Lcom/android/hwcamera/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3615
    :cond_0
    :goto_0
    return-void

    .line 3610
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #setter for: Lcom/android/hwcamera/VideoModule;->mZoomValue:I
    invoke-static {v0, p1}, Lcom/android/hwcamera/VideoModule;->access$4402(Lcom/android/hwcamera/VideoModule;I)I

    .line 3611
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$300(Lcom/android/hwcamera/VideoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 3613
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$300(Lcom/android/hwcamera/VideoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mZoomValue:I
    invoke-static {v1}, Lcom/android/hwcamera/VideoModule;->access$4400(Lcom/android/hwcamera/VideoModule;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 3614
    iget-object v0, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mActivity:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/android/hwcamera/VideoModule;->access$500(Lcom/android/hwcamera/VideoModule;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/VideoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/VideoModule;

    #getter for: Lcom/android/hwcamera/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/hwcamera/VideoModule;->access$300(Lcom/android/hwcamera/VideoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
