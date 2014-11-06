.class public Lcom/android/gallery3d/common/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final DEFAULT_JPEG_QUALITY:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "BitmapUtils"

.field public static final UNCONSTRAINED:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;)[B
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 240
    const/16 v0, 0x5a

    invoke-static {p0, v0}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;I)[B
    .locals 2
    .parameter "bitmap"
    .parameter "quality"

    .prologue
    .line 244
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 245
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 246
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static computeInitialSampleSize(IIII)I
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 72
    if-ne p3, v4, :cond_1

    if-ne p2, v4, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    if-ne p3, v4, :cond_2

    .line 78
    .local v0, lowerBound:I
    :goto_1
    if-eq p2, v4, :cond_0

    .line 81
    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 82
    .local v1, sampleSize:I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 75
    .end local v0           #lowerBound:I
    .end local v1           #sampleSize:I
    :cond_2
    mul-int v2, p0, p1

    int-to-float v2, v2

    int-to-float v3, p3

    div-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v0, v2

    goto :goto_1
.end method

.method public static computeSampleSize(F)I
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v2, 0x1

    .line 110
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 111
    const/high16 v1, 0x3f80

    div-float/2addr v1, p0

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 112
    .local v0, initialSize:I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v1

    :goto_1
    return v1

    .line 110
    .end local v0           #initialSize:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 112
    .restart local v0       #initialSize:I
    :cond_1
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_1
.end method

.method public static computeSampleSize(IIII)I
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 62
    invoke-static {p0, p1, p2, p3}, Lcom/android/gallery3d/common/BitmapUtils;->computeInitialSampleSize(IIII)I

    move-result v0

    .line 65
    .local v0, initialSize:I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static computeSampleSizeLarger(F)I
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x1

    .line 100
    const/high16 v2, 0x3f80

    div-float/2addr v2, p0

    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    float-to-int v0, v2

    .line 101
    .local v0, initialSize:I
    if-gt v0, v1, :cond_0

    .line 103
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static computeSampleSizeLarger(III)I
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "minSideLength"

    .prologue
    const/4 v1, 0x1

    .line 90
    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 91
    .local v0, initialSize:I
    if-gt v0, v1, :cond_0

    .line 93
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "filePath"

    .prologue
    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 197
    .local v5, instance:Ljava/lang/Object;
    :try_start_0
    const-string v7, "android.media.MediaMetadataRetriever"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 200
    const-string v7, "setDataSource"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 201
    .local v6, method:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-gt v7, v8, :cond_1

    .line 205
    const-string v7, "captureFrame"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_c

    .line 230
    if-eqz v5, :cond_0

    .line 231
    :try_start_1
    const-string v8, "release"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11

    .line 236
    .end local v5           #instance:Ljava/lang/Object;
    .end local v6           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v7

    .line 207
    .restart local v5       #instance:Ljava/lang/Object;
    .restart local v6       #method:Ljava/lang/reflect/Method;
    :cond_1
    :try_start_2
    const-string v7, "getEmbeddedPicture"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v3, v0

    .line 208
    .local v3, data:[B
    if-eqz v3, :cond_3

    .line 209
    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_c

    move-result-object v1

    .line 210
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 230
    if-eqz v5, :cond_2

    .line 231
    :try_start_3
    const-string v7, "release"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10

    :cond_2
    :goto_1
    move-object v7, v1

    .line 234
    goto :goto_0

    .line 212
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    :try_start_4
    const-string v7, "getFrameAtTime"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_c

    .line 230
    if-eqz v5, :cond_0

    .line 231
    :try_start_5
    const-string v8, "release"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v8

    goto :goto_0

    .line 214
    .end local v3           #data:[B
    .end local v5           #instance:Ljava/lang/Object;
    .end local v6           #method:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v7

    .line 230
    if-eqz v5, :cond_4

    .line 231
    :try_start_6
    const-string v7, "release"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f

    .line 236
    :cond_4
    :goto_2
    const/4 v7, 0x0

    goto :goto_0

    .line 216
    :catch_2
    move-exception v7

    .line 230
    if-eqz v5, :cond_4

    .line 231
    :try_start_7
    const-string v7, "release"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 233
    :catch_3
    move-exception v7

    goto :goto_2

    .line 218
    :catch_4
    move-exception v4

    .line 219
    .local v4, e:Ljava/lang/InstantiationException;
    :try_start_8
    const-string v7, "BitmapUtils"

    const-string v8, "createVideoThumbnail"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 230
    if-eqz v5, :cond_4

    .line 231
    :try_start_9
    const-string v7, "release"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_2

    .line 233
    :catch_5
    move-exception v7

    goto :goto_2

    .line 220
    .end local v4           #e:Ljava/lang/InstantiationException;
    :catch_6
    move-exception v4

    .line 221
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_a
    const-string v7, "BitmapUtils"

    const-string v8, "createVideoThumbnail"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 230
    if-eqz v5, :cond_4

    .line 231
    :try_start_b
    const-string v7, "release"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_2

    .line 233
    :catch_7
    move-exception v7

    goto :goto_2

    .line 222
    .end local v4           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_8
    move-exception v4

    .line 223
    .local v4, e:Ljava/lang/ClassNotFoundException;
    :try_start_c
    const-string v7, "BitmapUtils"

    const-string v8, "createVideoThumbnail"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 230
    if-eqz v5, :cond_4

    .line 231
    :try_start_d
    const-string v7, "release"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_2

    .line 233
    :catch_9
    move-exception v7

    goto :goto_2

    .line 224
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    :catch_a
    move-exception v4

    .line 225
    .local v4, e:Ljava/lang/NoSuchMethodException;
    :try_start_e
    const-string v7, "BitmapUtils"

    const-string v8, "createVideoThumbnail"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 230
    if-eqz v5, :cond_4

    .line 231
    :try_start_f
    const-string v7, "release"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    goto/16 :goto_2

    .line 233
    :catch_b
    move-exception v7

    goto/16 :goto_2

    .line 226
    .end local v4           #e:Ljava/lang/NoSuchMethodException;
    :catch_c
    move-exception v4

    .line 227
    .local v4, e:Ljava/lang/IllegalAccessException;
    :try_start_10
    const-string v7, "BitmapUtils"

    const-string v8, "createVideoThumbnail"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 230
    if-eqz v5, :cond_4

    .line 231
    :try_start_11
    const-string v7, "release"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    goto/16 :goto_2

    .line 233
    :catch_d
    move-exception v7

    goto/16 :goto_2

    .line 229
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v7

    .line 230
    if-eqz v5, :cond_5

    .line 231
    :try_start_12
    const-string v8, "release"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    .line 234
    :cond_5
    :goto_3
    throw v7

    .line 233
    :catch_e
    move-exception v8

    goto :goto_3

    :catch_f
    move-exception v7

    goto/16 :goto_2

    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #data:[B
    .restart local v5       #instance:Ljava/lang/Object;
    .restart local v6       #method:Ljava/lang/reflect/Method;
    :catch_10
    move-exception v7

    goto/16 :goto_1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #data:[B
    :catch_11
    move-exception v8

    goto/16 :goto_0
.end method

.method private static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 134
    .local v0, config:Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 135
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 137
    :cond_0
    return-object v0
.end method

.method public static isFilterShowSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 269
    if-nez p0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 271
    const-string v1, "image/gif"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/vnd.wap.wbmp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/wbmp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/mpo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRotationSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 257
    if-nez p0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 260
    const-string v1, "image/jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/x-ms-bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/wbmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/vnd.wap.wbmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportedByRegionDecoder(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 250
    if-nez p0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 252
    const-string v1, "image/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "image/gif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static recycleSilently(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BitmapUtils"

    const-string v2, "unable recycle bitmap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"
    .parameter "size"
    .parameter "recycle"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 151
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 152
    .local v6, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 153
    .local v1, h:I
    if-ne v6, p1, :cond_0

    if-ne v1, p1, :cond_0

    .line 168
    .end local p0
    :goto_0
    return-object p0

    .line 157
    .restart local p0
    :cond_0
    int-to-float v8, p1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 159
    .local v4, scale:F
    invoke-static {p0}, Lcom/android/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {p1, p1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 160
    .local v5, target:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 161
    .local v7, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 162
    .local v2, height:I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    .local v0, canvas:Landroid/graphics/Canvas;
    sub-int v8, p1, v7

    int-to-float v8, v8

    div-float/2addr v8, v11

    sub-int v9, p1, v2

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 164
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 165
    new-instance v3, Landroid/graphics/Paint;

    const/4 v8, 0x6

    invoke-direct {v3, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 166
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v10, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 167
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v5

    .line 168
    goto :goto_0
.end method

.method public static resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "scale"
    .parameter "recycle"

    .prologue
    const/4 v6, 0x0

    .line 119
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 120
    .local v4, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 121
    .local v1, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 129
    .end local p0
    :goto_0
    return-object p0

    .line 123
    .restart local p0
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 124
    .local v3, target:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 126
    new-instance v2, Landroid/graphics/Paint;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 127
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v3

    .line 129
    goto :goto_0
.end method

.method public static resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmap"
    .parameter "maxLength"
    .parameter "recycle"

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 143
    .local v2, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 144
    .local v1, srcHeight:I
    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 146
    .local v0, scale:F
    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 147
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-static {p0, v0, p2}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "source"
    .parameter "rotation"
    .parameter "recycle"

    .prologue
    const/4 v1, 0x0

    .line 181
    if-nez p1, :cond_0

    .line 188
    .end local p0
    :goto_0
    return-object p0

    .line 182
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 183
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 184
    .local v4, h:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 185
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 186
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 187
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v7

    .line 188
    goto :goto_0
.end method
