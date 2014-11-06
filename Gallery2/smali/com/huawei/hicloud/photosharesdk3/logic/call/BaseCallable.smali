.class public abstract Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "BaseCallable.java"

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


# static fields
.field private static final EXCEPTION_MESSAGE:Ljava/lang/String; = "BaseCallable shutdown"

.field private static isPauseCallable:Z

.field private static isPausePool:Z

.field private static pauseLockCallable:Ljava/util/concurrent/locks/ReentrantLock;

.field private static pauseLockPool:Ljava/util/concurrent/locks/ReentrantLock;

.field private static unpausedCallable:Ljava/util/concurrent/locks/Condition;

.field private static unpausedPool:Ljava/util/concurrent/locks/Condition;


# instance fields
.field private callParam:Ljava/lang/Object;

.field private conditionTool:Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;

.field private currentExecutorService:Ljava/util/concurrent/ExecutorService;

.field private currentRetry:I

.field private executed:Z

.field private fixedThreadPoolExecutedList:Ljava/util/Vector;
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

.field private fixedThreadPoolList:Ljava/util/Vector;
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

.field private nextShutDown:Z

.field private preCallResult:Ljava/lang/Object;

.field private priority:Z

.field private retry:I

.field private shutdownFlag:Z

.field private singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

.field private threadType:I

.field private timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sput-boolean v1, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->isPausePool:Z

    .line 23
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockPool:Ljava/util/concurrent/locks/ReentrantLock;

    .line 25
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockPool:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->unpausedPool:Ljava/util/concurrent/locks/Condition;

    .line 27
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockCallable:Ljava/util/concurrent/locks/ReentrantLock;

    .line 29
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockCallable:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->unpausedCallable:Ljava/util/concurrent/locks/Condition;

    .line 31
    sput-boolean v1, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->isPauseCallable:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .parameter "callParam"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->preCallResult:Ljava/lang/Object;

    .line 35
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->callParam:Ljava/lang/Object;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->timeout:J

    .line 39
    iput v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->retry:I

    .line 41
    iput v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->currentRetry:I

    .line 43
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->nextShutDown:Z

    .line 45
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->priority:Z

    .line 47
    iput v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->threadType:I

    .line 49
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    .line 51
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->shutdownFlag:Z

    .line 53
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->fixedThreadPoolList:Ljava/util/Vector;

    .line 55
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->fixedThreadPoolExecutedList:Ljava/util/Vector;

    .line 57
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->executed:Z

    .line 59
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->currentExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 64
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->conditionTool:Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;

    .line 74
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->callParam:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 5
    .parameter "callParam"
    .parameter "timeout"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->preCallResult:Ljava/lang/Object;

    .line 35
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->callParam:Ljava/lang/Object;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->timeout:J

    .line 39
    iput v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->retry:I

    .line 41
    iput v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->currentRetry:I

    .line 43
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->nextShutDown:Z

    .line 45
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->priority:Z

    .line 47
    iput v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->threadType:I

    .line 49
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    .line 51
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->shutdownFlag:Z

    .line 53
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->fixedThreadPoolList:Ljava/util/Vector;

    .line 55
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->fixedThreadPoolExecutedList:Ljava/util/Vector;

    .line 57
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->executed:Z

    .line 59
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->currentExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 64
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->conditionTool:Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;

    .line 87
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->callParam:Ljava/lang/Object;

    .line 88
    iput-wide p2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->timeout:J

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 5
    .parameter "callParam"
    .parameter "timeout"
    .parameter "retry"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->preCallResult:Ljava/lang/Object;

    .line 35
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->callParam:Ljava/lang/Object;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->timeout:J

    .line 39
    iput v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->retry:I

    .line 41
    iput v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->currentRetry:I

    .line 43
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->nextShutDown:Z

    .line 45
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->priority:Z

    .line 47
    iput v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->threadType:I

    .line 49
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    .line 51
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->shutdownFlag:Z

    .line 53
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->fixedThreadPoolList:Ljava/util/Vector;

    .line 55
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->fixedThreadPoolExecutedList:Ljava/util/Vector;

    .line 57
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->executed:Z

    .line 59
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->currentExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 64
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->conditionTool:Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;

    .line 123
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->callParam:Ljava/lang/Object;

    .line 124
    iput-wide p2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->timeout:J

    .line 125
    iput p4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->retry:I

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JIZ)V
    .locals 5
    .parameter "callParam"
    .parameter "timeout"
    .parameter "retry"
    .parameter "nextShutDown"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->preCallResult:Ljava/lang/Object;

    .line 35
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->callParam:Ljava/lang/Object;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->timeout:J

    .line 39
    iput v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->retry:I

    .line 41
    iput v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->currentRetry:I

    .line 43
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->nextShutDown:Z

    .line 45
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->priority:Z

    .line 47
    iput v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->threadType:I

    .line 49
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    .line 51
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->shutdownFlag:Z

    .line 53
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->fixedThreadPoolList:Ljava/util/Vector;

    .line 55
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->fixedThreadPoolExecutedList:Ljava/util/Vector;

    .line 57
    iput-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->executed:Z

    .line 59
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->currentExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 64
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->conditionTool:Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;

    .line 105
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->callParam:Ljava/lang/Object;

    .line 106
    iput-wide p2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->timeout:J

    .line 107
    iput p4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->retry:I

    .line 108
    iput-boolean p5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->nextShutDown:Z

    .line 109
    return-void
.end method

