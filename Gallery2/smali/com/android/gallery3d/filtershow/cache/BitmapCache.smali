.class public Lcom/android/gallery3d/filtershow/cache/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "BitmapCache"

.field static mNbItems:I


# instance fields
.field private final mBitmaps:[Landroid/graphics/Bitmap;

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mBusyStatus:[Z

.field private final mConfig:Landroid/graphics/Bitmap$Config;

.field private mIndex:J

.field private final mIndices:[J

.field private final mKeys:[Ljava/lang/Object;

.field private mOriginalBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x14

    sput v0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mNbItems:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget v0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mNbItems:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 30
    sget v0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mNbItems:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mKeys:[Ljava/lang/Object;

    .line 31
    sget v0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mNbItems:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndices:[J

    .line 32
    sget v0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mNbItems:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBusyStatus:[Z

    .line 34
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBuffer:Ljava/nio/ByteBuffer;

    .line 36
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndex:J

    return-void
.end method

.method private getOldestPosition()I
    .locals 6

    .prologue
    .line 55
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndices:[J

    const/4 v5, 0x0

    aget-wide v2, v4, v5

    .line 56
    .local v2, minIndex:J
    const/4 v0, 0x0

    .line 57
    .local v0, current:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    sget v4, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mNbItems:I

    if-ge v1, v4, :cond_1

    .line 58
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBusyStatus:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndices:[J

    aget-wide v4, v4, v1

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 59
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndices:[J

    aget-wide v2, v4, v1

    .line 60
    move v0, v1

    .line 57
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_1
    return v0
.end method


# virtual methods
.method public get(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "preset"

    .prologue
    .line 105
    const/4 v1, -0x1

    .line 106
    .local v1, foundPosition:I
    const/4 v0, 0x0

    .line 107
    .local v0, currentIndice:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget v3, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mNbItems:I

    if-ge v2, v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mKeys:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndices:[J

    aget-wide v3, v3, v2

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 110
    move v1, v2

    .line 107
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndices:[J

    iget-wide v4, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndex:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndex:J

    aput-wide v4, v3, v1

    .line 116
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v1

    .line 118
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public processPosition(I)V
    .locals 7
    .parameter "pos"

    .prologue
    .line 93
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mKeys:[Ljava/lang/Object;

    aget-object v1, v2, p1

    check-cast v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 94
    .local v1, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBitmaps:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, p1

    .line 95
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v2, p1

    .line 96
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndices:[J

    iget-wide v3, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndex:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndex:J

    aput-wide v3, v2, p1

    .line 98
    return-void
.end method

.method public put(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "preset"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->getOldestPosition()I

    move-result v0

    .line 68
    .local v0, pos:I
    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->put(Lcom/android/gallery3d/filtershow/presets/ImagePreset;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public put(Lcom/android/gallery3d/filtershow/presets/ImagePreset;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "preset"
    .parameter "pos"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBitmaps:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, p2

    .line 73
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v1, p2

    .line 74
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mKeys:[Ljava/lang/Object;

    aput-object p1, v1, p2

    .line 76
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndices:[J

    iget-wide v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndex:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mIndex:J

    aput-wide v2, v1, p2

    .line 77
    return-object v0
.end method

.method public reservePosition(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)I
    .locals 4
    .parameter "preset"

    .prologue
    .line 81
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mNbItems:I

    if-ge v0, v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mKeys:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBusyStatus:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 83
    const/4 v1, -0x1

    .line 89
    :goto_1
    return v1

    .line 81
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->getOldestPosition()I

    move-result v1

    .line 87
    .local v1, pos:I
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBusyStatus:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 88
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mKeys:[Ljava/lang/Object;

    aput-object p1, v2, v1

    goto :goto_1
.end method

.method public reset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 3
    .parameter "preset"

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mNbItems:I

    if-ge v0, v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mKeys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBusyStatus:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method

.method public setOriginalBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "original"

    .prologue
    const/4 v5, 0x1

    .line 40
    if-nez p1, :cond_1

    .line 52
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v1, v2, v3

    .line 45
    .local v1, size:I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBuffer:Ljava/nio/ByteBuffer;

    .line 46
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 47
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 48
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mNbItems:I

    if-ge v0, v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBitmaps:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unlockPosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/BitmapCache;->mBusyStatus:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 102
    return-void
.end method
