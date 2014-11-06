.class public Lcom/android/gallery3d/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field public static final MATCH_LARGER_DIMENSION:I = 0x2

.field public static final MATCH_SMALLER_DIMENSION:I = 0x1

.field public static final SUGGET_MAX_PIXELS:I = 0x61a80

.field private static final TAG:Ljava/lang/String; = "ImageUtils"

.field private static final sResizePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/gallery3d/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 219
    if-lez p0, :cond_0

    const/high16 v0, 0x4000

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 220
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 221
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 222
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 223
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 224
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 225
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 226
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static rotateAndScaleImage(Ljava/lang/String;ILjava/io/File;I)V
    .locals 17
    .parameter "inputFilename"
    .parameter "orientation"
    .parameter "outputFile"
    .parameter "maxPixels"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 174
    .local v10, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 175
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 178
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    .line 179
    .local v16, width:I
    iget v9, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 180
    .local v9, height:I
    mul-int v12, v16, v9

    .line 182
    .local v12, pixelCount:I
    int-to-double v2, v12

    move/from16 v0, p3

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 183
    .local v14, scale:D
    const-wide/high16 v2, 0x3ff0

    cmpg-double v2, v14, v2

    if-gtz v2, :cond_0

    .line 184
    const-wide/high16 v14, 0x3ff0

    .line 193
    :goto_0
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 194
    .local v11, opt2:Landroid/graphics/BitmapFactory$Options;
    double-to-int v2, v14

    iput v2, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 195
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 198
    .local v1, scaledBmp:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 199
    .local v6, mtx:Landroid/graphics/Matrix;
    move/from16 v0, p1

    int-to-float v2, v0

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 201
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 205
    .local v13, rotatedBmp:Landroid/graphics/Bitmap;
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 206
    .local v8, fos:Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v13, v2, v3, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 207
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 209
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 210
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    return-void

    .line 189
    .end local v1           #scaledBmp:Landroid/graphics/Bitmap;
    .end local v6           #mtx:Landroid/graphics/Matrix;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v11           #opt2:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #rotatedBmp:Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/util/ImageUtils;->nextPowerOf2(I)I

    move-result v2

    int-to-double v14, v2

    goto :goto_0
.end method

.method public static scaleImage(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "filename"
    .parameter "width"
    .parameter "height"
    .parameter "match"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 71
    .local v3, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 72
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 74
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 75
    .local v7, nativeWidth:I
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 79
    .local v6, nativeHeight:I
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 80
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, p1

    if-gt v7, v0, :cond_0

    move/from16 v0, p2

    if-le v6, v0, :cond_3

    .line 81
    :cond_0
    int-to-float v13, v7

    move/from16 v0, p1

    int-to-float v14, v0

    div-float v4, v13, v14

    .line 82
    .local v4, dx:F
    int-to-float v13, v6

    move/from16 v0, p2

    int-to-float v14, v0

    div-float v5, v13, v14

    .line 83
    .local v5, dy:F
    const/4 v13, 0x1

    move/from16 v0, p3

    if-ne v0, v13, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 84
    .local v9, scale:F
    :goto_0
    int-to-float v13, v7

    div-float v11, v13, v9

    .line 85
    .local v11, scaledWidth:F
    int-to-float v13, v6

    div-float v10, v13, v9

    .line 87
    .local v10, scaledHeight:F
    const/high16 v13, 0x3f80

    cmpl-float v13, v9, v13

    if-lez v13, :cond_2

    float-to-int v13, v9

    :goto_1
    iput v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 94
    .end local v4           #dx:F
    .end local v5           #dy:F
    .end local v9           #scale:F
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 95
    .local v12, srcBitmap:Landroid/graphics/Bitmap;
    if-nez v12, :cond_4

    .line 96
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot decode file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 83
    .end local v10           #scaledHeight:F
    .end local v11           #scaledWidth:F
    .end local v12           #srcBitmap:Landroid/graphics/Bitmap;
    .restart local v4       #dx:F
    .restart local v5       #dy:F
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    goto :goto_0

    .line 87
    .restart local v9       #scale:F
    .restart local v10       #scaledHeight:F
    .restart local v11       #scaledWidth:F
    :cond_2
    const/4 v13, 0x1

    goto :goto_1

    .line 89
    .end local v4           #dx:F
    .end local v5           #dy:F
    .end local v9           #scale:F
    .end local v10           #scaledHeight:F
    .end local v11           #scaledWidth:F
    :cond_3
    move/from16 v0, p1

    int-to-float v11, v0

    .line 90
    .restart local v11       #scaledWidth:F
    move/from16 v0, p2

    int-to-float v10, v0

    .line 91
    .restart local v10       #scaledHeight:F
    const/4 v13, 0x1

    iput v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2

    .line 100
    .restart local v12       #srcBitmap:Landroid/graphics/Bitmap;
    :cond_4
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 103
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v17

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v18

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v15, Lcom/android/gallery3d/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 110
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 111
    return-object v1
.end method

.method public static transformJpeg(Ljava/lang/String;Ljava/io/File;)Z
    .locals 7
    .parameter "inputFilename"
    .parameter "outputFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 124
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, exif:Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    invoke-virtual {v1, v4, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 128
    .local v2, orientation:I
    const-string v4, "ImageUtils"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    const-string v4, "ImageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exif orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 134
    .local v0, degrees:I
    packed-switch v2, :pswitch_data_0

    .line 153
    :goto_0
    :pswitch_0
    const v4, 0x61a80

    invoke-static {p0, v0, p1, v4}, Lcom/android/gallery3d/util/ImageUtils;->rotateAndScaleImage(Ljava/lang/String;ILjava/io/File;I)V

    .line 154
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 136
    :pswitch_1
    const/16 v0, 0x5a

    .line 137
    goto :goto_0

    .line 141
    :pswitch_2
    const/16 v0, 0xb4

    .line 142
    goto :goto_0

    .line 146
    :pswitch_3
    const/16 v0, 0x10e

    .line 147
    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
