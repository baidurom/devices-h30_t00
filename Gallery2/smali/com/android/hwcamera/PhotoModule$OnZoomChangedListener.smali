.class Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/hwcamera/ZoomController$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnZoomChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/PhotoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/PhotoModule;Lcom/android/hwcamera/PhotoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1271
    invoke-direct {p0, p1}, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;-><init>(Lcom/android/hwcamera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    .line 1303
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$5400(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CustomConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mCameraId:I
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1300(Lcom/android/hwcamera/PhotoModule;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CustomConfiguration;->isHwScopeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->needHwScope()Z
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$5500(Lcom/android/hwcamera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #calls: Lcom/android/hwcamera/PhotoModule;->processHwScope()V
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$5600(Lcom/android/hwcamera/PhotoModule;)V

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$5700(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_zoom_value_key"

    iget-object v2, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mZoomValue:I
    invoke-static {v2}, Lcom/android/hwcamera/PhotoModule;->access$5100(Lcom/android/hwcamera/PhotoModule;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->writePreferred(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 1308
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1309
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mZoomController:Lcom/android/hwcamera/ZoomController;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$5800(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ZoomController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/ZoomController;->getHideDelayTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1310
    return-void
.end method

.method public onZoomStart()V
    .locals 2

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1287
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    const/4 v1, 0x0

    #calls: Lcom/android/hwcamera/PhotoModule;->enableAutoFoucsMoving(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/PhotoModule;->access$4800(Lcom/android/hwcamera/PhotoModule;Z)V

    .line 1289
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$5300(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/ColorEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mColorEffect:Lcom/android/hwcamera/ui/ColorEffect;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$5300(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/ui/ColorEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/ui/ColorEffect;->hideContent()V

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$3900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mTipsService:Lcom/android/hwcamera/tips/TipsService;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$3900(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/tips/TipsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/tips/TipsService;->pauseAndHideTips()V

    .line 1298
    :cond_1
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mPaused:Z
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$4300(Lcom/android/hwcamera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #setter for: Lcom/android/hwcamera/PhotoModule;->mZoomValue:I
    invoke-static {v0, p1}, Lcom/android/hwcamera/PhotoModule;->access$5102(Lcom/android/hwcamera/PhotoModule;I)I

    .line 1277
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$1400(Lcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$1200(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$000(Lcom/android/hwcamera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1280
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mZoomValue:I
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$5100(Lcom/android/hwcamera/PhotoModule;)I

    move-result v1

    #calls: Lcom/android/hwcamera/PhotoModule;->updateCameraZoomValue(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/PhotoModule;->access$5200(Lcom/android/hwcamera/PhotoModule;I)V

    .line 1281
    iget-object v0, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;
    invoke-static {v0}, Lcom/android/hwcamera/PhotoModule;->access$1200(Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PhotoModule$OnZoomChangedListener;->this$0:Lcom/android/hwcamera/PhotoModule;

    #getter for: Lcom/android/hwcamera/PhotoModule;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/hwcamera/PhotoModule;->access$1400(Lcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
