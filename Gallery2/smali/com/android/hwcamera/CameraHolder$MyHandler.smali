.class Lcom/android/hwcamera/CameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/CameraHolder;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/CameraHolder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/hwcamera/CameraHolder$MyHandler;->this$0:Lcom/android/hwcamera/CameraHolder;

    .line 132
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v1, p0, Lcom/android/hwcamera/CameraHolder$MyHandler;->this$0:Lcom/android/hwcamera/CameraHolder;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraHolder$MyHandler;->this$0:Lcom/android/hwcamera/CameraHolder;

    #getter for: Lcom/android/hwcamera/CameraHolder;->mCameraOpened:Z
    invoke-static {v0}, Lcom/android/hwcamera/CameraHolder;->access$100(Lcom/android/hwcamera/CameraHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/CameraHolder$MyHandler;->this$0:Lcom/android/hwcamera/CameraHolder;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->release()V

    .line 146
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
