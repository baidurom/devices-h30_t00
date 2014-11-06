.class Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;
.super Ljava/lang/Object;
.source "SoundClips.java"

# interfaces
.implements Lcom/android/hwcamera/SoundClips$Player;
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/SoundClips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundPoolPlayer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;
    }
.end annotation


# static fields
.field private static final ID_NOT_LOADED:I = 0x0

.field private static final NUM_SOUND_STREAMS:I = 0x1

.field private static final SOUND_RES:[Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource; = null

.field private static final TAG:Ljava/lang/String; = "SoundPoolPlayer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSoundIDReady:[Z

.field private mSoundIDToPlay:I

.field private final mSoundIDs:[I

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mSoundRes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    new-instance v1, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    const v2, 0x7f080005

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    const v2, 0x7f080009

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-instance v2, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    const v3, 0x7f080007

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    const v3, 0x7f080008

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    const-string v3, "/system/media/audio/ui/VideoRecord.ogg"

    invoke-direct {v2, v5, v3}, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    .line 109
    iput-object p1, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    .line 110
    const-class v2, Landroid/media/AudioManager;

    const-string v3, "STREAM_SYSTEM_ENFORCED"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/android/gallery3d/common/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    .line 113
    .local v0, audioType:I
    iput v8, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    .line 115
    new-instance v2, Landroid/media/SoundPool;

    invoke-direct {v2, v7, v0, v8}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 116
    iget-object v2, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 118
    sget-object v2, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    .line 119
    sget-object v2, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    .line 120
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 121
    sget-object v2, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;->getType()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 122
    iget-object v2, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v3, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v2, v1

    .line 130
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    aput-boolean v8, v2, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v3, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    sget-object v4, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v1

    .line 126
    iget-object v2, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v2, v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v3, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v2, v1

    goto :goto_1

    .line 132
    :cond_2
    return-void

    .line 97
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public declared-synchronized onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8
    .parameter "pool"
    .parameter "soundID"
    .parameter "status"

    .prologue
    .line 172
    monitor-enter p0

    if-eqz p3, :cond_2

    .line 173
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

    .line 174
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    if-ne v0, p2, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    const/4 v1, 0x0

    aput v1, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 174
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 183
    .end local v7           #i:I
    :cond_2
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    array-length v0, v0

    if-ge v7, v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    if-ne v0, p2, :cond_4

    .line 185
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v7

    .line 190
    :cond_3
    iget v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    if-ne p2, v0, :cond_0

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    .line 192
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

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

    .line 172
    .end local v7           #i:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 183
    .restart local v7       #i:I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public declared-synchronized play(I)V
    .locals 8
    .parameter "action"

    .prologue
    const/4 v1, 0x1

    .line 144
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 145
    :cond_0
    const-string v0, "SoundPoolPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource ID not found for action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in play()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 149
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/hwcamera/SoundClips;->access$000()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    aget v7, v0, p1

    .line 154
    .local v7, index:I
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    if-nez v0, :cond_4

    .line 156
    sget-object v0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;->getType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 157
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v1, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v7

    .line 161
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    iput v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    .end local v7           #index:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 159
    .restart local v7       #index:I
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v1, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    sget-object v2, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->SOUND_RES:[Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer$SoundResource;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v7

    goto :goto_1

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    aget-boolean v0, v0, v7

    if-nez v0, :cond_5

    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    iput v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    goto :goto_0

    .line 166
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v1, v1, v7

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
