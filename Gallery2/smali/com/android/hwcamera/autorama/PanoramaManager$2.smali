.class Lcom/android/hwcamera/autorama/PanoramaManager$2;
.super Ljava/lang/Object;
.source "PanoramaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/autorama/PanoramaManager;->stopAsync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

.field final synthetic val$isMerge:Z


# direct methods
.method constructor <init>(Lcom/android/hwcamera/autorama/PanoramaManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$2;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    iput-boolean p2, p0, Lcom/android/hwcamera/autorama/PanoramaManager$2;->val$isMerge:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$2;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    iget-boolean v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$2;->val$isMerge:Z

    #calls: Lcom/android/hwcamera/autorama/PanoramaManager;->doStop(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$1000(Lcom/android/hwcamera/autorama/PanoramaManager;Z)V

    .line 283
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$2;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    new-instance v1, Lcom/android/hwcamera/autorama/PanoramaManager$2$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/autorama/PanoramaManager$2$1;-><init>(Lcom/android/hwcamera/autorama/PanoramaManager$2;)V

    #setter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mOnHardwareStop:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$902(Lcom/android/hwcamera/autorama/PanoramaManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 293
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$2;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/PanoramaManager;->mPanoramaHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/PanoramaManager$2;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mOnHardwareStop:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$900(Lcom/android/hwcamera/autorama/PanoramaManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$2;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$1200(Lcom/android/hwcamera/autorama/PanoramaManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/autorama/PanoramaManager$2;->this$0:Lcom/android/hwcamera/autorama/PanoramaManager;

    #getter for: Lcom/android/hwcamera/autorama/PanoramaManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/PanoramaManager;->access$1200(Lcom/android/hwcamera/autorama/PanoramaManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 296
    monitor-exit v1

    .line 297
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
