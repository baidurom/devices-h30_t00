.class Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;
.super Ljava/lang/Object;
.source "SoundClipsBurst.java"

# interfaces
.implements Lcom/android/hwcamera/SoundClipsBurst$BurstPlayer;
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/SoundClipsBurst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundPoolPlayerBurst"
.end annotation


# static fields
.field private static final ID_NOT_LOADED:I = 0x0

.field private static final NUM_SOUND_STREAMS:I = 0x1

.field private static final SOUND_RES:I = 0x7f080002

.field private static final TAG:Ljava/lang/String; = "SoundPoolPlayerBurst"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSoundID:I

.field private mSoundIDReady:Z

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mContext:Landroid/content/Context;

    .line 72
    const-class v1, Landroid/media/AudioManager;

    const-string v2, "STREAM_SYSTEM_ENFORCED"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/common/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    .line 75
    .local v0, audioType:I
    new-instance v1, Landroid/media/SoundPool;

    invoke-direct {v1, v6, v0, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundPool:Landroid/media/SoundPool;

    .line 76
    iget-object v1, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 78
    iget-object v1, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mContext:Landroid/content/Context;

    const v3, 0x7f080002

    invoke-virtual {v1, v2, v3, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundID:I

    .line 79
    iput-boolean v5, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundIDReady:Z

    .line 80
    return-void
.end method


# virtual methods
.method public declared-synchronized onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3
    .parameter "pool"
    .parameter "soundID"
    .parameter "status"

    .prologue
    .line 110
    monitor-enter p0

    if-eqz p3, :cond_0

    .line 111
    :try_start_0
    const-string v0, "SoundPoolPlayerBurst"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading sound tracks failed (status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    :try_start_1
    iput p2, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundID:I

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundIDReady:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized play()V
    .locals 7

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/hwcamera/SoundClipsBurst;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 98
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundID:I

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mContext:Landroid/content/Context;

    const v2, 0x7f080002

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundID:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 101
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundIDReady:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundID:I

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/SoundClipsBurst$SoundPoolPlayerBurst;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
