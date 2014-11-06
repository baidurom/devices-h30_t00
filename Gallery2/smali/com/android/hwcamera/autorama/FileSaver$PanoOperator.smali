.class Lcom/android/hwcamera/autorama/FileSaver$PanoOperator;
.super Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;
.source "FileSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/autorama/FileSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/autorama/FileSaver;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/autorama/FileSaver;I)V
    .locals 1
    .parameter
    .parameter "pictureType"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/hwcamera/autorama/FileSaver$PanoOperator;->this$0:Lcom/android/hwcamera/autorama/FileSaver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;-><init>(Lcom/android/hwcamera/autorama/FileSaver;Lcom/android/hwcamera/autorama/FileSaver$1;)V

    .line 416
    iput p2, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTempPictureType:I

    .line 418
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/autorama/FileSaver;ILcom/android/hwcamera/autorama/FileSaver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 413
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/autorama/FileSaver$PanoOperator;-><init>(Lcom/android/hwcamera/autorama/FileSaver;I)V

    return-void
.end method


# virtual methods
.method public MTKsaveRequest()V
    .locals 11

    .prologue
    .line 445
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .local v5, temp:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_1

    .line 447
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v4

    .line 448
    .local v4, result:Z
    if-nez v4, :cond_0

    .line 449
    const-string v7, "FileSaver"

    const-string v8, "delete file failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/autorama/FileSaver$PanoOperator;->setIgnoreThumbnail(Z)V

    .line 452
    const-string v7, "FileSaver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad file created by native layer, delete it! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .end local v4           #result:Z
    .end local v5           #temp:Ljava/io/File;
    :goto_0
    return-void

    .line 455
    .restart local v5       #temp:Ljava/io/File;
    :cond_1
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 456
    .restart local v4       #result:Z
    if-nez v4, :cond_2

    .line 457
    const-string v7, "FileSaver"

    const-string v8, "renameTo file failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_2
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mDataSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v4           #result:Z
    .end local v5           #temp:Ljava/io/File;
    :goto_1
    :try_start_1
    new-instance v1, Landroid/media/ExifInterface;

    iget-object v7, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 465
    .local v1, exif:Landroid/media/ExifInterface;
    invoke-static {v1}, Lcom/android/hwcamera/autorama/FileSaver;->getExifOrientation(Landroid/media/ExifInterface;)I

    move-result v3

    .line 466
    .local v3, orientation:I
    const-string v7, "ImageWidth"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    .line 467
    .local v6, width:I
    const-string v7, "ImageLength"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 468
    .local v2, height:I
    iput v6, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mWidth:I

    .line 469
    iput v2, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mHeight:I

    .line 470
    iput v3, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mOrientation:I

    .line 471
    const-string v7, "FileSaver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "orientation is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v7, "FileSaver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "width is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v7, "FileSaver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "height is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 478
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v2           #height:I
    .end local v3           #orientation:I
    .end local v6           #width:I
    :goto_2
    iget-object v7, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    iget v8, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTempPictureType:I

    invoke-static {v7, v8}, Lcom/android/hwcamera/storage/Storage;->generateMimetype(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mMimeType:Ljava/lang/String;

    .line 479
    iget v7, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTempPictureType:I

    invoke-static {v7}, Lcom/android/hwcamera/storage/Storage;->generateMpoType(I)I

    move-result v7

    iput v7, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mMpoType:I

    .line 481
    invoke-virtual {p0, p0}, Lcom/android/hwcamera/autorama/FileSaver$PanoOperator;->saveImageToDatabase(Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;)V

    goto/16 :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, ex:Ljava/lang/Exception;
    const-string v7, "FileSaver"

    const-string v8, "can not delete file"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 474
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 475
    .local v0, ex:Ljava/io/IOException;
    const-string v7, "FileSaver"

    const-string v8, "cannot read exif"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public addRequest()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver$PanoOperator;->this$0:Lcom/android/hwcamera/autorama/FileSaver;

    #calls: Lcom/android/hwcamera/autorama/FileSaver;->addMTKSaveRequest(Lcom/android/hwcamera/autorama/MTKSaveRequest;)V
    invoke-static {v0, p0}, Lcom/android/hwcamera/autorama/FileSaver;->access$600(Lcom/android/hwcamera/autorama/FileSaver;Lcom/android/hwcamera/autorama/MTKSaveRequest;)V

    .line 440
    return-void
.end method

.method public createThumbnail(I)Lcom/android/hwcamera/thumbnail/Thumbnail;
    .locals 7
    .parameter "thumbnailWidth"

    .prologue
    .line 489
    const/4 v2, 0x0

    .line 490
    .local v2, thumb:Lcom/android/hwcamera/thumbnail/Thumbnail;
    iget-object v3, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 493
    iget v3, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mWidth:I

    int-to-double v3, v3

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 494
    .local v1, ratio:I
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 495
    .local v0, inSampleSize:I
    iget-object v3, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    iget v4, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mOrientation:I

    iget-object v5, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    iget v6, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mStereoType:I

    invoke-static {v3, v4, v0, v5, v6}, Lcom/android/hwcamera/thumbnail/Thumbnail;->createThumbnail(Ljava/lang/String;IILandroid/net/Uri;I)Lcom/android/hwcamera/thumbnail/Thumbnail;

    move-result-object v2

    .line 497
    .end local v0           #inSampleSize:I
    .end local v1           #ratio:I
    :cond_0
    const-string v3, "FileSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThumbnail("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") mOrientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFilePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-object v2
.end method

.method public prepareRequest()V
    .locals 5

    .prologue
    .line 421
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mFileType:I

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mDateTaken:J

    .line 424
    iget-object v2, p0, Lcom/android/hwcamera/autorama/FileSaver$PanoOperator;->this$0:Lcom/android/hwcamera/autorama/FileSaver;

    iget-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver$PanoOperator;->this$0:Lcom/android/hwcamera/autorama/FileSaver;

    #getter for: Lcom/android/hwcamera/autorama/FileSaver;->mContext:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v1}, Lcom/android/hwcamera/autorama/FileSaver;->access$200(Lcom/android/hwcamera/autorama/FileSaver;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraActivity;->getCurrentModule()Lcom/android/hwcamera/CameraModule;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/PhotoModule;

    #setter for: Lcom/android/hwcamera/autorama/FileSaver;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;
    invoke-static {v2, v1}, Lcom/android/hwcamera/autorama/FileSaver;->access$402(Lcom/android/hwcamera/autorama/FileSaver;Lcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/PhotoModule;

    .line 425
    iget-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver$PanoOperator;->this$0:Lcom/android/hwcamera/autorama/FileSaver;

    #getter for: Lcom/android/hwcamera/autorama/FileSaver;->mPhotoModule:Lcom/android/hwcamera/PhotoModule;
    invoke-static {v1}, Lcom/android/hwcamera/autorama/FileSaver;->access$400(Lcom/android/hwcamera/autorama/FileSaver;)Lcom/android/hwcamera/PhotoModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/PhotoModule;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 426
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 427
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver$PanoOperator;->this$0:Lcom/android/hwcamera/autorama/FileSaver;

    iget v2, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mFileType:I

    iget-wide v3, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mDateTaken:J

    #calls: Lcom/android/hwcamera/autorama/FileSaver;->createName(IJ)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/android/hwcamera/autorama/FileSaver;->access$500(Lcom/android/hwcamera/autorama/FileSaver;IJ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    .line 433
    iget-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    iget v2, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTempPictureType:I

    invoke-static {v1, v2}, Lcom/android/hwcamera/storage/Storage;->generateFilepath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public updateThumbnail(I)V
    .locals 7
    .parameter "thumbnailWidth"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 508
    iget v0, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mWidth:I

    int-to-double v0, v0

    int-to-double v4, p1

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v6, v0

    .line 509
    .local v6, ratio:I
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    .line 510
    .local v3, inSampleSize:I
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver$PanoOperator;->this$0:Lcom/android/hwcamera/autorama/FileSaver;

    #getter for: Lcom/android/hwcamera/autorama/FileSaver;->mContext:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v0}, Lcom/android/hwcamera/autorama/FileSaver;->access$200(Lcom/android/hwcamera/autorama/FileSaver;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    iget v2, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mOrientation:I

    iget-object v4, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    iget v5, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mStereoType:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/hwcamera/CameraActivity;->updatePictureThumbnail(Ljava/lang/String;IILandroid/net/Uri;I)V

    .line 512
    .end local v3           #inSampleSize:I
    .end local v6           #ratio:I
    :cond_0
    const-string v0, "FileSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createThumbnail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void
.end method
