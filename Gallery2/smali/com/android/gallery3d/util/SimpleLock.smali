.class public Lcom/android/gallery3d/util/SimpleLock;
.super Ljava/lang/Object;
.source "SimpleLock.java"


# instance fields
.field private isLocked:Z

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/util/SimpleLock;->mLock:Ljava/lang/Object;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/util/SimpleLock;->isLocked:Z

    .line 10
    return-void
.end method


# virtual methods
.method public notifyAllWaitingLock()V
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/gallery3d/util/SimpleLock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/util/SimpleLock;->isLocked:Z

    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/util/SimpleLock;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 42
    monitor-exit v1

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitUntilNotify()V
    .locals 3

    .prologue
    .line 13
    iget-object v2, p0, Lcom/android/gallery3d/util/SimpleLock;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 14
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/gallery3d/util/SimpleLock;->isLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/gallery3d/util/SimpleLock;->isLocked:Z

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/android/gallery3d/util/SimpleLock;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 22
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2

    .line 23
    return-void

    .line 22
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public waitUntilNotifyOrTimeOut(J)V
    .locals 4
    .parameter "timeout"

    .prologue
    .line 26
    iget-object v2, p0, Lcom/android/gallery3d/util/SimpleLock;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 27
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/gallery3d/util/SimpleLock;->isLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    iget-object v1, p0, Lcom/android/gallery3d/util/SimpleLock;->mLock:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/gallery3d/util/SimpleLock;->isLocked:Z

    .line 35
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 33
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/gallery3d/util/SimpleLock;->isLocked:Z

    goto :goto_0

    .line 35
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 33
    :catchall_1
    move-exception v1

    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, p0, Lcom/android/gallery3d/util/SimpleLock;->isLocked:Z

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
