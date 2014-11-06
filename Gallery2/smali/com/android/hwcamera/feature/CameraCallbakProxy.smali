.class public Lcom/android/hwcamera/feature/CameraCallbakProxy;
.super Ljava/lang/Object;
.source "CameraCallbakProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final FILTER_METHOD_NAME:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESERVED_MEM:J = 0x5000L

.field private static final TAG:Ljava/lang/String;

.field private static final sBlockListener:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;

.field private static final sThreadPool:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;


# instance fields
.field private activity:Landroid/app/Activity;

.field private target:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 27
    const-class v0, Lcom/android/hwcamera/feature/CameraCallbakProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/feature/CameraCallbakProxy;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/android/hwcamera/feature/CameraCallbakProxy$1;

    invoke-direct {v0}, Lcom/android/hwcamera/feature/CameraCallbakProxy$1;-><init>()V

    sput-object v0, Lcom/android/hwcamera/feature/CameraCallbakProxy;->sBlockListener:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;

    .line 49
    new-instance v0, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x1e

    invoke-direct {v6, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    sget-object v8, Lcom/android/hwcamera/feature/CameraCallbakProxy;->sBlockListener:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;

    move v2, v1

    invoke-direct/range {v0 .. v8}, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;)V

    sput-object v0, Lcom/android/hwcamera/feature/CameraCallbakProxy;->sThreadPool:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/hwcamera/feature/CameraCallbakProxy;->FILTER_METHOD_NAME:Ljava/util/List;

    .line 60
    sget-object v0, Lcom/android/hwcamera/feature/CameraCallbakProxy;->FILTER_METHOD_NAME:Ljava/util/List;

    const-string v1, "storeImage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/hwcamera/feature/CameraCallbakProxy;->FILTER_METHOD_NAME:Ljava/util/List;

    const-string v1, "onQuickThumbnail"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/feature/CameraCallbakProxy;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/hwcamera/feature/CameraCallbakProxy;->target:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/hwcamera/feature/CameraCallbakProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized newInstance()Lcom/android/hwcamera/feature/CameraCallbakProxy;
    .locals 2

    .prologue
    .line 56
    const-class v1, Lcom/android/hwcamera/feature/CameraCallbakProxy;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/hwcamera/feature/CameraCallbakProxy;

    invoke-direct {v0}, Lcom/android/hwcamera/feature/CameraCallbakProxy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 4
    .parameter "target"
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    iput-object p1, p0, Lcom/android/hwcamera/feature/CameraCallbakProxy;->target:Ljava/lang/Object;

    .line 66
    iput-object p2, p0, Lcom/android/hwcamera/feature/CameraCallbakProxy;->activity:Landroid/app/Activity;

    .line 67
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "camera callback proxy activity is null"

    invoke-static {v0, v3}, Lcom/android/hwcamera/Util;->Assert(ZLjava/lang/String;)V

    .line 68
    if-eqz p1, :cond_1

    :goto_1
    const-string v0, "camera callback proxy target is null"

    invoke-static {v1, v0}, Lcom/android/hwcamera/Util;->Assert(ZLjava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 67
    goto :goto_0

    :cond_1
    move v1, v2

    .line 68
    goto :goto_1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "proxy"
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/android/hwcamera/feature/CameraCallbakProxy$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/hwcamera/feature/CameraCallbakProxy$2;-><init>(Lcom/android/hwcamera/feature/CameraCallbakProxy;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 88
    .local v0, runnable:Ljava/lang/Runnable;
    sget-object v1, Lcom/android/hwcamera/feature/CameraCallbakProxy;->FILTER_METHOD_NAME:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Lcom/android/hwcamera/feature/CameraCallbakProxy;->sThreadPool:Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 90
    sget-object v1, Lcom/android/hwcamera/feature/CameraCallbakProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraCallbakProxy invoke method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in non-UIThread."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/feature/CameraCallbakProxy;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
