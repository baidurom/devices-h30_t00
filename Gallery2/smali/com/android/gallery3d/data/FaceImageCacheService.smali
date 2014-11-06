.class public Lcom/android/gallery3d/data/FaceImageCacheService;
.super Ljava/lang/Object;
.source "FaceImageCacheService.java"


# static fields
.field private static final IMAGE_CACHE_FILE:Ljava/lang/String; = "faceimgcache"

.field private static final IMAGE_CACHE_MAX_BYTES:I = 0x3200000

.field private static final IMAGE_CACHE_MAX_ENTRIES:I = 0x3e8

.field private static final IMAGE_CACHE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FaceImageCacheService"


# instance fields
.field private mCache:Lcom/android/gallery3d/common/BlobCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "faceimgcache"

    const/16 v1, 0x3e8

    const/high16 v2, 0x320

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/FaceImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    .line 30
    return-void
.end method

.method private static isSameKey([B[B)Z
    .locals 5
    .parameter "key"
    .parameter "buffer"

    .prologue
    const/4 v2, 0x0

    .line 95
    array-length v1, p0

    .line 96
    .local v1, n:I
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v2

    .line 99
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 100
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static makeKey(Lcom/android/gallery3d/data/Path;I)[B
    .locals 2
    .parameter "path"
    .parameter "faceId"

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearImageData(Lcom/android/gallery3d/data/Path;I)V
    .locals 5
    .parameter "path"
    .parameter "faceId"

    .prologue
    .line 76
    iget-object v3, p0, Lcom/android/gallery3d/data/FaceImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v3, :cond_0

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {p1, p2}, Lcom/android/gallery3d/data/FaceImageCacheService;->makeKey(Lcom/android/gallery3d/data/Path;I)[B

    move-result-object v2

    .line 80
    .local v2, key:[B
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 81
    .local v0, cacheKey:J
    iget-object v4, p0, Lcom/android/gallery3d/data/FaceImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    monitor-enter v4

    .line 83
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/FaceImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v3, v0, v1}, Lcom/android/gallery3d/common/BlobCache;->clearEntry(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    :try_start_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 84
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getImageData(Lcom/android/gallery3d/data/Path;ILcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z
    .locals 7
    .parameter "path"
    .parameter "faceId"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x0

    .line 33
    iget-object v5, p0, Lcom/android/gallery3d/data/FaceImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v5, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v4

    .line 36
    :cond_1
    invoke-static {p1, p2}, Lcom/android/gallery3d/data/FaceImageCacheService;->makeKey(Lcom/android/gallery3d/data/Path;I)[B

    move-result-object v2

    .line 37
    .local v2, key:[B
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 39
    .local v0, cacheKey:J
    :try_start_0
    new-instance v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;

    invoke-direct {v3}, Lcom/android/gallery3d/common/BlobCache$LookupRequest;-><init>()V

    .line 40
    .local v3, request:Lcom/android/gallery3d/common/BlobCache$LookupRequest;
    iput-wide v0, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    .line 41
    iget-object v5, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iput-object v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 42
    iget-object v6, p0, Lcom/android/gallery3d/data/FaceImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :try_start_1
    iget-object v5, p0, Lcom/android/gallery3d/data/FaceImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/common/BlobCache;->lookup(Lcom/android/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v5

    if-nez v5, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    .end local v3           #request:Lcom/android/gallery3d/common/BlobCache$LookupRequest;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 44
    .restart local v3       #request:Lcom/android/gallery3d/common/BlobCache$LookupRequest;
    :cond_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :try_start_4
    iget-object v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    invoke-static {v2, v5}, Lcom/android/gallery3d/data/FaceImageCacheService;->isSameKey([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    iget-object v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    iput-object v5, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 47
    array-length v5, v2

    iput v5, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    .line 48
    iget v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->length:I

    iget v6, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr v5, v6

    iput v5, p3, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 49
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public putImageData(Lcom/android/gallery3d/data/Path;I[B)V
    .locals 7
    .parameter "path"
    .parameter "faceId"
    .parameter "value"

    .prologue
    .line 58
    iget-object v4, p0, Lcom/android/gallery3d/data/FaceImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v4, :cond_0

    .line 73
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {p1, p2}, Lcom/android/gallery3d/data/FaceImageCacheService;->makeKey(Lcom/android/gallery3d/data/Path;I)[B

    move-result-object v3

    .line 62
    .local v3, key:[B
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v1

    .line 63
    .local v1, cacheKey:J
    array-length v4, v3

    array-length v5, p3

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 66
    iget-object v5, p0, Lcom/android/gallery3d/data/FaceImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    monitor-enter v5

    .line 68
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/data/FaceImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v1, v2, v6}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    :try_start_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 69
    :catch_0
    move-exception v4

    goto :goto_1
.end method
