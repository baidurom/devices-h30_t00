.class public Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;
.super Ljava/lang/Object;
.source "MultiScreenUtils.java"


# static fields
.field public static final GALLERY_TIMER_CONVERT:I = 0x3e8

.field public static final MAX_BITRATE:J = 0x800000L

.field public static final QUALITY:I = 0x32

.field public static final TAG:Ljava/lang/String; = "AirSharing_MultiScreenUtils"

.field public static final TYPE_JPG:Ljava/lang/String; = ".jpeg"

.field public static final TYPE_PNG:Ljava/lang/String; = ".png"

.field public static sCacheDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheVideoThumbnail(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 7
    .parameter "bitmap"

    .prologue
    .line 319
    sget-object v3, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->sCacheDir:Ljava/io/File;

    .line 320
    .local v3, pushCache:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 321
    .local v4, pushFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 324
    .local v1, fOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .local v2, fOut:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x32

    invoke-virtual {p0, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 326
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 330
    if-eqz v2, :cond_0

    .line 332
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    move-object v1, v2

    .line 338
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    :goto_1
    return-object v5

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    if-eqz v1, :cond_1

    .line 332
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 338
    :cond_1
    :goto_3
    const/4 v5, 0x0

    goto :goto_1

    .line 330
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v1, :cond_2

    .line 332
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 335
    :cond_2
    :goto_5
    throw v5

    .line 333
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    goto :goto_0

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v6

    goto :goto_5

    .line 330
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 327
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static clearVideoThumbnailCache(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 117
    const-string v6, "AirSharing_MultiScreenUtils"

    const-string v7, "Slient Clear cacheFile Start"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v4, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->sCacheDir:Ljava/io/File;

    .line 119
    .local v4, pushCache:Ljava/io/File;
    const/4 v5, 0x0

    .line 120
    .local v5, result:Z
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v6, v6

    const/16 v7, 0x64

    if-gt v6, v7, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 125
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    .end local v1           #file:Ljava/io/File;
    :cond_2
    const-string v6, "AirSharing_MultiScreenUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Slient Clear cacheFile Finished "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static excessBitRate(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 416
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v3

    .line 420
    :cond_1
    const-string v4, "AirSharing_MultiScreenUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkBitRate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 422
    .local v2, retriever:Landroid/media/MediaMetadataRetriever;
    const/4 v1, 0x0

    .line 425
    .local v1, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 427
    const/16 v4, 0x14

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 433
    :goto_1
    const-string v4, "AirSharing_MultiScreenUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BitRate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    if-eqz v1, :cond_0

    .line 438
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x800000

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "AirSharing_MultiScreenUtils"

    const-string v5, "excessBitRate"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 430
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 431
    .local v0, e:Ljava/lang/SecurityException;
    const-string v4, "AirSharing_MultiScreenUtils"

    const-string v5, "excessBitRate"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 439
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "AirSharing_MultiScreenUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error bitrate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static final findFirstNotOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "str"
    .parameter "chars"

    .prologue
    const/4 v2, 0x0

    .line 538
    if-nez p0, :cond_0

    .line 539
    const/4 v0, -0x1

    .line 541
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result v0

    goto :goto_0
.end method

.method public static final findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I
    .locals 8
    .parameter "str"
    .parameter "chars"
    .parameter "startIdx"
    .parameter "endIdx"
    .parameter "offset"
    .parameter "isEqual"

    .prologue
    const/4 v6, -0x1

    .line 546
    if-nez p4, :cond_1

    move v2, v6

    .line 577
    :cond_0
    :goto_0
    return v2

    .line 548
    :cond_1
    if-eqz p1, :cond_2

    if-nez p0, :cond_3

    :cond_2
    move v2, v6

    .line 549
    goto :goto_0

    .line 551
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 552
    .local v0, charCnt:I
    move v2, p2

    .line 554
    .local v2, idx:I
    :goto_1
    if-lez p4, :cond_5

    .line 555
    if-ge p3, v2, :cond_6

    :cond_4
    move v2, v6

    .line 577
    goto :goto_0

    .line 558
    :cond_5
    if-lt v2, p3, :cond_4

    .line 561
    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 562
    .local v5, strc:C
    const/4 v4, 0x0

    .line 563
    .local v4, noEqualCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_2
    if-ge v3, v0, :cond_a

    .line 564
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 565
    .local v1, charc:C
    const/4 v7, 0x1

    if-ne p5, v7, :cond_8

    .line 566
    if-eq v5, v1, :cond_0

    .line 563
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 569
    :cond_8
    if-eq v5, v1, :cond_9

    .line 570
    add-int/lit8 v4, v4, 0x1

    .line 571
    :cond_9
    if-ne v4, v0, :cond_7

    goto :goto_0

    .line 575
    .end local v1           #charc:C
    :cond_a
    add-int/2addr v2, p4

    .line 576
    goto :goto_1
.end method

.method public static formatUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"

    .prologue
    .line 347
    const-string v0, ""

    .line 348
    .local v0, uriString:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 392
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 393
    .local v2, proj:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 395
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 397
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 402
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 403
    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 404
    .local v6, column_index:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 408
    if-eqz v7, :cond_0

    .line 409
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 412
    .end local v6           #column_index:I
    :cond_0
    :goto_0
    return-object v1

    .line 405
    :catch_0
    move-exception v8

    .line 406
    .local v8, e:Ljava/lang/NullPointerException;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    if-eqz v7, :cond_1

    .line 409
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 412
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 408
    .end local v8           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 409
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static getAbsolutePath(Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "mItem"

    .prologue
    .line 362
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 363
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    .line 365
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 366
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 368
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 369
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 370
    const-string v3, "_data"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 371
    .local v6, column_index:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 378
    if-eqz v7, :cond_0

    .line 379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 382
    .end local v6           #column_index:I
    :cond_0
    :goto_0
    return-object v3

    .line 372
    :catch_0
    move-exception v8

    .line 373
    .local v8, e:Ljava/lang/NullPointerException;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    if-eqz v7, :cond_1

    .line 379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 382
    .end local v8           #e:Ljava/lang/NullPointerException;
    :cond_1
    :goto_1
    const-string v3, ""

    goto :goto_0

    .line 374
    :catch_1
    move-exception v8

    .line 375
    .local v8, e:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_2
    const-string v3, "AirSharing_MultiScreenUtils"

    const-string v4, "getAbsolutePath occur CursorIndexOutOfBoundsException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v8}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    if-eqz v7, :cond_1

    .line 379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 378
    .end local v8           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v3

    if-eqz v7, :cond_2

    .line 379
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public static getCurrentDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getInstance()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getRenderingDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    return-object v0
.end method

.method public static getCurrentDmrMedia()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getInstance()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getRenderingMedia()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getDlnaInitMode()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getInstance()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getStackInitMode()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    move-result-object v0

    return-object v0
.end method

.method public static getDlnaMediaType(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;
    .locals 1
    .parameter "type"

    .prologue
    .line 134
    packed-switch p0, :pswitch_data_0

    .line 140
    :pswitch_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE_VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    :goto_0
    return-object v0

    .line 136
    :pswitch_1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->IMAGE:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    goto :goto_0

    .line 138
    :pswitch_2
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->VIDEO:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getDlnaVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getInstance()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getMultiscreenHelper()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v0

    return-object v0
.end method

.method public static getDmsThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "jc"
    .parameter "uri"

    .prologue
    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const-string v2, "android.media.MediaMetadataRetriever"

    .line 270
    .local v2, className:Ljava/lang/String;
    const/4 v5, 0x0

    .line 271
    .local v5, obj:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 273
    .local v6, releaseMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    .line 274
    .local v8, thread:Ljava/lang/Thread;
    new-instance v9, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils$1;

    invoke-direct {v9, v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils$1;-><init>(Ljava/lang/Thread;)V

    invoke-interface {p0, v9}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 283
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 285
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "setHttpDataSource"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 287
    .local v7, setDataSourceMethod:Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v7, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "getFrameAtTime"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 291
    .local v4, getFrameAtTimeMethod:Ljava/lang/reflect/Method;
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "release"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 293
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 299
    if-eqz v6, :cond_0

    .line 300
    const/4 v9, 0x0

    :try_start_1
    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    .end local v4           #getFrameAtTimeMethod:Ljava/lang/reflect/Method;
    .end local v5           #obj:Ljava/lang/Object;
    .end local v7           #setDataSourceMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    const/4 v9, 0x0

    invoke-interface {p0, v9}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 309
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 310
    return-object v1

    .line 302
    .restart local v4       #getFrameAtTimeMethod:Ljava/lang/reflect/Method;
    .restart local v5       #obj:Ljava/lang/Object;
    .restart local v7       #setDataSourceMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 304
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 295
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #getFrameAtTimeMethod:Ljava/lang/reflect/Method;
    .end local v5           #obj:Ljava/lang/Object;
    .end local v7           #setDataSourceMethod:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    .line 296
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    if-eqz v6, :cond_0

    .line 300
    const/4 v9, 0x0

    :try_start_3
    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 302
    :catch_2
    move-exception v3

    .line 304
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 298
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 299
    if-eqz v6, :cond_1

    .line 300
    const/4 v10, 0x0

    :try_start_4
    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 305
    :cond_1
    :goto_1
    throw v9

    .line 302
    :catch_3
    move-exception v3

    .line 304
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getMirrorDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getInstance()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getMirroringDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    return-object v0
.end method

.method public static getMirrorState()I
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getInstance()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getMirrorState()I

    move-result v0

    return v0
.end method

.method public static getMultiscreenHelper()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getInstance()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "mediaPath"

    .prologue
    .line 195
    const-string v5, ""

    .line 196
    .local v5, result:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/gallery3d/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 198
    const-string v7, "AirSharing_MultiScreenUtils"

    const-string v8, "Can not create Video Thumbnail"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 218
    .end local v5           #result:Ljava/lang/String;
    .local v6, result:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 201
    .end local v6           #result:Ljava/lang/String;
    .restart local v5       #result:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/io/File;

    sget-object v7, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->sCacheDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpeg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    .local v4, pushFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 204
    .local v2, fOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .local v3, fOut:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v0, v7, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 206
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 210
    if-eqz v3, :cond_3

    .line 212
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    move-object v6, v5

    .line 218
    .end local v5           #result:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .end local v6           #result:Ljava/lang/String;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    .restart local v5       #result:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v3

    .line 215
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 207
    :catch_1
    move-exception v1

    .line 208
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    if-eqz v2, :cond_1

    .line 212
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 213
    :catch_2
    move-exception v7

    goto :goto_1

    .line 210
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v2, :cond_2

    .line 212
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 215
    :cond_2
    :goto_4
    throw v7

    .line 213
    :catch_3
    move-exception v8

    goto :goto_4

    .line 210
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 207
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    :cond_3
    move-object v2, v3

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static getVideoInfoFromUri(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v11, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 152
    if-nez p1, :cond_1

    move-object v9, v10

    .line 185
    :cond_0
    :goto_0
    return-object v9

    .line 155
    :cond_1
    new-array v9, v11, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v9, v3

    const-string v1, ""

    aput-object v1, v9, v4

    const-string v1, ""

    aput-object v1, v9, v5

    .line 156
    .local v9, result:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, path:Ljava/lang/String;
    const-string v1, "file://"

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    const-string v1, "/"

    invoke-virtual {v8, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v3

    .line 159
    const-string v1, "."

    invoke-virtual {v8, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    .line 160
    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v5

    goto :goto_0

    .line 164
    :cond_2
    new-array v2, v11, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v2, v3

    const-string v1, "mime_type"

    aput-object v1, v2, v4

    const-string v1, "_data"

    aput-object v1, v2, v5

    .line 169
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 172
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 174
    const/4 v1, 0x0

    const-string v3, "title"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v1

    .line 175
    const/4 v1, 0x1

    const-string v3, "mime_type"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v1

    .line 176
    const/4 v1, 0x2

    const-string v3, "_data"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    if-eqz v6, :cond_0

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 178
    :catch_0
    move-exception v7

    .line 179
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    if-eqz v6, :cond_3

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v9, v10

    .line 185
    goto/16 :goto_0

    .line 181
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 53
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->ensureExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "multiscreen"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->sCacheDir:Ljava/io/File;

    .line 54
    sget-object v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->sCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    sget-object v1, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->sCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 56
    .local v0, result:Z
    const-string v1, "AirSharing_MultiScreenUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create MultiScreenCacheDir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v0           #result:Z
    :cond_0
    return-void
.end method

.method public static isMirrorConnecting()Z
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getInstance()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->isMirrorConnecting()Z

    move-result v0

    return v0
.end method

.method public static isMirroring()Z
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getInstance()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->isMirroring()Z

    move-result v0

    return v0
.end method

.method public static timeFromGalleryToService(I)Ljava/lang/String;
    .locals 1
    .parameter "galleryTime"

    .prologue
    .line 68
    div-int/lit16 v0, p0, 0x3e8

    invoke-static {v0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->timeInt2String(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static timeFromServiceToGallery(Ljava/lang/String;)I
    .locals 1
    .parameter "serviceTime"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->timeStr2Int(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static timeInt2String(I)Ljava/lang/String;
    .locals 9
    .parameter "positionInt"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 465
    const-string v3, ""

    .line 466
    .local v3, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 467
    .local v2, remains:I
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "00"

    aput-object v4, v0, v7

    const-string v4, "00"

    aput-object v4, v0, v8

    const-string v4, "00"

    aput-object v4, v0, v6

    .line 468
    .local v0, chip:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-gt v1, v6, :cond_2

    .line 469
    rem-int/lit8 v2, p0, 0x3c

    .line 470
    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 475
    :goto_1
    if-le p0, v2, :cond_1

    .line 476
    sub-int v4, p0, v2

    div-int/lit8 p0, v4, 0x3c

    .line 468
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    goto :goto_1

    .line 478
    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    .line 481
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 482
    return-object v3
.end method

.method public static timeStr2Int(Ljava/lang/String;)I
    .locals 12
    .parameter "postionString"

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 488
    const-string v5, ":"

    .line 489
    .local v5, splitstr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 491
    .local v0, arraycount:I
    const/4 v4, 0x0

    .line 492
    .local v4, second:I
    if-eqz p0, :cond_0

    const-string v8, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 534
    :cond_0
    :goto_0
    return v7

    .line 496
    :cond_1
    const-string v8, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 497
    const-string v8, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 500
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 501
    .local v6, tempstr:[Ljava/lang/String;
    array-length v0, v6

    .line 503
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 504
    aget-object v7, v6, v1

    const-string v8, "0"

    invoke-static {v7, v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->findFirstNotOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 505
    .local v2, pos1:I
    if-ne v2, v10, :cond_3

    .line 506
    const-string v7, ""

    aput-object v7, v6, v1

    .line 509
    :cond_3
    const-string v7, ""

    aget-object v8, v6, v1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 510
    aget-object v7, v6, v1

    const-string v8, "-"

    invoke-static {v7, v8}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->findFirstNotOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 511
    .local v3, pos2:I
    if-ne v3, v10, :cond_4

    .line 512
    const-string v7, ""

    aput-object v7, v6, v1

    .line 516
    .end local v3           #pos2:I
    :cond_4
    const-string v7, ""

    aget-object v8, v6, v1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 517
    const-string v7, "0"

    aput-object v7, v6, v1

    .line 503
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 520
    .end local v2           #pos1:I
    :cond_6
    if-le v0, v11, :cond_7

    .line 521
    add-int/lit8 v7, v0, -0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v8, v0, -0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v7, v8

    add-int/lit8 v8, v0, -0x1

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit8 v8, v8, 0x3c

    add-int v4, v7, v8

    .line 533
    :goto_2
    const-string v7, "AirSharing_MultiScreenUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " second = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v4

    .line 534
    goto/16 :goto_0

    .line 525
    :cond_7
    if-ne v0, v11, :cond_8

    .line 526
    add-int/lit8 v7, v0, -0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v8, v0, -0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int v4, v7, v8

    goto :goto_2

    .line 528
    :cond_8
    const/4 v7, 0x1

    if-ne v0, v7, :cond_9

    .line 529
    add-int/lit8 v7, v0, -0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    .line 531
    :cond_9
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static timeStringToInt(Ljava/lang/String;)I
    .locals 11
    .parameter "postionString"

    .prologue
    .line 449
    const/4 v2, 0x0

    .line 450
    .local v2, result:I
    const-string v0, ""

    .line 451
    .local v0, chip:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 452
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    int-to-double v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x404e

    int-to-double v9, v1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v2, v3

    .line 454
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 459
    :cond_0
    return v2

    .line 457
    :cond_1
    const/4 v3, 0x0

    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
