.class public Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;
.super Ljava/lang/Object;
.source "AsyncEventPublisher.java"

# interfaces
.implements Lcom/android/hwcamera/eventcenter/EventPublisher;


# static fields
.field private static asyncEventPublisher:Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;


# instance fields
.field private threadPoolExecutor1:Ljava/util/concurrent/ExecutorService;

.field private threadPoolExecutor2:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->asyncEventPublisher:Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/hwcamera/eventcenter/EventPublisher;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->asyncEventPublisher:Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;

    invoke-direct {v0}, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;-><init>()V

    sput-object v0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->asyncEventPublisher:Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;

    .line 29
    :cond_0
    sget-object v0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->asyncEventPublisher:Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->threadPoolExecutor1:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->threadPoolExecutor1:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 68
    :cond_0
    iput-object v1, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->threadPoolExecutor1:Ljava/util/concurrent/ExecutorService;

    .line 69
    iget-object v0, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->threadPoolExecutor2:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->threadPoolExecutor2:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 70
    :cond_1
    iput-object v1, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->threadPoolExecutor2:Ljava/util/concurrent/ExecutorService;

    .line 71
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const-wide/16 v3, 0x3c

    const/16 v8, 0x32

    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 76
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v6, v8}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->threadPoolExecutor1:Ljava/util/concurrent/ExecutorService;

    .line 81
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v6, v8}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->threadPoolExecutor2:Ljava/util/concurrent/ExecutorService;

    .line 84
    return-void
.end method

.method public publish(Lcom/android/hwcamera/eventcenter/Event;Ljava/util/List;Lcom/android/hwcamera/CameraActivity;)V
    .locals 5
    .parameter "event"
    .parameter
    .parameter "cameraActivity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/hwcamera/eventcenter/Event;",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/eventcenter/EventListener;",
            ">;",
            "Lcom/android/hwcamera/CameraActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, listeners:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/eventcenter/EventListener;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/eventcenter/EventListener;

    .line 38
    .local v2, listener:Lcom/android/hwcamera/eventcenter/EventListener;
    new-instance v3, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher$1;

    invoke-direct {v3, p0, v2, p1, p3}, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher$1;-><init>(Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;Lcom/android/hwcamera/eventcenter/EventListener;Lcom/android/hwcamera/eventcenter/Event;Lcom/android/hwcamera/CameraActivity;)V

    .line 45
    .local v3, runnable:Ljava/lang/Runnable;
    invoke-interface {p1}, Lcom/android/hwcamera/eventcenter/Event;->getType()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, eventType:Ljava/lang/String;
    :try_start_0
    const-string v4, "lcd_flash_event_type"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "storage_changed_event_type"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "update_focus_parameters_type"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 53
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->threadPoolExecutor1:Ljava/util/concurrent/ExecutorService;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->threadPoolExecutor1:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    .end local v0           #eventType:Ljava/lang/String;
    .end local v2           #listener:Lcom/android/hwcamera/eventcenter/EventListener;
    .end local v3           #runnable:Ljava/lang/Runnable;
    :cond_1
    return-void

    .line 54
    .restart local v0       #eventType:Ljava/lang/String;
    .restart local v2       #listener:Lcom/android/hwcamera/eventcenter/EventListener;
    .restart local v3       #runnable:Ljava/lang/Runnable;
    :cond_2
    iget-object v4, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->threadPoolExecutor1:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 59
    :catch_0
    move-exception v4

    goto :goto_0

    .line 56
    :cond_3
    iget-object v4, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->threadPoolExecutor2:Ljava/util/concurrent/ExecutorService;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->threadPoolExecutor2:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 57
    iget-object v4, p0, Lcom/android/hwcamera/eventcenter/AsyncEventPublisher;->threadPoolExecutor2:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
