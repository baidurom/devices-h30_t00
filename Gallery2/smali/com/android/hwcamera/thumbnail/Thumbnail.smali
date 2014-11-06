.class public Lcom/android/hwcamera/thumbnail/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/thumbnail/Thumbnail$Media;
    }
.end annotation


# static fields
.field private static final BUFSIZE:I = 0x1000

.field private static final LAST_THUMB_FILENAME:Ljava/lang/String; = "last_thumb"

.field private static final TAG:Ljava/lang/String; = "Thumbnail"

.field public static final THUMBNAIL_DECODE_ERROR:I = 0x3

.field public static final THUMBNAIL_DELETED:I = 0x2

.field public static final THUMBNAIL_FOUND:I = 0x1

.field public static final THUMBNAIL_NOT_FOUND:I

.field private static mMaxImageId:I

.field private static mMaxVideoId:I

.field private static mMinImageId:I

.field private static mMinVideoId:I

.field static sIsSecureCamera:Z

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFromFile:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/high16 v1, -0x8000

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->sLock:Ljava/lang/Object;

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->sIsSecureCamera:Z

    .line 66
    sput v2, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMinImageId:I

    .line 67
    sput v1, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMaxImageId:I

    .line 68
    sput v2, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMinVideoId:I

    .line 69
    sput v1, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMaxVideoId:I

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mFromFile:Z

    .line 72
    iput-object p1, p0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mUri:Landroid/net/Uri;

    .line 73
    invoke-static {p2, p3}, Lcom/android/hwcamera/thumbnail/Thumbnail;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    .line 74
    return-void
.end method

.method public static addMediaItem(ZI)V
    .locals 1
    .parameter "isVideo"
    .parameter "id"

    .prologue
    .line 234
    if-eqz p0, :cond_0

    .line 235
    sget v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMinVideoId:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMinVideoId:I

    .line 236
    sget v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMaxVideoId:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMaxVideoId:I

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    sget v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMinImageId:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMinImageId:I

    .line 239
    sget v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMaxImageId:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMaxImageId:I

    goto :goto_0
.end method

.method public static create2DFileFromBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "stereo3DType"

    .prologue
    const/4 v2, 0x0

    .line 445
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 446
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 450
    :cond_0
    :goto_0
    return-object p0

    .line 447
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 448
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/hwcamera/thumbnail/Thumbnail;
    .locals 2
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 423
    if-nez p1, :cond_0

    .line 424
    const-string v0, "Thumbnail"

    const-string v1, "Failed to create thumbnail from null bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v0, 0x0

    .line 427
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/hwcamera/thumbnail/Thumbnail;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/hwcamera/thumbnail/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public static createThumbnail(Ljava/lang/String;IILandroid/net/Uri;I)Lcom/android/hwcamera/thumbnail/Thumbnail;
    .locals 2
    .parameter "filePath"
    .parameter "orientation"
    .parameter "inSampleSize"
    .parameter "uri"
    .parameter "stereo3DType"

    .prologue
    .line 437
    invoke-static {p0, p2}, Lcom/android/hwcamera/thumbnail/Thumbnail;->decodeLastPictureThumb(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 439
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p4}, Lcom/android/hwcamera/thumbnail/Thumbnail;->create2DFileFromBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 440
    invoke-static {p3, v0, p1}, Lcom/android/hwcamera/thumbnail/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v1

    return-object v1
.end method

.method public static createThumbnail([BIILandroid/net/Uri;)Lcom/android/hwcamera/thumbnail/Thumbnail;
    .locals 4
    .parameter "jpeg"
    .parameter "orientation"
    .parameter "inSampleSize"
    .parameter "uri"

    .prologue
    .line 372
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 373
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 374
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 375
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p3, v0, p1}, Lcom/android/hwcamera/thumbnail/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v2

    return-object v2
.end method

