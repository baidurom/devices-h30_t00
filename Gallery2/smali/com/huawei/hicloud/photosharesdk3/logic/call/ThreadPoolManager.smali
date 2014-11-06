.class public Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;
    }
.end annotation


# static fields
.field public static final FIXED_BASECALLABLE_KEY:Ljava/lang/String; = "FIXED_BASECALLABLE_KEY"

.field public static final FIXED_CALLABLE_MAX:I = 0x2

.field public static final FIXED_HANDLECALLABLE_KEY:Ljava/lang/String; = "FIXED_HANDLECALLABLE_KEY"

.field public static final FIXED_MESSAGE_CALLABLE_MAX:I = 0x1

.field private static final FIXED_MESSAGE_SEND_SLEEPTIME:I = 0xc8

.field public static final FIXED_SERIAL_CALLABLE_MAX:I = 0x1

.field private static final SINGLE_POOL_EXEC_SLEEPTIME:J = 0x7d0L

.field public static final THREAD_TYPE_ALL:I = 0x0

.field public static final THREAD_TYPE_CALLABLE:I = 0x2

.field public static final THREAD_TYPE_POOL:I = 0x1

.field private static manager:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;


# instance fields
.field private volatile execCallablePools:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;

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

.field private messageFixedCallableList:Ljava/util/Vector;
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

.field private serialExecutorService:Ljava/util/concurrent/ExecutorService;

.field private serialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

.field private serialFixedCallableExecutedList:Ljava/util/Vector;
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

.field private serialFixedCallableList:Ljava/util/Vector;
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

.field private singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

.field private singleCallablePoolList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;",
            ">;"
        }
    .end annotation
.end field

.field private syncFileSerialExecutorService:Ljava/util/concurrent/ExecutorService;

.field private syncFileSerialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

.field private sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

.field private sysMessageFixedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private sysMessageFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

.field private sysSerialFixedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private sysSerialFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

.field private sysSingleCallablePoolShutdown:Z

.field private volatile sysSingleThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->manager:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 84
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 89
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    .line 94
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 99
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    .line 104
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 109
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    .line 114
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 119
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    .line 124
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 129
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    .line 131
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->execCallablePools:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;

    .line 136
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;

    .line 141
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableList:Ljava/util/Vector;

    .line 146
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableExecutedList:Ljava/util/Vector;

    .line 151
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->messageFixedCallableList:Ljava/util/Vector;

    .line 156
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialFixedCallableList:Ljava/util/Vector;

    .line 161
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialFixedCallableExecutedList:Ljava/util/Vector;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleCallablePoolShutdown:Z

    .line 172
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 179
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 184
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_3

    .line 189
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_4

    .line 194
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 195
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    .line 197
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 198
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    .line 200
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 201
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    .line 202
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 203
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableList:Ljava/util/Vector;

    if-nez v0, :cond_5

    .line 208
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableList:Ljava/util/Vector;

    .line 209
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableExecutedList:Ljava/util/Vector;

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->messageFixedCallableList:Ljava/util/Vector;

    if-nez v0, :cond_6

    .line 214
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->messageFixedCallableList:Ljava/util/Vector;

    .line 215
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialFixedCallableList:Ljava/util/Vector;

    .line 216
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialFixedCallableExecutedList:Ljava/util/Vector;

    .line 218
    :cond_6
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    return-void
.end method