.method public static pause(I)V
    .locals 5
    .parameter "threadType"

    .prologue
    const/4 v4, 0x1

    .line 372
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pause...threadType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    if-eqz p0, :cond_0

    if-ne p0, v4, :cond_1

    .line 375
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockPool:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 378
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->isPausePool:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockPool:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 386
    :cond_1
    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 388
    :cond_2
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockCallable:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 391
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->isPauseCallable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 395
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockCallable:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 398
    :cond_3
    return-void

    .line 381
    :catchall_0
    move-exception v0

    .line 382
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockPool:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 383
    throw v0

    .line 394
    :catchall_1
    move-exception v0

    .line 395
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockCallable:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 396
    throw v0
.end method

.method public static resume(I)V
    .locals 4
    .parameter "threadType"

    .prologue
    .line 408
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resume...threadType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 411
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockPool:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 414
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->isPausePool:Z

    .line 415
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->unpausedPool:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockPool:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 423
    :cond_1
    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 425
    :cond_2
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockCallable:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 428
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->isPauseCallable:Z

    .line 429
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->unpausedCallable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 433
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockCallable:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 436
    :cond_3
    return-void

    .line 418
    :catchall_0
    move-exception v0

    .line 419
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockPool:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 420
    throw v0

    .line 432
    :catchall_1
    move-exception v0

    .line 433
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockCallable:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 434
    throw v0
.end method


# virtual methods
.method public baseEquals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 258
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract call()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public cancel()Z
    .locals 3

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getConditionTool()Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getConditionTool()Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    .line 467
    :cond_0
    return v0
.end method

.method public getCallParam()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->callParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getConditionTool()Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->conditionTool:Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;

    return-object v0
.end method

.method public getCurrentExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->currentExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getCurrentRetry()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->currentRetry:I

    return v0
.end method

.method public getFixedThreadPoolExecutedList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->fixedThreadPoolExecutedList:Ljava/util/Vector;

    return-object v0
.end method

.method public getFixedThreadPoolList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->fixedThreadPoolList:Ljava/util/Vector;

    return-object v0
.end method

.method public getPreCallResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->preCallResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getRetry()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->retry:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getThreadType()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->threadType:I

    return v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->timeout:J

    return-wide v0
.end method

.method public handleCallException(Ljava/lang/Exception;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 287
    return-void
.end method

.method public isExecuted()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->executed:Z

    return v0
.end method

.method public isNextShutDown()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->nextShutDown:Z

    return v0
.end method

.method public isOnlyMeCallablePool()Z
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getSingleCallablePools()Ljava/util/List;

    move-result-object v0

    .line 306
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;>;"
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPriority()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->priority:Z

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->shutdownFlag:Z

    return v0
.end method

.method public onPause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getCurrentExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getCurrentExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "BaseCallable shutdown"

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "BaseCallable shutdown"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_1
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->isPausePool:Z

    if-eqz v0, :cond_3

    .line 325
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockPool:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 328
    :try_start_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "onPausePool check in..."

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :goto_0
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->isPausePool:Z

    if-eqz v0, :cond_2

    .line 330
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->threadType:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->threadType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 335
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "onPausePool check out..."

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockPool:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 343
    :cond_3
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->isPauseCallable:Z

    if-eqz v0, :cond_5

    .line 345
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockCallable:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 348
    :try_start_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "onPauseCallable check in..."

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :goto_1
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->isPauseCallable:Z

    if-eqz v0, :cond_4

    .line 350
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->threadType:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->threadType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 355
    :cond_4
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "onPauseCallable check out..."

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 359
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockCallable:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 362
    :cond_5
    return-void

    .line 332
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "onPausePool await..."

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->unpausedPool:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    .line 339
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockPool:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 340
    throw v0

    .line 352
    :cond_7
    :try_start_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "onPauseCallable await..."

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->unpausedCallable:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 358
    :catchall_1
    move-exception v0

    .line 359
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pauseLockCallable:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 360
    throw v0
.end method

.method public onTimeout()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method protected removeFromPoolList(Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;)V
    .locals 2
    .parameter "baseCallable"

    .prologue
    .line 447
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHashMap;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHashMap;-><init>()V

    .line 448
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "FIXED_BASECALLABLE_KEY"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->fixedThreadPoolList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 450
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->fixedThreadPoolExecutedList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method public setConditionTool(Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;)V
    .locals 0
    .parameter "conditionTool"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->conditionTool:Lcom/huawei/hicloud/photosharesdk3/logic/call/ConditionTool;

    .line 246
    return-void
.end method

.method public setCurrentExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .parameter "currentExecutorService"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->currentExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 236
    return-void
.end method

.method public setCurrentRetry(I)V
    .locals 0
    .parameter "currentRetry"

    .prologue
    .line 140
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->currentRetry:I

    .line 141
    return-void
.end method

.method public setExecuted(Z)V
    .locals 0
    .parameter "executed"

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->executed:Z

    .line 226
    return-void
.end method

.method public setFixedThreadPoolExecutedList(Ljava/util/Vector;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, fixedThreadPoolExecutedList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->fixedThreadPoolExecutedList:Ljava/util/Vector;

    .line 216
    return-void
.end method

.method public setFixedThreadPoolList(Ljava/util/Vector;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, fixedThreadPoolList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->fixedThreadPoolList:Ljava/util/Vector;

    .line 206
    return-void
.end method

.method public setPreCallResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "preCallResult"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->preCallResult:Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public setPriority(Z)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->priority:Z

    .line 196
    return-void
.end method

.method public setSingleCallablePool(Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;)V
    .locals 0
    .parameter "singleThreadPool"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    .line 171
    return-void
.end method

.method public setThreadType(I)V
    .locals 0
    .parameter "threadType"

    .prologue
    .line 180
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->threadType:I

    .line 181
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->shutdownFlag:Z

    .line 267
    return-void
.end method