.method public static createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "fd"
    .parameter "targetWidth"

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/hwcamera/thumbnail/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "filePath"
    .parameter "targetWidth"

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/hwcamera/thumbnail/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "filePath"
    .parameter "fd"
    .parameter "targetWidth"

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 391
    .local v3, retriever:Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_0

    .line 392
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 396
    :goto_0
    const-wide/16 v7, -0x1

    invoke-virtual {v3, v7, v8}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 403
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 408
    :goto_1
    if-nez v0, :cond_1

    const/4 v7, 0x0

    .line 419
    :goto_2
    return-object v7

    .line 394
    :cond_0
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 397
    :catch_0
    move-exception v7

    .line 403
    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 404
    :catch_1
    move-exception v7

    goto :goto_1

    .line 399
    :catch_2
    move-exception v7

    .line 403
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 404
    :catch_3
    move-exception v7

    goto :goto_1

    .line 402
    :catchall_0
    move-exception v7

    .line 403
    :try_start_5
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 406
    :goto_3
    throw v7

    .line 411
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 412
    .local v6, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 413
    .local v2, height:I
    if-le v6, p2, :cond_2

    .line 414
    int-to-float v7, p2

    int-to-float v8, v6

    div-float v4, v7, v8

    .line 415
    .local v4, scale:F
    int-to-float v7, v6

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 416
    .local v5, w:I
    int-to-float v7, v2

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 417
    .local v1, h:I
    const/4 v7, 0x1

    invoke-static {v0, v5, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1           #h:I
    .end local v4           #scale:F
    .end local v5           #w:I
    :cond_2
    move-object v7, v0

    .line 419
    goto :goto_2

    .line 404
    .end local v2           #height:I
    .end local v6           #width:I
    :catch_4
    move-exception v7

    goto :goto_1

    :catch_5
    move-exception v8

    goto :goto_3
.end method

.method public static decodeLastPictureThumb(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "filePath"
    .parameter "inSampleSize"

    .prologue
    .line 454
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 455
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 456
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 457
    .local v0, lastPictureThumb:Landroid/graphics/Bitmap;
    const-string v2, "Thumbnail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastPictureThumb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!!!; file path"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-object v0
.end method

.method private static getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail$Media;
    .locals 2
    .parameter "resolver"

    .prologue
    .line 244
    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/hwcamera/thumbnail/Thumbnail;->sIsSecureCamera:Z

    if-ne v0, v1, :cond_0

    .line 245
    invoke-static {p0}, Lcom/android/hwcamera/thumbnail/Thumbnail;->getLastSecureImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail$Media;

    move-result-object v0

    .line 247
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/hwcamera/thumbnail/Thumbnail;->getLastNormalImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail$Media;

    move-result-object v0

    goto :goto_0
.end method

.method private static getLastNormalImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail$Media;
    .locals 16
    .parameter "resolver"

    .prologue
    .line 252
    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 254
    .local v14, baseUri:Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v6, "1"

    invoke-virtual {v0, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 255
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "orientation"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "datetaken"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "_data"

    aput-object v4, v2, v0

    .line 258
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(mime_type=\'image/jpeg\' OR mime_type=\'image/mpo\') AND bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getBucketId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 264
    .local v5, order:Ljava/lang/String;
    const/4 v15, 0x0

    .line 266
    .local v15, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 267
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    const-string v0, "Thumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastImageThumbnail: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 272
    .local v7, id:J
    new-instance v6, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;

    const/4 v0, 0x1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v0, 0x2

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v14, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    const/4 v0, 0x3

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v6 .. v13}, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    if-eqz v15, :cond_0

    .line 277
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 280
    .end local v7           #id:J
    :cond_0
    :goto_0
    return-object v6

    .line 276
    :cond_1
    if-eqz v15, :cond_2

    .line 277
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 280
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    if-eqz v15, :cond_3

    .line 277
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static getLastNormalVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail$Media;
    .locals 16
    .parameter "resolver"

    .prologue
    .line 292
    sget-object v14, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 294
    .local v14, baseUri:Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v6, "1"

    invoke-virtual {v0, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 295
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "datetaken"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "_data"

    aput-object v4, v2, v0

    .line 297
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getBucketId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 300
    .local v5, order:Ljava/lang/String;
    const/4 v15, 0x0

    .line 302
    .local v15, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 303
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    const-string v0, "Thumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastVideoThumbnail: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 306
    .local v7, id:J
    new-instance v6, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;

    const/4 v9, 0x0

    const/4 v0, 0x2

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v14, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    const/4 v0, 0x3

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v6 .. v13}, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    if-eqz v15, :cond_0

    .line 311
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 314
    .end local v7           #id:J
    :cond_0
    :goto_0
    return-object v6

    .line 310
    :cond_1
    if-eqz v15, :cond_2

    .line 311
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    if-eqz v15, :cond_3

    .line 311
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static getLastSecureImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail$Media;
    .locals 15
    .parameter "resolver"

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 318
    sget v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMinImageId:I

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_0

    sget v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMaxImageId:I

    const/high16 v3, -0x8000

    if-ne v0, v3, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-object v6

    .line 319
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 321
    .local v1, baseUri:Landroid/net/Uri;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "orientation"

    aput-object v0, v2, v10

    const-string v0, "datetaken"

    aput-object v0, v2, v11

    const-string v0, "_data"

    aput-object v0, v2, v12

    .line 324
    .local v2, projection:[Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    sget v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMinImageId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    sget v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMaxImageId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 325
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 326
    .local v5, order:Ljava/lang/String;
    const/4 v14, 0x0

    .line 328
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "_id BETWEEN ? AND ?"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 330
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 332
    .local v7, id:J
    new-instance v6, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;

    const/4 v0, 0x1

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v0, 0x2

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    const/4 v0, 0x3

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v6 .. v13}, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    if-eqz v14, :cond_0

    .line 337
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 336
    .end local v7           #id:J
    :cond_2
    if-eqz v14, :cond_0

    .line 337
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    if-eqz v14, :cond_3

    .line 337
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static getLastSecureVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail$Media;
    .locals 15
    .parameter "resolver"

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 344
    sget v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMinVideoId:I

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_0

    sget v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMaxVideoId:I

    const/high16 v3, -0x8000

    if-ne v0, v3, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-object v6

    .line 345
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 347
    .local v1, baseUri:Landroid/net/Uri;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "_data"

    aput-object v0, v2, v10

    const-string v0, "datetaken"

    aput-object v0, v2, v11

    const-string v0, "_data"

    aput-object v0, v2, v12

    .line 349
    .local v2, projection:[Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    sget v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMinVideoId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    sget v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMaxVideoId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 350
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 351
    .local v5, order:Ljava/lang/String;
    const/4 v14, 0x0

    .line 353
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "_id BETWEEN ? AND ?"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 355
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 357
    .local v7, id:J
    new-instance v6, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;

    const/4 v0, 0x1

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v0, 0x2

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    const/4 v0, 0x3

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v6 .. v13}, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    if-eqz v14, :cond_0

    .line 362
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 361
    .end local v7           #id:J
    :cond_2
    if-eqz v14, :cond_0

    .line 362
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    if-eqz v14, :cond_3

    .line 362
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/android/hwcamera/thumbnail/Thumbnail;)I
    .locals 10
    .parameter "resolver"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 181
    invoke-static {p0}, Lcom/android/hwcamera/thumbnail/Thumbnail;->getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail$Media;

    move-result-object v1

    .line 182
    .local v1, image:Lcom/android/hwcamera/thumbnail/Thumbnail$Media;
    invoke-static {p0}, Lcom/android/hwcamera/thumbnail/Thumbnail;->getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail$Media;

    move-result-object v3

    .line 183
    .local v3, video:Lcom/android/hwcamera/thumbnail/Thumbnail$Media;
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    .line 207
    :goto_0
    return v4

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 189
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    if-eqz v3, :cond_1

    iget-wide v6, v1, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;->dateTaken:J

    iget-wide v8, v3, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;->dateTaken:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    .line 191
    :cond_1
    iget-object v6, v1, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;->path:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    move-object v2, v1

    .line 200
    .local v2, lastMedia:Lcom/android/hwcamera/thumbnail/Thumbnail$Media;
    :goto_1
    iget-object v6, v2, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v6, p0}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 202
    if-nez v0, :cond_3

    const/4 v4, 0x3

    goto :goto_0

    .line 195
    .end local v2           #lastMedia:Lcom/android/hwcamera/thumbnail/Thumbnail$Media;
    :cond_2
    iget-object v6, v3, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;->path:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    move-object v2, v3

    .restart local v2       #lastMedia:Lcom/android/hwcamera/thumbnail/Thumbnail$Media;
    goto :goto_1

    .line 204
    :cond_3
    iget-object v6, v2, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;->uri:Landroid/net/Uri;

    iget v7, v2, Lcom/android/hwcamera/thumbnail/Thumbnail$Media;->orientation:I

    invoke-static {v6, v0, v7}, Lcom/android/hwcamera/thumbnail/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v6

    aput-object v6, p1, v4

    move v4, v5

    .line 205
    goto :goto_0

    .line 207
    :cond_4
    const/4 v4, 0x2

    goto :goto_0
.end method

.method public static getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail;
    .locals 16
    .parameter "filesDir"
    .parameter "resolver"

    .prologue
    .line 140
    new-instance v9, Ljava/io/File;

    const-string v12, "last_thumb"

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .local v9, file:Ljava/io/File;
    const/4 v11, 0x0

    .line 142
    .local v11, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 143
    .local v3, bitmap:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 144
    .local v7, f:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 145
    .local v1, b:Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 146
    .local v4, d:Ljava/io/DataInputStream;
    sget-object v13, Lcom/android/hwcamera/thumbnail/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter v13

    .line 148
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v7           #f:Ljava/io/FileInputStream;
    .local v8, f:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v12, 0x1000

    invoke-direct {v2, v8, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .end local v1           #b:Ljava/io/BufferedInputStream;
    .local v2, b:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 151
    .end local v4           #d:Ljava/io/DataInputStream;
    .local v5, d:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 152
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 153
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 154
    const/4 v10, 0x0

    .line 162
    :try_start_4
    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v2}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 164
    invoke-static {v5}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 169
    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    :goto_0
    return-object v10

    .line 156
    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :cond_0
    :try_start_5
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 157
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 162
    :try_start_6
    invoke-static {v8}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v2}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 164
    invoke-static {v5}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 166
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 167
    const/4 v12, 0x0

    invoke-static {v11, v3, v12}, Lcom/android/hwcamera/thumbnail/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v10

    .line 168
    .local v10, thumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;
    if-eqz v10, :cond_1

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/android/hwcamera/thumbnail/Thumbnail;->setFromFile(Z)V

    :cond_1
    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 169
    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_0

    .line 158
    .end local v10           #thumbnail:Lcom/android/hwcamera/thumbnail/Thumbnail;
    :catch_0
    move-exception v6

    .line 159
    .local v6, e:Ljava/io/IOException;
    :goto_1
    :try_start_7
    const-string v12, "Thumbnail"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to load bitmap. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 160
    const/4 v10, 0x0

    .line 162
    :try_start_8
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v1}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 164
    invoke-static {v4}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    monitor-exit v13

    goto :goto_0

    .line 166
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_2
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v12

    .line 162
    :catchall_1
    move-exception v12

    :goto_3
    :try_start_9
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v1}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 164
    invoke-static {v4}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 166
    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v12

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .line 162
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v12

    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catchall_4
    move-exception v12

    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v12

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_3

    .line 158
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail$Media;
    .locals 2
    .parameter "resolver"

    .prologue
    .line 284
    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/hwcamera/thumbnail/Thumbnail;->sIsSecureCamera:Z

    if-ne v0, v1, :cond_0

    .line 285
    invoke-static {p0}, Lcom/android/hwcamera/thumbnail/Thumbnail;->getLastSecureVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail$Media;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/hwcamera/thumbnail/Thumbnail;->getLastNormalVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/thumbnail/Thumbnail$Media;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetSecureCount()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    const/high16 v0, -0x8000

    .line 227
    sput v1, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMinVideoId:I

    .line 228
    sput v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMaxVideoId:I

    .line 229
    sput v1, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMinImageId:I

    .line 230
    sput v0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mMaxImageId:I

    .line 231
    return-void
