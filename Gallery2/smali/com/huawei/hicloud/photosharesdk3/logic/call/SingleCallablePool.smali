.class public abstract Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "SingleCallablePool.java"


# instance fields
.field private currBaseCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;

.field private pool:Ljava/util/concurrent/ExecutorService;

.field private priority:Z

.field private retry:I

.field private timeout:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->timeout:J

    .line 18
    iput v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->retry:I

    .line 20
    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->pool:Ljava/util/concurrent/ExecutorService;

    .line 22
    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->currBaseCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;

    .line 24
    iput-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->priority:Z

    .line 14
    return-void
.end method

.method private setThreadType([Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;)V
    .locals 3
    .parameter "calls"

    .prologue
    .line 113
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 118
    return-void

    .line 115
    :cond_0
    aget-object v0, p1, v1

    .line 116
    .local v0, baseCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setThreadType(I)V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 167
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected execute()V
    .locals 15

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 32
    .local v9, timeStamp:J
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->getTagInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "3"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "single main thread start..."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    iput-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->pool:Ljava/util/concurrent/ExecutorService;

    .line 35
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->getCalls()[Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;

    move-result-object v1

    .line 37
    .local v1, calls:[Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->setThreadType([Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;)V

    .line 39
    const/4 v8, 0x0

    .line 40
    .local v8, preCallResult:Ljava/lang/Object;
    const/4 v7, 0x0

    .line 41
    .local v7, nextShutDown:Z
    const/4 v5, 0x0

    .end local v8           #preCallResult:Ljava/lang/Object;
    .local v5, j:I
    :goto_0
    array-length v11, v1

    if-ge v5, v11, :cond_0

    if-eqz v7, :cond_1

    .line 106
    :cond_0
    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v11}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 108
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->getTagInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "3"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "single main thread end..."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 43
    :cond_1
    if-nez v5, :cond_3

    const/4 v11, 0x0

    :goto_1
    aget-object v11, v1, v11

    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->isShutdown()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v11}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v11

    if-nez v11, :cond_0

    .line 48
    aget-object v0, v1, v5

    .line 49
    .local v0, baseCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setExecuted(Z)V

    .line 50
    invoke-virtual {v0, p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setSingleCallablePool(Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;)V

    .line 51
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->isPriority()Z

    move-result v11

    invoke-virtual {v0, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setPriority(Z)V

    .line 52
    const/4 v6, 0x1

    .line 53
    .local v6, lRetry:I
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getTimeout()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->timeout:J

    .line 54
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getRetry()I

    move-result v11

    iput v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->retry:I

    .line 56
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-lt v4, v6, :cond_4

    .line 41
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 43
    .end local v0           #baseCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
    .end local v4           #i:I
    .end local v6           #lRetry:I
    :cond_3
    add-int/lit8 v11, v5, -0x1

    goto :goto_1

    .line 58
    .restart local v0       #baseCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
    .restart local v4       #i:I
    .restart local v6       #lRetry:I
    :cond_4
    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v11}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v11

    if-nez v11, :cond_2

    .line 63
    const/4 v3, 0x0

    .line 66
    .local v3, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {v0, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setPreCallResult(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->onPause()V

    .line 68
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->currBaseCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;

    .line 69
    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v11, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 70
    iget-wide v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->timeout:J

    invoke-static {v3, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FutureTool;->get(Ljava/util/concurrent/Future;J)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 56
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 73
    :catch_0
    move-exception v2

    .line 76
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-static {v11, v12, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    instance-of v11, v2, Ljava/util/concurrent/TimeoutException;

    if-eqz v11, :cond_8

    .line 79
    if-eqz v3, :cond_6

    .line 81
    const/4 v11, 0x1

    invoke-interface {v3, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 83
    :cond_6
    invoke-virtual {v0, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setCurrentRetry(I)V

    .line 84
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->onTimeout()V

    .line 91
    :goto_4
    iget v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->retry:I

    if-ge v6, v11, :cond_7

    .line 93
    add-int/lit8 v6, v6, 0x1

    .line 96
    :cond_7
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->isNextShutDown()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 98
    const/4 v7, 0x1

    .line 99
    goto :goto_3

    .line 88
    :cond_8
    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->handleCallException(Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method public abstract getCalls()[Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->timeout:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPriority()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->priority:Z

    return v0
.end method

.method public setPriority(Z)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->priority:Z

    .line 138
    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->timeout:J

    .line 128
    return-void
.end method

.method public shutDownNow()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->pool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->currBaseCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->currBaseCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->shutdown()V

    .line 203
    :cond_1
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->execute()V

    .line 154
    return-void
.end method
