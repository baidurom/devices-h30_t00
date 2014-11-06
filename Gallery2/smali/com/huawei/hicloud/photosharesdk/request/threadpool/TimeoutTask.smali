.class public Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;
.super Ljava/util/TimerTask;
.source "TimeoutTask.java"


# instance fields
.field private taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;

.field private taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;


# direct methods
.method protected constructor <init>(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;)V
    .locals 1
    .parameter "taskQueue"
    .parameter "taskHandle"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    .line 23
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;->taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;

    .line 37
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    .line 38
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;->taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;

    .line 39
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;->taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;->taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;->taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->removeTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;)Z

    .line 64
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;->taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->getTaskObject()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;->onTaskResponse(I)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;->taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->getTaskThread()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;->taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->terminateTaskRunning(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;)Z

    .line 73
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;->taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->getTaskObject()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;->onTaskResponse(I)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
