.class Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;
.super Ljava/lang/Object;
.source "SoundClips.java"

# interfaces
.implements Lcom/android/gallery3d/app/SoundClips$Player;
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SoundClips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundPoolPlayer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;
    }
.end annotation


# static fields
.field private static final ID_NOT_LOADED:I = 0x0

.field private static final NUM_SOUND_STREAMS:I = 0x1

.field private static final SOUND_RES:[Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource; = null

.field private static final TAG:Ljava/lang/String; = "SoundPoolPlayer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsMute:Z

.field private final mSoundIDReady:[Z

.field private mSoundIDToPlay:I

.field private final mSoundIDs:[I

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mSoundRes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 78
    new-array v0, v4, [Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;

    const v3, 0x7f080004

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-array v2, v7, [I

    aput v6, v2, v6

    iput-object v2, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    .line 96
    iput-boolean v6, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mIsMute:Z

    .line 99
    iput-object p1, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    .line 100
    const-class v2, Landroid/media/AudioManager;

    const-string v3, "STREAM_SYSTEM_ENFORCED"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    .line 103
    .local v0, audioType:I
    iput v6, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    .line 105
    new-instance v2, Landroid/media/SoundPool;

    invoke-direct {v2, v7, v0, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 106
    iget-object v2, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 108
    sget-object v2, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    .line 109
    sget-object v2, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    .line 110
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 111
    sget-object v2, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;->getType()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v3, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v2, v1

    .line 116
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    aput-boolean v6, v2, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v3, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    sget-object v4, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v1

    goto :goto_1

    .line 118
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8
    .parameter "pool"
    .parameter "soundID"
    .parameter "status"

    .prologue
    .line 179
    monitor-enter p0

    if-eqz p3, :cond_2

    .line 180
    :try_start_0
    const-string v0, "SoundPoolPlayer"

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

    .line 181
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    if-ne v0, p2, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    const/4 v1, 0x0

    aput v1, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 181
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 190
    .end local v7           #i:I
    :cond_2
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    array-length v0, v0

    if-ge v7, v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    if-ne v0, p2, :cond_4

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v7

    .line 197
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    if-ne p2, v0, :cond_0

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 179
    .end local v7           #i:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 190
    .restart local v7       #i:I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public declared-synchronized play(I)V
    .locals 11
    .parameter "action"

    .prologue
    const/4 v1, 0x1

    .line 130
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 131
    :cond_0
    const-string v0, "SoundPoolPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID not found for action:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in play()."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mIsMute:Z

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    aget v9, v0, p1

    .line 140
    .local v9, index:I
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v9

    if-nez v0, :cond_4

    .line 142
    sget-object v0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;->getType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v1, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v9

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v9

    iput v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    .end local v9           #index:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 145
    .restart local v9       #index:I
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v1, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    sget-object v3, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer$SoundResource;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v9

    goto :goto_1

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    aget-boolean v0, v0, v9

    if-nez v0, :cond_5

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v9

    iput v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    goto :goto_0

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    .line 154
    .local v7, audioManager:Landroid/media/AudioManager;
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v10

    .line 155
    .local v10, max:I
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    .line 156
    .local v8, current:I
    const/high16 v2, 0x3f80

    .line 157
    .local v2, volume:F
    if-eqz v10, :cond_6

    .line 158
    int-to-float v0, v8

    int-to-float v1, v10

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v3, 0x3f80

    invoke-static {v0, v1, v3}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v2

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v1, v1, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMute(Z)V
    .locals 1
    .parameter "mute"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mIsMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop(I)V
    .locals 3
    .parameter "action"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    aget v0, v1, p1

    .line 172
    .local v0, index:I
    iget-object v1, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/gallery3d/app/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_0
    monitor-exit p0

    return-void

    .line 171
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
