.class Lcom/android/hwcamera/autorama/MavManager$2;
.super Ljava/lang/Object;
.source "MavManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/autorama/MavManager;->stopAsync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/autorama/MavManager;

.field final synthetic val$isMerge:Z


# direct methods
.method constructor <init>(Lcom/android/hwcamera/autorama/MavManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/hwcamera/autorama/MavManager$2;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    iput-boolean p2, p0, Lcom/android/hwcamera/autorama/MavManager$2;->val$isMerge:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$2;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    iget-boolean v1, p0, Lcom/android/hwcamera/autorama/MavManager$2;->val$isMerge:Z

    #calls: Lcom/android/hwcamera/autorama/MavManager;->doStop(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/autorama/MavManager;->access$700(Lcom/android/hwcamera/autorama/MavManager;Z)V

    .line 236
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$2;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    new-instance v1, Lcom/android/hwcamera/autorama/MavManager$2$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/autorama/MavManager$2$1;-><init>(Lcom/android/hwcamera/autorama/MavManager$2;)V

    #setter for: Lcom/android/hwcamera/autorama/MavManager;->mOnHardwareStop:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/hwcamera/autorama/MavManager;->access$802(Lcom/android/hwcamera/autorama/MavManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 246
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$2;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    iget-object v0, v0, Lcom/android/hwcamera/autorama/MavManager;->mMavHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/MavManager$2;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mOnHardwareStop:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/hwcamera/autorama/MavManager;->access$800(Lcom/android/hwcamera/autorama/MavManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$2;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$1000(Lcom/android/hwcamera/autorama/MavManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/autorama/MavManager$2;->this$0:Lcom/android/hwcamera/autorama/MavManager;

    #getter for: Lcom/android/hwcamera/autorama/MavManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/MavManager;->access$1000(Lcom/android/hwcamera/autorama/MavManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit v1

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
