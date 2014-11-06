.class final Lcom/android/hwcamera/feature/CameraCallbakProxy$1;
.super Ljava/lang/Object;
.source "CameraCallbakProxy.java"

# interfaces
.implements Lcom/android/hwcamera/feature/BlockedThreadPoolExecutor$BlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/feature/CameraCallbakProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needBlock()Z
    .locals 13

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    .line 38
    .local v6, rt:Ljava/lang/Runtime;
    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v9

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v11

    sub-long v7, v9, v11

    .line 39
    .local v7, vmAlloc:J
    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 40
    .local v2, maxMem:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v4

    .line 41
    .local v4, nativeAlloc:J
    sub-long v9, v2, v7

    sub-long/2addr v9, v4

    const-wide/16 v11, 0x400

    div-long v0, v9, v11

    .line 42
    .local v0, freeMem:J
    const-string v9, "CAM_Mem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Avaiable mem: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-wide/16 v9, 0x5000

    cmp-long v9, v0, v9

    if-gez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method
