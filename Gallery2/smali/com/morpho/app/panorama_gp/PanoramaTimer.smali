.class public Lcom/morpho/app/panorama_gp/PanoramaTimer;
.super Ljava/lang/Object;
.source "PanoramaTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;
    }
.end annotation


# instance fields
.field private isStarted:Z

.field private mListner:Lcom/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;

.field private mLock:Ljava/lang/Object;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->isStarted:Z

    .line 15
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimer:Ljava/util/Timer;

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mLock:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "isDeamon"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->isStarted:Z

    .line 20
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, p1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimer:Ljava/util/Timer;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mLock:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/morpho/app/panorama_gp/PanoramaTimer;)Lcom/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mListner:Lcom/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/morpho/app/panorama_gp/PanoramaTimer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/PanoramaTimer;->taskCancel()V

    return-void
.end method

.method private taskCancel()V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->isStarted:Z

    .line 59
    :cond_0
    monitor-exit v1

    .line 61
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/morpho/app/panorama_gp/PanoramaTimer;->taskCancel()V

    .line 50
    return-void
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 26
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    iget-boolean v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->isStarted:Z

    monitor-exit v1

    return v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 72
    iput-object v2, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimer:Ljava/util/Timer;

    .line 74
    :cond_1
    return-void

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setTimerListener(Lcom/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mListner:Lcom/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;

    .line 78
    return-void
.end method

.method public start(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 33
    iget-object v1, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/morpho/app/panorama_gp/PanoramaTimer$1;

    invoke-direct {v0, p0}, Lcom/morpho/app/panorama_gp/PanoramaTimer$1;-><init>(Lcom/morpho/app/panorama_gp/PanoramaTimer;)V

    iput-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 42
    iget-object v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/morpho/app/panorama_gp/PanoramaTimer;->isStarted:Z

    .line 45
    :cond_0
    monitor-exit v1

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
