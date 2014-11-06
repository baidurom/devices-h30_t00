.class public Lcom/android/hwcamera/ActivityBase$CameraOpenThread;
.super Ljava/lang/Thread;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CameraOpenThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ActivityBase;


# direct methods
.method protected constructor <init>(Lcom/android/hwcamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/hwcamera/ActivityBase;

    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/hwcamera/ActivityBase;

    iget-object v3, p0, Lcom/android/hwcamera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/hwcamera/ActivityBase;

    iget v3, v3, Lcom/android/hwcamera/ActivityBase;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/hwcamera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 337
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/hwcamera/ActivityBase;

    iget-object v2, p0, Lcom/android/hwcamera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/hwcamera/ActivityBase;

    iget-object v2, v2, Lcom/android/hwcamera/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, v1, Lcom/android/hwcamera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/hwcamera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 343
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/hwcamera/ActivityBase;

    iput-boolean v4, v1, Lcom/android/hwcamera/ActivityBase;->mOpenCameraFail:Z

    goto :goto_0

    .line 340
    .end local v0           #e:Lcom/android/hwcamera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 341
    .local v0, e:Lcom/android/hwcamera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/hwcamera/ActivityBase$CameraOpenThread;->this$0:Lcom/android/hwcamera/ActivityBase;

    iput-boolean v4, v1, Lcom/android/hwcamera/ActivityBase;->mCameraDisabled:Z

    goto :goto_0
.end method
