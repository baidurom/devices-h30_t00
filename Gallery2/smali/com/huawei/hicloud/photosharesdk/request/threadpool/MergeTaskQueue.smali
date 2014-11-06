.class public Lcom/huawei/hicloud/photosharesdk/request/threadpool/MergeTaskQueue;
.super Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;
.source "MergeTaskQueue.java"


# instance fields
.field private mMaxMerge:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxCount"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;-><init>(I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/MergeTaskQueue;->mMaxMerge:I

    .line 15
    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/MergeTaskQueue;->mMaxMerge:I

    .line 16
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "maxCount"
    .parameter "maxMerge"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;-><init>(I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/MergeTaskQueue;->mMaxMerge:I

    .line 20
    iput p2, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/MergeTaskQueue;->mMaxMerge:I

    .line 21
    return-void
.end method


# virtual methods
.method protected obtainTask(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;)Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    .locals 12
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v6, 0x0

    .line 29
    .local v6, task:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    monitor-enter v9

    .line 30
    const/4 v2, 0x1

    .line 31
    .local v2, flag:Z
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v2, :cond_4

    .line 36
    :cond_0
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 37
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;

    move-object v6, v0

    .line 39
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->getTaskObject()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    move-result-object v7

    .line 40
    .local v7, taskObj:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;
    :goto_1
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 41
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v1, deleted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;>;"
    const/4 v5, 0x0

    .line 43
    .local v5, mMerged:I
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/MergeTaskQueue;->mMaxMerge:I

    if-lt v5, v8, :cond_6

    .line 50
    :cond_1
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    invoke-interface {v8, v1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    .line 29
    .end local v1           #deleted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;>;"
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;>;"
    .end local v5           #mMerged:I
    .end local v7           #taskObj:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;
    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v6, :cond_3

    .line 56
    invoke-virtual {v6, p1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->setTaskThread(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskThread;)V

    .line 59
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandleImpl;->setState(I)V

    .line 62
    :cond_3
    return-object v6

    .line 32
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->tasks:Ljava/util/Queue;

    iget v10, p0, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskQueue;->maxIdleTime:I

    int-to-long v10, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 33
    const/4 v2, 0x0

    goto :goto_0

    .line 39
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 44
    .restart local v1       #deleted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;>;"
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;>;"
    .restart local v5       #mMerged:I
    .restart local v7       #taskObj:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 45
    .local v3, handler:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
    invoke-interface {v3}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;->getTaskObject()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 46
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 29
    .end local v1           #deleted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;>;"
    .end local v3           #handler:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;>;"
    .end local v5           #mMerged:I
    .end local v7           #taskObj:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskObject;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method
