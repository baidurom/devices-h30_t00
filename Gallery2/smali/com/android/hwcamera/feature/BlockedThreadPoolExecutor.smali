.class public Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "BlockedThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;

.field private pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private unpaused:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;)V
    .locals 1
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "unit"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    iget-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->mListener:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;

    .line 47
    iput-object p7, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->mListener:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;

    .line 48
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;)V
    .locals 1
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "unit"
    .parameter
    .parameter "handler"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            "Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    iget-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->mListener:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;

    .line 24
    iput-object p8, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->mListener:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;

    .line 25
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;)V
    .locals 1
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "unit"
    .parameter
    .parameter "threadFactory"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    iget-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->mListener:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;

    .line 41
    iput-object p8, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->mListener:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;

    .line 42
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;)V
    .locals 1
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "unit"
    .parameter
    .parameter "threadFactory"
    .parameter "handler"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            "Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p6, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    iget-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->mListener:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;

    .line 33
    iput-object p9, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->mListener:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;

    .line 34
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "r"
    .parameter "t"

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 90
    iget-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 94
    return-void

    .line 92
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 5
    .parameter "command"

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 61
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->mListener:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->mListener:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;

    invoke-interface {v1}, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;->needBlock()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->getActiveCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string v1, "CAM_Mem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activeCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->getActiveCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    :goto_1
    return-void

    .line 71
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->getPoolSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v1

    if-nez v1, :cond_3

    .line 73
    const-string v1, "CAM_Mem"

    const-string v2, "wait"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    iget-object v1, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 77
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    :try_start_3
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 81
    iget-object v1, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
