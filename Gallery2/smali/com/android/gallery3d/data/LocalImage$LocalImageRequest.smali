.class public Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;
.super Lcom/android/gallery3d/data/ImageCacheRequest;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalImageRequest"
.end annotation


# instance fields
.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;J)V
    .locals 7
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "localFilePath"
    .parameter "dateModifiedInSec"

    .prologue
    .line 301
    invoke-static {p3}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;IIJ)V

    .line 302
    iput-object p4, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 304
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "jc"
    .parameter "type"

    .prologue
    .line 308
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 309
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 310
    invoke-static {p2}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v5

    .line 313
    .local v5, targetSize:I
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/util/DrmUtils;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-static {v4}, Lcom/android/gallery3d/util/DrmUtils;->inPreviewMode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    move-object v0, p1

    move v3, p2

    #calls: Lcom/android/gallery3d/data/LocalImage;->decodeOriginEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/data/LocalImage;->access$000(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 338
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3

    .line 342
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v6

    .line 317
    :cond_1
    const/4 v7, 0x0

    .line 318
    .local v7, exif:Landroid/media/ExifInterface;
    const/4 v10, 0x0

    .line 320
    .local v10, thumbData:[B
    :try_start_0
    new-instance v8, Landroid/media/ExifInterface;

    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v7           #exif:Landroid/media/ExifInterface;
    .local v8, exif:Landroid/media/ExifInterface;
    if-eqz v8, :cond_2

    .line 322
    :try_start_1
    invoke-virtual {v8}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    :cond_2
    move-object v7, v8

    .line 327
    .end local v8           #exif:Landroid/media/ExifInterface;
    .restart local v7       #exif:Landroid/media/ExifInterface;
    :goto_1
    if-eqz v10, :cond_0

    .line 328
    invoke-static {p1, v10, v4, v5}, Lcom/android/gallery3d/data/DecodeUtils;->decodeIfBigEnough(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 330
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    goto :goto_0

    .line 324
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 325
    .local v9, t:Ljava/lang/Throwable;
    :goto_2
    const-string v0, "LocalImage"

    const-string v1, "fail to get exif thumb"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 342
    .end local v7           #exif:Landroid/media/ExifInterface;
    .end local v9           #t:Ljava/lang/Throwable;
    .end local v10           #thumbData:[B
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v0, v4, v5, p2}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    .line 324
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #exif:Landroid/media/ExifInterface;
    .restart local v10       #thumbData:[B
    :catch_1
    move-exception v9

    move-object v7, v8

    .end local v8           #exif:Landroid/media/ExifInterface;
    .restart local v7       #exif:Landroid/media/ExifInterface;
    goto :goto_2
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
