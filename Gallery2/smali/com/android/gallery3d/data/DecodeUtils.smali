.class public Lcom/android/gallery3d/data/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .parameter "jc"
    .parameter "fd"
    .parameter "shareable"

    .prologue
    .line 264
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 267
    :goto_0
    return-object v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .parameter "jc"
    .parameter "is"
    .parameter "shareable"

    .prologue
    .line 274
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 279
    :goto_0
    return-object v1

    .line 275
    :catch_0
    move-exception v0

    .line 278
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCreateBitmapRegionDecoder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .parameter "jc"
    .parameter "filePath"
    .parameter "shareable"

    .prologue
    .line 254
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 257
    :goto_0
    return-object v1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 6
    .parameter "jc"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "shareable"

    .prologue
    .line 236
    if-ltz p2, :cond_0

    if-lez p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 237
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "offset = %s, length = %s, bytes = %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 247
    :goto_0
    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "jc"
    .parameter "fd"
    .parameter "options"

    .prologue
    .line 62
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 63
    .restart local p2
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 64
    invoke-static {p2}, Lcom/android/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 65
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;Lcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"
    .parameter "fileDescriptor"
    .parameter "options"
    .parameter "pool"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 317
    if-nez p3, :cond_1

    .line 318
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    :cond_0
    :goto_0
    return-object v0

    .line 321
    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 322
    .restart local p2
    :cond_2
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v2, v4, :cond_3

    iput v4, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 323
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 324
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v2, v4, :cond_4

    invoke-static {p3, p0, p1, p2}, Lcom/android/gallery3d/data/DecodeUtils;->findCachedBitmap(Lcom/android/gallery3d/data/BitmapPool;Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 327
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_0

    .line 329
    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v2}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 330
    const/4 v2, 0x0

    iput-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 334
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    throw v1

    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    move-object v2, v3

    .line 324
    goto :goto_1

    .line 336
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    :cond_5
    const-string v2, "DecodeUtils"

    const-string v4, "decode fail with a given bitmap, try decode to a new bitmap"

    invoke-static {v2, v4}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v2}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 338
    iput-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 339
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "jc"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "options"

    .prologue
    .line 84
    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 85
    .restart local p4
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 86
    invoke-static {p4}, Lcom/android/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 87
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Lcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "jc"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "options"
    .parameter "pool"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 286
    if-nez p5, :cond_1

    .line 287
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 308
    :cond_0
    :goto_0
    return-object v6

    .line 290
    :cond_1
    if-nez p4, :cond_2

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 291
    .restart local p4
    :cond_2
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v0, v1, :cond_3

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 292
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 293
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v0, v1, :cond_4

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/data/DecodeUtils;->findCachedBitmap(Lcom/android/gallery3d/data/BitmapPool;Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 296
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 297
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v6, :cond_0

    .line 298
    iget-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p5, v0}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    .line 303
    .local v7, e:Ljava/lang/IllegalArgumentException;
    iget-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    throw v7

    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    move-object v0, v8

    .line 293
    goto :goto_1

    .line 305
    .restart local v7       #e:Ljava/lang/IllegalArgumentException;
    :cond_5
    const-string v0, "DecodeUtils"

    const-string v1, "decode fail with a given bitmap, try decode to a new bitmap"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p5, v0}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 307
    iput-object v8, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 308
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method public static decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "jc"
    .parameter "bytes"
    .parameter "options"

    .prologue
    .line 79
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/gallery3d/data/DecodeUtils;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBounds(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .parameter "jc"
    .parameter "fd"
    .parameter "options"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 72
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 73
    new-instance v0, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 74
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 75
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 76
    return-void

    :cond_0
    move v0, v2

    .line 71
    goto :goto_0
.end method

.method public static decodeBounds(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .parameter "jc"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "options"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    if-eqz p4, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 94
    iput-boolean v1, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 95
    new-instance v0, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 96
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 97
    iput-boolean v2, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    return-void

    :cond_0
    move v0, v2

    .line 93
    goto :goto_0
.end method

.method public static decodeFacialThumb(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "jc"
    .parameter "fd"
    .parameter "options"
    .parameter "rect"
    .parameter "targetSize"

    .prologue
    .line 115
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    .restart local p2
    :cond_0
    new-instance v9, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v9, p2}, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v9}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 118
    const/4 v9, 0x0

    invoke-static {p0, p1, v9}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v6

    .line 119
    .local v6, results:Landroid/graphics/BitmapRegionDecoder;
    if-nez v6, :cond_1

    const/4 v1, 0x0

    .line 131
    :goto_0
    return-object v1

    .line 121
    :cond_1
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    .line 122
    .local v4, picHeight:I
    invoke-virtual {v6}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v5

    .line 123
    .local v5, picWidth:I
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->right:I

    sub-int v10, v5, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v4, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 124
    .local v3, minMargin:I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 125
    .local v2, enLargeLen:I
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 126
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v2

    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v2

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v2

    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v2

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    .local v8, targetRect:Landroid/graphics/Rect;
    move/from16 v0, p4

    int-to-float v9, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    div-float v7, v9, v10

    .line 129
    .local v7, scale:F
    invoke-static {v7}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v9

    iput v9, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 130
    invoke-virtual {v6, v8, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 131
    .local v1, bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static decodeFacialThumb(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"
    .parameter "filePath"
    .parameter "options"
    .parameter "rec"
    .parameter "targetSize"

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 103
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 105
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-static {p0, v1, p2, p3, p4}, Lcom/android/gallery3d/data/DecodeUtils;->decodeFacialThumb(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 110
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v4

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "DecodeUtils"

    invoke-static {v4, v0}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    const/4 v4, 0x0

    .line 110
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 106
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static decodeIfBigEnough(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "jc"
    .parameter "data"
    .parameter "options"
    .parameter "targetSize"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 205
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 206
    .restart local p2
    :cond_0
    new-instance v1, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v1, p2}, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 208
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 209
    array-length v1, p1

    invoke-static {p1, v2, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 210
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    :cond_1
    :goto_0
    return-object v0

    .line 211
    :cond_2
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v1, p3, :cond_1

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v1, p3, :cond_1

    .line 214
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v1, p3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v0

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 216
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 217
    invoke-static {p2}, Lcom/android/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 219
    array-length v0, p1

    invoke-static {p1, v2, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "jc"
    .parameter "fd"
    .parameter "options"
    .parameter "targetSize"
    .parameter "type"

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 151
    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 152
    .restart local p2
    :cond_0
    new-instance v6, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v6, p2}, Lcom/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v6}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 154
    iput-boolean v9, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 155
    invoke-static {p1, v5, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 156
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 193
    :cond_1
    :goto_0
    return-object v5

    .line 158
    :cond_2
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 159
    .local v4, w:I
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 161
    .local v1, h:I
    if-ne p4, v8, :cond_5

    .line 164
    int-to-float v6, p3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 165
    .local v3, scale:F
    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 169
    const v0, 0x9c400

    .line 170
    .local v0, MAX_PIXEL_COUNT:I
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v4, v6

    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v7, v1, v7

    mul-int/2addr v6, v7

    const v7, 0x9c400

    if-le v6, v7, :cond_3

    .line 171
    const v6, 0x491c4000

    mul-int v7, v4, v1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    invoke-static {v6}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 180
    .end local v0           #MAX_PIXEL_COUNT:I
    :cond_3
    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 181
    invoke-static {p2}, Lcom/android/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 183
    invoke-static {p1, v5, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 184
    .local v2, result:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 188
    int-to-float v6, p3

    if-ne p4, v8, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_2
    int-to-float v5, v5

    div-float v3, v6, v5

    .line 192
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_4

    invoke-static {v2, v3, v9}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 193
    :cond_4
    invoke-static {v2}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 176
    .end local v2           #result:Landroid/graphics/Bitmap;
    .end local v3           #scale:F
    :cond_5
    int-to-float v6, p3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 177
    .restart local v3       #scale:F
    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 188
    .restart local v2       #result:Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2
.end method

.method public static decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"
    .parameter "filePath"
    .parameter "options"
    .parameter "targetSize"
    .parameter "type"

    .prologue
    .line 136
    const/4 v2, 0x0

    .line 138
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 140
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-static {p0, v1, p2, p3, p4}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 145
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v4

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "DecodeUtils"

    invoke-static {v4, v0}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    const/4 v4, 0x0

    .line 145
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 141
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 227
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p0

    .line 230
    :goto_0
    return-object v0

    .line 228
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    .local v0, newBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private static findCachedBitmap(Lcom/android/gallery3d/data/BitmapPool;Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "pool"
    .parameter "jc"
    .parameter "fileDescriptor"
    .parameter "options"

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/gallery3d/data/BitmapPool;->isOneSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    .line 353
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/data/DecodeUtils;->decodeBounds(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)V

    .line 354
    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/data/BitmapPool;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static findCachedBitmap(Lcom/android/gallery3d/data/BitmapPool;Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "pool"
    .parameter "jc"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "options"

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/gallery3d/data/BitmapPool;->isOneSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 347
    :goto_0
    return-object v0

    .line 346
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/gallery3d/data/DecodeUtils;->decodeBounds(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V

    .line 347
    iget v0, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/data/BitmapPool;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .parameter "options"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_OPTIONS_IN_MUTABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 59
    :cond_0
    return-void
.end method
