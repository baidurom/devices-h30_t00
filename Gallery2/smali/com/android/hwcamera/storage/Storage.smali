.class public Lcom/android/hwcamera/storage/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field private static DCIM:Ljava/lang/String; = null

.field public static final FILE_TYPE_PANO:I = 0x2

.field public static final FILE_TYPE_PHOTO:I = 0x0

.field public static final FILE_TYPE_VIDEO:I = 0x1

.field public static final LOW_STORAGE_THRESHOLD:J = 0x1400000L

.field public static final LOW_STORAGE_THRESHOLD_OVER:J = 0x300000L

.field public static final MTK_TYPE_MAV:I = 0x20003

.field public static final MTK_TYPE_NONE:I = 0x0

.field private static PATH:Ljava/lang/String; = null

.field public static final PICTURE_TYPE_JPG:I = 0x0

.field public static final PICTURE_TYPE_MPO:I = 0x1

.field public static final PREPARING:J = -0x2L

.field private static final TAG:Ljava/lang/String; = "CameraStorage"

.field public static final UNAVAILABLE:J = -0x1L

.field public static final UNKNOWN_SIZE:J = -0x3L

.field public static final USB_STORAGE:Ljava/lang/String; = "/mnt/usb"

.field private static mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

.field private static sBaiduPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/storage/Storage;->DCIM:Ljava/lang/String;

    .line 79
    const-string v0, ""

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/storage/Storage;->PATH:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/android/hwcamera/CustomConfiguration;->getInstance()Lcom/android/hwcamera/CustomConfiguration;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/storage/Storage;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;II)Landroid/net/Uri;
    .locals 6
    .parameter "resolver"
    .parameter "title"
    .parameter "date"
    .parameter "location"
    .parameter "orientation"
    .parameter "jpegLength"
    .parameter "path"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 122
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 123
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v3, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v3, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 126
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v3, "orientation"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v3, "_data"

    invoke-virtual {v2, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v3, "_size"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    invoke-static {v2, p8, p9}, Lcom/android/hwcamera/storage/Storage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 134
    if-eqz p4, :cond_0

    .line 135
    const-string v3, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 136
    const-string v3, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 139
    :cond_0
    const/4 v1, 0x0

    .line 141
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 150
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 148
    .local v0, th:Ljava/lang/Throwable;
    const-string v3, "CameraStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write MediaStore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;
    .locals 11
    .parameter "resolver"
    .parameter "title"
    .parameter "date"
    .parameter "location"
    .parameter "orientation"
    .parameter "jpeg"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 111
    invoke-static {p1}, Lcom/android/hwcamera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, path:Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-static {v8, v0}, Lcom/android/hwcamera/storage/Storage;->writeFile(Ljava/lang/String;[B)V

    .line 113
    move-object/from16 v0, p6

    array-length v7, v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v1 .. v10}, Lcom/android/hwcamera/storage/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;II)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 4
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 312
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, th:Ljava/lang/Throwable;
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static ensureOSXCompatible()V
    .locals 4

    .prologue
    .line 359
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/hwcamera/storage/Storage;->DCIM:Ljava/lang/String;

    const-string v2, "100ANDRO"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .local v0, nnnAAAAA:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    return-void
.end method

