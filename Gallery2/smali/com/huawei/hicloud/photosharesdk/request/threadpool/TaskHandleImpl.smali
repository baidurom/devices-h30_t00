.class public Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
.super Ljava/lang/Object;
.source "TaskHandleImpl.java"

# interfaces
.implements Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;


# instance fields
.field private state:I

.field private taskObject:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

.field private taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

.field private taskThread:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;


# direct methods
.method protected constructor <init>(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;)V
    .locals 1
    .parameter "taskQueue"
    .parameter "taskObject"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    .line 21
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskObject:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    .line 26
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskThread:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->state:I

    .line 44
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    .line 45
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskObject:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    .line 46
    return-void
.end method


# virtual methods
.method public cancel(Ljava/util/Iterator;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, taskItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;>;"
    const/4 v0, 0x0

    .line 56
    .local v0, ret:Z
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    if-nez v2, :cond_0

    move v1, v0

    .line 110
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_0
    return v1

    .line 61
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_0
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskObject:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskObject:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    invoke-interface {v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;->stopTimeoutTimer()V

    .line 65
    :cond_1
    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->state:I

    packed-switch v2, :pswitch_data_0

    .line 108
    :cond_2
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskObject:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    move v1, v0

    .line 110
    .restart local v1       #ret:I
    goto :goto_0

    .line 68
    .end local v1           #ret:I
    :pswitch_0
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_3

    .line 69
    const-string v2, "taskHandle"

    const-string v3, "TASK_STATE_WAITING cancel"

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_3
    if-eqz p1, :cond_4

    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 75
    :goto_2
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskObject:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    if-eqz v2, :cond_2

    .line 76
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskObject:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    invoke-interface {v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;->onCancelTask()V

    goto :goto_1

    .line 73
    :cond_4
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v2, p0}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->removeTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;)Z

    move-result v0

    goto :goto_2

    .line 83
    :pswitch_1
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskThread:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;

    invoke-virtual {v2, v3, p0}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->terminateTaskRunning(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;)Z

    move-result v0

    .line 84
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskObject:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    if-eqz v2, :cond_5

    .line 85
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskObject:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    invoke-interface {v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;->onCancelTask()V

    .line 87
    :cond_5
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_6

    .line 88
    const-string v2, "taskHandle"

    const-string v3, "TASK_STATE_RUNNING cancel"

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_6
    const/4 v0, 0x1

    .line 90
    goto :goto_1

    .line 94
    :pswitch_2
    const/4 v0, 0x1

    .line 95
    goto :goto_1

    .line 99
    :pswitch_3
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_2

    .line 100
    const-string v2, "taskHandle"

    const-string v3, "TASK_STATE_FINISHED cancel"

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->state:I

    return v0
.end method

.method public getTaskObject()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskObject:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    return-object v0
.end method

.method protected getTaskThread()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskThread:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;

    return-object v0
.end method

.method protected setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 148
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->state:I

    .line 149
    return-void
.end method

.method protected setTaskThread(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;)V
    .locals 0
    .parameter "taskThread"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->taskThread:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;

    .line 139
    return-void
.end method
