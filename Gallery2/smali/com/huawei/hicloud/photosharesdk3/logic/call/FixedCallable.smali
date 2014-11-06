.class public Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "FixedCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private fixedCallableExecutedList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private fixedCallableList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private sleepTime:J

.field private sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Vector;J)V
    .locals 2
    .parameter "sysFixedThreadPoolInternal"
    .parameter "sysFixedThreadPool"
    .parameter
    .parameter "sleepTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .local p3, fixedCallableList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 21
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    .line 23
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableList:Ljava/util/Vector;

    .line 25
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sleepTime:J

    .line 44
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    .line 45
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 46
    iput-object p3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableList:Ljava/util/Vector;

    .line 47
    iput-wide p4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sleepTime:J

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Vector;Ljava/util/Vector;J)V
    .locals 2
    .parameter "sysFixedThreadPoolInternal"
    .parameter "sysFixedThreadPool"
    .parameter
    .parameter
    .parameter "sleepTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .local p3, fixedCallableList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p4, fixedCallableExecutedList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 21
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    .line 23
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableList:Ljava/util/Vector;

    .line 25
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sleepTime:J

    .line 68
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    .line 69
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 70
    iput-object p3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableList:Ljava/util/Vector;

    .line 71
    iput-object p4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    .line 72
    iput-wide p5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sleepTime:J

    .line 73
    return-void
.end method

.method private fixedThreadPoolExecutedListAdd(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    return-void
.end method

.method private onException(Ljava/lang/Object;Ljava/util/Map;Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;)V
    .locals 4
    .parameter "callResult"
    .parameter
    .parameter "baseCallable"
    .parameter "handleCallable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;",
            "Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getCurrentRetry()I

    move-result v1

    invoke-virtual {p3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getRetry()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 171
    invoke-virtual {p3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getCurrentRetry()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setCurrentRetry(I)V

    .line 172
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableList:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 189
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 190
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 192
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "future fail"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    if-eqz v1, :cond_3

    .line 200
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 202
    :cond_3
    if-eqz p4, :cond_1

    .line 204
    invoke-virtual {p4, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;->handle(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    const-string v11, "come into FixedCallable"

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    .line 87
    .local v2, callResult:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 88
    .local v6, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 89
    .local v5, exception:Ljava/lang/Exception;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v8, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyBaseCallable;

    invoke-direct {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyBaseCallable;-><init>()V

    .line 91
    .local v1, baseCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
    new-instance v7, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHandleCallable;

    invoke-direct {v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHandleCallable;-><init>()V

    .line 93
    .local v7, handleCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableList:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 95
    const/4 v9, 0x0

    .line 163
    :goto_0
    return-object v9

    .line 100
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableList:Ljava/util/Vector;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/Map;

    move-object v8, v0

    .line 101
    invoke-direct {p0, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedThreadPoolExecutedListAdd(Ljava/util/Map;)V

    .line 102
    const-string v9, "FIXED_BASECALLABLE_KEY"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;

    move-object v1, v0

    .line 103
    const-string v9, "FIXED_HANDLECALLABLE_KEY"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;

    move-object v7, v0

    .line 104
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setExecuted(Z)V

    .line 106
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v9

    if-nez v9, :cond_1

    .line 108
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->onPause()V

    .line 109
    iget-wide v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sleepTime:J

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 110
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v9, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    .line 112
    new-instance v3, Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;

    invoke-direct {v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;-><init>()V

    .line 113
    .local v3, conditionTool:Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;
    invoke-virtual {v3, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;->setFuture(Ljava/util/concurrent/Future;)V

    .line 114
    invoke-virtual {v1, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setConditionTool(Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;)V

    .line 116
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getTimeout()J

    move-result-wide v9

    invoke-static {v6, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FutureTool;->get(Ljava/util/concurrent/Future;J)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 150
    .end local v3           #conditionTool:Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;
    :cond_1
    if-eqz v5, :cond_2

    instance-of v9, v5, Ljava/util/concurrent/TimeoutException;

    if-eqz v9, :cond_3

    :cond_2
    if-nez v5, :cond_5

    .line 152
    :cond_3
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    if-eqz v9, :cond_4

    .line 154
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 156
    :cond_4
    if-eqz v7, :cond_5

    .line 158
    invoke-virtual {v7, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;->handle(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    move-object v9, v2

    .line 163
    goto :goto_0

    .line 119
    :catch_0
    move-exception v4

    .line 122
    .local v4, e:Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    .line 123
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "FixedCallable exception:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",sysFixedThreadPoolInternal isShutdown:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 124
    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v11}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",isTerminated:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 125
    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v11}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",sysFixedThreadPool isShutdown:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 126
    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v11}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",isTerminated:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v11}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 127
    const-string v11, ",baseCallable.getRetry():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getRetry()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 128
    const-string v11, ",baseCallable.getCurrentRetry():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getCurrentRetry()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 129
    const-string v11, ",fixedCallableList:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableList:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",fixedCallableExecutedList:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 130
    iget-object v11, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 123
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 122
    invoke-static {v9, v10, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    move-object v5, v4

    .line 133
    instance-of v9, v4, Ljava/util/concurrent/TimeoutException;

    if-eqz v9, :cond_a

    .line 135
    if-eqz v6, :cond_6

    .line 137
    const/4 v9, 0x1

    invoke-interface {v6, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 140
    :cond_6
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->onTimeout()V

    .line 141
    invoke-direct {p0, v2, v8, v1, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->onException(Ljava/lang/Object;Ljava/util/Map;Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :goto_2
    if-eqz v5, :cond_7

    instance-of v9, v5, Ljava/util/concurrent/TimeoutException;

    if-eqz v9, :cond_8

    :cond_7
    if-nez v5, :cond_5

    .line 152
    :cond_8
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    if-eqz v9, :cond_9

    .line 154
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 156
    :cond_9
    if-eqz v7, :cond_5

    .line 158
    invoke-virtual {v7, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;->handle(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 145
    :cond_a
    :try_start_2
    invoke-virtual {v1, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->handleCallException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 149
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 150
    if-eqz v5, :cond_b

    instance-of v10, v5, Ljava/util/concurrent/TimeoutException;

    if-eqz v10, :cond_c

    :cond_b
    if-nez v5, :cond_e

    .line 152
    :cond_c
    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    if-eqz v10, :cond_d

    .line 154
    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;->fixedCallableExecutedList:Ljava/util/Vector;

    invoke-virtual {v10, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 156
    :cond_d
    if-eqz v7, :cond_e

    .line 158
    invoke-virtual {v7, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;->handle(Ljava/lang/Object;)V

    .line 161
    :cond_e
    throw v9
.end method
