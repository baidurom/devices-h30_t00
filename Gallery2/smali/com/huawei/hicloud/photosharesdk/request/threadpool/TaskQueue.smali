.class public Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;
.super Ljava/lang/Object;
.source "TaskQueue.java"


# instance fields
.field private idleCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private maxCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected maxIdleTime:I

.field protected tasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;",
            ">;"
        }
    .end annotation
.end field

.field private threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private threads:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "maxCount"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->maxCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    const v0, 0x186a0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->maxIdleTime:I

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->threads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->maxCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->idleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    return-void
.end method

.method private notifyThreadToRuning(Z)V
    .locals 3
    .parameter "isNeedNewThread"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;-><init>(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;)V

    .line 175
    .local v0, taskThread:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->threads:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->start()V

    .line 186
    .end local v0           #taskThread:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    monitor-enter v2

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 182
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;I)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
    .locals 7
    .parameter "task"
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    if-nez p1, :cond_0

    move-object v2, v1

    .line 113
    .end local v1           #taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    .local v2, taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    :goto_0
    return-object v2

    .line 85
    .end local v2           #taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    .restart local v1       #taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    :cond_0
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;

    .end local v1           #taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    invoke-direct {v1, p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;-><init>(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;)V

    .line 88
    .restart local v1       #taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;

    invoke-direct {v3, p0, v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;-><init>(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;)V

    .line 89
    .local v3, timeoutTask:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TimeoutTask;
    invoke-interface {p1, v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;->setTimeoutTask(Ljava/util/TimerTask;)V

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, needNewThread:Z
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    monitor-enter v5

    .line 95
    if-nez p2, :cond_2

    .line 96
    :try_start_0
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 93
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {v1, v6}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->setState(I)V

    .line 105
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->idleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ge v4, v6, :cond_1

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->maxCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 106
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 107
    const/4 v0, 0x1

    .line 111
    :cond_1
    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->notifyThreadToRuning(Z)V

    move-object v2, v1

    .line 113
    .end local v1           #taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    .restart local v2       #taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    goto :goto_0

    .line 98
    .end local v2           #taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    .restart local v1       #taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    check-cast v4, Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 93
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected decreaseIdleCount()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->idleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 258
    return-void
.end method

.method protected deleteThread(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;Ljava/util/Iterator;)V
    .locals 1
    .parameter "taskThread"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;>;"
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 361
    if-eqz p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->threads:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 365
    :cond_0
    return-void
.end method

.method public getIdleCount()I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->idleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getMaxThreadCount()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->maxCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getThreadCount()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected increaseIdleCount()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->idleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 248
    return-void
.end method

.method protected obtainTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    .locals 7
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 271
    .local v2, task:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    monitor-enter v4

    .line 272
    const/4 v1, 0x1

    .line 273
    .local v1, flag:Z
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_3

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;

    move-object v2, v0

    .line 271
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    if-eqz v2, :cond_2

    .line 285
    invoke-virtual {v2, p1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->setTaskThread(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;)V

    .line 288
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->setState(I)V

    .line 291
    :cond_2
    return-object v2

    .line 274
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    iget v5, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->maxIdleTime:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 275
    const/4 v1, 0x0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected removeTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;)Z
    .locals 4
    .parameter "taskHandle"

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, ret:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 314
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_0
    return v1

    .line 307
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_0
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    monitor-enter v3

    .line 308
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 309
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 307
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->setState(I)V

    move v1, v0

    .line 314
    .restart local v1       #ret:I
    goto :goto_0

    .line 307
    .end local v1           #ret:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public declared-synchronized setMaxIdleTime(I)V
    .locals 1
    .parameter "maxIdleTime"

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->maxIdleTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public terminateAllThread()V
    .locals 7

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 215
    .local v1, taskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->threads:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 221
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    monitor-enter v5

    .line 222
    :try_start_0
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 223
    .local v2, taskItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 221
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    return-void

    .line 215
    .end local v2           #taskItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;

    .line 216
    .local v3, thread:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->setTerminate(ZLjava/util/Iterator;)V

    .line 217
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->interrupt()V

    goto :goto_0

    .line 224
    .end local v3           #thread:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;
    .restart local v2       #taskItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;>;"
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;

    move-object v1, v0

    .line 225
    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->cancel(Ljava/util/Iterator;)Z

    goto :goto_1

    .line 221
    .end local v2           #taskItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected terminateTaskRunning(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;)Z
    .locals 4
    .parameter "taskThread"
    .parameter "taskHandle"

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, ret:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 339
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_0
    return v1

    .line 332
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_0
    if-eqz p2, :cond_1

    .line 333
    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->setState(I)V

    .line 335
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->setTerminate(ZLjava/util/Iterator;)V

    .line 336
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;->interrupt()V

    .line 337
    const/4 v0, 0x1

    move v1, v0

    .line 339
    .restart local v1       #ret:I
    goto :goto_0
.end method

.method public updateDownloadMaxCount(I)V
    .locals 7
    .parameter "newMaxCount"

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 125
    .local v2, isNeedNewThread:Z
    const/4 v1, 0x0

    .line 126
    .local v1, increaseNum:I
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->maxCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 127
    .local v4, oldMaxCount:I
    if-le p1, v4, :cond_0

    .line 128
    sub-int v1, p1, v4

    .line 134
    :cond_0
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->maxCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 162
    return-void

    .line 140
    :cond_1
    const/4 v3, 0x0

    .line 141
    .local v3, isTaskWaiting:Z
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    monitor-enter v6

    .line 142
    :try_start_0
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 143
    const/4 v3, 0x1

    .line 141
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->idleCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_3

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->maxCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ge v5, v6, :cond_3

    if-eqz v3, :cond_3

    .line 152
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 153
    const/4 v2, 0x1

    .line 158
    :cond_3
    if-eqz v3, :cond_4

    .line 159
    invoke-direct {p0, v2}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->notifyThreadToRuning(Z)V

    .line 138
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method
