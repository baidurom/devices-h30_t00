.class public Lcom/android/hwcamera/SoundRecorder;
.super Ljava/lang/Object;
.source "SoundRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundRecorder"


# instance fields
.field mSoundListernerlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/SoundListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundRecorderThread:Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundListernerlist:Ljava/util/List;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/SoundRecorder;[S)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/hwcamera/SoundRecorder;->notifyAllListeners([S)V

    return-void
.end method

.method private declared-synchronized notifyAllListeners([S)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundListernerlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 46
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/hwcamera/SoundListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/SoundListener;

    invoke-interface {v1, p1, v0}, Lcom/android/hwcamera/SoundListener;->notify([SLjava/util/Iterator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 44
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/hwcamera/SoundListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 50
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/hwcamera/SoundListener;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/hwcamera/SoundListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundListernerlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancle()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundRecorderThread:Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundRecorderThread:Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->cancle()V

    .line 41
    :cond_0
    return-void
.end method

.method public joinThread()V
    .locals 1

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundRecorderThread:Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundRecorderThread:Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundRecorderThread:Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundRecorderThread:Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->pause()V

    .line 56
    :cond_0
    return-void
.end method

.method public declared-synchronized removeAllListener()V
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundListernerlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/android/hwcamera/SoundListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundListernerlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundRecorderThread:Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundRecorderThread:Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->restart()V

    .line 62
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;-><init>(Lcom/android/hwcamera/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundRecorderThread:Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;

    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/SoundRecorder;->mSoundRecorderThread:Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundRecorder$SoundRecorderThread;->start()V

    .line 23
    return-void
.end method