.method private static genContentValuesFromPicture(Ljava/io/File;Landroid/location/Location;)Landroid/content/ContentValues;
    .locals 10
    .parameter "file"
    .parameter "location"

    .prologue
    const/4 v9, 0x0

    .line 394
    const/4 v1, 0x0

    .line 395
    .local v1, exif:Landroid/media/ExifInterface;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, path:Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, title:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 403
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "title"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v6, "_display_name"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v6, "mime_type"

    const-string v7, "image/jpeg"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v6, "orientation"

    invoke-static {v2}, Lcom/android/hwcamera/storage/Storage;->getOrientationFromExif(Landroid/media/ExifInterface;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    const-string v6, "_size"

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 408
    const-string v6, "ImageWidth"

    invoke-virtual {v2, v6, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "ImageLength"

    invoke-virtual {v2, v7, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/hwcamera/storage/Storage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 409
    const-string v6, "_data"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v6, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    if-eqz p1, :cond_0

    .line 412
    const-string v6, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 413
    const-string v6, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    move-object v1, v2

    .line 415
    .end local v2           #exif:Landroid/media/ExifInterface;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #values:Landroid/content/ContentValues;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_0
    return-object v5

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static generateFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "title"

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateFilepath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "title"
    .parameter "pictureType"

    .prologue
    const/16 v2, 0x2f

    .line 322
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mpo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateMimetype(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "title"
    .parameter "pictureType"

    .prologue
    .line 435
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 436
    const-string v0, "image/mpo"

    .line 438
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "image/jpeg"

    goto :goto_0
.end method

.method public static generateMpoType(I)I
    .locals 1
    .parameter "pictureType"

    .prologue
    .line 443
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 444
    const v0, 0x20003

    .line 446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAvailableSpace()J
    .locals 2

    .prologue
    .line 351
    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBucketId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    invoke-static {}, Lcom/android/hwcamera/storage/Storage;->getDirectory()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/hwcamera/storage/Storage;->PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/hwcamera/storage/Storage;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    invoke-virtual {v1}, Lcom/android/hwcamera/CustomConfiguration;->getStoreDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOrientationFromExif(Landroid/media/ExifInterface;)I
    .locals 3
    .parameter "exif"

    .prologue
    const/4 v1, 0x0

    .line 419
    const-string v2, "Orientation"

    invoke-virtual {p0, v2, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 420
    .local v0, orientation:I
    packed-switch v0, :pswitch_data_0

    .line 430
    :goto_0
    :pswitch_0
    return v1

    .line 424
    :pswitch_1
    const/16 v1, 0xb4

    goto :goto_0

    .line 426
    :pswitch_2
    const/16 v1, 0x5a

    goto :goto_0

    .line 428
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static insertPicturesToGallery(Landroid/content/ContentResolver;Landroid/location/Location;Ljava/util/List;)V
    .locals 3
    .parameter "mContentResolver"
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/location/Location;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p2, selectedFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-static {p2}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Landroid/content/ContentValues;

    .line 387
    .local v0, contentValues:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 388
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-static {v2, p1}, Lcom/android/hwcamera/storage/Storage;->genContentValuesFromPicture(Ljava/io/File;Landroid/location/Location;)Landroid/content/ContentValues;

    move-result-object v2

    aput-object v2, v0, v1

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 390
    :cond_1
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_0
.end method

.method public static newImage(Landroid/content/ContentResolver;Ljava/lang/String;JII)Landroid/net/Uri;
    .locals 7
    .parameter "resolver"
    .parameter "title"
    .parameter "date"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 161
    invoke-static {p1}, Lcom/android/hwcamera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, path:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 165
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    const-string v4, "_data"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {v3, p4, p5}, Lcom/android/hwcamera/storage/Storage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 170
    const/4 v2, 0x0

    .line 172
    .local v2, uri:Landroid/net/Uri;
    :try_start_0
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 181
    :goto_0
    return-object v2

    .line 173
    :catch_0
    move-exception v1

    .line 179
    .local v1, th:Ljava/lang/Throwable;
    const-string v4, "CameraStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to new image"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setImageSize(Landroid/content/ContentValues;II)V
    .locals 2
    .parameter "values"
    .parameter "width"
    .parameter "height"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v0, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    :cond_0
    return-void
.end method

.method public static switchToPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 367
    sput-object p0, Lcom/android/hwcamera/storage/Storage;->PATH:Ljava/lang/String;
    
    .line 369
    return-void
.end method

.method public static updateImage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BIIZ)Z
    .locals 23
    .parameter "resolver"
    .parameter "uri"
    .parameter "title"
    .parameter "location"
    .parameter "orientation"
    .parameter "jpeg"
    .parameter "width"
    .parameter "height"
    .parameter "isHdr"

    .prologue
    .line 215
    invoke-static/range {p2 .. p2}, Lcom/android/hwcamera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 216
    .local v16, path:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ".tmp"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 217
    .local v19, tmpPath:Ljava/lang/String;
    const/4 v10, 0x0

    .line 218
    .local v10, file:Ljava/io/File;
    const/4 v14, 0x0

    .line 220
    .local v14, out:Ljava/io/FileOutputStream;
    if-eqz p1, :cond_0

    .line 221
    invoke-static/range {p0 .. p1}, Lcom/android/hwcamera/storage/Storage;->uri2Path(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v17

    .line 222
    .local v17, path_from_uri:Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 223
    invoke-static/range {p0 .. p1}, Lcom/android/hwcamera/storage/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 225
    .local v5, timeTaken:J
    const/4 v4, 0x0

    .line 226
    .local v4, name:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/hwcamera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v3, p0

    move/from16 v7, p6

    move/from16 v8, p7

    .line 227
    invoke-static/range {v3 .. v8}, Lcom/android/hwcamera/storage/Storage;->newImage(Landroid/content/ContentResolver;Ljava/lang/String;JII)Landroid/net/Uri;

    move-result-object p1

    .line 228
    if-eqz p1, :cond_2

    .line 229
    invoke-static {v4}, Lcom/android/hwcamera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ".tmp"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 231
    const-string v3, "CameraStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generate new uri, path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cost:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v5

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #timeTaken:J
    .end local v17           #path_from_uri:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 242
    .local v12, now:J
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v10           #file:Ljava/io/File;
    .local v11, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/hwcamera/Util;->checkDirectory(Ljava/lang/String;)Z

    .line 244
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 245
    .end local v14           #out:Ljava/io/FileOutputStream;
    .local v15, out:Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p5

    invoke-virtual {v15, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 246
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 248
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    const-string v3, "CameraStorage"

    const-string v7, "rename file failure."

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    const-string v3, "CameraStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Image saved, path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cost:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v12

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 266
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 271
    :goto_0
    if-nez p1, :cond_5

    const/4 v3, 0x1

    move-object v14, v15

    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 307
    .end local v11           #file:Ljava/io/File;
    .end local v12           #now:J
    .restart local v10       #file:Ljava/io/File;
    :goto_1
    return v3

    .line 233
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #timeTaken:J
    .restart local v17       #path_from_uri:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 253
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #timeTaken:J
    .end local v17           #path_from_uri:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 254
    .local v9, e:Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v3, "CameraStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write image:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " uri:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 257
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    .line 258
    const-string v3, "CameraStorage"

    const-string v7, "delete file failure."

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_3
    if-eqz p1, :cond_4

    invoke-static/range {p0 .. p1}, Lcom/android/hwcamera/storage/Storage;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    :cond_4
    const/4 v3, 0x0

    .line 266
    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 267
    :catch_1
    move-exception v7

    goto :goto_1

    .line 265
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 266
    :goto_3
    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 268
    :goto_4
    throw v3

    .line 274
    .end local v10           #file:Ljava/io/File;
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v11       #file:Ljava/io/File;
    .restart local v12       #now:J
    .restart local v15       #out:Ljava/io/FileOutputStream;
    :cond_5
    if-eqz p8, :cond_6

    .line 275
    invoke-static/range {v16 .. v16}, Lcom/android/hwcamera/Exif;->setHdrTag(Ljava/lang/String;)V

    .line 280
    :cond_6
    new-instance v20, Landroid/content/ContentValues;

    const/16 v3, 0xa

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 281
    .local v20, values:Landroid/content/ContentValues;
    const-string v3, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v3, "_display_name"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v3, "mime_type"

    const-string v7, "image/jpeg"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v3, "orientation"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v3, "_size"

    move-object/from16 v0, p5

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_IMAGES_COLUMNS_IS_HDR:Z

    if-eqz v3, :cond_7

    .line 288
    const-string v7, "IS_HDR"

    if-eqz p8, :cond_9

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    #invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    :cond_7
    move-object/from16 v0, v20

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/storage/Storage;->setImageSize(Landroid/content/ContentValues;II)V

    .line 292
    if-eqz p3, :cond_8

    .line 293
    const-string v3, "latitude"

    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 294
    const-string v3, "longitude"

    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 299
    :cond_8
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v7, "notifyMtp"

    const-string v8, "1"

    invoke-virtual {v3, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 301
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 307
    const/4 v3, 0x1

    move-object v14, v15

    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    goto/16 :goto_1

    .line 288
    .end local v10           #file:Ljava/io/File;
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v11       #file:Ljava/io/File;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    .line 302
    :catch_2
    move-exception v18

    .line 303
    .local v18, th:Ljava/lang/Throwable;
    const-string v3, "CameraStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update image"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v3, 0x0

    move-object v14, v15

    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    goto/16 :goto_1

    .line 267
    .end local v10           #file:Ljava/io/File;
    .end local v14           #out:Ljava/io/FileOutputStream;
    .end local v18           #th:Ljava/lang/Throwable;
    .end local v20           #values:Landroid/content/ContentValues;
    .restart local v11       #file:Ljava/io/File;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    goto/16 :goto_0

    .end local v11           #file:Ljava/io/File;
    .end local v12           #now:J
    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v10       #file:Ljava/io/File;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v7

    goto/16 :goto_4

    .line 265
    .end local v10           #file:Ljava/io/File;
    .restart local v11       #file:Ljava/io/File;
    .restart local v12       #now:J
    :catchall_1
    move-exception v3

    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    goto/16 :goto_3

    .end local v10           #file:Ljava/io/File;
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v11       #file:Ljava/io/File;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object v14, v15

    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    goto/16 :goto_3

    .line 253
    .end local v10           #file:Ljava/io/File;
    .restart local v11       #file:Ljava/io/File;
    :catch_5
    move-exception v9

    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    goto/16 :goto_2

    .end local v10           #file:Ljava/io/File;
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v11       #file:Ljava/io/File;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v9

    move-object v14, v15

    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    goto/16 :goto_2
.end method

.method public static uri2Path(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "mContentResolver"
    .parameter "uri"

    .prologue
    .line 186
    const/4 v9, 0x0

    .line 187
    .local v9, img_path:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 188
    .local v2, proj:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 190
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 191
    if-eqz v7, :cond_0

    .line 192
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 193
    .local v6, actual_image_column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 194
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 199
    .end local v6           #actual_image_column_index:I
    :cond_0
    if-eqz v7, :cond_1

    .line 200
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 203
    :cond_1
    :goto_0
    return-object v9

    .line 196
    :catch_0
    move-exception v8

    .line 197
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    if-eqz v7, :cond_1

    .line 200
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 199
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 200
    invoke-static {v7}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_2
    throw v0
.end method

.method public static writeFile(Ljava/lang/String;[B)V
    .locals 5
    .parameter "path"
    .parameter "data"

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .end local v1           #out:Ljava/io/FileOutputStream;
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 100
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 104
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 101
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 103
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v3, "CameraStorage"

    const-string v4, "Failed to write data"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 101
    :catch_2
    move-exception v3

    goto :goto_0

    .line 99
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 100
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 102
    :goto_3
    throw v3

    .line 101
    :catch_3
    move-exception v4

    goto :goto_3

    .line 99
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 96
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static updateSaveLocationSharedPreferences(Landroid/content/Context;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/android/hwcamera/storage/Storage;->sBaiduPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v1, "com.baidu.gallery3d_preferences"
    
    const/4 v2, 0x1
    
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    
    move-result-object v0
    
    sput-object v0, Lcom/android/hwcamera/storage/Storage;->sBaiduPreferences:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/android/hwcamera/storage/Storage;->sBaiduPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/hwcamera/storage/Storage;->PATH:Ljava/lang/String;
    
    if-eqz v1, :cond_1

    const-string v2, "/storage/emulated/0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "phone"

    :goto_0
    invoke-static {v0, v2}, Lcom/android/hwcamera/storage/Storage;->writBaiduPreferredSaveLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    
    return-void
 
    :cond_1
    const-string v2, "phone"

    goto :goto_0

    :cond_2
    const-string v2, "sdcard"

    goto :goto_0
.end method

.method public static writBaiduPreferredSaveLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "value"

    .prologue
    .line 786
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 787
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_storage_path_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 788
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 789
    return-void
.end method
