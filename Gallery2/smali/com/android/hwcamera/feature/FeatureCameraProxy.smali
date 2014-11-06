.class public Lcom/android/hwcamera/feature/FeatureCameraProxy;
.super Ljava/lang/Object;
.source "FeatureCameraProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "FeatureCameraProxy"

.field private static mCameraProxy:Lcom/android/hwcamera/feature/FeatureCameraProxy;


# instance fields
.field private target:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/hwcamera/feature/FeatureCameraProxy;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/android/hwcamera/feature/FeatureCameraProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/feature/FeatureCameraProxy;->mCameraProxy:Lcom/android/hwcamera/feature/FeatureCameraProxy;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/android/hwcamera/feature/FeatureCameraProxy;

    invoke-direct {v0}, Lcom/android/hwcamera/feature/FeatureCameraProxy;-><init>()V

    sput-object v0, Lcom/android/hwcamera/feature/FeatureCameraProxy;->mCameraProxy:Lcom/android/hwcamera/feature/FeatureCameraProxy;

    .line 28
    :cond_0
    sget-object v0, Lcom/android/hwcamera/feature/FeatureCameraProxy;->mCameraProxy:Lcom/android/hwcamera/feature/FeatureCameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "target"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/hwcamera/feature/FeatureCameraProxy;->target:Ljava/lang/Object;

    .line 33
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
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "proxy"
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x400

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FeatureCameraProxy."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, result:Ljava/lang/Object;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 43
    .local v0, preTime:J
    iget-object v3, p0, Lcom/android/hwcamera/feature/FeatureCameraProxy;->target:Ljava/lang/Object;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 44
    const-string v3, "FeatureCameraProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 50
    return-object v2
.end method
