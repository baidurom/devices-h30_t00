.class public Lcom/android/hwcamera/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final EXIF_TAG_DEVICE_SETTING_DESCRIPTION:I = 0xa40b

.field private static final EXIF_TAG_IMAGE_DESCRIPTION:I = 0x10e

.field private static final EXIF_TAG_IMAGE_HEIGHT:I = 0x101

.field private static final EXIF_TAG_IMAGE_WIDTH:I = 0x100

.field private static final NUM_FORMATS:I = 0xc

.field private static final TAG:Ljava/lang/String; = "CameraExif"

.field private static final TAG_EXIF_OFFSET:I = 0x8769

.field private static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field private static final TAG_INTEROP_OFFSET:I = 0xa005

.field private static final mBytesPerFormat:[I

.field private static mHeight:I

.field private static mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/hwcamera/Exif;->mBytesPerFormat:[I

    .line 41
    sput v1, Lcom/android/hwcamera/Exif;->mWidth:I

    .line 42
    sput v1, Lcom/android/hwcamera/Exif;->mHeight:I

    return-void

    .line 34
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateTime([B)[C
    .locals 15
    .parameter "jpeg"

    .prologue
    .line 315
    if-nez p0, :cond_1

    .line 316
    const/4 v3, 0x0

    .line 397
    :cond_0
    :goto_0
    return-object v3

    .line 319
    :cond_1
    const/4 v9, 0x0

    .line 320
    .local v9, offset:I
    const/4 v5, 0x0

    .line 321
    .local v5, length:I
    const/4 v0, 0x0

    .line 322
    .local v0, baseOffset:I
    const/16 v12, 0x13

    new-array v3, v12, [C

    .line 324
    .local v3, dataTime:[C
    :cond_2
    :goto_1
    add-int/lit8 v12, v9, 0x3

    array-length v13, p0

    if-ge v12, v13, :cond_4

    add-int/lit8 v10, v9, 0x1

    .end local v9           #offset:I
    .local v10, offset:I
    aget-byte v12, p0, v9

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xff

    if-ne v12, v13, :cond_10

    .line 325
    aget-byte v12, p0, v10

    and-int/lit16 v7, v12, 0xff

    .line 327
    .local v7, marker:I
    const/16 v12, 0xff

    if-ne v7, v12, :cond_3

    move v9, v10

    .line 328
    .end local v10           #offset:I
    .restart local v9       #offset:I
    goto :goto_1

    .line 330
    .end local v9           #offset:I
    .restart local v10       #offset:I
    :cond_3
    add-int/lit8 v9, v10, 0x1

    .line 332
    .end local v10           #offset:I
    .restart local v9       #offset:I
    const/16 v12, 0xd8

    if-eq v7, v12, :cond_2

    const/4 v12, 0x1

    if-eq v7, v12, :cond_2

    .line 336
    const/16 v12, 0xd9

    if-eq v7, v12, :cond_4

    const/16 v12, 0xda

    if-ne v7, v12, :cond_5

    .line 358
    .end local v7           #marker:I
    :cond_4
    :goto_2
    const/16 v12, 0x8

    if-le v5, v12, :cond_f

    .line 360
    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static {p0, v9, v12, v13}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v11

    .line 361
    .local v11, tag:I
    move v0, v9

    .line 362
    const v12, 0x49492a00

    if-eq v11, v12, :cond_9

    const v12, 0x4d4d002a

    if-eq v11, v12, :cond_9

    .line 363
    const-string v12, "CameraExif"

    const-string v13, "Invalid byte order"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v3, 0x0

    goto :goto_0

    .line 340
    .end local v11           #tag:I
    .restart local v7       #marker:I
    :cond_5
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {p0, v9, v12, v13}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v5

    .line 341
    const/4 v12, 0x2

    if-lt v5, v12, :cond_6

    add-int v12, v9, v5

    array-length v13, p0

    if-le v12, v13, :cond_7

    .line 342
    :cond_6
    const-string v12, "CameraExif"

    const-string v13, "Invalid length"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v3, 0x0

    goto :goto_0

    .line 346
    :cond_7
    const/16 v12, 0xe1

    if-ne v7, v12, :cond_8

    const/16 v12, 0x8

    if-lt v5, v12, :cond_8

    add-int/lit8 v12, v9, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-static {p0, v12, v13, v14}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v12

    const v13, 0x45786966

    if-ne v12, v13, :cond_8

    add-int/lit8 v12, v9, 0x6

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {p0, v12, v13, v14}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v12

    if-nez v12, :cond_8

    .line 349
    add-int/lit8 v9, v9, 0x8

    .line 350
    add-int/lit8 v5, v5, -0x8

    .line 351
    goto :goto_2

    .line 354
    :cond_8
    add-int/2addr v9, v5

    .line 355
    const/4 v5, 0x0

    .line 356
    goto/16 :goto_1

    .line 366
    .end local v7           #marker:I
    .restart local v11       #tag:I
    :cond_9
    const v12, 0x49492a00

    if-ne v11, v12, :cond_b

    const/4 v6, 0x1

    .line 369
    .local v6, littleEndian:Z
    :goto_3
    add-int/lit8 v12, v9, 0x4

    const/4 v13, 0x4

    invoke-static {p0, v12, v13, v6}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v12

    add-int/lit8 v1, v12, 0x2

    .line 370
    .local v1, count:I
    const/16 v12, 0xa

    if-lt v1, v12, :cond_a

    if-le v1, v5, :cond_c

    .line 371
    :cond_a
    const-string v12, "CameraExif"

    const-string v13, "Invalid offset"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 366
    .end local v1           #count:I
    .end local v6           #littleEndian:Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_3

    .line 374
    .restart local v1       #count:I
    .restart local v6       #littleEndian:Z
    :cond_c
    add-int/2addr v9, v1

    .line 375
    sub-int/2addr v5, v1

    .line 377
    add-int/lit8 v12, v9, -0x2

    const/4 v13, 0x2

    invoke-static {p0, v12, v13, v6}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v1

    move v2, v1

    .line 378
    .end local v1           #count:I
    .local v2, count:I
    :goto_4
    add-int/lit8 v1, v2, -0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    if-lez v2, :cond_f

    const/16 v12, 0xc

    if-lt v5, v12, :cond_f

    .line 380
    const/4 v12, 0x2

    invoke-static {p0, v9, v12, v6}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v11

    .line 381
    const/16 v12, 0x132

    if-ne v11, v12, :cond_d

    .line 382
    add-int/lit8 v12, v9, 0x8

    const/4 v13, 0x4

    invoke-static {p0, v12, v13, v6}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v8

    .line 383
    .local v8, modeTag:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    const/16 v12, 0x13

    if-ge v4, v12, :cond_0

    .line 384
    add-int v12, v8, v0

    add-int/2addr v12, v4

    aget-byte v12, p0, v12

    int-to-char v12, v12

    aput-char v12, v3, v4

    .line 383
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 389
    .end local v4           #i:I
    .end local v8           #modeTag:I
    :cond_d
    const v12, 0xffc0

    if-ne v11, v12, :cond_e

    .line 390
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 392
    :cond_e
    add-int/lit8 v9, v9, 0xc

    .line 393
    add-int/lit8 v5, v5, -0xc

    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_4

    .line 397
    .end local v2           #count:I
    .end local v6           #littleEndian:Z
    .end local v11           #tag:I
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v9           #offset:I
    .restart local v10       #offset:I
    :cond_10
    move v9, v10

    .end local v10           #offset:I
    .restart local v9       #offset:I
    goto/16 :goto_2
.end method

.method public static getImageHeight()I
    .locals 1

    .prologue
    .line 432
    sget v0, Lcom/android/hwcamera/Exif;->mHeight:I

    return v0
.end method

.method public static getImageWidth()I
    .locals 1

    .prologue
    .line 436
    sget v0, Lcom/android/hwcamera/Exif;->mWidth:I

    return v0
.end method

.method public static getJpegExifForPost([B[I)I
    .locals 14
    .parameter "jpeg"
    .parameter "postdata"

    .prologue
    const/4 v3, 0x1

    const/16 v13, 0x8

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v8, 0x0

    .line 238
    if-nez p0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v8

    .line 242
    :cond_1
    const/4 v5, 0x0

    .line 243
    .local v5, offset:I
    const/4 v2, 0x0

    .line 244
    .local v2, length:I
    const/4 v0, 0x0

    .line 247
    .local v0, baseOffset:I
    :cond_2
    :goto_1
    add-int/lit8 v9, v5, 0x3

    array-length v10, p0

    if-ge v9, v10, :cond_4

    add-int/lit8 v6, v5, 0x1

    .end local v5           #offset:I
    .local v6, offset:I
    aget-byte v9, p0, v5

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xff

    if-ne v9, v10, :cond_d

    .line 248
    aget-byte v9, p0, v6

    and-int/lit16 v4, v9, 0xff

    .line 251
    .local v4, marker:I
    const/16 v9, 0xff

    if-ne v4, v9, :cond_3

    move v5, v6

    .line 252
    .end local v6           #offset:I
    .restart local v5       #offset:I
    goto :goto_1

    .line 254
    .end local v5           #offset:I
    .restart local v6       #offset:I
    :cond_3
    add-int/lit8 v5, v6, 0x1

    .line 257
    .end local v6           #offset:I
    .restart local v5       #offset:I
    const/16 v9, 0xd8

    if-eq v4, v9, :cond_2

    if-eq v4, v3, :cond_2

    .line 261
    const/16 v9, 0xd9

    if-eq v4, v9, :cond_4

    const/16 v9, 0xda

    if-ne v4, v9, :cond_5

    .line 286
    .end local v4           #marker:I
    :cond_4
    :goto_2
    if-le v2, v13, :cond_0

    .line 288
    invoke-static {p0, v5, v12, v8}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v7

    .line 289
    .local v7, tag:I
    const v9, 0x49492a00

    if-eq v7, v9, :cond_9

    const v9, 0x4d4d002a

    if-eq v7, v9, :cond_9

    .line 290
    const-string v9, "CameraExif"

    const-string v10, "Invalid byte order"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    .end local v7           #tag:I
    .restart local v4       #marker:I
    :cond_5
    invoke-static {p0, v5, v11, v8}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v2

    .line 267
    if-lt v2, v11, :cond_6

    add-int v9, v5, v2

    array-length v10, p0

    if-le v9, v10, :cond_7

    .line 268
    :cond_6
    const-string v9, "CameraExif"

    const-string v10, "Invalid length"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_7
    const/16 v9, 0xe1

    if-ne v4, v9, :cond_8

    if-lt v2, v13, :cond_8

    add-int/lit8 v9, v5, 0x2

    invoke-static {p0, v9, v12, v8}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v9

    const v10, 0x45786966

    if-ne v9, v10, :cond_8

    add-int/lit8 v9, v5, 0x6

    invoke-static {p0, v9, v11, v8}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v9

    if-nez v9, :cond_8

    .line 276
    add-int/lit8 v5, v5, 0x8

    .line 277
    add-int/lit8 v2, v2, -0x8

    .line 278
    goto :goto_2

    .line 282
    :cond_8
    add-int/2addr v5, v2

    .line 283
    const/4 v2, 0x0

    .line 284
    goto :goto_1

    .line 293
    .end local v4           #marker:I
    .restart local v7       #tag:I
    :cond_9
    const v9, 0x49492a00

    if-ne v7, v9, :cond_b

    .line 294
    .local v3, littleEndian:Z
    :goto_3
    move v0, v5

    .line 296
    add-int/lit8 v9, v5, 0x4

    invoke-static {p0, v9, v12, v3}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v1

    .line 297
    .local v1, count:I
    if-lt v1, v13, :cond_a

    if-le v1, v2, :cond_c

    .line 298
    :cond_a
    const-string v9, "CameraExif"

    const-string v10, "Invalid offset"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #count:I
    .end local v3           #littleEndian:Z
    :cond_b
    move v3, v8

    .line 293
    goto :goto_3

    .line 301
    .restart local v1       #count:I
    .restart local v3       #littleEndian:Z
    :cond_c
    add-int/2addr v5, v1

    .line 304
    invoke-static {p0, v5, v0, v3, p1}, Lcom/android/hwcamera/Exif;->processExifIFD([BIIZ[I)Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_0

    .end local v1           #count:I
    .end local v3           #littleEndian:Z
    .end local v5           #offset:I
    .end local v7           #tag:I
    .restart local v6       #offset:I
    :cond_d
    move v5, v6

    .end local v6           #offset:I
    .restart local v5       #offset:I
    goto :goto_2
.end method

.method public static getOrientation([B)I
    .locals 15
    .parameter "jpeg"

    .prologue
    const/16 v14, 0x8

    const/4 v3, 0x1

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v9, 0x0

    .line 47
    if-nez p0, :cond_0

    .line 140
    :goto_0
    :pswitch_0
    return v9

    .line 51
    :cond_0
    const/4 v5, 0x0

    .line 52
    .local v5, offset:I
    const/4 v2, 0x0

    .line 55
    .local v2, length:I
    :cond_1
    :goto_1
    add-int/lit8 v10, v5, 0x3

    array-length v11, p0

    if-ge v10, v11, :cond_3

    add-int/lit8 v6, v5, 0x1

    .end local v5           #offset:I
    .local v6, offset:I
    aget-byte v10, p0, v5

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0xff

    if-ne v10, v11, :cond_e

    .line 56
    aget-byte v10, p0, v6

    and-int/lit16 v4, v10, 0xff

    .line 59
    .local v4, marker:I
    const/16 v10, 0xff

    if-ne v4, v10, :cond_2

    move v5, v6

    .line 60
    .end local v6           #offset:I
    .restart local v5       #offset:I
    goto :goto_1

    .line 62
    .end local v5           #offset:I
    .restart local v6       #offset:I
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .line 65
    .end local v6           #offset:I
    .restart local v5       #offset:I
    const/16 v10, 0xd8

    if-eq v4, v10, :cond_1

    if-eq v4, v3, :cond_1

    .line 69
    const/16 v10, 0xd9

    if-eq v4, v10, :cond_3

    const/16 v10, 0xda

    if-ne v4, v10, :cond_4

    .line 95
    .end local v4           #marker:I
    :cond_3
    :goto_2
    if-le v2, v14, :cond_d

    .line 97
    invoke-static {p0, v5, v13, v9}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v8

    .line 98
    .local v8, tag:I
    const v10, 0x49492a00

    if-eq v8, v10, :cond_8

    const v10, 0x4d4d002a

    if-eq v8, v10, :cond_8

    .line 99
    const-string v10, "CameraExif"

    const-string v11, "Invalid byte order"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    .end local v8           #tag:I
    .restart local v4       #marker:I
    :cond_4
    invoke-static {p0, v5, v12, v9}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v2

    .line 75
    if-lt v2, v12, :cond_5

    add-int v10, v5, v2

    array-length v11, p0

    if-le v10, v11, :cond_6

    .line 76
    :cond_5
    const-string v10, "CameraExif"

    const-string v11, "Invalid length"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_6
    const/16 v10, 0xe1

    if-ne v4, v10, :cond_7

    if-lt v2, v14, :cond_7

    add-int/lit8 v10, v5, 0x2

    invoke-static {p0, v10, v13, v9}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v10

    const v11, 0x45786966

    if-ne v10, v11, :cond_7

    add-int/lit8 v10, v5, 0x6

    invoke-static {p0, v10, v12, v9}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v10

    if-nez v10, :cond_7

    .line 84
    add-int/lit8 v5, v5, 0x8

    .line 85
    add-int/lit8 v2, v2, -0x8

    .line 86
    goto :goto_2

    .line 90
    :cond_7
    add-int/2addr v5, v2

    .line 91
    const/4 v2, 0x0

    .line 92
    goto :goto_1

    .line 102
    .end local v4           #marker:I
    .restart local v8       #tag:I
    :cond_8
    const v10, 0x49492a00

    if-ne v8, v10, :cond_a

    .line 105
    .local v3, littleEndian:Z
    :goto_3
    add-int/lit8 v10, v5, 0x4

    invoke-static {p0, v10, v13, v3}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v10

    add-int/lit8 v0, v10, 0x2

    .line 106
    .local v0, count:I
    const/16 v10, 0xa

    if-lt v0, v10, :cond_9

    if-le v0, v2, :cond_b

    .line 107
    :cond_9
    const-string v10, "CameraExif"

    const-string v11, "Invalid offset"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0           #count:I
    .end local v3           #littleEndian:Z
    :cond_a
    move v3, v9

    .line 102
    goto :goto_3

    .line 110
    .restart local v0       #count:I
    .restart local v3       #littleEndian:Z
    :cond_b
    add-int/2addr v5, v0

    .line 111
    sub-int/2addr v2, v0

    .line 114
    add-int/lit8 v10, v5, -0x2

    invoke-static {p0, v10, v12, v3}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v0

    move v1, v0

    .line 115
    .end local v0           #count:I
    .local v1, count:I
    :goto_4
    add-int/lit8 v0, v1, -0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    if-lez v1, :cond_d

    const/16 v10, 0xc

    if-lt v2, v10, :cond_d

    .line 117
    invoke-static {p0, v5, v12, v3}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v8

    .line 118
    const/16 v10, 0x112

    if-ne v8, v10, :cond_c

    .line 120
    add-int/lit8 v10, v5, 0x8

    invoke-static {p0, v10, v12, v3}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v7

    .line 121
    .local v7, orientation:I
    packed-switch v7, :pswitch_data_0

    .line 131
    :pswitch_1
    const-string v10, "CameraExif"

    const-string v11, "Unsupported orientation"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 125
    :pswitch_2
    const/16 v9, 0xb4

    goto/16 :goto_0

    .line 127
    :pswitch_3
    const/16 v9, 0x5a

    goto/16 :goto_0

    .line 129
    :pswitch_4
    const/16 v9, 0x10e

    goto/16 :goto_0

    .line 134
    .end local v7           #orientation:I
    :cond_c
    add-int/lit8 v5, v5, 0xc

    .line 135
    add-int/lit8 v2, v2, -0xc

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_4

    .line 139
    .end local v1           #count:I
    .end local v3           #littleEndian:Z
    .end local v8           #tag:I
    :cond_d
    const-string v10, "CameraExif"

    const-string v11, "Orientation not found"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5           #offset:I
    .restart local v6       #offset:I
    :cond_e
    move v5, v6

    .end local v6           #offset:I
    .restart local v5       #offset:I
    goto/16 :goto_2

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static pack([BIIZ)I
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "littleEndian"

    .prologue
    .line 145
    const/4 v1, 0x1

    .line 146
    .local v1, step:I
    if-eqz p3, :cond_0

    .line 147
    add-int/lit8 v3, p2, -0x1

    add-int/2addr p1, v3

    .line 148
    const/4 v1, -0x1

    .line 151
    :cond_0
    const/4 v2, 0x0

    .local v2, value:I
    move v0, p2

    .line 152
    .end local p2
    .local v0, length:I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0           #length:I
    .restart local p2
    if-lez v0, :cond_1

    .line 153
    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 154
    add-int/2addr p1, v1

    move v0, p2

    .end local p2
    .restart local v0       #length:I
    goto :goto_0

    .line 156
    .end local v0           #length:I
    .restart local p2
    :cond_1
    return v2
.end method

.method public static paraseImageWidthAndHeight(Ljava/io/InputStream;)V
    .locals 4
    .parameter "stream"

    .prologue
    .line 421
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 422
    .local v1, exif:Landroid/media/ExifInterface;
    const-string v2, "ImageWidth"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/hwcamera/Exif;->mWidth:I

    .line 423
    const-string v2, "ImageLength"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/hwcamera/Exif;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    const/4 v1, 0x0

    .line 429
    :goto_0
    return-void

    .line 424
    .end local v1           #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    const/4 v1, 0x0

    .line 428
    .restart local v1       #exif:Landroid/media/ExifInterface;
    goto :goto_0

    .line 427
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #exif:Landroid/media/ExifInterface;
    :catchall_0
    move-exception v2

    const/4 v1, 0x0

    .restart local v1       #exif:Landroid/media/ExifInterface;
    throw v2
.end method

.method private static processExifIFD([BIIZ[I)Z
    .locals 11
    .parameter "jpeg"
    .parameter "offset"
    .parameter "baseOffset"
    .parameter "littleEndian"
    .parameter "postdata"

    .prologue
    .line 163
    const/4 v9, 0x2

    invoke-static {p0, p1, v9, p3}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v6

    .line 164
    .local v6, numOfTag:I
    add-int/lit8 p1, p1, 0x2

    .line 165
    mul-int/lit8 v9, v6, 0xc

    add-int/2addr v9, p1

    array-length v10, p0

    if-le v9, v10, :cond_0

    .line 166
    const-string v9, "CameraExif"

    const-string v10, "Illegally sized directory"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v9, 0x0

    .line 235
    :goto_0
    return v9

    .line 169
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_6

    .line 174
    const/4 v9, 0x2

    invoke-static {p0, p1, v9, p3}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v7

    .line 175
    .local v7, tag:I
    add-int/lit8 v9, p1, 0x2

    const/4 v10, 0x2

    invoke-static {p0, v9, v10, p3}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v2

    .line 176
    .local v2, format:I
    add-int/lit8 v9, p1, 0x4

    const/4 v10, 0x4

    invoke-static {p0, v9, v10, p3}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v1

    .line 177
    .local v1, components:I
    add-int/lit8 v9, v2, -0x1

    const/16 v10, 0xc

    if-lt v9, v10, :cond_1

    .line 178
    const-string v9, "CameraExif"

    const-string v10, "Illegal format code in EXIF dir"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v9, 0x0

    goto :goto_0

    .line 181
    :cond_1
    sget-object v9, Lcom/android/hwcamera/Exif;->mBytesPerFormat:[I

    aget v9, v9, v2

    mul-int v0, v1, v9

    .line 182
    .local v0, bytesCount:I
    add-int/lit8 p1, p1, 0x8

    .line 183
    sparse-switch v7, :sswitch_data_0

    .line 223
    :goto_2
    const v9, 0x8769

    if-eq v7, v9, :cond_2

    const v9, 0xa005

    if-ne v7, v9, :cond_5

    .line 224
    :cond_2
    const/4 v9, 0x4

    invoke-static {p0, p1, v9, p3}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v9

    add-int v8, p2, v9

    .line 225
    .local v8, tagOffset:I
    if-lt v8, p2, :cond_3

    array-length v9, p0

    if-le v8, v9, :cond_4

    .line 226
    :cond_3
    const-string v9, "CameraExif"

    const-string v10, "Illegal subdirectory link"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v9, 0x0

    goto :goto_0

    .line 185
    .end local v8           #tagOffset:I
    :sswitch_0
    const/4 v9, 0x0

    invoke-static {p0, p1, v0, p3}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v10

    aput v10, p4, v9

    goto :goto_2

    .line 188
    :sswitch_1
    const/4 v9, 0x1

    invoke-static {p0, p1, v0, p3}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v10

    aput v10, p4, v9

    goto :goto_2

    .line 191
    :sswitch_2
    const/4 v9, 0x3

    invoke-static {p0, p1, v9, p3}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v4

    .line 192
    .local v4, imageDescription:I
    sparse-switch v4, :sswitch_data_1

    .line 202
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, p4, v9

    .line 203
    const-string v9, "CameraExif"

    const-string v10, "normal jpeg picture with image description tag"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 194
    :sswitch_3
    const/4 v9, 0x2

    aget v10, p4, v9

    or-int/lit8 v10, v10, 0x1

    aput v10, p4, v9

    .line 195
    const-string v9, "CameraExif"

    const-string v10, "post jpeg picture with image description tag"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 198
    :sswitch_4
    const/4 v9, 0x2

    aget v10, p4, v9

    or-int/lit8 v10, v10, 0x2

    aput v10, p4, v9

    .line 199
    const-string v9, "CameraExif"

    const-string v10, "hdr jpeg picture with image description tag"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 208
    .end local v4           #imageDescription:I
    :sswitch_5
    const/4 v9, 0x3

    invoke-static {p0, p1, v9, p3}, Lcom/android/hwcamera/Exif;->pack([BIIZ)I

    move-result v5

    .line 209
    .local v5, imageDevice:I
    packed-switch v5, :pswitch_data_0

    .line 215
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, p4, v9

    .line 216
    const-string v9, "CameraExif"

    const-string v10, "normal jpeg with device setting description tag"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 211
    :pswitch_0
    const/4 v9, 0x2

    aget v10, p4, v9

    or-int/lit8 v10, v10, 0x1

    aput v10, p4, v9

    .line 212
    const-string v9, "CameraExif"

    const-string v10, "post jpeg with device setting description tag"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 229
    .end local v5           #imageDevice:I
    .restart local v8       #tagOffset:I
    :cond_4
    add-int/lit8 p1, p1, 0x4

    .line 230
    invoke-static {p0, v8, p2, p3, p4}, Lcom/android/hwcamera/Exif;->processExifIFD([BIIZ[I)Z

    .line 169
    .end local v8           #tagOffset:I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 233
    :cond_5
    add-int/lit8 p1, p1, 0x4

    goto :goto_3

    .line 235
    .end local v0           #bytesCount:I
    .end local v1           #components:I
    .end local v2           #format:I
    .end local v7           #tag:I
    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x101 -> :sswitch_1
        0x10e -> :sswitch_2
        0xa40b -> :sswitch_5
    .end sparse-switch

    .line 192
    :sswitch_data_1
    .sparse-switch
        0x686472 -> :sswitch_4
        0x697070 -> :sswitch_3
    .end sparse-switch

    .line 209
    :pswitch_data_0
    .packed-switch 0x697070
        :pswitch_0
    .end packed-switch
.end method

.method public static setHdrTag(Ljava/lang/String;)V
    .locals 4
    .parameter "filename"

    .prologue
    .line 404
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 405
    .local v1, exifInstance:Landroid/media/ExifInterface;
    const-string v2, "ImageDescription"

    const-string v3, "hdr"

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    const/4 v1, 0x0

    .line 413
    :goto_0
    return-void

    .line 407
    .end local v1           #exifInstance:Landroid/media/ExifInterface;
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    const/4 v1, 0x0

    .line 412
    .restart local v1       #exifInstance:Landroid/media/ExifInterface;
    goto :goto_0

    .line 411
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #exifInstance:Landroid/media/ExifInterface;
    :catchall_0
    move-exception v2

    const/4 v1, 0x0

    .restart local v1       #exifInstance:Landroid/media/ExifInterface;
    throw v2
.end method
