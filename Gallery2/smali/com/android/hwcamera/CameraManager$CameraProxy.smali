.class public Lcom/android/hwcamera/CameraManager$CameraProxy;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraProxy"
.end annotation


# instance fields
.field private mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

.field final synthetic this$0:Lcom/android/hwcamera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/CameraManager;I)V
    .locals 5
    .parameter
    .parameter "cameraId"

    .prologue
    const-wide/16 v3, 0x400

    .line 365
    iput-object p1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const-string v1, "CameraProxy.ctor"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 367
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 368
    .local v0, mSig:Landroid/os/ConditionVariable;
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 369
    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/hwcamera/CameraManager$CameraProxy$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/hwcamera/CameraManager$CameraProxy$1;-><init>(Lcom/android/hwcamera/CameraManager$CameraProxy;Lcom/android/hwcamera/CameraManager;ILandroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 396
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 397
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/CameraManager;ILcom/android/hwcamera/CameraManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/CameraManager$CameraProxy;-><init>(Lcom/android/hwcamera/CameraManager;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/hwcamera/CameraManager$CameraProxy;)Lcom/android/hwcamera/feature/ICamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/hwcamera/CameraManager$CameraProxy;Lcom/android/hwcamera/feature/ICamera;)Lcom/android/hwcamera/feature/ICamera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    return-object p1
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 2
    .parameter "callbackBuffer"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 459
    return-void
.end method

.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 463
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 467
    return-void
.end method

.method public cancleTakePicture()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0}, Lcom/android/hwcamera/feature/ICamera;->cancelTakePicture()V

    .line 614
    return-void
.end method

.method public enableShutterSound(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 582
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x19

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 583
    return-void

    :cond_0
    move v0, v1

    .line 582
    goto :goto_0
.end method

.method public enableVideoRecordStereo(ZILandroid/media/AudioManager;)V
    .locals 1
    .parameter "enable"
    .parameter "oritation"
    .parameter "audioManager"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/hwcamera/feature/ICamera;->enableVideoRecordStereo(ZILandroid/media/AudioManager;)V

    .line 618
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0}, Lcom/android/hwcamera/feature/ICamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    return-object v0
.end method

.method public getFeatureShotMode()Lcom/android/hwcamera/feature/shot/IFeatureShotMode;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0}, Lcom/android/hwcamera/feature/ICamera;->getFeatureShotMode()Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 5

    .prologue
    const-wide/16 v3, 0x400

    .line 573
    const-string v1, "CameraProxy.getParameters"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 575
    iget-object v1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/android/hwcamera/CameraManager;->access$300(Lcom/android/hwcamera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 576
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/hwcamera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1, v2}, Lcom/android/hwcamera/CameraManager;->access$302(Lcom/android/hwcamera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 577
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 578
    return-object v0
.end method

.method public getSupportedIsoValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0}, Lcom/android/hwcamera/feature/ICamera;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedShootingModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0}, Lcom/android/hwcamera/feature/ICamera;->getSupportedShootingModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isAndroidCamera()Z
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0}, Lcom/android/hwcamera/feature/ICamera;->isAndroidCamera()Z

    move-result v0

    return v0
.end method

.method public isSupportSmile()Z
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0}, Lcom/android/hwcamera/feature/ICamera;->isSupportSmile()Z

    move-result v0

    return v0
.end method

.method public isSupportTargetTrack()Z
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0}, Lcom/android/hwcamera/feature/ICamera;->isSupportTargetTrack()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 430
    return-void
.end method

