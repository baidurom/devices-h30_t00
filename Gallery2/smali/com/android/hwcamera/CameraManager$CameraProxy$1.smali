.class Lcom/android/hwcamera/CameraManager$CameraProxy$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/CameraManager$CameraProxy;-><init>(Lcom/android/hwcamera/CameraManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hwcamera/CameraManager$CameraProxy;

.field final synthetic val$cameraId:I

.field final synthetic val$mSig:Landroid/os/ConditionVariable;

.field final synthetic val$this$0:Lcom/android/hwcamera/CameraManager;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/CameraManager$CameraProxy;Lcom/android/hwcamera/CameraManager;ILandroid/os/ConditionVariable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$1;->this$1:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iput-object p2, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$1;->val$this$0:Lcom/android/hwcamera/CameraManager;

    iput p3, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$1;->val$cameraId:I

    iput-object p4, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$1;->val$mSig:Landroid/os/ConditionVariable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x400

    .line 372
    const-string v1, "CameraProxy.ctor.mCameraHandler.run"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 374
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 375
    .local v0, mOpenSig:Landroid/os/ConditionVariable;
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 376
    iget-object v1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$1;->this$1:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iget-object v1, v1, Lcom/android/hwcamera/CameraManager$CameraProxy;->this$0:Lcom/android/hwcamera/CameraManager;

    #getter for: Lcom/android/hwcamera/CameraManager;->mCameraOpenHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/CameraManager;->access$700(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/hwcamera/CameraManager$CameraProxy$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/hwcamera/CameraManager$CameraProxy$1$1;-><init>(Lcom/android/hwcamera/CameraManager$CameraProxy$1;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 392
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 393
    return-void
.end method
