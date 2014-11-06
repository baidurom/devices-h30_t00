.class Lcom/android/hwcamera/CameraManager$CameraProxy$3;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/CameraManager$CameraProxy;->takePicture2(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hwcamera/CameraManager$CameraProxy;

.field final synthetic val$cameraState:I

.field final synthetic val$focusState:I

.field final synthetic val$jpeg:Landroid/hardware/Camera$PictureCallback;

.field final synthetic val$mSig:Landroid/os/ConditionVariable;

.field final synthetic val$pictureRes:Lcom/android/hwcamera/CameraManager$TakePictureResualt;

.field final synthetic val$postview:Landroid/hardware/Camera$PictureCallback;

.field final synthetic val$raw:Landroid/hardware/Camera$PictureCallback;

.field final synthetic val$shutter:Landroid/hardware/Camera$ShutterCallback;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/CameraManager$CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;IILcom/android/hwcamera/CameraManager$TakePictureResualt;Landroid/os/ConditionVariable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->this$1:Lcom/android/hwcamera/CameraManager$CameraProxy;

    iput-object p2, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$shutter:Landroid/hardware/Camera$ShutterCallback;

    iput-object p3, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$raw:Landroid/hardware/Camera$PictureCallback;

    iput-object p4, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$postview:Landroid/hardware/Camera$PictureCallback;

    iput-object p5, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$jpeg:Landroid/hardware/Camera$PictureCallback;

    iput p6, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$cameraState:I

    iput p7, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$focusState:I

    iput-object p8, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$pictureRes:Lcom/android/hwcamera/CameraManager$TakePictureResualt;

    iput-object p9, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$mSig:Landroid/os/ConditionVariable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->this$1:Lcom/android/hwcamera/CameraManager$CameraProxy;

    #getter for: Lcom/android/hwcamera/CameraManager$CameraProxy;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;
    invoke-static {v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;->access$600(Lcom/android/hwcamera/CameraManager$CameraProxy;)Lcom/android/hwcamera/feature/ICamera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$shutter:Landroid/hardware/Camera$ShutterCallback;

    iget-object v3, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$raw:Landroid/hardware/Camera$PictureCallback;

    iget-object v4, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$postview:Landroid/hardware/Camera$PictureCallback;

    iget-object v5, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$jpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/hwcamera/feature/ICamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$mSig:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 530
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 524
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "take picture failed; cameraState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$cameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", focusState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$focusState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p0, Lcom/android/hwcamera/CameraManager$CameraProxy$3;->val$pictureRes:Lcom/android/hwcamera/CameraManager$TakePictureResualt;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/hwcamera/CameraManager$TakePictureResualt;->res:I

    goto :goto_0
.end method
