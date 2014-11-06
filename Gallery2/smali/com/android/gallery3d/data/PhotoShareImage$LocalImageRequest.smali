.class public Lcom/android/gallery3d/data/PhotoShareImage$LocalImageRequest;
.super Lcom/android/gallery3d/data/ImageCacheRequest;
.source "PhotoShareImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/PhotoShareImage;
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
    .line 77
    invoke-static {p3}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;IIJ)V

    .line 78
    iput-object p4, p0, Lcom/android/gallery3d/data/PhotoShareImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "jc"
    .parameter "type"

    .prologue
    .line 83
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 84
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 85
    invoke-static {p2}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v5

    .line 87
    .local v5, targetSize:I
    const/4 v7, 0x2

    if-ne p2, v7, :cond_0

    .line 88
    iget-object v7, p0, Lcom/android/gallery3d/data/PhotoShareImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/gallery3d/util/DrmUtils;->isDrmFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 89
    invoke-static {v3}, Lcom/android/gallery3d/util/DrmUtils;->inPreviewMode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    .line 108
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/data/PhotoShareImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v7, v3, v5, p2}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    .line 91
    :cond_1
    const/4 v1, 0x0

    .line 92
    .local v1, exif:Landroid/media/ExifInterface;
    const/4 v6, 0x0

    .line 94
    .local v6, thumbData:[B
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v7, p0, Lcom/android/gallery3d/data/PhotoShareImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    if-eqz v2, :cond_2

    .line 96
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :cond_2
    move-object v1, v2

    .line 101
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_1
    if-eqz v6, :cond_0

    .line 102
    invoke-static {p1, v6, v3, v5}, Lcom/android/gallery3d/data/DecodeUtils;->decodeIfBigEnough(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 99
    .local v4, t:Ljava/lang/Throwable;
    :goto_2
    const-string v7, "PhotoshareImage"

    const-string v8, "fail to get exif thumb"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 98
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v4           #t:Ljava/lang/Throwable;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    goto :goto_2
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
