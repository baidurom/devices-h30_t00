.class abstract Lcom/android/gallery3d/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

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
.field private static final TAG:Ljava/lang/String; = "ImageCacheRequest"


# instance fields
.field protected mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mDateModifiedInSec:J

.field private mPath:Lcom/android/gallery3d/data/Path;

.field private mTargetSize:I

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;IIJ)V
    .locals 0
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "targetSize"
    .parameter "dateModifiedInSec"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 42
    iput-object p2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    .line 43
    iput p3, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    .line 44
    iput p4, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    .line 45
    iput-wide p5, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDateModifiedInSec:J

    .line 46
    return-void
.end method

.method private debugTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "THUMB"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "MICROTHUMB"

    goto :goto_0

    :cond_1
    const-string v0, "?"

    goto :goto_0
.end method


# virtual methods
.method public abstract onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "jc"

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v19

    check-cast v19, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 58
    .local v19, item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/data/LocalMediaItem;->hasRight()Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/util/DrmUtils;->getPlaceHolder(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    move-object/from16 v17, v3

    .line 114
    :goto_1
    return-object v17

    .line 59
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 63
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v2

    .line 65
    .local v2, cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    invoke-virtual/range {v19 .. v19}, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 66
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/BytesBufferPool;->get()Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v5

    .line 69
    .local v5, buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDateModifiedInSec:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/data/ImageCacheService;->getImageData(Lcom/android/gallery3d/data/Path;ILcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;J)Z

    move-result v18

    .line 71
    .local v18, found:Z
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    const/16 v17, 0x0

    .line 91
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_1

    .line 72
    :cond_3
    if-eqz v18, :cond_6

    .line 73
    :try_start_1
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 74
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v10, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 76
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 77
    iget-object v7, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v8, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v9, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v11

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v11}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Lcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 85
    .local v17, bitmap:Landroid/graphics/Bitmap;
    :goto_2
    if-nez v17, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 86
    const-string v3, "ImageCacheRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode cached failed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/data/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_4
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto/16 :goto_1

    .line 81
    .end local v17           #bitmap:Landroid/graphics/Bitmap;
    :cond_5
    :try_start_2
    iget-object v7, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v8, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v9, v5, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v11

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v11}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Lcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v17

    .restart local v17       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 91
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v17           #bitmap:Landroid/graphics/Bitmap;
    :cond_6
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 94
    .end local v5           #buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    .end local v18           #found:Z
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/data/ImageCacheRequest;->onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 95
    .restart local v17       #bitmap:Landroid/graphics/Bitmap;
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v17, 0x0

    goto/16 :goto_1

    .line 91
    .end local v17           #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v3

    .line 97
    .end local v5           #buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    .restart local v17       #bitmap:Landroid/graphics/Bitmap;
    :cond_8
    if-nez v17, :cond_9

    .line 98
    const-string v3, "ImageCacheRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode orig failed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/data/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 102
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 103
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 107
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v17, 0x0

    goto/16 :goto_1

    .line 105
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v17

    goto :goto_3

    .line 109
    :cond_b
    invoke-static/range {v17 .. v17}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v14

    .line 110
    .local v14, array:[B
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v17, 0x0

    goto/16 :goto_1

    .line 112
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDateModifiedInSec:J

    move-object v11, v2

    invoke-virtual/range {v11 .. v16}, Lcom/android/gallery3d/data/ImageCacheService;->putImageData(Lcom/android/gallery3d/data/Path;I[BJ)V

    goto/16 :goto_1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
