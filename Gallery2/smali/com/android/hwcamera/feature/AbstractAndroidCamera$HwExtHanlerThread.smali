.class Lcom/android/hwcamera/feature/AbstractAndroidCamera$HwExtHanlerThread;
.super Landroid/os/HandlerThread;
.source "AbstractAndroidCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/feature/AbstractAndroidCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HwExtHanlerThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/hwcamera/feature/AbstractAndroidCamera;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/feature/AbstractAndroidCamera;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/hwcamera/feature/AbstractAndroidCamera$HwExtHanlerThread;->this$0:Lcom/android/hwcamera/feature/AbstractAndroidCamera;

    .line 69
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "AbstractGoogleCamera"

    const-string v1, "HwExtCamera_Hander_Thread prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 76
    new-instance v0, Lcom/android/hwcamera/feature/HwExtCameraHanler;

    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera$HwExtHanlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/hwcamera/feature/HwExtCameraHanler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/hwcamera/feature/AbstractAndroidCamera$HwExtHanlerThread;->mHandler:Landroid/os/Handler;

    .line 77
    iget-object v0, p0, Lcom/android/hwcamera/feature/AbstractAndroidCamera$HwExtHanlerThread;->this$0:Lcom/android/hwcamera/feature/AbstractAndroidCamera;

    iget-object v1, p0, Lcom/android/hwcamera/feature/AbstractAndroidCamera$HwExtHanlerThread;->mHandler:Landroid/os/Handler;

    #calls: Lcom/android/hwcamera/feature/AbstractAndroidCamera;->setHWExtCameraHandler(Landroid/os/Handler;)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->access$000(Lcom/android/hwcamera/feature/AbstractAndroidCamera;Landroid/os/Handler;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera$HwExtHanlerThread;->setPriority(I)V

    .line 79
    return-void
.end method

.method public quit()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    const-string v0, "AbstractGoogleCamera"

    const-string v1, "HwExtCamera_Hander_Thread quit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/hwcamera/feature/AbstractAndroidCamera$HwExtHanlerThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/feature/AbstractAndroidCamera$HwExtHanlerThread;->this$0:Lcom/android/hwcamera/feature/AbstractAndroidCamera;

    #calls: Lcom/android/hwcamera/feature/AbstractAndroidCamera;->setHWExtCameraHandler(Landroid/os/Handler;)V
    invoke-static {v0, v2}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->access$000(Lcom/android/hwcamera/feature/AbstractAndroidCamera;Landroid/os/Handler;)V

    .line 86
    iget-object v0, p0, Lcom/android/hwcamera/feature/AbstractAndroidCamera$HwExtHanlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 87
    iput-object v2, p0, Lcom/android/hwcamera/feature/AbstractAndroidCamera$HwExtHanlerThread;->mHandler:Landroid/os/Handler;

    .line 89
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method
