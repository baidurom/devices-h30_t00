.class Lcom/android/gallery3d/util/Profile$Watchdog;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Watchdog"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/util/Profile$WatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessRunnable:Ljava/lang/Runnable;

.field private mProfileData:Lcom/android/gallery3d/util/ProfileData;

.field private mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Lcom/android/gallery3d/util/Profile$Watchdog$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/util/Profile$Watchdog$1;-><init>(Lcom/android/gallery3d/util/Profile$Watchdog;)V

    iput-object v0, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mRandom:Ljava/util/Random;

    .line 68
    new-instance v0, Lcom/android/gallery3d/util/ProfileData;

    invoke-direct {v0}, Lcom/android/gallery3d/util/ProfileData;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/android/gallery3d/util/ProfileData;

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Watchdog Handler"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/util/Profile$Watchdog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/gallery3d/util/Profile$Watchdog;->processList()V

    return-void
.end method

.method private findEntry(Ljava/lang/Thread;)Lcom/android/gallery3d/util/Profile$WatchEntry;
    .locals 3
    .parameter "thread"

    .prologue
    .line 140
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/util/Profile$WatchEntry;

    .line 142
    .local v0, entry:Lcom/android/gallery3d/util/Profile$WatchEntry;
    iget-object v2, v0, Lcom/android/gallery3d/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    if-ne v2, p1, :cond_0

    .line 144
    .end local v0           #entry:Lcom/android/gallery3d/util/Profile$WatchEntry;
    :goto_1
    return-object v0

    .line 140
    .restart local v0       #entry:Lcom/android/gallery3d/util/Profile$WatchEntry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v0           #entry:Lcom/android/gallery3d/util/Profile$WatchEntry;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processList()V
    .locals 11

    .prologue
    .line 103
    iget-object v7, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iget-object v7, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 123
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    long-to-int v0, v7

    .line 107
    .local v0, currentTime:I
    const/4 v5, 0x0

    .line 109
    .local v5, nextWakeTime:I
    iget-object v7, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/util/Profile$WatchEntry;

    .line 110
    .local v3, entry:Lcom/android/gallery3d/util/Profile$WatchEntry;
    iget v7, v3, Lcom/android/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    if-le v0, v7, :cond_2

    .line 111
    iget v7, v3, Lcom/android/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    iget v8, v3, Lcom/android/gallery3d/util/Profile$WatchEntry;->cycleTime:I

    add-int/2addr v7, v8

    iput v7, v3, Lcom/android/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    .line 112
    iget-object v6, v3, Lcom/android/gallery3d/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    .line 113
    .local v6, thread:Ljava/lang/Thread;
    invoke-direct {p0, v3}, Lcom/android/gallery3d/util/Profile$Watchdog;->sampleStack(Lcom/android/gallery3d/util/Profile$WatchEntry;)V

    .line 116
    .end local v6           #thread:Ljava/lang/Thread;
    :cond_2
    iget v7, v3, Lcom/android/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    if-le v7, v5, :cond_1

    .line 117
    iget v5, v3, Lcom/android/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    goto :goto_1

    .line 121
    .end local v3           #entry:Lcom/android/gallery3d/util/Profile$WatchEntry;
    :cond_3
    sub-int v7, v5, v0

    int-to-long v1, v7

    .line 122
    .local v1, delay:J
    iget-object v7, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private sampleStack(Lcom/android/gallery3d/util/Profile$WatchEntry;)V
    .locals 5
    .parameter "entry"

    .prologue
    .line 126
    iget-object v3, p1, Lcom/android/gallery3d/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    .line 127
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 128
    .local v2, stack:[Ljava/lang/StackTraceElement;
    array-length v4, v2

    new-array v1, v4, [Ljava/lang/String;

    .line 129
    .local v1, lines:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 130
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-boolean v4, p1, Lcom/android/gallery3d/util/Profile$WatchEntry;->isHolding:Z

    if-eqz v4, :cond_1

    .line 133
    iget-object v4, p1, Lcom/android/gallery3d/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_1
    return-void

    .line 135
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/android/gallery3d/util/ProfileData;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/util/ProfileData;->addSample([Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addWatchEntry(Ljava/lang/Thread;I)V
    .locals 6
    .parameter "thread"
    .parameter "cycleTime"

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/gallery3d/util/Profile$WatchEntry;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/gallery3d/util/Profile$WatchEntry;-><init>(Lcom/android/gallery3d/util/Profile$1;)V

    .line 79
    .local v0, e:Lcom/android/gallery3d/util/Profile$WatchEntry;
    iput-object p1, v0, Lcom/android/gallery3d/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    .line 80
    iput p2, v0, Lcom/android/gallery3d/util/Profile$WatchEntry;->cycleTime:I

    .line 81
    iget-object v2, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mRandom:Ljava/util/Random;

    invoke-virtual {v2, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 82
    .local v1, firstDelay:I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    .line 83
    iget-object v2, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-direct {p0}, Lcom/android/gallery3d/util/Profile$Watchdog;->processList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 78
    .end local v0           #e:Lcom/android/gallery3d/util/Profile$WatchEntry;
    .end local v1           #firstDelay:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized commit(Ljava/lang/Thread;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/android/gallery3d/util/Profile$WatchEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 168
    .local v0, entry:Lcom/android/gallery3d/util/Profile$WatchEntry;
    if-nez v0, :cond_0

    .line 175
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/gallery3d/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    .line 170
    .local v2, stacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 171
    iget-object v4, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/android/gallery3d/util/ProfileData;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/util/ProfileData;->addSample([Ljava/lang/String;)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/gallery3d/util/Profile$WatchEntry;->isHolding:Z

    .line 174
    iget-object v3, v0, Lcom/android/gallery3d/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    .end local v0           #entry:Lcom/android/gallery3d/util/Profile$WatchEntry;
    .end local v1           #i:I
    .end local v2           #stacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized drop(Ljava/lang/Thread;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/android/gallery3d/util/Profile$WatchEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 179
    .local v0, entry:Lcom/android/gallery3d/util/Profile$WatchEntry;
    if-nez v0, :cond_0

    .line 182
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, v0, Lcom/android/gallery3d/util/Profile$WatchEntry;->isHolding:Z

    .line 181
    iget-object v1, v0, Lcom/android/gallery3d/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    .end local v0           #entry:Lcom/android/gallery3d/util/Profile$WatchEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dumpToFile(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/android/gallery3d/util/ProfileData;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/ProfileData;->dumpToFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hold(Ljava/lang/Thread;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/android/gallery3d/util/Profile$WatchEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 161
    .local v0, entry:Lcom/android/gallery3d/util/Profile$WatchEntry;
    if-nez v0, :cond_0

    .line 164
    :goto_0
    monitor-exit p0

    return-void

    .line 163
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lcom/android/gallery3d/util/Profile$WatchEntry;->isHolding:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    .end local v0           #entry:Lcom/android/gallery3d/util/Profile$WatchEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAllWatchEntries()V
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    invoke-direct {p0}, Lcom/android/gallery3d/util/Profile$Watchdog;->processList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeWatchEntry(Ljava/lang/Thread;)V
    .locals 2
    .parameter "thread"

    .prologue
    .line 88
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/util/Profile$WatchEntry;

    iget-object v1, v1, Lcom/android/gallery3d/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    if-ne v1, p1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/util/Profile$Watchdog;->processList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 88
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/android/gallery3d/util/ProfileData;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/ProfileData;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
