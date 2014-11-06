.class public Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;
.super Ljava/lang/Thread;
.source "TaskThread.java"


# instance fields
.field private isTerminate:Z

.field private volatile itr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;",
            ">;"
        }
    .end annotation
.end field

.field private taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;


# direct methods
.method protected constructor <init>(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;)V
    .locals 2
    .parameter "taskQueue"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->isTerminate:Z

    .line 22
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->itr:Ljava/util/Iterator;

    .line 33
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized isTerminate()Z
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->isTerminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 41
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->increaseIdleCount()V

    .line 44
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 47
    .local v2, task:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    :try_start_0
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->getThreadCount()I

    move-result v3

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->getMaxThreadCount()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-le v3, v4, :cond_2

    .line 100
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->decreaseIdleCount()V

    .line 103
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->itr:Ljava/util/Iterator;

    invoke-virtual {v3, p0, v4}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->deleteThread(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;Ljava/util/Iterator;)V

    .line 104
    return-void

    .line 50
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v3, p0}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->obtainTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 57
    if-eqz v2, :cond_1

    .line 59
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->decreaseIdleCount()V

    .line 63
    :try_start_2
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->getTaskObject()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    move-result-object v1

    .line 64
    .local v1, object:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;
    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;->startTimeoutTimer()V

    .line 69
    invoke-interface {v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;->runTask()V

    .line 72
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->setState(I)V

    .line 75
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->increaseIdleCount()V

    .line 78
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;->onTaskResponse(I)V

    .line 80
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->cancel(Ljava/util/Iterator;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    const/4 v2, 0x0

    goto :goto_0

    .line 52
    .end local v1           #object:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 84
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 85
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->isTerminate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->taskQueue:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->increaseIdleCount()V

    goto :goto_0
.end method

.method public setTerminate(ZLjava/util/Iterator;)V
    .locals 1
    .parameter "isTerminate"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Iterator",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;>;"
    monitor-enter p0

    .line 114
    :try_start_0
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->isTerminate:Z

    .line 115
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->itr:Ljava/util/Iterator;

    .line 113
    monitor-exit p0

    .line 117
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
