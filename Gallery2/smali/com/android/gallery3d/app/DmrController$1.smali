.class Lcom/android/gallery3d/app/DmrController$1;
.super Ljava/lang/Object;
.source "DmrController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 202
    iput-object p1, p0, Lcom/android/gallery3d/app/DmrController$1;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$1;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$200(Lcom/android/gallery3d/app/DmrController;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$1;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$400(Lcom/android/gallery3d/app/DmrController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$1;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mPlaying:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$700(Lcom/android/gallery3d/app/DmrController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$1;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$200(Lcom/android/gallery3d/app/DmrController;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->play()Z

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$1;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$400(Lcom/android/gallery3d/app/DmrController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$1;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$200(Lcom/android/gallery3d/app/DmrController;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->pause()Z

    goto :goto_1
.end method
