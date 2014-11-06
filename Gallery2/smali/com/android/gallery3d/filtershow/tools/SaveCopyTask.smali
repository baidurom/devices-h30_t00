.class public Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;
.super Landroid/os/AsyncTask;
.source "SaveCopyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$4;,
        Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;,
        Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/gallery3d/filtershow/presets/ImagePreset;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field private static final COPY_EXIF_ATTRIBUTES:[Ljava/lang/String; = null

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5f

.field private static final DEFAULT_SAVE_DIRECTORY:Ljava/lang/String; = "EditedOnlinePhotos"

.field private static final LOGTAG:Ljava/lang/String; = "SaveCopyTask"

.field private static final MAX_PIXEL_COUNT:I = 0xc65d40

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"

.field private static mSourceFile:Ljava/io/File;


# instance fields
.field private final callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

.field private final context:Landroid/content/Context;

.field private final destinationFile:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field private mIsStorageSurplus:Z

.field private final saveFileName:Ljava/lang/String;

.field private final sourceUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 211
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ExposureTime"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FocalLength"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ISOSpeedRatings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->COPY_EXIF_ATTRIBUTES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;)V
    .locals 4
    .parameter "context"
    .parameter "sourceUri"
    .parameter "destination"
    .parameter "callback"

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mIsStorageSurplus:Z

    .line 130
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    .line 132
    iput-object p4, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mHandler:Landroid/os/Handler;

    .line 137
    if-nez p3, :cond_0

    .line 138
    invoke-static {p1, p2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    .line 143
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->saveFileName:Ljava/lang/String;

    .line 145
    return-void

    .line 140
    :cond_0
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mSourceFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$002(Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-object p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mSourceFile:Ljava/io/File;

    return-object p0
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 94
    if-eqz p0, :cond_0

    .line 96
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "sourcePath"
    .parameter "destPath"

    .prologue
    .line 236
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 237
    .local v6, source:Landroid/media/ExifInterface;
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, dest:Landroid/media/ExifInterface;
    const/4 v5, 0x0

    .line 239
    .local v5, needsSave:Z
    sget-object v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->COPY_EXIF_ATTRIBUTES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 240
    .local v7, tag:Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 242
    const/4 v5, 0x1

    .line 243
    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .end local v7           #tag:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 247
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dest:Landroid/media/ExifInterface;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #needsSave:Z
    .end local v6           #source:Landroid/media/ExifInterface;
    :cond_2
    :goto_1
    return-void

    .line 249
    :catch_0
    move-exception v2

    .line 250
    .local v2, ex:Ljava/io/IOException;
    const-string v9, "SaveCopyTask"

    const-string v10, "Failed to copy exif metadata"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private copyVoice(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16
    .parameter "sourcePath"
    .parameter "destPath"
    .parameter "offset"

    .prologue
    .line 472
    const/4 v3, 0x0

    .line 473
    .local v3, is:Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    .line 475
    .local v8, os:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 476
    .end local v3           #is:Ljava/io/BufferedInputStream;
    .local v4, is:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-direct {v12, v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v9, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 478
    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .local v9, os:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    sub-long v12, v12, p3

    const-wide/16 v14, 0x14

    sub-long v6, v12, v14

    .line 479
    .local v6, needSkipBytes:J
    invoke-virtual {v4, v6, v7}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v10

    .line 480
    .local v10, skip:J
    const-string v12, "SaveCopyTask"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skip bytes:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/high16 v12, 0x10

    new-array v1, v12, [B

    .line 483
    .local v1, b:[B
    const/4 v5, -0x1

    .line 484
    .local v5, len:I
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v12, -0x1

    if-eq v5, v12, :cond_0

    .line 485
    const/4 v12, 0x0

    invoke-virtual {v9, v1, v12, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 487
    .end local v1           #b:[B
    .end local v5           #len:I
    .end local v6           #needSkipBytes:J
    .end local v10           #skip:J
    :catch_0
    move-exception v2

    move-object v8, v9

    .end local v9           #os:Ljava/io/BufferedOutputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 488
    .end local v4           #is:Ljava/io/BufferedInputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v3       #is:Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_3
    const-string v12, "SaveCopyTask"

    const-string v13, "Failed to copy Voice ,for IOException "

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 492
    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 493
    invoke-static {v8}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 495
    .end local v2           #e:Ljava/io/IOException;
    :goto_2
    return-void

    .line 492
    .end local v3           #is:Ljava/io/BufferedInputStream;
    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v1       #b:[B
    .restart local v4       #is:Ljava/io/BufferedInputStream;
    .restart local v5       #len:I
    .restart local v6       #needSkipBytes:J
    .restart local v9       #os:Ljava/io/BufferedOutputStream;
    .restart local v10       #skip:J
    :cond_0
    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 493
    invoke-static {v9}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    move-object v8, v9

    .end local v9           #os:Ljava/io/BufferedOutputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 494
    .end local v4           #is:Ljava/io/BufferedInputStream;
    .restart local v3       #is:Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 489
    .end local v1           #b:[B
    .end local v5           #len:I
    .end local v6           #needSkipBytes:J
    .end local v10           #skip:J
    :catch_1
    move-exception v2

    .line 490
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v12, "SaveCopyTask"

    const-string v13, "Failed to copy Voice ,for other Exception "

    invoke-static {v12, v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 492
    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 493
    invoke-static {v8}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    goto :goto_2

    .line 492
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_4
    invoke-static {v3}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 493
    invoke-static {v8}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    throw v12

    .line 492
    .end local v3           #is:Ljava/io/BufferedInputStream;
    .restart local v4       #is:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v12

    move-object v3, v4

    .end local v4           #is:Ljava/io/BufferedInputStream;
    .restart local v3       #is:Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v3           #is:Ljava/io/BufferedInputStream;
    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v4       #is:Ljava/io/BufferedInputStream;
    .restart local v9       #os:Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v12

    move-object v8, v9

    .end local v9           #os:Ljava/io/BufferedOutputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #is:Ljava/io/BufferedInputStream;
    .restart local v3       #is:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 489
    .end local v3           #is:Ljava/io/BufferedInputStream;
    .restart local v4       #is:Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #is:Ljava/io/BufferedInputStream;
    .restart local v3       #is:Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v3           #is:Ljava/io/BufferedInputStream;
    .end local v8           #os:Ljava/io/BufferedOutputStream;
    .restart local v4       #is:Ljava/io/BufferedInputStream;
    .restart local v9       #os:Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v2

    move-object v8, v9

    .end local v9           #os:Ljava/io/BufferedOutputStream;
    .restart local v8       #os:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #is:Ljava/io/BufferedInputStream;
    .restart local v3       #is:Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 487
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v3           #is:Ljava/io/BufferedInputStream;
    .restart local v4       #is:Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #is:Ljava/io/BufferedInputStream;
    .restart local v3       #is:Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public static getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .parameter "context"
    .parameter "sourceUri"

    .prologue
    .line 148
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 150
    .local v0, saveDirectory:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v0, Ljava/io/File;

    .end local v0           #saveDirectory:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .restart local v0       #saveDirectory:Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_2

    .line 156
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #saveDirectory:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "EditedOnlinePhotos"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    .restart local v0       #saveDirectory:Ljava/io/File;
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 161
    :cond_3
    return-object v0
.end method

.method public static getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 6
    .parameter "context"
    .parameter "sourceUri"

    .prologue
    .line 165
    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getFinalSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 166
    .local v1, saveDirectory:Ljava/io/File;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, filename:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".JPG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private getSaveBitmapScale(Landroid/graphics/Bitmap;)F
    .locals 7
    .parameter "bitmap"
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "SF_SWITCH_FALLTHROUGH"
        }
    .end annotation

    .prologue
    const/high16 v4, -0x4080

    .line 258
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/gallery3d/settings/EditSetting;->getEditSaveResulution(Landroid/content/Context;)Lcom/android/gallery3d/settings/EditSetting$EditSaveResolution;

    move-result-object v3

    .line 259
    .local v3, setting:Lcom/android/gallery3d/settings/EditSetting$EditSaveResolution;
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 260
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v2, v5

    .line 261
    .local v2, refWinLength:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v1, v5

    .line 262
    .local v1, minLengthOfPic:F
    sget-object v5, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$4;->$SwitchMap$com$android$gallery3d$settings$EditSetting$EditSaveResolution:[I

    invoke-virtual {v3}, Lcom/android/gallery3d/settings/EditSetting$EditSaveResolution;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    return v4

    .line 264
    :pswitch_0
    const/high16 v5, 0x4000

    mul-float/2addr v2, v5

    .line 267
    :pswitch_1
    cmpg-float v5, v1, v2

    if-lez v5, :cond_0

    div-float v4, v2, v1

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getSaveDirectory(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 4
    .parameter "context"
    .parameter "sourceUri"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 381
    new-array v0, v1, [Ljava/io/File;

    .line 382
    .local v0, dir:[Ljava/io/File;
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_data"

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$2;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$2;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 393
    aget-object v1, v0, v3

    return-object v1
.end method

.method private getSourcePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "sourceUri"

    .prologue
    const/4 v3, 0x0

    .line 443
    const/4 v8, 0x0

    .line 444
    .local v8, filePath:Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 468
    :cond_0
    :goto_0
    return-object v8

    .line 447
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v3

    .line 450
    .local v2, PROJECTION:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 452
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 454
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 456
    .local v9, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    move-object v8, v9

    .line 463
    .end local v9           #path:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_0

    .line 464
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 460
    :catch_0
    move-exception v7

    .line 461
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SaveCopyTask"

    const-string v1, "Failed to copy exif"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    if-eqz v6, :cond_0

    .line 464
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 463
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 464
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "sourceUri"
    .parameter "file"
    .parameter "saveFileName"
    .parameter "offset"

    .prologue
    const/4 v7, 0x0

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 403
    .local v0, now:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 404
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v4, "_display_name"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v4, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 408
    const-string v4, "date_modified"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 409
    const-string v4, "date_added"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 410
    const-string v4, "orientation"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    const-string v4, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v4, "_size"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 413
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_0

    sget-boolean v4, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_HW_VOICE_OFFSET:Z

    if-eqz v4, :cond_0

    .line 414
    const-string v4, "hw_voice_offset"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 417
    :cond_0
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "datetaken"

    aput-object v4, v2, v7

    const/4 v4, 0x1

    const-string v5, "latitude"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "longitude"

    aput-object v5, v2, v4

    .line 421
    .local v2, projection:[Ljava/lang/String;
    new-instance v4, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$3;

    invoke-direct {v4, v3}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$3;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p0, p1, v2, v4}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method private loadMutableBitmap()Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 172
    const/4 v6, 0x0

    .line 174
    .local v6, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 175
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 176
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    const-string v11, "r"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 177
    if-nez v6, :cond_2

    .line 201
    if-eqz v6, :cond_0

    .line 203
    :try_start_1
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    move-object v0, v8

    .line 208
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    return-object v0

    .line 178
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 179
    .local v2, fd:Ljava/io/FileDescriptor;
    const/4 v9, 0x0

    invoke-static {v2, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 181
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 182
    .local v7, w:I
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 186
    .local v3, h:I
    mul-int v9, v7, v3

    const v10, 0xc65d40

    if-le v9, v10, :cond_3

    .line 187
    const v9, 0x4b465d40

    mul-int v10, v7, v3

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v9}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v9

    invoke-static {v9}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v9

    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 191
    :cond_3
    const/4 v9, 0x0

    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 192
    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 194
    const/4 v9, 0x0

    invoke-static {v2, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-static {v9, v10}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v5

    .line 196
    .local v5, orientation:I
    invoke-static {v0, v5}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->rotateToPortrait(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 201
    if-eqz v6, :cond_1

    .line 203
    :try_start_3
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 204
    :catch_0
    move-exception v8

    goto :goto_1

    .line 198
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v3           #h:I
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #orientation:I
    .end local v7           #w:I
    :catch_1
    move-exception v1

    .line 199
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    if-eqz v6, :cond_4

    .line 203
    :try_start_5
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_2
    move-object v0, v8

    .line 208
    goto :goto_1

    .line 201
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v6, :cond_5

    .line 203
    :try_start_6
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 205
    :cond_5
    :goto_3
    throw v8

    .line 204
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v9

    goto :goto_0

    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    goto :goto_3
.end method

.method private static querySource(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;)V
    .locals 7
    .parameter "context"
    .parameter "sourceUri"
    .parameter "projection"
    .parameter "callback"

    .prologue
    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 363
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 365
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 367
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    invoke-interface {p3, v6}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_0
    if-eqz v6, :cond_1

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v1

    .line 373
    if-eqz v6, :cond_1

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/Object;)V
    .locals 6
    .parameter "bitmap"
    .parameter "destination"
    .parameter "xmp"

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1           #os:Ljava/io/OutputStream;
    .local v2, os:Ljava/io/OutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5f

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    invoke-static {v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 88
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    :goto_0
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/gallery3d/util/XmpUtilHelper;->writeXMPMeta(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 91
    :cond_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v3, "SaveCopyTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in writing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->closeStream(Ljava/io/Closeable;)V

    throw v3

    .end local v1           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_2

    .line 83
    .end local v1           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/net/Uri;
    .locals 21
    .parameter "params"

    .prologue
    .line 281
    const/4 v2, 0x0

    aget-object v2, p1, v2

    if-nez v2, :cond_0

    .line 282
    const/16 v19, 0x0

    .line 343
    :goto_0
    return-object v19

    .line 285
    :cond_0
    const/4 v2, 0x0

    aget-object v14, p1, v2

    .line 286
    .local v14, preset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    const/4 v13, 0x0

    .line 288
    .local v13, is:Ljava/io/InputStream;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->loadMutableBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 290
    .local v8, bitmap:Landroid/graphics/Bitmap;
    const-wide/16 v11, 0x0

    .line 291
    .local v11, imageSize:J
    sget-object v2, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mSourceFile:Ljava/io/File;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mSourceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 292
    :cond_1
    const-wide/32 v15, 0x80000

    .line 293
    .local v15, reservedSpace:J
    const-wide/32 v2, 0x80000

    add-long/2addr v2, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/util/GalleryUtils;->hasSpaceForSize(JLjava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mIsStorageSurplus:Z

    .line 294
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mIsStorageSurplus:Z

    if-nez v2, :cond_3

    .line 295
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 296
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$1;-><init>(Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 304
    const/16 v19, 0x0

    .line 343
    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 307
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getSaveBitmapScale(Landroid/graphics/Bitmap;)F

    move-result v17

    .line 308
    .local v17, scale:F
    const/4 v2, 0x0

    cmpl-float v2, v17, v2

    if-lez v2, :cond_4

    const/high16 v2, 0x3f80

    cmpg-float v2, v17, v2

    if-gez v2, :cond_4

    .line 309
    const/4 v2, 0x1

    move/from16 v0, v17

    invoke-static {v8, v0, v2}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 312
    :cond_4
    invoke-virtual {v14, v8}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 314
    const/16 v20, 0x0

    .line 315
    .local v20, xmp:Ljava/lang/Object;
    invoke-virtual {v14}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->isPanoramaSafe()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    .line 317
    invoke-static {v13}, Lcom/android/gallery3d/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v20

    .line 319
    .end local v20           #xmp:Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    move-object/from16 v0, v20

    invoke-static {v8, v2, v0}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/Object;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->getSourcePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    .line 321
    .local v18, sourcePath:Ljava/lang/String;
    const-wide/16 v6, -0x1

    .line 322
    .local v6, offset:J
    if-eqz v18, :cond_6

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->copyExif(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/common/Utils;->getVoiceOffset(Ljava/lang/String;)J

    move-result-wide v6

    .line 326
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_6

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->copyVoice(Ljava/lang/String;Ljava/lang/String;J)V

    .line 330
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->destinationFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->saveFileName:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->insertContent(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v19

    .line 331
    .local v19, uri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 334
    .end local v6           #offset:J
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #imageSize:J
    .end local v15           #reservedSpace:J
    .end local v17           #scale:F
    .end local v18           #sourcePath:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v10

    .line 335
    .local v10, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v2, "SaveCopyTask"

    const-string v3, "Failed to save image!"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    const/16 v19, 0x0

    .line 343
    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 337
    .end local v10           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    .line 339
    .local v9, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v2, "SaveCopyTask"

    const-string v3, "Failed to save image! for null pointer exception"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 340
    const/16 v19, 0x0

    .line 343
    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v9           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    check-cast p1, [Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->doInBackground([Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->mIsStorageSurplus:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->callback:Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask$Callback;->onComplete(Landroid/net/Uri;)V

    .line 358
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/tools/SaveCopyTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method public showDialog()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method
