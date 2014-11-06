.class public Lcom/android/gallery3d/mediatek/DecodeHelper;
.super Ljava/lang/Object;
.source "DecodeHelper.java"


# static fields
.field public static final HW_LIMITATION_2D_TO_3D:I = 0x800

.field public static final MAX_BITMAP_BYTE_COUNT:I = 0xa00000

.field private static final MAX_BITMAP_DIM:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "DecodeHelper"

.field private static final TARGET_DISPLAY_HEIGHT:[I

.field private static final TARGET_DISPLAY_WIDTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/mediatek/DecodeHelper;->TARGET_DISPLAY_WIDTH:[I

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/gallery3d/mediatek/DecodeHelper;->TARGET_DISPLAY_HEIGHT:[I

    return-void

    .line 39
    :array_0
    .array-data 0x4
        0x0t 0x5t 0x0t 0x0t
        0x0t 0x5t 0x0t 0x0t
        0xc0t 0x3t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x80t 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
    .end array-data

    .line 40
    :array_1
    .array-data 0x4
        0x20t 0x3t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0x1ct 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateSampleSize(IIII)I
    .locals 2
    .parameter "maxBytes"
    .parameter "maxDim"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 53
    const/4 v0, 0x1

    .line 56
    .local v0, sampleSize:I
    :goto_0
    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    div-int/2addr v1, v0

    div-int/2addr v1, v0

    if-le v1, p0, :cond_0

    .line 57
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 61
    :cond_0
    :goto_1
    if-lez p1, :cond_2

    div-int v1, p2, v0

    if-gt v1, p1, :cond_1

    div-int v1, p3, v0

    if-le v1, p1, :cond_2

    .line 63
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 66
    :cond_2
    return v0
.end method

.method public static calculateSampleSizeByType(IIII)I
    .locals 5
    .parameter "width"
    .parameter "height"
    .parameter "type"
    .parameter "targetSize"

    .prologue
    .line 73
    const/4 v1, 0x1

    .line 74
    .local v1, sampleSize:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 77
    int-to-float v3, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 78
    .local v2, scale:F
    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v1

    .line 83
    const v0, 0x9c400

    .line 84
    .local v0, MAX_PIXEL_COUNT:I
    div-int v3, p0, v1

    div-int v4, p1, v1

    mul-int/2addr v3, v4

    const v4, 0x9c400

    if-le v3, v4, :cond_0

    .line 85
    const v3, 0x491c4000

    mul-int v4, p0, p1

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v1

    .line 93
    .end local v0           #MAX_PIXEL_COUNT:I
    :cond_0
    :goto_0
    return v1

    .line 90
    .end local v2           #scale:F
    :cond_1
    int-to-float v3, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 91
    .restart local v2       #scale:F
    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v1

    goto :goto_0
.end method

.method public static decodeFrame(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "jc"
    .parameter "mpoDecoderWrapper"
    .parameter "frameIndex"
    .parameter "options"

    .prologue
    const/4 v1, 0x0

    .line 157
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-nez p3, :cond_2

    .line 158
    :cond_0
    const-string v2, "DecodeHelper"

    const-string v3, "decodeFrame:invalid paramters"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 171
    :cond_1
    :goto_0
    return-object v0

    .line 161
    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->frameBitmap(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    move-object v0, v1

    .line 164
    goto :goto_0

    .line 167
    :cond_3
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decodeFrameSafe(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "jc"
    .parameter "mpoDecoderWrapper"
    .parameter "frameIndex"
    .parameter "options"

    .prologue
    .line 260
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-nez p3, :cond_2

    .line 261
    :cond_0
    const-string v4, "DecodeHelper"

    const-string v5, "decodeFrameSafe:invalid paramters"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v0, 0x0

    .line 282
    :cond_1
    return-object v0

    .line 267
    :cond_2
    const/4 v0, 0x0

    .line 268
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/16 v3, 0x8

    .line 269
    .local v3, maxTryNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 271
    :cond_3
    const-string v4, "DecodeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeFrameSafe:try for sample size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/gallery3d/mediatek/DecodeHelper;->decodeFrame(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 278
    :goto_1
    if-nez v0, :cond_1

    .line 279
    iget v4, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "DecodeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeFrameSafe:out of memory when decoding:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static decodeImageRegionNoRetry(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"
    .parameter "regionDecoder"
    .parameter "imageRect"
    .parameter "options"

    .prologue
    const/4 v1, 0x0

    .line 326
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 327
    :cond_0
    const-string v2, "DecodeHelper"

    const-string v3, "safeDecodeImageRegion:invalid region decoder or rect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    return-object v1

    .line 331
    :cond_1
    :try_start_0
    const-string v2, "DecodeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safeDecodeImageRegion:decodeRegion(rect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "DecodeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safeDecodeImageRegion:out of memory when decoding:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "jc"
    .parameter "params"
    .parameter "fd"

    .prologue
    const/4 v3, 0x0

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p2, :cond_1

    .line 178
    const-string v4, "DecodeHelper"

    const-string v5, "decodeLargeBitmap:get null FileDescriptor"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    :goto_0
    return-object v3

    .line 181
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 185
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 186
    const/4 v4, 0x0

    invoke-static {p2, v4, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 188
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    :cond_2
    const/high16 v3, 0xa0

    const/16 v4, 0x800

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/gallery3d/mediatek/DecodeHelper;->calculateSampleSize(IIII)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 193
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 194
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 197
    const/4 v3, 0x0

    invoke-static {p2, v3, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v3, v0

    .line 201
    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "jc"
    .parameter "params"
    .parameter "localFilePath"

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p2, :cond_0

    .line 208
    const-string v5, "DecodeHelper"

    const-string v6, "decodeLargeBitmap:get null local path"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v5, 0x0

    .line 223
    :goto_0
    return-object v5

    .line 212
    :cond_0
    const/4 v3, 0x0

    .line 214
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 217
    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-static {p0, p1, v2}, Lcom/android/gallery3d/mediatek/DecodeHelper;->decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 221
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_1
    move-object v5, v0

    .line 223
    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 218
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static decodeLargeBitmap(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;[BII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "jc"
    .parameter "params"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p2, :cond_1

    .line 230
    const-string v4, "DecodeHelper"

    const-string v5, "decodeLargeBitmap:get null buffer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    :goto_0
    return-object v3

    .line 233
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 237
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 238
    invoke-static {p2, p3, p4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 240
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    :cond_2
    const/high16 v3, 0xa0

    const/16 v4, 0x800

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/gallery3d/mediatek/DecodeHelper;->calculateSampleSize(IIII)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 245
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 246
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 249
    invoke-static {p2, p3, p4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v3, v0

    .line 254
    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static decodeMpoFrames(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)[Landroid/graphics/Bitmap;
    .locals 22
    .parameter "jc"
    .parameter "params"
    .parameter "mpoDecoderWrapper"
    .parameter "listener"

    .prologue
    .line 376
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 377
    :cond_0
    const-string v2, "DecodeHelper"

    const-string v3, "decodeMpoFrames:got null decoder or params!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/16 v18, 0x0

    .line 438
    :cond_1
    :goto_0
    return-object v18

    .line 380
    :cond_2
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inTargetDisplayWidth:I

    .line 381
    .local v5, targetDisplayWidth:I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inTargetDisplayHeight:I

    .line 382
    .local v6, targetDisplayHeight:I
    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->frameCount()I

    move-result v14

    .line 383
    .local v14, frameCount:I
    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->width()I

    move-result v16

    .line 384
    .local v16, frameWidth:I
    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->height()I

    move-result v15

    .line 385
    .local v15, frameHeight:I
    const-string v2, "DecodeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mpo frame width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frame height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    if-lez v5, :cond_3

    if-lez v6, :cond_3

    if-eqz v14, :cond_3

    if-eqz v16, :cond_3

    if-nez v15, :cond_4

    .line 391
    :cond_3
    const-string v2, "DecodeHelper"

    const-string v3, "decodeMpoFrames:got invalid parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/16 v18, 0x0

    goto :goto_0

    .line 396
    :cond_4
    const/16 v18, 0x0

    .local v18, mpoFrames:[Landroid/graphics/Bitmap;
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    .line 398
    :try_start_0
    invoke-static/range {v2 .. v7}, Lcom/android/gallery3d/mediatek/DecodeHelper;->tryDecodeMpoFrames(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;Lcom/android/gallery3d/util/GalleryUtils$Params;IILcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)[Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 433
    :cond_5
    :goto_1
    if-eqz p0, :cond_1

    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    const-string v2, "DecodeHelper"

    const-string v3, "decodeMpoFrame:job cancelled, recycle decoded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/mediatek/DecodeHelper;->recycleBitmapArray([Landroid/graphics/Bitmap;)V

    .line 436
    const/16 v18, 0x0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v13

    .line 401
    .local v13, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "DecodeHelper"

    const-string v3, "decodeMpoFrames:out memory when decode mpo frames"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 405
    mul-int v21, v5, v6

    .line 407
    .local v21, targetDisplayPixelCount:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    sget-object v2, Lcom/android/gallery3d/mediatek/DecodeHelper;->TARGET_DISPLAY_WIDTH:[I

    array-length v2, v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_5

    .line 408
    sget-object v2, Lcom/android/gallery3d/mediatek/DecodeHelper;->TARGET_DISPLAY_WIDTH:[I

    aget v2, v2, v17

    sget-object v3, Lcom/android/gallery3d/mediatek/DecodeHelper;->TARGET_DISPLAY_HEIGHT:[I

    aget v3, v3, v17

    mul-int v20, v2, v3

    .line 410
    .local v20, pixelCount:I
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    .line 407
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 413
    :cond_6
    if-eqz p0, :cond_7

    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 414
    const-string v2, "DecodeHelper"

    const-string v3, "decodeMpoFrames:job cancelled"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 417
    :cond_7
    const-string v2, "DecodeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeMpoFrames:try display ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/gallery3d/mediatek/DecodeHelper;->TARGET_DISPLAY_WIDTH:[I

    aget v4, v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/gallery3d/mediatek/DecodeHelper;->TARGET_DISPLAY_HEIGHT:[I

    aget v4, v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :try_start_1
    sget-object v2, Lcom/android/gallery3d/mediatek/DecodeHelper;->TARGET_DISPLAY_WIDTH:[I

    aget v10, v2, v17

    sget-object v2, Lcom/android/gallery3d/mediatek/DecodeHelper;->TARGET_DISPLAY_HEIGHT:[I

    aget v11, v2, v17

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move-object/from16 v12, p3

    invoke-static/range {v7 .. v12}, Lcom/android/gallery3d/mediatek/DecodeHelper;->tryDecodeMpoFrames(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;Lcom/android/gallery3d/util/GalleryUtils$Params;IILcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)[Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 428
    const-string v2, "DecodeHelper"

    const-string v3, "decodeMpoFrame: we finished decoding process"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 424
    :catch_1
    move-exception v19

    .line 425
    .local v19, oom:Ljava/lang/OutOfMemoryError;
    const-string v2, "DecodeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeMpoFrames:out of memory again:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "jc"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .parameter "options"
    .parameter "targetSize"
    .parameter "type"

    .prologue
    .line 111
    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 113
    .restart local p4
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 114
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 115
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    .line 151
    :goto_0
    return-object v5

    .line 117
    :cond_1
    iget v4, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 118
    .local v4, w:I
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 120
    .local v1, h:I
    const/4 v5, 0x2

    if-ne p6, v5, :cond_3

    .line 123
    int-to-float v5, p5

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 124
    .local v3, scale:F
    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v5

    iput v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 128
    const v0, 0x9c400

    .line 129
    .local v0, MAX_PIXEL_COUNT:I
    iget v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v5, v4, v5

    iget v6, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v1, v6

    mul-int/2addr v5, v6

    const v6, 0x9c400

    if-le v5, v6, :cond_2

    .line 130
    const v5, 0x491c4000

    mul-int v6, v4, v1

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    invoke-static {v5}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v5

    iput v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 139
    .end local v0           #MAX_PIXEL_COUNT:I
    :cond_2
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 141
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 142
    .local v2, result:Landroid/graphics/Bitmap;
    if-nez v2, :cond_4

    const/4 v5, 0x0

    goto :goto_0

    .line 135
    .end local v2           #result:Landroid/graphics/Bitmap;
    .end local v3           #scale:F
    :cond_3
    int-to-float v5, p5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 136
    .restart local v3       #scale:F
    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v5

    iput v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 146
    .restart local v2       #result:Landroid/graphics/Bitmap;
    :cond_4
    int-to-float v6, p5

    const/4 v5, 0x2

    if-ne p6, v5, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_2
    int-to-float v5, v5

    div-float v3, v6, v5

    .line 150
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_5

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 151
    :cond_5
    invoke-static {v2}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 146
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2
.end method

.method public static dumpBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "b"

    .prologue
    .line 594
    invoke-static {p0}, Lcom/android/gallery3d/mediatek/DecodeHelper;->showBitmapInfo(Landroid/graphics/Bitmap;)V

    .line 595
    if-eqz p0, :cond_0

    .line 596
    const/4 v1, 0x0

    .line 598
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/DCIM/Bitmap["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "].png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, filename:Ljava/lang/String;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 606
    if-eqz v2, :cond_0

    .line 608
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 614
    .end local v0           #filename:Ljava/lang/String;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 603
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 606
    :goto_1
    if-eqz v1, :cond_0

    .line 608
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 609
    :catch_1
    move-exception v3

    goto :goto_0

    .line 606
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 608
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 610
    :cond_1
    :goto_3
    throw v3

    .line 609
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #filename:Ljava/lang/String;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v0           #filename:Ljava/lang/String;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_3

    .line 606
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #filename:Ljava/lang/String;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 603
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Z)Lcom/android/gallery3d/mediatek/RegionDecoder;
    .locals 5
    .parameter "jc"
    .parameter "bitmap"
    .parameter "recycleInput"

    .prologue
    const/4 v1, 0x0

    .line 287
    if-nez p1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-object v1

    .line 288
    :cond_1
    invoke-static {p1}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 291
    .local v0, array:[B
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 294
    :cond_3
    new-instance v1, Lcom/android/gallery3d/mediatek/RegionDecoder;

    invoke-direct {v1}, Lcom/android/gallery3d/mediatek/RegionDecoder;-><init>()V

    .line 296
    .local v1, regionDecoder:Lcom/android/gallery3d/mediatek/RegionDecoder;
    const/4 v2, 0x0

    array-length v3, v0

    const/4 v4, 0x1

    invoke-static {p0, v0, v2, v3, v4}, Lcom/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v1, Lcom/android/gallery3d/mediatek/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0
.end method

.method public static getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;I)Lcom/android/gallery3d/mediatek/RegionDecoder;
    .locals 7
    .parameter "jc"
    .parameter "mpoDecoderWrapper"
    .parameter "frameIndex"

    .prologue
    const/4 v2, 0x0

    .line 304
    if-eqz p1, :cond_0

    if-gez p2, :cond_2

    .line 305
    :cond_0
    const-string v3, "DecodeHelper"

    const-string v4, "getRegionDecoder:got null decoder or frameIndex!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_1
    :goto_0
    return-object v2

    .line 308
    :cond_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 309
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/high16 v3, 0xa0

    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->width()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->height()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/gallery3d/mediatek/DecodeHelper;->calculateSampleSize(IIII)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 314
    invoke-static {p0, p1, p2, v1}, Lcom/android/gallery3d/mediatek/DecodeHelper;->decodeFrameSafe(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 316
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 317
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 321
    :cond_3
    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/android/gallery3d/mediatek/DecodeHelper;->getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Z)Lcom/android/gallery3d/mediatek/RegionDecoder;

    move-result-object v2

    goto :goto_0
.end method

.method public static largerDisplayScale(IIII)F
    .locals 5
    .parameter "frameWidth"
    .parameter "frameHeight"
    .parameter "targetDisplayWidth"
    .parameter "targetDisplayHeight"

    .prologue
    const/high16 v1, 0x3f80

    .line 521
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-lez p0, :cond_0

    if-gtz p1, :cond_1

    .line 523
    :cond_0
    const-string v2, "DecodeHelper"

    const-string v3, "largerDisplayScale:invalid parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 533
    :goto_0
    return v0

    .line 526
    :cond_1
    const/high16 v0, 0x3f80

    .line 527
    .local v0, initRate:F
    int-to-float v2, p2

    int-to-float v3, p0

    div-float/2addr v2, v3

    int-to-float v3, p3

    int-to-float v4, p1

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 529
    int-to-float v2, p2

    int-to-float v3, p1

    div-float/2addr v2, v3

    int-to-float v3, p3

    int-to-float v4, p0

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 531
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 533
    goto :goto_0
.end method

.method public static openUriInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 6
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 537
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-object v2

    .line 538
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.resource"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 543
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "DecodeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openUriInputStream:fail to open: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 549
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_3
    const-string v3, "DecodeHelper"

    const-string v4, "openUriInputStream:encountered unknow scheme!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static postScaleDown(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"
    .parameter "type"
    .parameter "targetSize"

    .prologue
    const/4 v1, 0x1

    .line 97
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 105
    .end local p0
    :goto_0
    return-object p0

    .line 99
    .restart local p0
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 100
    invoke-static {p0, p2, v1}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 104
    :goto_1
    invoke-static {p0}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 105
    goto :goto_0

    .line 102
    :cond_1
    invoke-static {p0, p2, v1}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1
.end method

.method public static recycleBitmapArray([Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmapArray"

    .prologue
    .line 507
    if-nez p0, :cond_1

    .line 517
    :cond_0
    return-void

    .line 510
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 511
    aget-object v1, p0, v0

    if-nez v1, :cond_2

    .line 510
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_2
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "source"
    .parameter "scale"
    .parameter "recycleInput"

    .prologue
    const/16 v7, 0x1f40

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 554
    if-eqz p0, :cond_0

    cmpg-float v6, p1, v8

    if-gtz v6, :cond_2

    .line 555
    :cond_0
    const-string v6, "DecodeHelper"

    const-string v7, "resizeBitmap:invalid parameters"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 558
    .restart local p0
    :cond_2
    const/high16 v6, 0x3f80

    cmpl-float v6, p1, v6

    if-eqz v6, :cond_1

    .line 563
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 564
    .local v3, newWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 565
    .local v2, newHeight:I
    if-gt v3, v7, :cond_3

    if-le v2, v7, :cond_4

    .line 566
    :cond_3
    const-string v6, "DecodeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeBitmap:too large new Bitmap for scale:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 570
    :cond_4
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 573
    .local v5, target:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 574
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 575
    .local v4, src:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v2

    invoke-direct {v1, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 576
    .local v1, dst:Landroid/graphics/RectF;
    const/4 v6, 0x0

    invoke-virtual {v0, p0, v4, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 577
    if-eqz p2, :cond_5

    .line 578
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move-object p0, v5

    .line 580
    goto :goto_0
.end method

.method public static safeDecodeImageRegion(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "jc"
    .parameter "regionDecoder"
    .parameter "imageRect"
    .parameter "options"

    .prologue
    const/4 v4, 0x0

    .line 343
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 344
    :cond_0
    const-string v5, "DecodeHelper"

    const-string v6, "safeDecodeImageRegion:invalid region decoder or rect"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 371
    :cond_1
    :goto_0
    return-object v0

    .line 348
    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v4

    goto :goto_0

    .line 350
    :cond_3
    const/4 v0, 0x0

    .line 357
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/16 v3, 0x8

    .line 358
    .local v3, maxTryNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v5, 0x8

    if-ge v2, v5, :cond_1

    .line 359
    if-eqz p0, :cond_4

    :try_start_0
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v4

    goto :goto_0

    .line 360
    :cond_4
    const-string v5, "DecodeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decodeImageRegionNoRetry:try for sample size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {p0, p1, p2, p3}, Lcom/android/gallery3d/mediatek/DecodeHelper;->decodeImageRegionNoRetry(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 364
    if-nez v0, :cond_1

    .line 366
    iget v5, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "DecodeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "safeDecodeImageRegion:got exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showBitmapInfo(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 586
    const-string v0, "DecodeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBitmapInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-eqz p0, :cond_0

    .line 588
    const-string v0, "DecodeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBitmapInfo:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v0, "DecodeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBitmapInfo:config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    return-void
.end method

.method public static tryDecodeMpoFrames(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;Lcom/android/gallery3d/util/GalleryUtils$Params;IILcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)[Landroid/graphics/Bitmap;
    .locals 17
    .parameter "jc"
    .parameter "mpoDecoderWrapper"
    .parameter "params"
    .parameter "targetDisplayWidth"
    .parameter "targetDisplayHeight"
    .parameter "listener"

    .prologue
    .line 446
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->frameCount()I

    move-result v5

    .line 447
    .local v5, frameCount:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->width()I

    move-result v7

    .line 448
    .local v7, frameWidth:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;->height()I

    move-result v6

    .line 450
    .local v6, frameHeight:I
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 451
    .local v11, options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_4

    move/from16 v9, p3

    .line 453
    .local v9, initTargetSize:I
    :goto_0
    int-to-float v14, v9

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v15, v15

    div-float v12, v14, v15

    .line 455
    .local v12, scale:F
    invoke-static {v12}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v14

    iput v14, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 458
    new-array v10, v5, [Landroid/graphics/Bitmap;

    .line 459
    .local v10, mpoFrames:[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 461
    .local v3, decodeFailed:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v5, :cond_0

    .line 462
    if-eqz p0, :cond_5

    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 463
    const-string v14, "DecodeHelper"

    const-string v15, "tryDecodeMpoFrames:job cancelled"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :cond_0
    :goto_2
    if-eqz p0, :cond_1

    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v14

    if-nez v14, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    .line 498
    :cond_2
    const-string v14, "DecodeHelper"

    const-string v15, "tryDecodeMpoFrames:job cancelled or decode failed, recycle decoded"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {v10}, Lcom/android/gallery3d/mediatek/DecodeHelper;->recycleBitmapArray([Landroid/graphics/Bitmap;)V

    .line 501
    const/4 v10, 0x0

    .line 503
    .end local v10           #mpoFrames:[Landroid/graphics/Bitmap;
    :cond_3
    return-object v10

    .end local v3           #decodeFailed:Z
    .end local v8           #i:I
    .end local v9           #initTargetSize:I
    .end local v12           #scale:F
    :cond_4
    move/from16 v9, p4

    .line 451
    goto :goto_0

    .line 466
    .restart local v3       #decodeFailed:Z
    .restart local v8       #i:I
    .restart local v9       #initTargetSize:I
    .restart local v10       #mpoFrames:[Landroid/graphics/Bitmap;
    .restart local v12       #scale:F
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8, v11}, Lcom/android/gallery3d/mediatek/DecodeHelper;->decodeFrame(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/mediatek/MpoDecoderWrapper;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 467
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_6

    .line 468
    const-string v14, "DecodeHelper"

    const-string v15, "tryDecodeMpoFrames:got null frame"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v3, 0x1

    .line 470
    goto :goto_2

    .line 472
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v14, v15, v0, v1}, Lcom/android/gallery3d/mediatek/DecodeHelper;->largerDisplayScale(IIII)F

    move-result v13

    .line 475
    .local v13, scaleDown:F
    const/high16 v14, 0x3f80

    cmpg-float v14, v13, v14

    if-gez v14, :cond_9

    .line 476
    const/4 v14, 0x1

    invoke-static {v2, v13, v14}, Lcom/android/gallery3d/mediatek/DecodeHelper;->resizeBitmap(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v14, v10, v8

    .line 480
    :goto_3
    aget-object v14, v10, v8

    if-eqz v14, :cond_7

    .line 481
    const-string v14, "DecodeHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tryDecodeMpoFrames:got mpoFrames["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v10, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v10, v8

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_7
    if-eqz p5, :cond_8

    .line 488
    const-string v14, "CGW"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "update mav progress: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setProgress(I)V

    .line 461
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 478
    :cond_9
    aput-object v2, v10, v8
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 492
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #scaleDown:F
    :catch_0
    move-exception v4

    .line 493
    .local v4, e:Ljava/lang/OutOfMemoryError;
    const-string v14, "DecodeHelper"

    const-string v15, "tryDecodeMpoFrames:out of memory, recycle decoded"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {v10}, Lcom/android/gallery3d/mediatek/DecodeHelper;->recycleBitmapArray([Landroid/graphics/Bitmap;)V

    .line 495
    throw v4
.end method
