.class Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;
.super Landroid/os/AsyncTask;
.source "DmrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/DmrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeRemotePositionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSeekTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/app/DmrController;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/DmrController;I)V
    .locals 4
    .parameter
    .parameter "progress"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->this$0:Lcom/android/gallery3d/app/DmrController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 171
    int-to-float v1, p2

    #getter for: Lcom/android/gallery3d/app/DmrController;->mDuration:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/gallery3d/app/DmrController;->access$300(Lcom/android/gallery3d/app/DmrController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->timeStr2Int(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 173
    .local v0, time:I
    const-string v1, "AirSharing_Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time in second : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->timeInt2String(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->mSeekTime:Ljava/lang/String;

    .line 175
    const-string v1, "AirSharing_Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time in string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->mSeekTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "params"

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;
    invoke-static {v1}, Lcom/android/gallery3d/app/DmrController;->access$200(Lcom/android/gallery3d/app/DmrController;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;
    invoke-static {v1}, Lcom/android/gallery3d/app/DmrController;->access$200(Lcom/android/gallery3d/app/DmrController;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->mSeekTime:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;->seek(Ljava/lang/String;)Z

    move-result v0

    .line 193
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 167
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$100(Lcom/android/gallery3d/app/DmrController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 198
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 167
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->this$0:Lcom/android/gallery3d/app/DmrController;

    #getter for: Lcom/android/gallery3d/app/DmrController;->mCanSync:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/gallery3d/app/DmrController;->access$400(Lcom/android/gallery3d/app/DmrController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->this$0:Lcom/android/gallery3d/app/DmrController;

    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->mSeekTime:Ljava/lang/String;

    #setter for: Lcom/android/gallery3d/app/DmrController;->mPosition:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/DmrController;->access$502(Lcom/android/gallery3d/app/DmrController;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->this$0:Lcom/android/gallery3d/app/DmrController;

    iget-object v1, p0, Lcom/android/gallery3d/app/DmrController$ChangeRemotePositionTask;->mSeekTime:Ljava/lang/String;

    #calls: Lcom/android/gallery3d/app/DmrController;->showInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/DmrController;->access$600(Lcom/android/gallery3d/app/DmrController;Ljava/lang/String;)V

    .line 183
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 184
    return-void
.end method
