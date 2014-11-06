.class public Lcom/morpho/utils/multimedia/JpegHandler;
.super Ljava/lang/Object;
.source "JpegHandler.java"


# static fields
.field public static final ROTATION_180:I = 0xb4

.field public static final ROTATION_270:I = 0x10e

.field public static final ROTATION_90:I = 0x5a

.field public static final ROTATION_NORMAL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 6
    .parameter "bitmap"
    .parameter "filePath"
    .parameter "encodeQuality"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 38
    .local v1, fileOutput:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    .local v0, byte_os:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 40
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 41
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 42
    .local v3, jpegByteArray:[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 46
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v1           #fileOutput:Ljava/io/FileOutputStream;
    .local v2, fileOutput:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_1
    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 48
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 54
    :cond_0
    return-void

    .line 50
    .end local v2           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v1       #fileOutput:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v4

    .line 50
    .end local v1           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutput:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fileOutput:Ljava/io/FileOutputStream;
    .restart local v1       #fileOutput:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "filepath"
    .parameter "max_memory"

    .prologue
    .line 63
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 65
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 66
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 67
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 68
    .local v1, dst_w:I
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 69
    .local v0, dst_h:I
    if-lez p1, :cond_0

    .line 71
    :goto_0
    mul-int v6, v1, v0

    mul-int/lit8 v6, v6, 0x4

    if-le p1, v6, :cond_1

    .line 79
    :cond_0
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v5, v6, v1

    .line 80
    .local v5, scaleW:I
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v4, v6, v0

    .line 81
    .local v4, scaleH:I
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 82
    .local v3, sampleSize:I
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 83
    const/4 v6, 0x0

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 85
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 74
    .end local v3           #sampleSize:I
    .end local v4           #scaleH:I
    .end local v5           #scaleW:I
    :cond_1
    shr-int/lit8 v1, v1, 0x1

    .line 75
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getImageSize(Ljava/lang/String;[I[I)V
    .locals 3
    .parameter "filepath"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 96
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 97
    .local v0, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 99
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v1, p1, v2

    .line 100
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v1, p2, v2

    .line 101
    return-void
.end method

.method private static latitudeValueToNorS(D)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 224
    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-lez v1, :cond_0

    .line 225
    const-string v0, "N"

    .line 230
    .local v0, result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 227
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    const-string v0, "S"

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method private static locationValueToString(D)Ljava/lang/String;
    .locals 9
    .parameter "value"

    .prologue
    const-wide/high16 v7, 0x404e

    .line 188
    const-string v3, ""

    .line 193
    .local v3, result:Ljava/lang/String;
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    .line 194
    .local v0, d:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    .line 195
    .local v1, degrees:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    int-to-double v5, v1

    sub-double/2addr p0, v5

    .line 199
    mul-double/2addr p0, v7

    .line 202
    new-instance v0, Ljava/lang/Double;

    .end local v0           #d:Ljava/lang/Double;
    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    .line 203
    .restart local v0       #d:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 204
    .local v2, minutes:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    int-to-double v5, v2

    sub-double/2addr p0, v5

    .line 208
    mul-double/2addr p0, v7

    .line 211
    new-instance v0, Ljava/lang/Double;

    .end local v0           #d:Ljava/lang/Double;
    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    .line 212
    .restart local v0       #d:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v4

    .line 213
    .local v4, seconds:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    return-object v3
.end method

.method private static longitudeValueToEorW(D)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 239
    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-lez v1, :cond_0

    .line 240
    const-string v0, "E"

    .line 245
    .local v0, result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 242
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    const-string v0, "W"

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static saveAsFile([BLjava/lang/String;)V
    .locals 3
    .parameter "image"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 114
    .local v0, fileStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v0           #fileStream:Ljava/io/FileOutputStream;
    .local v1, fileStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 116
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 122
    :cond_0
    return-void

    .line 118
    .end local v1           #fileStream:Ljava/io/FileOutputStream;
    .restart local v0       #fileStream:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v2

    .line 118
    .end local v0           #fileStream:Ljava/io/FileOutputStream;
    .restart local v1       #fileStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #fileStream:Ljava/io/FileOutputStream;
    .restart local v0       #fileStream:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static setExifData(Ljava/lang/String;Landroid/location/Location;I)V
    .locals 13
    .parameter "filePath"
    .parameter "location"
    .parameter "orientation"

    .prologue
    .line 132
    if-nez p0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 137
    :cond_0
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 139
    .local v3, exif:Landroid/media/ExifInterface;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 140
    .local v0, dateTaken:J
    const-string v10, "yyyy:MM:dd kk:mm:ss"

    invoke-static {v10, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, nowTime:Ljava/lang/String;
    const-string v10, "DateTime"

    invoke-virtual {v3, v10, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v10, "DateTimeOriginal"

    invoke-virtual {v3, v10, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v10, "DateTimeDigitized"

    invoke-virtual {v3, v10, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v10, "Make"

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v10, "Model"

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v9, 0x1

    .line 150
    .local v9, orientationRotate:I
    sparse-switch p2, :sswitch_data_0

    .line 163
    :goto_1
    const-string v10, "Orientation"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 168
    .local v4, latitude:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 170
    .local v6, longitude:D
    const-string v10, "GPSLatitude"

    invoke-static {v4, v5}, Lcom/morpho/utils/multimedia/JpegHandler;->locationValueToString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v10, "GPSLatitudeRef"

    invoke-static {v4, v5}, Lcom/morpho/utils/multimedia/JpegHandler;->latitudeValueToNorS(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v10, "GPSLongitude"

    invoke-static {v6, v7}, Lcom/morpho/utils/multimedia/JpegHandler;->locationValueToString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v10, "GPSLongitudeRef"

    invoke-static {v6, v7}, Lcom/morpho/utils/multimedia/JpegHandler;->longitudeValueToEorW(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v4           #latitude:D
    .end local v6           #longitude:D
    :cond_1
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v0           #dateTaken:J
    .end local v3           #exif:Landroid/media/ExifInterface;
    .end local v8           #nowTime:Ljava/lang/String;
    .end local v9           #orientationRotate:I
    :catch_0
    move-exception v2

    .line 179
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 152
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #dateTaken:J
    .restart local v3       #exif:Landroid/media/ExifInterface;
    .restart local v8       #nowTime:Ljava/lang/String;
    .restart local v9       #orientationRotate:I
    :sswitch_0
    const/4 v9, 0x6

    .line 153
    goto :goto_1

    .line 155
    :sswitch_1
    const/4 v9, 0x3

    .line 156
    goto :goto_1

    .line 158
    :sswitch_2
    const/16 v9, 0x8

    .line 159
    goto :goto_1

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
