.class abstract Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;
.super Ljava/lang/Object;
.source "FileSaver.java"

# interfaces
.implements Lcom/android/hwcamera/autorama/MTKSaveRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/autorama/FileSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RequestOperator"
.end annotation


# instance fields
.field mData:[B

.field mDataSize:J

.field mDateTaken:J

.field mDisplayName:Ljava/lang/String;

.field mFilePath:Ljava/lang/String;

.field mFileType:I

.field mHeight:I

.field mIgnoreThumbnail:Z

.field mListener:Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;

.field mLocation:Landroid/location/Location;

.field mMimeType:Ljava/lang/String;

.field mMpoType:I

.field mOrientation:I

.field mStereoType:I

.field mTempFilePath:Ljava/lang/String;

.field mTempJpegRotation:I

.field mTempPictureType:I

.field mTitle:Ljava/lang/String;

.field mUri:Landroid/net/Uri;

.field mWidth:I

.field final synthetic this$0:Lcom/android/hwcamera/autorama/FileSaver;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/autorama/FileSaver;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->this$0:Lcom/android/hwcamera/autorama/FileSaver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/autorama/FileSaver;Lcom/android/hwcamera/autorama/FileSaver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;-><init>(Lcom/android/hwcamera/autorama/FileSaver;)V

    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mData:[B

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mData:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getJpegRotation()I
    .locals 3

    .prologue
    .line 291
    const-string v0, "FileSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJpegRotation mTempJpegRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTempJpegRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget v0, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTempJpegRotation:I

    return v0
.end method

.method public getTempFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isIgnoreThumbnail()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mIgnoreThumbnail:Z

    return v0
.end method

.method public notifyListener()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mListener:Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mListener:Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;

    invoke-interface {v0, p0}, Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;->onFileSaved(Lcom/android/hwcamera/autorama/MTKSaveRequest;)V

    .line 307
    :cond_0
    return-void
.end method

.method public saveImageToDatabase(Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 314
    new-instance v1, Landroid/content/ContentValues;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 315
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "title"

    iget-object v3, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v2, "_display_name"

    iget-object v3, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v2, "datetaken"

    iget-wide v3, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mDateTaken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 318
    const-string v2, "mime_type"

    iget-object v3, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v2, "_data"

    iget-object v3, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v2, "_size"

    iget-wide v3, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mDataSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 321
    const-string v2, "stereo_type"

    iget v3, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mStereoType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    iget-object v2, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    if-eqz v2, :cond_0

    .line 323
    const-string v2, "latitude"

    iget-object v3, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 324
    const-string v2, "longitude"

    iget-object v3, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 326
    :cond_0
    const-string v2, "orientation"

    iget v3, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mOrientation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string v2, "width"

    iget v3, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v2, "height"

    iget v3, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v2, "mpo_type"

    iget v3, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mMpoType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->this$0:Lcom/android/hwcamera/autorama/FileSaver;

    #getter for: Lcom/android/hwcamera/autorama/FileSaver;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/hwcamera/autorama/FileSaver;->access$100(Lcom/android/hwcamera/autorama/FileSaver;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    .line 332
    iget-object v2, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->this$0:Lcom/android/hwcamera/autorama/FileSaver;

    #getter for: Lcom/android/hwcamera/autorama/FileSaver;->mContext:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v2}, Lcom/android/hwcamera/autorama/FileSaver;->access$200(Lcom/android/hwcamera/autorama/FileSaver;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 334
    iget-object v2, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->this$0:Lcom/android/hwcamera/autorama/FileSaver;

    #getter for: Lcom/android/hwcamera/autorama/FileSaver;->mContext:Lcom/android/hwcamera/CameraActivity;
    invoke-static {v2}, Lcom/android/hwcamera/autorama/FileSaver;->access$200(Lcom/android/hwcamera/autorama/FileSaver;)Lcom/android/hwcamera/CameraActivity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/CameraActivity;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 342
    .local v0, th:Ljava/lang/Throwable;
    const-string v2, "FileSaver"

    const-string v3, "Failed to write MediaStore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public saveSync()V
    .locals 6

    .prologue
    .line 347
    iget-object v3, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mData:[B

    if-nez v3, :cond_1

    .line 348
    const-string v3, "FileSaver"

    const-string v4, "saveSync() why mData==null???"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    const/4 v1, 0x0

    .line 355
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 356
    .end local v1           #out:Ljava/io/FileOutputStream;
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mData:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 357
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 361
    if-eqz v2, :cond_3

    .line 363
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 366
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 364
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Ljava/io/IOException;
    const-string v3, "FileSaver"

    const-string v4, "MTKSaveRequest()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 366
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 358
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 359
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "FileSaver"

    const-string v4, "Failed to write image"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    if-eqz v1, :cond_0

    .line 363
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 364
    :catch_2
    move-exception v0

    .line 365
    const-string v3, "FileSaver"

    const-string v4, "MTKSaveRequest()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 361
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_2

    .line 363
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 366
    :cond_2
    :goto_3
    throw v3

    .line 364
    :catch_3
    move-exception v0

    .line 365
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "FileSaver"

    const-string v5, "MTKSaveRequest()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 361
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 358
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_3
    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public setData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mData:[B

    .line 280
    return-void
.end method

.method public setIgnoreThumbnail(Z)V
    .locals 0
    .parameter "ignore"

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mIgnoreThumbnail:Z

    .line 256
    return-void
.end method

.method public setJpegRotation(I)V
    .locals 0
    .parameter "jpegRotation"

    .prologue
    .line 287
    iput p1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTempJpegRotation:I

    .line 288
    return-void
.end method

.method public setListener(Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mListener:Lcom/android/hwcamera/autorama/FileSaver$FileSaverListener;

    .line 301
    return-void
.end method

.method public setTempPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestOperator(mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTempFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIgnoreThumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mIgnoreThumbnail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDataTaken(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 310
    iput-wide p1, p0, Lcom/android/hwcamera/autorama/FileSaver$RequestOperator;->mDateTaken:J

    .line 311
    return-void
.end method
