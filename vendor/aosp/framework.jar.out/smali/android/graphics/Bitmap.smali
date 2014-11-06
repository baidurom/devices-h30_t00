.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$2;,
        Landroid/graphics/Bitmap$BitmapFinalizer;,
        Landroid/graphics/Bitmap$CompressFormat;,
        Landroid/graphics/Bitmap$Config;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_NONE:I = 0x0

.field private static final WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static volatile sDefaultDensity:I

.field private static sIndexInWhiteList:Ljava/lang/Integer;

.field private static volatile sScaleMatrix:Landroid/graphics/Matrix;


# instance fields
.field public mBuffer:[B

.field mDensity:I

.field private final mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

.field private mHeight:I

.field private final mIsMutable:Z

.field private mLayoutBounds:[I

.field public final mNativeBitmap:I

.field private mNinePatchChunk:[B

.field private mRecycled:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 1333
    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[BZ[BI)V
    .locals 7
    .parameter "nativeBitmap"
    .parameter "buffer"
    .parameter "isMutable"
    .parameter "ninePatchChunk"
    .parameter "density"

    .prologue
    .line 112
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Bitmap;-><init>(I[BZ[B[II)V

    .line 113
    return-void
.end method

.method constructor <init>(I[BZ[B[II)V
    .locals 2
    .parameter "nativeBitmap"
    .parameter "buffer"
    .parameter "isMutable"
    .parameter "ninePatchChunk"
    .parameter "layoutBounds"
    .parameter "density"

    .prologue
    const/4 v0, -0x1

    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    .line 71
    iput v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    .line 75
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "internal error: native bitmap is 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iput-object p2, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 131
    iput p1, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    .line 132
    new-instance v0, Landroid/graphics/Bitmap$BitmapFinalizer;

    invoke-direct {v0, p1}, Landroid/graphics/Bitmap$BitmapFinalizer;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/Bitmap;->mFinalizer:Landroid/graphics/Bitmap$BitmapFinalizer;

    .line 134
    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    .line 135
    iput-object p4, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 136
    iput-object p5, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    .line 137
    if-ltz p6, :cond_1

    .line 138
    iput p6, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 140
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeDestructor(I)V

    return-void
.end method

.method private checkPixelAccess(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1224
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 1225
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1228
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 1229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1231
    :cond_1
    return-void
.end method

.method private checkPixelsAccess(IIIIII[I)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "offset"
    .parameter "stride"
    .parameter "pixels"

    .prologue
    .line 1247
    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 1248
    if-gez p3, :cond_0

    .line 1249
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1251
    :cond_0
    if-gez p4, :cond_1

    .line 1252
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1254
    :cond_1
    add-int v2, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1255
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "x + width must be <= bitmap.width()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1258
    :cond_2
    add-int v2, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 1259
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "y + height must be <= bitmap.height()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1262
    :cond_3
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p3, :cond_4

    .line 1263
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1265
    :cond_4
    add-int/lit8 v2, p4, -0x1

    mul-int/2addr v2, p6

    add-int v0, p5, v2

    .line 1266
    .local v0, lastScanline:I
    array-length v1, p7

    .line 1267
    .local v1, length:I
    if-ltz p5, :cond_5

    add-int v2, p5, p3

    if-gt v2, v1, :cond_5

    if-ltz v0, :cond_5

    add-int v2, v0, p3

    if-le v2, v1, :cond_6

    .line 1270
    :cond_5
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1272
    :cond_6
    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 255
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    return-void
.end method

.method private static checkWidthHeight(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 282
    if-gtz p0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    if-gtz p1, :cond_1

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    return-void
.end method

.method private static checkXYSign(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 267
    if-gez p0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    if-gez p1, :cond_1

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    return-void
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 672
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "config"
    .parameter "hasAlpha"

    .prologue
    .line 705
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    .line 517
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 534
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "m"
    .parameter "filter"

    .prologue
    .line 562
    invoke-static {}, Landroid/graphics/Bitmap;->matchWhiteList()I

    move-result v7

    .line 563
    .local v7, indexInWhiteList:I
    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    .line 564
    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 565
    add-int v14, p1, p3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-le v14, v15, :cond_0

    .line 566
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "x + width must be <= bitmap.width()"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 568
    :cond_0
    add-int v14, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-le v14, v15, :cond_1

    .line 569
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "y + height must be <= bitmap.height()"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 573
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v14

    if-nez v14, :cond_3

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    move/from16 v0, p3

    if-ne v0, v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move/from16 v0, p4

    if-ne v0, v14, :cond_3

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 659
    .end local p0
    :cond_2
    :goto_0
    return-object p0

    .line 578
    .restart local p0
    :cond_3
    move/from16 v10, p3

    .line 579
    .local v10, neww:I
    move/from16 v9, p4

    .line 580
    .local v9, newh:I
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 584
    .local v3, canvas:Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Rect;

    add-int v14, p1, p3

    add-int v15, p2, p4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v12, v0, v1, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 585
    .local v12, srcR:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v6, v14, v15, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 587
    .local v6, dstR:Landroid/graphics/RectF;
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 588
    .local v8, newConfig:Landroid/graphics/Bitmap$Config;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 590
    .local v4, config:Landroid/graphics/Bitmap$Config;
    if-eqz v4, :cond_4

    .line 591
    sget-object v14, Landroid/graphics/Bitmap$2;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 602
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 607
    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 608
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v14

    invoke-static {v10, v9, v8, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 609
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 611
    .local v11, paint:Landroid/graphics/Paint;
    const/4 v14, 0x1

    if-ne v7, v14, :cond_6

    .line 612
    new-instance v11, Landroid/graphics/Paint;

    .end local v11           #paint:Landroid/graphics/Paint;
    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 613
    .restart local v11       #paint:Landroid/graphics/Paint;
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 614
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setDither(Z)V

    .line 615
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 647
    .end local v8           #newConfig:Landroid/graphics/Bitmap$Config;
    :cond_6
    :goto_2
    if-nez v2, :cond_10

    .line 648
    const/16 p0, 0x0

    goto :goto_0

    .line 593
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #paint:Landroid/graphics/Paint;
    .restart local v8       #newConfig:Landroid/graphics/Bitmap$Config;
    :pswitch_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 594
    goto :goto_1

    .line 596
    :pswitch_1
    sget-object v8, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 597
    goto :goto_1

    .line 619
    :cond_7
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v14

    if-nez v14, :cond_a

    const/4 v13, 0x1

    .line 621
    .local v13, transformed:Z
    :goto_3
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 622
    .local v5, deviceR:Landroid/graphics/RectF;
    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 624
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 625
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 627
    if-eqz v13, :cond_8

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v8           #newConfig:Landroid/graphics/Bitmap$Config;
    :cond_8
    if-nez v13, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_9
    const/4 v14, 0x1

    :goto_4
    invoke-static {v10, v9, v8, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 630
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_c

    .line 631
    const-string v14, "Bitmap"

    const-string v15, "createBitmap error!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 619
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #deviceR:Landroid/graphics/RectF;
    .end local v13           #transformed:Z
    .restart local v8       #newConfig:Landroid/graphics/Bitmap$Config;
    :cond_a
    const/4 v13, 0x0

    goto :goto_3

    .line 627
    .end local v8           #newConfig:Landroid/graphics/Bitmap$Config;
    .restart local v5       #deviceR:Landroid/graphics/RectF;
    .restart local v13       #transformed:Z
    :cond_b
    const/4 v14, 0x0

    goto :goto_4

    .line 635
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    :cond_c
    iget v14, v5, Landroid/graphics/RectF;->left:F

    neg-float v14, v14

    iget v15, v5, Landroid/graphics/RectF;->top:F

    neg-float v15, v15

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 636
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 638
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 640
    .restart local v11       #paint:Landroid/graphics/Paint;
    const/4 v14, 0x1

    if-eq v7, v14, :cond_d

    if-eqz p6, :cond_f

    :cond_d
    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 641
    const/4 v14, 0x1

    if-eq v7, v14, :cond_e

    if-eqz v13, :cond_6

    .line 642
    :cond_e
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_2

    .line 640
    :cond_f
    const/4 v14, 0x0

    goto :goto_5

    .line 653
    .end local v5           #deviceR:Landroid/graphics/RectF;
    .end local v13           #transformed:Z
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/Bitmap;->mDensity:I

    iput v14, v2, Landroid/graphics/Bitmap;->mDensity:I

    .line 655
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 656
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v12, v6, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 657
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 p0, v2

    .line 659
    goto/16 :goto_0

    .line 591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "display"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 688
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "display"
    .parameter "width"
    .parameter "height"
    .parameter "config"
    .parameter "hasAlpha"

    .prologue
    const/4 v9, 0x0

    .line 725
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 726
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_1
    const/4 v7, 0x0

    .line 732
    .local v7, bm:Landroid/graphics/Bitmap;
    if-nez p3, :cond_2

    .line 733
    :try_start_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :catch_0
    move-exception v8

    .line 738
    .local v8, e:Ljava/lang/Error;
    const-string v0, "Bitmap"

    const-string v1, "create error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 755
    .end local v8           #e:Ljava/lang/Error;
    :goto_0
    return-object v0

    .line 736
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    iget v5, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v6, 0x1

    move v2, p1

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 743
    if-eqz p0, :cond_3

    .line 744
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v7, Landroid/graphics/Bitmap;->mDensity:I

    .line 746
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p3, v0, :cond_4

    if-nez p4, :cond_4

    .line 747
    iget v0, v7, Landroid/graphics/Bitmap;->mNativeBitmap:I

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    .line 748
    iget v0, v7, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p4}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(IZ)V

    :cond_4
    move-object v0, v7

    .line 755
    goto :goto_0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "display"
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 804
    invoke-static/range {p4 .. p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    .line 805
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move/from16 v0, p4

    if-ge v1, v0, :cond_0

    .line 806
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 808
    :cond_0
    add-int/lit8 v1, p5, -0x1

    mul-int/2addr v1, p3

    add-int v10, p2, v1

    .line 809
    .local v10, lastScanline:I
    array-length v11, p1

    .line 810
    .local v11, length:I
    if-ltz p2, :cond_1

    add-int v1, p2, p4

    if-gt v1, v11, :cond_1

    if-ltz v10, :cond_1

    add-int v1, v10, p4

    if-le v1, v11, :cond_2

    .line 812
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 814
    :cond_2
    if-lez p4, :cond_3

    if-gtz p5, :cond_4

    .line 815
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width and height must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 819
    :cond_4
    :try_start_0
    move-object/from16 v0, p6

    iget v6, v0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 825
    .local v8, bm:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_5

    .line 826
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v8, Landroid/graphics/Bitmap;->mDensity:I

    .line 828
    .end local v8           #bm:Landroid/graphics/Bitmap;
    :cond_5
    :goto_0
    return-object v8

    .line 821
    :catch_0
    move-exception v9

    .line 822
    .local v9, err:Ljava/lang/OutOfMemoryError;
    const-string v1, "Bitmap"

    const-string/jumbo v2, "outofMemoryError when createBitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "display"
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 869
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "colors"
    .parameter "offset"
    .parameter "stride"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 778
    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "colors"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 847
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "src"
    .parameter "dstWidth"
    .parameter "dstHeight"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    .line 484
    const-class v2, Landroid/graphics/Bitmap;

    monitor-enter v2

    .line 486
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 487
    .local v5, m:Landroid/graphics/Matrix;
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 488
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    if-nez v5, :cond_0

    .line 491
    new-instance v5, Landroid/graphics/Matrix;

    .end local v5           #m:Landroid/graphics/Matrix;
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 494
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 495
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 496
    .local v4, height:I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v8, v0, v2

    .line 497
    .local v8, sx:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v9, v0, v2

    .line 498
    .local v9, sy:F
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v0, p0

    move v2, v1

    move v6, p3

    .line 499
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 501
    .local v7, b:Landroid/graphics/Bitmap;
    const-class v1, Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 503
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 504
    sput-object v5, Landroid/graphics/Bitmap;->sScaleMatrix:Landroid/graphics/Matrix;

    .line 506
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 508
    return-object v7

    .line 488
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v8           #sx:F
    .end local v9           #sy:F
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 506
    .restart local v3       #width:I
    .restart local v4       #height:I
    .restart local v5       #m:Landroid/graphics/Matrix;
    .restart local v7       #b:Landroid/graphics/Bitmap;
    .restart local v8       #sx:F
    .restart local v9       #sy:F
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static getDefaultDensity()I
    .locals 1

    .prologue
    .line 95
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_0

    .line 96
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 99
    :goto_0
    return v0

    .line 98
    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 99
    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    goto :goto_0
.end method

.method private static matchWhiteList()I
    .locals 11

    .prologue
    .line 1464
    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "com.sina.weibo"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "com.tencent.mm"

    aput-object v10, v8, v9

    .line 1469
    .local v8, whiteList:[Ljava/lang/String;
    sget-object v9, Landroid/graphics/Bitmap;->sIndexInWhiteList:Ljava/lang/Integer;

    if-eqz v9, :cond_0

    .line 1470
    sget-object v9, Landroid/graphics/Bitmap;->sIndexInWhiteList:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1493
    :goto_0
    return v1

    .line 1472
    :cond_0
    const-string/jumbo v9, "package"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 1474
    .local v6, pm:Landroid/content/pm/IPackageManager;
    if-eqz v6, :cond_1

    .line 1476
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1477
    .local v7, uid:I
    invoke-interface {v6, v7}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 1478
    .local v5, pkgs:[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1479
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 1480
    .local v4, pkg:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v9, v8

    if-ge v1, v9, :cond_3

    .line 1481
    aget-object v9, v8, v1

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1482
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sput-object v9, Landroid/graphics/Bitmap;->sIndexInWhiteList:Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1488
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #pkg:Ljava/lang/String;
    .end local v5           #pkgs:[Ljava/lang/String;
    .end local v7           #uid:I
    :catch_0
    move-exception v9

    .line 1493
    :cond_1
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sput-object v9, Landroid/graphics/Bitmap;->sIndexInWhiteList:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1480
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #pkg:Ljava/lang/String;
    .restart local v5       #pkgs:[Ljava/lang/String;
    .restart local v7       #uid:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1479
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static native nativeCompress(IIILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeConfig(I)I
.end method

.method private static native nativeCopy(IIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V
.end method

.method private static native nativeCreate([IIIIIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeErase(II)V
.end method

.method private static native nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGenerationId(I)I
.end method

.method private static native nativeGetPixel(III)I
.end method

.method private static native nativeGetPixels(I[IIIIIII)V
.end method

.method private static native nativeHasAlpha(I)Z
.end method

.method private static native nativeHasMipMap(I)Z
.end method

.method private static native nativeHeight(I)I
.end method

.method private static native nativePrepareToDraw(I)V
.end method

.method private static native nativeRecycle(I)Z
.end method

.method private static native nativeRowBytes(I)I
.end method

.method private static native nativeSameAs(II)Z
.end method

.method private static native nativeSetHasAlpha(IZ)V
.end method

.method private static native nativeSetHasMipMap(IZ)V
.end method

.method private static native nativeSetPixel(IIII)V
.end method

.method private static native nativeSetPixels(I[IIIIIII)V
.end method

.method private static native nativeWidth(I)I
.end method

.method private static native nativeWriteToParcel(IZILandroid/os/Parcel;)Z
.end method

.method public static scaleFromDensity(III)I
    .locals 2
    .parameter "size"
    .parameter "sdensity"
    .parameter "tdensity"

    .prologue
    .line 1046
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, p2, :cond_1

    .line 1051
    .end local p0
    :cond_0
    :goto_0
    return p0

    .restart local p0
    :cond_1
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int p0, v0, p1

    goto :goto_0
.end method

.method public static setDefaultDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 91
    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    .line 92
    return-void
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 3
    .parameter "format"
    .parameter "quality"
    .parameter "stream"

    .prologue
    .line 926
    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 928
    if-nez p3, :cond_0

    .line 929
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 931
    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    .line 932
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_2
    invoke-static {}, Landroid/graphics/Bitmap;->matchWhiteList()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 946
    :cond_3
    :goto_0
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v2, 0x1000

    new-array v2, v2, [B

    invoke-static {v0, v1, p2, p3, v2}, Landroid/graphics/Bitmap;->nativeCompress(IIILjava/io/OutputStream;[B)Z

    move-result v0

    return v0

    .line 937
    :pswitch_0
    const/16 v0, 0x4b

    if-gt p2, v0, :cond_3

    const/16 p2, 0x5a

    goto :goto_0

    .line 940
    :pswitch_1
    const/16 v0, 0x46

    if-gt p2, v0, :cond_3

    const/16 p2, 0x5a

    goto :goto_0

    .line 935
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "config"
    .parameter "isMutable"

    .prologue
    .line 454
    const-string v2, "Can\'t copy a recycled bitmap"

    invoke-direct {p0, v2}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 457
    :try_start_0
    iget v2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v3, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v2, v3, p2}, Landroid/graphics/Bitmap;->nativeCopy(IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 463
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 464
    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v2, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 466
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, err:Ljava/lang/OutOfMemoryError;
    const-string v2, "Bitmap"

    const-string/jumbo v3, "outofMemoryError when bitmap copy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 11
    .parameter "src"

    .prologue
    .line 412
    const-string v7, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-direct {p0, v7}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 416
    .local v4, elements:I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    .line 417
    const/4 v6, 0x0

    .line 426
    .local v6, shift:I
    :goto_0
    int-to-long v7, v4

    shl-long v2, v7, v6

    .line 427
    .local v2, bufferBytes:J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v0, v7

    .line 429
    .local v0, bitmapBytes:J
    cmp-long v7, v2, v0

    if-gez v7, :cond_3

    .line 430
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 418
    .end local v0           #bitmapBytes:J
    .end local v2           #bufferBytes:J
    .end local v6           #shift:I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    .line 419
    const/4 v6, 0x1

    .restart local v6       #shift:I
    goto :goto_0

    .line 420
    .end local v6           #shift:I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    .line 421
    const/4 v6, 0x2

    .restart local v6       #shift:I
    goto :goto_0

    .line 423
    .end local v6           #shift:I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 433
    .restart local v0       #bitmapBytes:J
    .restart local v2       #bufferBytes:J
    .restart local v6       #shift:I
    :cond_3
    iget v7, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(ILjava/nio/Buffer;)V

    .line 436
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 437
    .local v5, position:I
    int-to-long v7, v5

    shr-long v9, v0, v6

    add-long/2addr v7, v9

    long-to-int v5, v7

    .line 438
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 439
    return-void
.end method

.method public copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 11
    .parameter "dst"

    .prologue
    .line 378
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    .line 380
    .local v2, elements:I
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_0

    .line 381
    const/4 v6, 0x0

    .line 390
    .local v6, shift:I
    :goto_0
    int-to-long v7, v2

    shl-long v0, v7, v6

    .line 391
    .local v0, bufferSize:J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    int-to-long v3, v7

    .line 393
    .local v3, pixelSize:J
    cmp-long v7, v0, v3

    if-gez v7, :cond_3

    .line 394
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Buffer not large enough for pixels"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 382
    .end local v0           #bufferSize:J
    .end local v3           #pixelSize:J
    .end local v6           #shift:I
    :cond_0
    instance-of v7, p1, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_1

    .line 383
    const/4 v6, 0x1

    .restart local v6       #shift:I
    goto :goto_0

    .line 384
    .end local v6           #shift:I
    :cond_1
    instance-of v7, p1, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_2

    .line 385
    const/4 v6, 0x2

    .restart local v6       #shift:I
    goto :goto_0

    .line 387
    .end local v6           #shift:I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "unsupported Buffer subclass"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 397
    .restart local v0       #bufferSize:J
    .restart local v3       #pixelSize:J
    .restart local v6       #shift:I
    :cond_3
    iget v7, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(ILjava/nio/Buffer;)V

    .line 400
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 401
    .local v5, position:I
    int-to-long v7, v5

    shr-long v9, v3, v6

    add-long/2addr v7, v9

    long-to-int v5, v7

    .line 402
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 403
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1357
    const/4 v0, 0x0

    return v0
.end method

.method public eraseColor(I)V
    .locals 2
    .parameter "c"

    .prologue
    .line 1159
    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1163
    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeErase(II)V

    .line 1164
    return-void
.end method

.method public extractAlpha()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1380
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "paint"
    .parameter "offsetXY"

    .prologue
    .line 1409
    const-string v2, "Can\'t extractAlpha on a recycled bitmap"

    invoke-direct {p0, v2}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1410
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    .line 1411
    .local v1, nativePaint:I
    :goto_0
    iget v2, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v2, v1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(II[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1412
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1413
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to extractAlpha on Bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1410
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #nativePaint:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1415
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #nativePaint:I
    :cond_1
    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v2, v0, Landroid/graphics/Bitmap;->mDensity:I

    .line 1416
    return-object v0
.end method

.method public final getByteCount()I
    .locals 2

    .prologue
    .line 1071
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 1079
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeConfig(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDensity()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getGenerationId()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeGenerationId(I)I

    move-result v0

    return v0
.end method

.method public final getHeight()I
    .locals 2

    .prologue
    .line 985
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHeight(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    goto :goto_0
.end method

.method public getLayoutBounds()[I
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    return-object v0
.end method

.method public getNinePatchChunk()[B
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public getPixel(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1177
    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1178
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1179
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(III)I

    move-result v0

    return v0
.end method

.method public getPixels([IIIIIII)V
    .locals 8
    .parameter "pixels"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1207
    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1208
    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    .line 1214
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1211
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1212
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeGetPixels(I[IIIIIII)V

    goto :goto_0
.end method

.method public final getRowBytes()I
    .locals 1

    .prologue
    .line 1063
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRowBytes(I)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(I)I
    .locals 2
    .parameter "targetDensity"

    .prologue
    .line 1039
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/graphics/Canvas;)I
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1001
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledHeight(Landroid/util/DisplayMetrics;)I
    .locals 3
    .parameter "metrics"

    .prologue
    .line 1017
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(I)I
    .locals 2
    .parameter "targetDensity"

    .prologue
    .line 1028
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/graphics/Canvas;)I
    .locals 3
    .parameter "canvas"

    .prologue
    .line 993
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public getScaledWidth(Landroid/util/DisplayMetrics;)I
    .locals 3
    .parameter "metrics"

    .prologue
    .line 1009
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 980
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeWidth(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    goto :goto_0
.end method

.method public final hasAlpha()Z
    .locals 1

    .prologue
    .line 1091
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHasAlpha(I)Z

    move-result v0

    return v0
.end method

.method public final hasMipMap()Z
    .locals 1

    .prologue
    .line 1126
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeHasMipMap(I)Z

    move-result v0

    return v0
.end method

.method public final isMutable()Z
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    return v0
.end method

.method public final isPremultiplied()Z
    .locals 2

    .prologue
    .line 975
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRecycled()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method final ni()I
    .locals 1

    .prologue
    .line 1551
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    return v0
.end method

.method public prepareToDraw()V
    .locals 1

    .prologue
    .line 1440
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativePrepareToDraw(I)V

    .line 1441
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_1

    .line 217
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->nativeRecycle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iput-object v1, p0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 223
    iput-object v1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 225
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    .line 227
    :cond_1
    return-void
.end method

.method public sameAs(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 1425
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeSameAs(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDensity(I)V
    .locals 0
    .parameter "density"

    .prologue
    .line 180
    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    .line 181
    return-void
.end method

.method public setHasAlpha(Z)V
    .locals 1
    .parameter "hasAlpha"

    .prologue
    .line 1105
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(IZ)V

    .line 1106
    return-void
.end method

.method public final setHasMipMap(Z)V
    .locals 1
    .parameter "hasMipMap"

    .prologue
    .line 1150
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(IZ)V

    .line 1151
    return-void
.end method

.method public setLayoutBounds([I)V
    .locals 0
    .parameter "bounds"

    .prologue
    .line 201
    iput-object p1, p0, Landroid/graphics/Bitmap;->mLayoutBounds:[I

    .line 202
    return-void
.end method

.method public setNinePatchChunk([B)V
    .locals 0
    .parameter "chunk"

    .prologue
    .line 191
    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    .line 192
    return-void
.end method

.method public setPixel(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "color"

    .prologue
    .line 1288
    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1290
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1292
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    .line 1293
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(IIII)V

    .line 1294
    return-void
.end method

.method public setPixels([IIIIIII)V
    .locals 8
    .parameter "pixels"
    .parameter "offset"
    .parameter "stride"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1321
    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1323
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1325
    :cond_0
    if-eqz p6, :cond_1

    if-nez p7, :cond_2

    .line 1331
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p2

    move v6, p3

    move-object v7, p1

    .line 1328
    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    .line 1329
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Bitmap;->nativeSetPixels(I[IIIIIII)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "p"
    .parameter "flags"

    .prologue
    .line 1366
    const-string v0, "Can\'t parcel a recycled bitmap"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 1367
    iget v0, p0, Landroid/graphics/Bitmap;->mNativeBitmap:I

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mIsMutable:Z

    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(IZILandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1368
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1370
    :cond_0
    return-void
.end method