.method static synthetic access$2(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    return-object v0
.end method

.method static synthetic access$3(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$4(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->execCallablePools:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;

    return-void
.end method

.method static synthetic access$5(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$6(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private contains(Ljava/util/Vector;Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;)Z
    .locals 5
    .parameter
    .parameter "baseCallable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, poolList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .line 353
    .local v1, flag:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 363
    :goto_1
    return v1

    .line 355
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 356
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "FIXED_BASECALLABLE_KEY"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;

    .line 357
    .local v0, callable:Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
    invoke-virtual {p2, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->baseEquals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 359
    const/4 v1, 0x1

    .line 360
    goto :goto_1

    .line 353
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized createInstance()V
    .locals 2

    .prologue
    .line 239
    const-class v1, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->manager:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;-><init>()V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->manager:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_0
    monitor-exit v1

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->manager:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    if-nez v0, :cond_0

    .line 229
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->createInstance()V

    .line 231
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->manager:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    return-object v0
.end method

.method private declared-synchronized poolShutdownNow(Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .parameter "pool"

    .prologue
    .line 718
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    monitor-exit p0

    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 723
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 718
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getParallelCallableExecList()Ljava/util/Vector;
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
    .line 844
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableExecutedList:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParallelCallableList()Ljava/util/Vector;
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
    .line 834
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableList:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSingleCallablePools()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;",
            ">;"
        }
    .end annotation

    .prologue
    .line 824
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause(I)V
    .locals 5
    .parameter "threadType"

    .prologue
    .line 736
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ThreadPoolManager pause....start"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->pause(I)V

    .line 738
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ThreadPoolManager pause....end"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    monitor-exit p0

    return-void

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume(I)V
    .locals 5
    .parameter "threadType"

    .prologue
    .line 750
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ThreadPoolManager resume....start"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->resume(I)V

    .line 752
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ThreadPoolManager resume....end"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    monitor-exit p0

    return-void

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(I)V
    .locals 7
    .parameter "threadType"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 575
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ThreadPoolManager start....start"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleCallablePoolShutdown:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    if-ne p1, v5, :cond_2

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleCallablePoolShutdown:Z

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 588
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 589
    :cond_3
    if-eqz p1, :cond_4

    if-ne p1, v6, :cond_5

    .line 591
    :cond_4
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 592
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    .line 594
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 595
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    .line 597
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 598
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    .line 602
    :cond_5
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_6

    .line 603
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 605
    :cond_6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 606
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    .line 607
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 608
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    .line 611
    :cond_7
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ThreadPoolManager start....end"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    monitor-exit p0

    return-void

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop(I)V
    .locals 6
    .parameter "threadType"

    .prologue
    const/4 v5, 0x1

    .line 623
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ThreadPoolManager stop....start"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 627
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 629
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 630
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 632
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 633
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 635
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 636
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 637
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 638
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 641
    :cond_1
    if-eqz p1, :cond_2

    if-ne p1, v5, :cond_3

    .line 643
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleCallablePoolShutdown:Z

    .line 646
    :cond_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ThreadPoolManager stop....end"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    monitor-exit p0

    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopNow(I)V
    .locals 7
    .parameter "threadType"

    .prologue
    const/4 v6, 0x1

    .line 659
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ThreadPoolManager stopNow....start"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->poolShutdownNow(Ljava/util/concurrent/ExecutorService;)V

    .line 663
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->poolShutdownNow(Ljava/util/concurrent/ExecutorService;)V

    .line 664
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->poolShutdownNow(Ljava/util/concurrent/ExecutorService;)V

    .line 665
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->poolShutdownNow(Ljava/util/concurrent/ExecutorService;)V

    .line 666
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->poolShutdownNow(Ljava/util/concurrent/ExecutorService;)V

    .line 667
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->poolShutdownNow(Ljava/util/concurrent/ExecutorService;)V

    .line 668
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->poolShutdownNow(Ljava/util/concurrent/ExecutorService;)V

    .line 669
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->poolShutdownNow(Ljava/util/concurrent/ExecutorService;)V

    .line 670
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->poolShutdownNow(Ljava/util/concurrent/ExecutorService;)V

    .line 671
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->poolShutdownNow(Ljava/util/concurrent/ExecutorService;)V

    .line 673
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 674
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableExecutedList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 676
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->messageFixedCallableList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 678
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialFixedCallableList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 679
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialFixedCallableExecutedList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 683
    :cond_1
    if-eqz p1, :cond_2

    if-ne p1, v6, :cond_5

    .line 685
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleCallablePoolShutdown:Z

    .line 686
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    if-eqz v1, :cond_3

    .line 688
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePool:Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->shutDownNow()V

    .line 691
    :cond_3
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->poolShutdownNow(Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    :try_start_1
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->execCallablePools:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;

    if-eqz v1, :cond_4

    .line 697
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->execCallablePools:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 706
    :cond_4
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->execCallablePools:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;

    .line 707
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 711
    :cond_5
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ThreadPoolManager stopNow....end"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 712
    monitor-exit p0

    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 703
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 659
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized submitCallableParallel(Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;Z)Z
    .locals 11
    .parameter "baseCallable"
    .parameter "handleCallable"
    .parameter "isPriority"

    .prologue
    const/4 v1, 0x0

    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 311
    :cond_1
    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {p1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setThreadType(I)V

    .line 312
    invoke-virtual {p1, p3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setPriority(Z)V

    .line 313
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableList:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setFixedThreadPoolList(Ljava/util/Vector;)V

    .line 314
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableExecutedList:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setFixedThreadPoolExecutedList(Ljava/util/Vector;)V

    .line 316
    new-instance v10, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHashMap;

    invoke-direct {v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHashMap;-><init>()V

    .line 317
    .local v10, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "FIXED_BASECALLABLE_KEY"

    invoke-interface {v10, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v2, "FIXED_HANDLECALLABLE_KEY"

    invoke-interface {v10, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableList:Ljava/util/Vector;

    invoke-direct {p0, v2, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->contains(Ljava/util/Vector;Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;)Z

    move-result v8

    .line 321
    .local v8, fixedCallableListContains:Z
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableExecutedList:Ljava/util/Vector;

    invoke-direct {p0, v2, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->contains(Ljava/util/Vector;Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;)Z

    move-result v7

    .line 322
    .local v7, fixedCallableExecutedListContains:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fixedCallableListContains:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fixedCallableExecutedListContains:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    if-nez v8, :cond_0

    if-nez v7, :cond_0

    .line 329
    if-eqz p3, :cond_3

    .line 331
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableList:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v10}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 339
    :goto_1
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 340
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableList:Ljava/util/Vector;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableExecutedList:Ljava/util/Vector;

    const-wide/16 v5, 0x0

    .line 339
    invoke-direct/range {v0 .. v6}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Vector;Ljava/util/Vector;J)V

    .line 341
    .local v0, fixedCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v9

    .line 342
    .local v9, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    if-nez v9, :cond_2

    .line 344
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "future fail"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 336
    .end local v0           #fixedCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;
    .end local v9           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    :cond_3
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->fixedCallableList:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 306
    .end local v7           #fixedCallableExecutedListContains:Z
    .end local v8           #fixedCallableListContains:Z
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized submitCallablePoolSerial(Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;JZZ)V
    .locals 4
    .parameter "pool"
    .parameter "timeout"
    .parameter "isPriority"
    .parameter "isForce"

    .prologue
    .line 262
    monitor-enter p0

    if-nez p5, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleCallablePoolShutdown:Z

    if-eqz v0, :cond_3

    .line 265
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "submitCallablePoolSerial:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "submitCallablePoolSerial:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSingleCallablePoolShutdown:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "execCallablePools:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->execCallablePools:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "singleCallablePoolList.size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 272
    :cond_3
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->setTimeout(J)V

    .line 273
    invoke-virtual {p1, p4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SingleCallablePool;->setPriority(Z)V

    .line 275
    if-eqz p4, :cond_4

    .line 277
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 285
    :goto_1
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->execCallablePools:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;

    if-nez v0, :cond_2

    .line 287
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;

    invoke-direct {v0, p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;-><init>(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->execCallablePools:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;

    .line 288
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->execCallablePools:Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$SysThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 282
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->singleCallablePoolList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;Z)V
    .locals 9
    .parameter "baseCallable"
    .parameter "isPriority"

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 382
    :cond_1
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setThreadType(I)V

    .line 383
    invoke-virtual {p1, p2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->setPriority(Z)V

    .line 385
    new-instance v8, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHashMap;

    invoke-direct {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHashMap;-><init>()V

    .line 386
    .local v8, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "FIXED_BASECALLABLE_KEY"

    invoke-interface {v8, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v1, "FIXED_HANDLECALLABLE_KEY"

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialFixedCallableList:Ljava/util/Vector;

    invoke-direct {p0, v1, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->contains(Ljava/util/Vector;Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialFixedCallableExecutedList:Ljava/util/Vector;

    invoke-direct {p0, v1, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->contains(Ljava/util/Vector;Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    if-eqz p2, :cond_2

    .line 397
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialFixedCallableList:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 405
    :goto_1
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 406
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialFixedCallableList:Ljava/util/Vector;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialFixedCallableExecutedList:Ljava/util/Vector;

    const-wide/16 v5, 0x0

    .line 405
    invoke-direct/range {v0 .. v6}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Vector;Ljava/util/Vector;J)V

    .line 407
    .local v0, fixedCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysSerialFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v7

    .line 408
    .local v7, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    if-nez v7, :cond_0

    .line 410
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "future fail"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 377
    .end local v0           #fixedCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;
    .end local v7           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    .end local v8           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 402
    .restart local v8       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialFixedCallableList:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;)V
    .locals 5
    .parameter "baseCallable"

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 529
    :cond_1
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;->setThreadType(I)V

    .line 531
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->syncFileSerialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$2;

    .line 532
    const-wide/16 v3, -0x1

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$2;-><init>(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;Ljava/lang/Object;J)V

    .line 531
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 560
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 562
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "future fail"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 524
    .end local v0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;J)V
    .locals 4
    .parameter "baseCallable"
    .parameter "timeout"

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 477
    :cond_1
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;->setThreadType(I)V

    .line 479
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->serialExecutorServiceInternal:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager$1;-><init>(Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;Ljava/lang/Object;J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 509
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 511
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "future fail"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 472
    .end local v0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;Z)V
    .locals 8
    .parameter "baseCallable"
    .parameter "isPriority"

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 430
    :cond_1
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;->setThreadType(I)V

    .line 431
    invoke-virtual {p1, p2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;->setPriority(Z)V

    .line 433
    new-instance v7, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHashMap;

    invoke-direct {v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/MyHashMap;-><init>()V

    .line 434
    .local v7, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "FIXED_BASECALLABLE_KEY"

    invoke-interface {v7, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v1, "FIXED_HANDLECALLABLE_KEY"

    const/4 v2, 0x0

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->messageFixedCallableList:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    if-eqz p2, :cond_2

    .line 444
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->messageFixedCallableList:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v7}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 452
    :goto_1
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 453
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->messageFixedCallableList:Ljava/util/Vector;

    const-wide/16 v4, 0xc8

    .line 452
    invoke-direct/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Vector;J)V

    .line 454
    .local v0, fixedCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->sysMessageFixedThreadPoolInternal:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    .line 455
    .local v6, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    if-nez v6, :cond_0

    .line 457
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "future fail"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 425
    .end local v0           #fixedCallable:Lcom/huawei/hicloud/photosharesdk3/logic/call/FixedCallable;
    .end local v6           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    .end local v7           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 449
    .restart local v7       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->messageFixedCallableList:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