.method public reconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 419
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$200(Lcom/android/hwcamera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$200(Lcom/android/hwcamera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 422
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 415
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 2
    .parameter "cb"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 472
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 540
    return-void
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 561
    return-void
.end method

.method public setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 2
    .parameter "listener"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 549
    return-void
.end method

.method public setFaceOrientation(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 645
    return-void
.end method

.method public setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .parameter "mParameters"
    .parameter "iso"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0, p1, p2}, Lcom/android/hwcamera/feature/ICamera;->setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 565
    return-void
.end method

.method public setParametersAsync(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "params"

    .prologue
    const/16 v1, 0x15

    .line 568
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 569
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 570
    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 451
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 455
    return-void
.end method

.method public setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 439
    return-void
.end method

.method public setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 435
    return-void
.end method

.method public setShootMode(Ljava/lang/String;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 650
    return-void
.end method

.method public setSmileDetection(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/feature/ICamera;->setSmileDetection(Z)V

    .line 634
    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 544
    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 553
    return-void
.end method

.method public startMTKPanorama(ILandroid/hardware/Camera$AUTORAMACallback;Landroid/hardware/Camera$AUTORAMAMVCallback;)V
    .locals 1
    .parameter "num"
    .parameter "cb"
    .parameter "MVcb"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/hwcamera/feature/ICamera;->startMTKPanorama(ILandroid/hardware/Camera$AUTORAMACallback;Landroid/hardware/Camera$AUTORAMAMVCallback;)V

    .line 654
    return-void
.end method

.method public startMav(ILandroid/hardware/Camera$MAVCallback;)V
    .locals 1
    .parameter "num"
    .parameter "cb"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0, p1, p2}, Lcom/android/hwcamera/feature/ICamera;->startMav(ILandroid/hardware/Camera$MAVCallback;)V

    .line 666
    return-void
.end method

.method public startPreviewAsync()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 443
    return-void
.end method

.method public startTargetTracking(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/feature/ICamera;->startTargetTracking(Landroid/hardware/Camera$Parameters;)V

    .line 622
    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 557
    return-void
.end method

.method public stopMTKPanorama(I)V
    .locals 1
    .parameter "isMerge"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/feature/ICamera;->stopMTKPanorama(I)V

    .line 658
    return-void
.end method

.method public stopMTKPanoramaCallback()V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0}, Lcom/android/hwcamera/feature/ICamera;->stopMTKPanoramaCallback()V

    .line 662
    return-void
.end method

.method public stopMav(I)V
    .locals 1
    .parameter "isMerge"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/feature/ICamera;->stopMav(I)V

    .line 670
    return-void
.end method

.method public stopMavCallback()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0}, Lcom/android/hwcamera/feature/ICamera;->stopMavCallback()V

    .line 674
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 447
    return-void
.end method

.method public stopTargetTracking(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/feature/ICamera;->stopTargetTracking(Landroid/hardware/Camera$Parameters;)V

    .line 626
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)I
    .locals 9
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 478
    new-instance v7, Landroid/os/ConditionVariable;

    invoke-direct {v7}, Landroid/os/ConditionVariable;-><init>()V

    .line 480
    .local v7, mSig:Landroid/os/ConditionVariable;
    new-instance v6, Lcom/android/hwcamera/CameraManager$TakePictureResualt;

    invoke-direct {v6}, Lcom/android/hwcamera/CameraManager$TakePictureResualt;-><init>()V

    .line 482
    .local v6, pictureRes:Lcom/android/hwcamera/CameraManager$TakePictureResualt;
    invoke-virtual {v7}, Landroid/os/ConditionVariable;->close()V

    .line 484
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lcom/android/hwcamera/CameraManager$CameraProxy$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/hwcamera/CameraManager$CameraProxy$2;-><init>(Lcom/android/hwcamera/CameraManager$CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/hwcamera/CameraManager$TakePictureResualt;Landroid/os/ConditionVariable;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    invoke-virtual {v7}, Landroid/os/ConditionVariable;->block()V

    .line 502
    iget v0, v6, Lcom/android/hwcamera/CameraManager$TakePictureResualt;->res:I

    return v0
.end method

.method public takePicture2(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)I
    .locals 11
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"
    .parameter "cameraState"
    .parameter "focusState"

    .prologue
    .line 511
    new-instance v9, Landroid/os/ConditionVariable;

    invoke-direct {v9}, Landroid/os/ConditionVariable;-><init>()V

    .line 513
    .local v9, mSig:Landroid/os/ConditionVariable;
    new-instance v8, Lcom/android/hwcamera/CameraManager$TakePictureResualt;

    invoke-direct {v8}, Lcom/android/hwcamera/CameraManager$TakePictureResualt;-><init>()V

    .line 515
    .local v8, pictureRes:Lcom/android/hwcamera/CameraManager$TakePictureResualt;
    invoke-virtual {v9}, Landroid/os/ConditionVariable;->close()V

    .line 517
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/hwcamera/CameraManager$CameraProxy$3;-><init>(Lcom/android/hwcamera/CameraManager$CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;IILcom/android/hwcamera/CameraManager$TakePictureResualt;Landroid/os/ConditionVariable;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 532
    invoke-virtual {v9}, Landroid/os/ConditionVariable;->block()V

    .line 534
    iget v0, v8, Lcom/android/hwcamera/CameraManager$TakePictureResualt;->res:I

    return v0
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 426
    return-void
.end method

.method public updateShootMode(Ljava/lang/String;Landroid/hardware/Camera$Parameters;ZI)Z
    .locals 1
    .parameter "mode"
    .parameter "parameters"
    .parameter "useBackProcessIfNeeded"
    .parameter "cameraId"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/hwcamera/feature/ICamera;->updateShootMode(Ljava/lang/String;Landroid/hardware/Camera$Parameters;ZI)Z

    move-result v0

    return v0
.end method

.method public waitForIdle()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager;->access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 587
    return-void
.end method
