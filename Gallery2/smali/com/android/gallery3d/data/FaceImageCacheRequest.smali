.class abstract Lcom/android/gallery3d/data/FaceImageCacheRequest;
.super Ljava/lang/Object;
.source "FaceImageCacheRequest.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceImageCacheRequest"


# instance fields
.field protected mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mPath:Lcom/android/gallery3d/data/Path;

.field private mPersonId:I

.field private mTargetSize:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;II)V
    .locals 0
    .parameter "application"
    .parameter "path"
    .parameter "personId"
    .parameter "targetSize"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/gallery3d/data/FaceImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 25
    iput-object p2, p0, Lcom/android/gallery3d/data/FaceImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    .line 26
    iput p3, p0, Lcom/android/gallery3d/data/FaceImageCacheRequest;->mPersonId:I

    .line 27
    iput p4, p0, Lcom/android/gallery3d/data/FaceImageCacheRequest;->mTargetSize:I

    .line 28
    return-void
.end method


# virtual methods
.method public abstract onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
.end method

.method public abstract onDistillRect(Lcom/android/gallery3d/util/ThreadPool$JobContext;ILandroid/graphics/Rect;)I
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "jc"

    .prologue
    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lcom/android/gallery3d/data/FaceImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 33
    .local v12, item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-virtual {v12}, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v12}, Lcom/android/gallery3d/data/LocalMediaItem;->hasRight()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/DrmUtils;->getPlaceHolder(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 76
    :goto_0
    return-object v7

    .line 37
    :cond_0
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .local v13, position:Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/gallery3d/data/FaceImageCacheRequest;->mPersonId:I

    invoke-virtual {p0, p1, v1, v13}, Lcom/android/gallery3d/data/FaceImageCacheRequest;->onDistillRect(Lcom/android/gallery3d/util/ThreadPool$JobContext;ILandroid/graphics/Rect;)I

    move-result v10

    .line 39
    .local v10, faceId:I
    if-gtz v10, :cond_1

    move-object v7, v0

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/data/FaceImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getFaceImageCacheService()Lcom/android/gallery3d/data/FaceImageCacheService;

    move-result-object v9

    .line 44
    .local v9, cacheService:Lcom/android/gallery3d/data/FaceImageCacheService;
    invoke-virtual {v12}, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm()Z

    move-result v1

    if-nez v1, :cond_4

    .line 45
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/BytesBufferPool;->get()Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v8

    .line 47
    .local v8, buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/data/FaceImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v9, v1, v10, v8}, Lcom/android/gallery3d/data/FaceImageCacheService;->getImageData(Lcom/android/gallery3d/data/Path;ILcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v11

    .line 48
    .local v11, found:Z
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    move-object v7, v0

    goto :goto_0

    .line 49
    :cond_2
    if-eqz v11, :cond_3

    .line 50
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 51
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 53
    iget-object v1, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v2, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v3, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Lcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 59
    .local v7, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 62
    .end local v8           #buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    .end local v11           #found:Z
    :cond_4
    invoke-virtual {p0, p1, v10, v13}, Lcom/android/gallery3d/data/FaceImageCacheRequest;->onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 63
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v7, v0

    goto :goto_0

    .line 59
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v0

    .line 65
    .end local v8           #buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    if-nez v7, :cond_6

    move-object v7, v0

    .line 66
    goto :goto_0

    .line 69
    :cond_6
    iget v1, p0, Lcom/android/gallery3d/data/FaceImageCacheRequest;->mTargetSize:I

    const/4 v2, 0x1

    invoke-static {v7, v1, v2}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 70
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v7, v0

    goto/16 :goto_0

    .line 72
    :cond_7
    invoke-static {v7}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 73
    .local v6, array:[B
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v7, v0

    goto/16 :goto_0

    .line 75
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/data/FaceImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v9, v0, v10, v6}, Lcom/android/gallery3d/data/FaceImageCacheService;->putImageData(Lcom/android/gallery3d/data/Path;I[B)V

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/FaceImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
