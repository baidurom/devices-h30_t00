.class public Lcom/android/gallery3d/data/LocalImage$FaceImageRequest;
.super Lcom/android/gallery3d/data/FaceImageCacheRequest;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceImageRequest"
.end annotation


# instance fields
.field private mImageId:I

.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;I)V
    .locals 1
    .parameter "application"
    .parameter "path"
    .parameter "personId"
    .parameter "localFilePath"
    .parameter "imageId"

    .prologue
    .line 254
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/data/FaceImageCacheRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;II)V

    .line 255
    iput-object p4, p0, Lcom/android/gallery3d/data/LocalImage$FaceImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 256
    iput p5, p0, Lcom/android/gallery3d/data/LocalImage$FaceImageRequest;->mImageId:I

    .line 257
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "jc"
    .parameter "faceId"
    .parameter "position"

    .prologue
    .line 277
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 278
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 279
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v1

    .line 280
    .local v1, targetSize:I
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage$FaceImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery3d/util/DrmUtils;->isDrmFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/android/gallery3d/data/FaceImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/util/DrmUtils;->getPlaceHolder(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 285
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage$FaceImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v2, v0, p3, v1}, Lcom/android/gallery3d/data/DecodeUtils;->decodeFacialThumb(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public onDistillRect(Lcom/android/gallery3d/util/ThreadPool$JobContext;ILandroid/graphics/Rect;)I
    .locals 9
    .parameter "jc"
    .parameter "personId"
    .parameter "position"

    .prologue
    .line 261
    const/4 v2, -0x1

    .line 262
    .local v2, faceId:I
    iget-object v6, p0, Lcom/android/gallery3d/data/FaceImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/android/gallery3d/data/FaceManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/FaceManage;

    move-result-object v6

    iget v7, p0, Lcom/android/gallery3d/data/LocalImage$FaceImageRequest;->mImageId:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/gallery3d/data/FaceManage;->getFaceInfo(IZ)[Lcom/android/gallery3d/data/FaceInfo;

    move-result-object v3

    .line 263
    .local v3, faceInfo:[Lcom/android/gallery3d/data/FaceInfo;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-gtz v6, :cond_1

    :cond_0
    const/4 v6, -0x1

    .line 272
    :goto_0
    return v6

    .line 265
    :cond_1
    move-object v0, v3

    .local v0, arr$:[Lcom/android/gallery3d/data/FaceInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 266
    .local v1, face:Lcom/android/gallery3d/data/FaceInfo;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/FaceInfo;->getPersonId()I

    move-result v6

    if-ne p2, v6, :cond_3

    .line 267
    invoke-virtual {v1}, Lcom/android/gallery3d/data/FaceInfo;->getFaceId()I

    move-result v2

    .line 268
    invoke-virtual {v1}, Lcom/android/gallery3d/data/FaceInfo;->getPosition()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .end local v1           #face:Lcom/android/gallery3d/data/FaceInfo;
    :cond_2
    move v6, v2

    .line 272
    goto :goto_0

    .line 265
    .restart local v1       #face:Lcom/android/gallery3d/data/FaceInfo;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/FaceImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