.end method

.method private static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/high16 v3, 0x3f00

    .line 93
    if-eqz p1, :cond_1

    .line 95
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 96
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 100
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 104
    .local v7, rotated:Landroid/graphics/Bitmap;
    if-eq v7, p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #rotated:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v7

    .line 106
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 107
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "Thumbnail"

    const-string v1, "Failed to rotate thumbnail"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_1
    move-object v7, p0

    .line 110
    goto :goto_0
.end method

.method public static setSecureCameraMode(Z)V
    .locals 0
    .parameter "isSecure"

    .prologue
    .line 431
    sput-boolean p0, Lcom/android/hwcamera/thumbnail/Thumbnail;->sIsSecureCamera:Z

    .line 432
    invoke-static {}, Lcom/android/hwcamera/thumbnail/Thumbnail;->resetSecureCount()V

    .line 433
    return-void
.end method


# virtual methods
.method public fromFile()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mFromFile:Z

    return v0
.end method

.method public declared-synchronized getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public saveLastThumbnailToFile(Ljava/io/File;)V
    .locals 12
    .parameter "filesDir"

    .prologue
    .line 115
    new-instance v7, Ljava/io/File;

    const-string v8, "last_thumb"

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v7, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 117
    .local v5, f:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 118
    .local v0, b:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 119
    .local v2, d:Ljava/io/DataOutputStream;
    sget-object v9, Lcom/android/hwcamera/thumbnail/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter v9

    .line 121
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v5           #f:Ljava/io/FileOutputStream;
    .local v6, f:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v1, v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .local v1, b:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 124
    .end local v2           #d:Ljava/io/DataOutputStream;
    .local v3, d:Ljava/io/DataOutputStream;
    :try_start_3
    iget-object v8, p0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 125
    iget-object v8, p0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    invoke-virtual {v8, v10, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 126
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 130
    :try_start_4
    invoke-static {v6}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v1}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v3}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 134
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 135
    return-void

    .line 127
    :catch_0
    move-exception v4

    .line 128
    .local v4, e:Ljava/io/IOException;
    :goto_1
    :try_start_6
    const-string v8, "Thumbnail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail to store bitmap. path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 130
    :try_start_7
    invoke-static {v5}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v0}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v2}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 134
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v8

    .line 130
    :catchall_1
    move-exception v8

    :goto_3
    :try_start_8
    invoke-static {v5}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    invoke-static {v0}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v2}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 134
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 130
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v8

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v8

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v8

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 127
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setFromFile(Z)V
    .locals 0
    .parameter "fromFile"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/hwcamera/thumbnail/Thumbnail;->mFromFile:Z

    .line 86
    return-void
.end method
