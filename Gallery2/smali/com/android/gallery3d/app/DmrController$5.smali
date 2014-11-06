.class Lcom/android/gallery3d/app/DmrController$5;
.super Landroid/os/Handler;
.source "DmrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/DmrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/DmrController;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/DmrController;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/gallery3d/app/DmrController$5;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 263
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$5;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$400(Lcom/android/gallery3d/app/DmrController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PLAYING:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController$5;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;
    invoke-static {v1}, Lcom/android/gallery3d/app/DmrController;->access$1500(Lcom/android/gallery3d/app/DmrController;)Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$5;->this$0:Lcom/android/gallery3d/app/DmrController;

    #calls: Lcom/android/gallery3d/app/DmrController;->showPlaying()V
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$1600(Lcom/android/gallery3d/app/DmrController;)V

    goto :goto_0

    .line 268
    :cond_1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->PAUSED_PLAYBACK:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController$5;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mState:Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;
    invoke-static {v1}, Lcom/android/gallery3d/app/DmrController;->access$1500(Lcom/android/gallery3d/app/DmrController;)Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$5;->this$0:Lcom/android/gallery3d/app/DmrController;

    #calls: Lcom/android/gallery3d/app/DmrController;->showPaused()V
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$1700(Lcom/android/gallery3d/app/DmrController;)V

    goto :goto_0

    .line 274
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$5;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mChangeRemoteStatus:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$1800(Lcom/android/gallery3d/app/DmrController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 279
    :pswitch_2
    new-instance v0, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;

    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController$5;->this$0:Lcom/android/gallery3d/app/DmrController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;-><init>(Lcom/android/gallery3d/app/DmrController;I)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 284
    :pswitch_3
    new-instance v0, Lcom/android/gallery3d/app/DmrController$ChangeVolumeTask;

    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController$5;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/DmrController$ChangeVolumeTask;-><init>(Lcom/android/gallery3d/app/DmrController;Lcom/android/gallery3d/app/DmrController$1;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/DmrController$ChangeVolumeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 288
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$5;->this$0:Lcom/android/gallery3d/app/DmrController;

    #calls: Lcom/android/gallery3d/app/DmrController;->onMovieFinished()V
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$2000(Lcom/android/gallery3d/app/DmrController;)V

    goto :goto_0

    .line 291
    :pswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$5;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$400(Lcom/android/gallery3d/app/DmrController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 293
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$5;->this$0:Lcom/android/gallery3d/app/DmrController;

    #calls: Lcom/android/gallery3d/app/DmrController;->showInfo(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/gallery3d/app/DmrController;->access$600(Lcom/android/gallery3d/app/DmrController;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
