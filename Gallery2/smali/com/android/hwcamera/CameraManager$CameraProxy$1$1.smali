.class Lcom/android/hwcamera/CameraManager$CameraProxy$1$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/CameraManager$CameraProxy$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/hwcamera/CameraManager$CameraProxy$1;

.field final synthetic val$mOpenSig:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/CameraManager$CameraProxy$1;Landroid/os/ConditionVariable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$1$1;->this$2:Lcom/android/hwcamera/CameraManager$CameraProxy$1;

    iput-object p2, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$1$1;->val$mOpenSig:Landroid/os/ConditionVariable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x400

    .line 379
    const-string v0, "CameraProxy.ctor.mCameraOpenHandler.run"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$1$1;->this$2:Lcom/android/hwcamera/CameraManager$CameraProxy$1;

    iget-object v0, v0, Lcom/android/hwcamera/CameraManager$CameraProxy$1;->this$1:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$1$1;->this$2:Lcom/android/hwcamera/CameraManager$CameraProxy$1;

    iget v1, v1, Lcom/android/hwcamera/CameraManager$CameraProxy$1;->val$cameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/feature/FeatureCamera;->open(I)Lcom/android/hwcamera/feature/ICamera;

    move-result-object v1

    #setter for: Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;
    invoke-static {v0, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->access$602(Lcom/android/hwcamera/CameraManager$CameraProxy;Lcom/android/hwcamera/feature/ICamera;)Lcom/android/hwcamera/feature/ICamera;

    .line 382
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$1$1;->this$2:Lcom/android/hwcamera/CameraManager$CameraProxy$1;

    iget-object v0, v0, Lcom/android/hwcamera/CameraManager$CameraProxy$1;->this$1:Lcom/android/hwcamera/CameraManager$CameraProxy;

    #getter for: Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->access$600(Lcom/android/hwcamera/CameraManager$CameraProxy;)Lcom/android/hwcamera/feature/ICamera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->Assert(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$1$1;->val$mOpenSig:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 385
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$1$1;->this$2:Lcom/android/hwcamera/CameraManager$CameraProxy$1;

    iget-object v0, v0, Lcom/android/hwcamera/CameraManager$CameraProxy$1;->val$mSig:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 386
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 388
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$1$1;->val$mOpenSig:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 385
    iget-object v1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$1$1;->this$2:Lcom/android/hwcamera/CameraManager$CameraProxy$1;

    iget-object v1, v1, Lcom/android/hwcamera/CameraManager$CameraProxy$1;->val$mSig:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 386
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
