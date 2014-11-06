.class public Lcom/android/gallery3d/data/PhotoShareImage;
.super Lcom/android/gallery3d/data/LocalMediaItem;
.source "PhotoShareImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/PhotoShareImage$LocalLargeImageRequest;,
        Lcom/android/gallery3d/data/PhotoShareImage$LocalImageRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoshareImage"


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mFolderType:I

.field private mIsNew:Z

.field private mLastmodify:J

.field private mName:Ljava/lang/String;

.field private final mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;

.field private mRotation:I

.field private mSharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;Ljava/lang/String;IZLcom/android/gallery3d/data/PhotoShareContext;)V
    .locals 3
    .parameter "path"
    .parameter "application"
    .parameter "sharePhoto"
    .parameter "location"
    .parameter "folderType"
    .parameter "isNew"
    .parameter "photoshareContext"

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-static {}, Lcom/android/gallery3d/data/PhotoShareImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 47
    iput v2, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mRotation:I

    .line 51
    iput-object p3, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mSharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    .line 52
    iput p5, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mFolderType:I

    .line 53
    iput-object p2, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mSharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getpName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mName:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 56
    iput v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    .line 57
    iput v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    .line 58
    iput-boolean p6, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mIsNew:Z

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mimeType:Ljava/lang/String;

    .line 60
    iput-object p7, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;

    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/data/PhotoShareImage;->setFilesizeAndLastmodify()V

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    .line 64
    invoke-virtual {p0}, Lcom/android/gallery3d/data/PhotoShareImage;->setRotateValueFromExif()V

    .line 66
    return-void
.end method

.method private getOrientation(I)I
    .locals 4
    .parameter "exifOrientation"

    .prologue
    const/4 v0, 0x0

    .line 258
    packed-switch p1, :pswitch_data_0

    .line 268
    :pswitch_0
    const-string v1, "PhotoshareImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrientation invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    :pswitch_1
    return v0

    .line 262
    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    .line 264
    :pswitch_3
    const/16 v0, 0xb4

    goto :goto_0

    .line 266
    :pswitch_4
    const/16 v0, 0x10e

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public delete()V
    .locals 3

    .prologue
    .line 206
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    iget-object v1, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mSharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget v1, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mFolderType:I

    if-nez v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/huawei/hicloud/photosharesdk/api/PhotoLogic;->delPhotoFromMyPhoto(Landroid/content/Context;Ljava/util/ArrayList;)I

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mFolderType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/huawei/hicloud/photosharesdk/api/PhotoLogic;->delPhotoFromShared(Landroid/content/Context;Ljava/util/ArrayList;)I

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 12

    .prologue
    const/4 v11, 0x7

    const/4 v7, 0x1

    const/4 v10, 0x6

    .line 276
    new-instance v0, Lcom/android/gallery3d/data/MediaDetails;

    invoke-direct {v0}, Lcom/android/gallery3d/data/MediaDetails;-><init>()V

    .line 277
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    iget-object v6, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mName:Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 278
    const/4 v6, 0x3

    iget-wide v7, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mLastmodify:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 279
    iget-wide v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 280
    const/4 v6, 0x5

    iget-wide v7, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 281
    :cond_0
    iget v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    if-eqz v6, :cond_1

    .line 282
    iget v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v10, v6}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 283
    iget v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v11, v6}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 285
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/android/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    .line 287
    const/4 v6, 0x6

    :try_start_0
    invoke-virtual {v0, v6}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v3

    .line 288
    .local v3, obj_width:Ljava/lang/Object;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 289
    :cond_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 290
    .local v4, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 291
    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v6, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 292
    const/4 v5, 0x0

    .line 293
    .local v5, width:I
    const/4 v2, 0x0

    .line 294
    .local v2, height:I
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v6, :cond_3

    .line 295
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 296
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 298
    :cond_3
    const/4 v6, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 299
    const/4 v6, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v2           #height:I
    .end local v3           #obj_width:Ljava/lang/Object;
    .end local v4           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #width:I
    :cond_4
    :goto_0
    return-object v0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "PhotoshareImage"

    const-string v7, "Exception in LocalImage.getDetails()"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    return v0
.end method

.method public getIsNew()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mIsNew:Z

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mRotation:I

    return v0
.end method

.method public getSharePhoto()Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mSharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method public getSupportedOperations()I
    .locals 3

    .prologue
    .line 134
    const v0, 0x20000400

    .line 135
    .local v0, operation:I
    iget v1, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mFolderType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 136
    or-int/lit8 v0, v0, 0x1

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    or-int/lit8 v0, v0, 0x40

    .line 141
    :cond_1
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    return v0
.end method

.method public photoshareDownLoadOperation()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/PhotoShareContext;->copyFile(Lcom/android/gallery3d/data/PhotoShareImage;)Z

    move-result v0

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/android/gallery3d/data/PhotoShareImage$LocalImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/data/PhotoShareImage$LocalImageRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;J)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lcom/android/gallery3d/data/PhotoShareImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/PhotoShareImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setFilesizeAndLastmodify()V
    .locals 7

    .prologue
    .line 179
    const/4 v2, 0x0

    .line 181
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mLastmodify:J

    .line 183
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->fileSize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 188
    if-nez v3, :cond_1

    move-object v2, v3

    .line 195
    .end local v1           #file:Ljava/io/File;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 190
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 193
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 191
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 194
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 185
    .end local v1           #file:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v4, "PhotoshareImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception In setFilesizeAndLastmodify "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    if-eqz v2, :cond_0

    .line 190
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 191
    :catch_2
    move-exception v4

    goto :goto_0

    .line 188
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_0

    .line 190
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 193
    :goto_3
    throw v4

    .line 191
    :catch_3
    move-exception v5

    goto :goto_3

    .line 188
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 185
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public setIsNew(Z)V
    .locals 0
    .parameter "isnew"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mIsNew:Z

    .line 234
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mName:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setRotateValueFromExif()V
    .locals 5

    .prologue
    .line 246
    const-string v2, "image/jpeg"

    iget-object v3, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, exif:Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/data/PhotoShareImage;->getOrientation(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mRotation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v1           #exif:Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PhotoshareImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot set exif data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSharePhoto(Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;)V
    .locals 0
    .parameter "sharephoto"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/gallery3d/data/PhotoShareImage;->mSharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    .line 222
    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public updateVersion()V
    .locals 2

    .prologue
    .line 241
    invoke-static {}, Lcom/android/gallery3d/data/PhotoShareImage;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 242
    return-void
.end method
