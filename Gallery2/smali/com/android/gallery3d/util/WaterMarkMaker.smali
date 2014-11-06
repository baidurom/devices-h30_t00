.class public Lcom/android/gallery3d/util/WaterMarkMaker;
.super Ljava/lang/Object;
.source "WaterMarkMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/WaterMarkMaker$4;,
        Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;
    }
.end annotation


# static fields
.field private static final CACHE_DIR_NAME:Ljava/lang/String; = "/.watermarkcache"

.field private static final CACHE_FILE_NAME:[Ljava/lang/String; = null

.field private static final DBG:Z = true

.field private static final DBG_TAG:Ljava/lang/String; = "WaterMarkMaker"

.field public static final DEFAULT_COMPRESS_QUALITY:I = 0x64

.field private static final GET_ADDRESS_TIME_OUT:I = 0x2710

.field public static final KEY_ITEM_PATH:Ljava/lang/String; = "watermark_item"

.field private static final MAX_PIXEL_COUNT:I = 0xc65d40

.field private static final MIN_FILE_LENGTH:I = 0x100000

.field private static final REFERENCE_SHORT_EDGE:I = 0x2d0


# instance fields
.field private cacheBitmap:Landroid/graphics/Bitmap;

.field private cacheCanvas:Landroid/graphics/Canvas;

.field private location:Ljava/lang/String;

.field private mAddressResolveLisner:Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

.field private mConfig:Lcom/android/gallery3d/app/Config$WaterMarkConfig;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mLock:Lcom/android/gallery3d/util/SimpleLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1.jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "2.jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3.jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4.jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5.jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6.jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "7.jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "8.jpeg"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "9.jpeg"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "10.jpeg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/util/WaterMarkMaker;->CACHE_FILE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/gallery3d/util/SimpleLock;

    invoke-direct {v0}, Lcom/android/gallery3d/util/SimpleLock;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->mLock:Lcom/android/gallery3d/util/SimpleLock;

    .line 353
    new-instance v0, Lcom/android/gallery3d/util/WaterMarkMaker$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/util/WaterMarkMaker$1;-><init>(Lcom/android/gallery3d/util/WaterMarkMaker;)V

    iput-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->mAddressResolveLisner:Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    .line 416
    return-void
.end method

.method static synthetic access$002(Lcom/android/gallery3d/util/WaterMarkMaker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->location:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/util/WaterMarkMaker;)Lcom/android/gallery3d/util/SimpleLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->mLock:Lcom/android/gallery3d/util/SimpleLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/util/WaterMarkMaker;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/util/WaterMarkMaker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->mDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private createCacheBitmapAndCanvas(Ljava/lang/String;)V
    .locals 6
    .parameter "sourceFile"

    .prologue
    const/4 v5, 0x0

    .line 226
    invoke-direct {p0, p1}, Lcom/android/gallery3d/util/WaterMarkMaker;->loadMutableBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 228
    .local v1, source:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 229
    .local v2, width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 231
    .local v0, height:I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheBitmap:Landroid/graphics/Bitmap;

    .line 232
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    .line 233
    iget-object v3, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 235
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 236
    return-void
.end method

.method private dismissWaitingDialog(Landroid/os/Handler;)V
    .locals 1
    .parameter "uiThreadHandler"

    .prologue
    .line 385
    new-instance v0, Lcom/android/gallery3d/util/WaterMarkMaker$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/util/WaterMarkMaker$3;-><init>(Lcom/android/gallery3d/util/WaterMarkMaker;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method private drawWaterMarkOnPic(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 16
    .parameter "item"
    .parameter "activity"
    .parameter "degrees"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/util/WaterMarkMaker;->getTextSize()F

    move-result v15

    .line 311
    .local v15, textSize:F
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 312
    .local v3, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->mConfig:Lcom/android/gallery3d/app/Config$WaterMarkConfig;

    iget v1, v1, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->textColor:I

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 314
    const/high16 v1, 0x4000

    const/high16 v6, 0x3f80

    const/high16 v8, 0x3f80

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->mConfig:Lcom/android/gallery3d/app/Config$WaterMarkConfig;

    iget v9, v9, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->textShadowColor:I

    invoke-virtual {v3, v1, v6, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 316
    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 317
    .local v2, dateTextPosition:[F
    const/4 v1, 0x2

    new-array v7, v1, [F

    .line 318
    .local v7, locationTextPosition:[F
    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->getPositionFromSetting(Landroid/content/Context;)Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    move-result-object v5

    .line 322
    .local v5, setting:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v12

    .line 323
    .local v12, dateInMs:J
    const-wide/16 v8, 0x0

    cmp-long v1, v12, v8

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual/range {p2 .. p2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v12, v13}, Lcom/android/gallery3d/util/GalleryUtils;->getSettingFormatShortDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .local v4, time:Ljava/lang/String;
    move-object/from16 v1, p0

    move/from16 v6, p3

    .line 325
    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/util/WaterMarkMaker;->getPositionForDate([FLandroid/graphics/Paint;Ljava/lang/String;Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;I)V

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    move/from16 v0, p3

    neg-int v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    invoke-virtual {v1, v6, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v8, 0x1

    aget v8, v2, v8

    invoke-virtual {v1, v4, v6, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 334
    .end local v4           #time:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    new-array v14, v1, [D

    .line 335
    .local v14, latlong:[D
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 336
    const/4 v1, 0x0

    aget-wide v8, v14, v1

    const/4 v1, 0x1

    aget-wide v10, v14, v1

    invoke-static {v8, v9, v10, v11}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->mAddressResolveLisner:Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v14, v1, v6, v8}, Lcom/android/gallery3d/ui/DetailsHelper;->resolveAddress(Lcom/android/gallery3d/app/AbstractGalleryActivity;[DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;ZZ)Ljava/lang/String;

    .line 341
    const-string v1, "WaterMarkMaker"

    const-string v6, "start wait"

    invoke-static {v1, v6}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->mLock:Lcom/android/gallery3d/util/SimpleLock;

    const-wide/16 v8, 0x2710

    invoke-virtual {v1, v8, v9}, Lcom/android/gallery3d/util/SimpleLock;->waitUntilNotifyOrTimeOut(J)V

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->location:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 344
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->location:Ljava/lang/String;

    move-object/from16 v6, p0

    move-object v8, v3

    move-object v10, v5

    move/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/gallery3d/util/WaterMarkMaker;->getPositionForLocation([FLandroid/graphics/Paint;Ljava/lang/String;Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    move/from16 v0, p3

    neg-int v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    invoke-virtual {v1, v6, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->location:Ljava/lang/String;

    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, 0x1

    aget v9, v7, v9

    invoke-virtual {v1, v6, v8, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private getCacheDir()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getVolumePaths()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "/.watermarkcache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create cache dir failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_0
    return-object v0
.end method

.method private getCacheFile()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/gallery3d/util/WaterMarkMaker;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/util/WaterMarkMaker;->CACHE_FILE_NAME:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/util/FileUtils;->chooseFileInSequence(Ljava/io/File;[Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 195
    .local v0, cacheFile:Ljava/io/File;
    if-nez v0, :cond_0

    .line 196
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Create cache file failed"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_0
    return-object v0
.end method

.method private getPositionForDate([FLandroid/graphics/Paint;Ljava/lang/String;Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;I)V
    .locals 7
    .parameter "position"
    .parameter "paint"
    .parameter "dateText"
    .parameter "setting"
    .parameter "degrees"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 273
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/gallery3d/util/WaterMarkMaker;->getXPositionForString(Landroid/graphics/Paint;Ljava/lang/String;Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;I)F

    move-result v2

    aput v2, p1, v5

    .line 275
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 276
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v1, v2, v3

    .line 277
    .local v1, textHeight:F
    invoke-direct {p0, p5}, Lcom/android/gallery3d/util/WaterMarkMaker;->getRotatedCanvasHeight(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->mConfig:Lcom/android/gallery3d/app/Config$WaterMarkConfig;

    iget v3, v3, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->lineSpacing:I

    iget-object v4, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->mConfig:Lcom/android/gallery3d/app/Config$WaterMarkConfig;

    iget v4, v4, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->YAxisEdgePadding:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/gallery3d/util/WaterMarkMaker;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, p1, v6

    .line 279
    aget v2, p1, v5

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-direct {p0, p5}, Lcom/android/gallery3d/util/WaterMarkMaker;->getRotatedCanvasWidth(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    aget v2, p1, v6

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    .line 280
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "no space for water mark date !"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    :cond_1
    invoke-direct {p0, p1, p5}, Lcom/android/gallery3d/util/WaterMarkMaker;->getRotatedPosition([FI)V

    .line 284
    return-void
.end method

.method private getPositionForLocation([FLandroid/graphics/Paint;Ljava/lang/String;Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;I)V
    .locals 5
    .parameter "position"
    .parameter "paint"
    .parameter "locationText"
    .parameter "setting"
    .parameter "degrees"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 287
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/gallery3d/util/WaterMarkMaker;->getXPositionForString(Landroid/graphics/Paint;Ljava/lang/String;Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;I)F

    move-result v0

    aput v0, p1, v4

    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, p5}, Lcom/android/gallery3d/util/WaterMarkMaker;->getRotatedCanvasHeight(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->mConfig:Lcom/android/gallery3d/app/Config$WaterMarkConfig;

    iget v2, v2, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->YAxisEdgePadding:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/android/gallery3d/util/WaterMarkMaker;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 291
    aget v0, p1, v4

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-direct {p0, p5}, Lcom/android/gallery3d/util/WaterMarkMaker;->getRotatedCanvasWidth(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no space for water mark location !"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    invoke-direct {p0, p1, p5}, Lcom/android/gallery3d/util/WaterMarkMaker;->getRotatedPosition([FI)V

    .line 296
    return-void
.end method

.method private getRotatedCanvasHeight(I)I
    .locals 1
    .parameter "degrees"

    .prologue
    .line 405
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private getRotatedCanvasWidth(I)I
    .locals 1
    .parameter "degrees"

    .prologue
    .line 401
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getRotatedPosition([FI)V
    .locals 7
    .parameter "position"
    .parameter "degrees"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 409
    aget v2, p1, v5

    invoke-direct {p0, p2}, Lcom/android/gallery3d/util/WaterMarkMaker;->getRotatedCanvasWidth(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 410
    .local v0, distanceFromCenterX:F
    aget v2, p1, v6

    invoke-direct {p0, p2}, Lcom/android/gallery3d/util/WaterMarkMaker;->getRotatedCanvasHeight(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 411
    .local v1, distanceFromCenterY:F
    iget-object v2, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v0

    aput v2, p1, v5

    .line 412
    iget-object v2, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    aput v2, p1, v6

    .line 413
    return-void
.end method

.method private getScale()F
    .locals 3

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v0, v1

    .line 264
    .local v0, shortEdgeSize:F
    const/high16 v1, 0x4434

    div-float v1, v0, v1

    return v1
.end method

.method private getTextSize()F
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->mConfig:Lcom/android/gallery3d/app/Config$WaterMarkConfig;

    iget v0, v0, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->textSize:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/gallery3d/util/WaterMarkMaker;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getXPositionForString(Landroid/graphics/Paint;Ljava/lang/String;Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;I)F
    .locals 3
    .parameter "paint"
    .parameter "text"
    .parameter "setting"
    .parameter "degrees"

    .prologue
    .line 299
    sget-object v0, Lcom/android/gallery3d/util/WaterMarkMaker$4;->$SwitchMap$com$android$gallery3d$util$WaterMarkMaker$WaterMarkPosSetting:[I

    invoke-virtual {p3}, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 305
    invoke-direct {p0, p4}, Lcom/android/gallery3d/util/WaterMarkMaker;->getRotatedCanvasWidth(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->mConfig:Lcom/android/gallery3d/app/Config$WaterMarkConfig;

    iget v1, v1, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->XAxisEdgePadding:I

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/android/gallery3d/util/WaterMarkMaker;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    :goto_0
    return v0

    .line 301
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->mConfig:Lcom/android/gallery3d/app/Config$WaterMarkConfig;

    iget v0, v0, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->XAxisEdgePadding:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/gallery3d/util/WaterMarkMaker;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static isShowLoadingDialogFOrWaterMark(Ljava/util/ArrayList;Lcom/android/gallery3d/app/AbstractGalleryActivity;)Z
    .locals 4
    .parameter
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/app/AbstractGalleryActivity;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, itemPathArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/android/gallery3d/data/Path;>;"
    const/4 v2, 0x0

    .line 92
    invoke-static {p0, p1}, Lcom/android/gallery3d/util/WaterMarkMaker;->isWaterMarkSupportedForArray(Ljava/util/ArrayList;Lcom/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v2

    .line 96
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    .line 97
    .local v1, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 98
    .local v0, item:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 101
    invoke-static {v0}, Lcom/android/gallery3d/util/WaterMarkMaker;->shouldShowWaitingDialog(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isWaterMarkSupportedForArray(Ljava/util/ArrayList;Lcom/android/gallery3d/app/AbstractGalleryActivity;)Z
    .locals 3
    .parameter
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/gallery3d/app/AbstractGalleryActivity;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, itemPathArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Ljava/lang/Object;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/util/WaterMarkMaker;->isWaterMarkSwitchOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 88
    goto :goto_0
.end method

.method public static isWaterMarkSupportedForItem(Lcom/android/gallery3d/data/MediaObject;Landroid/content/Context;)Z
    .locals 3
    .parameter "mediaObject"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-static {p1}, Lcom/android/gallery3d/util/WaterMarkMaker;->isWaterMarkSwitchOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    instance-of v1, p0, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    .line 136
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWaterMarkSupportedForItem(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Landroid/content/Context;)Z
    .locals 1
    .parameter "itemPath"
    .parameter "datamanager"
    .parameter "context"

    .prologue
    .line 118
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/gallery3d/util/WaterMarkMaker;->isWaterMarkSupportedForItem(Lcom/android/gallery3d/data/MediaObject;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isWaterMarkSupportedForSendingIntent(Landroid/content/Intent;Lcom/android/gallery3d/data/DataManager;Landroid/content/Context;)Z
    .locals 4
    .parameter "sendingIntent"
    .parameter "datamanager"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    invoke-static {p0, p1}, Lcom/android/gallery3d/util/WaterMarkMaker;->stripMediaObjectFromIntent(Landroid/content/Intent;Lcom/android/gallery3d/data/DataManager;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 111
    .local v0, mo:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 114
    invoke-static {v0, p2}, Lcom/android/gallery3d/util/WaterMarkMaker;->isWaterMarkSupportedForItem(Lcom/android/gallery3d/data/MediaObject;Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isWaterMarkSwitchOn(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->getPositionFromSetting(Landroid/content/Context;)Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    move-result-object v0

    .line 75
    .local v0, setting:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;
    sget-object v1, Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;->NONE:Lcom/android/gallery3d/util/WaterMarkMaker$WaterMarkPosSetting;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadMutableBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "sourceFile"

    .prologue
    const/4 v6, 0x1

    .line 204
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 205
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 206
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 209
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 210
    .local v3, w:I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 211
    .local v1, h:I
    mul-int v4, v3, v1

    const v5, 0xc65d40

    if-le v4, v5, :cond_0

    .line 212
    const v4, 0x4b465d40

    mul-int v5, v3, v1

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    invoke-static {v4}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 217
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 218
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 219
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private rotateOutputBitmap(I)V
    .locals 7
    .parameter "degrees"

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheBitmap:Landroid/graphics/Bitmap;

    .line 241
    .local v0, oldBitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 242
    .local v5, mtx:Landroid/graphics/Matrix;
    int-to-float v2, p1

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheBitmap:Landroid/graphics/Bitmap;

    .line 245
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 246
    return-void
.end method

.method private saveCacheToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .parameter "cacheFile"
    .parameter "sourcePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 253
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 255
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 259
    return-void

    .line 257
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    throw v2

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static shouldShowWaitingDialog(Lcom/android/gallery3d/data/MediaObject;)Z
    .locals 6
    .parameter "mo"

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 363
    .local v1, sourceFileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, sourceFile:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 366
    :cond_0
    const/4 v2, 0x0

    .line 369
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showWaitingDialog(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "uiThreadHandler"

    .prologue
    .line 373
    new-instance v0, Lcom/android/gallery3d/util/WaterMarkMaker$2;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/util/WaterMarkMaker$2;-><init>(Lcom/android/gallery3d/util/WaterMarkMaker;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    return-void
.end method

.method public static stripMediaObjectFromIntent(Landroid/content/Intent;Lcom/android/gallery3d/data/DataManager;)Lcom/android/gallery3d/data/MediaObject;
    .locals 2
    .parameter "intent"
    .parameter "datamanager"

    .prologue
    .line 140
    const-string v1, "watermark_item"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, pathString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 142
    const/4 v1, 0x0

    .line 143
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public destroy(Landroid/os/Handler;)V
    .locals 1
    .parameter "uiThreadHandler"

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/android/gallery3d/util/WaterMarkMaker;->dismissWaitingDialog(Landroid/os/Handler;)V

    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    :cond_0
    return-void
.end method

.method public getWaterMarkedPic(Lcom/android/gallery3d/data/MediaObject;Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Handler;)Landroid/net/Uri;
    .locals 7
    .parameter "mediaObject"
    .parameter "activity"
    .parameter "uiThreadHandler"

    .prologue
    .line 151
    invoke-virtual {p2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/app/Config$WaterMarkConfig;->get(Landroid/content/Context;)Lcom/android/gallery3d/app/Config$WaterMarkConfig;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->mConfig:Lcom/android/gallery3d/app/Config$WaterMarkConfig;

    move-object v3, p1

    .line 153
    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    .line 154
    .local v3, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 155
    .local v4, sourceFileName:Ljava/lang/String;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/gallery3d/util/WaterMarkMaker;->location:Ljava/lang/String;

    .line 157
    :try_start_0
    invoke-static {p1}, Lcom/android/gallery3d/util/WaterMarkMaker;->shouldShowWaitingDialog(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    invoke-virtual {p2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, p3}, Lcom/android/gallery3d/util/WaterMarkMaker;->showWaitingDialog(Landroid/content/Context;Landroid/os/Handler;)V

    .line 161
    :cond_0
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v1

    .line 162
    .local v1, degrees:I
    invoke-direct {p0}, Lcom/android/gallery3d/util/WaterMarkMaker;->getCacheFile()Ljava/io/File;

    move-result-object v0

    .line 164
    .local v0, cacheFile:Ljava/io/File;
    invoke-direct {p0, v4}, Lcom/android/gallery3d/util/WaterMarkMaker;->createCacheBitmapAndCanvas(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, v3, p2, v1}, Lcom/android/gallery3d/util/WaterMarkMaker;->drawWaterMarkOnPic(Lcom/android/gallery3d/data/MediaItem;Lcom/android/gallery3d/app/AbstractGalleryActivity;I)V

    .line 168
    invoke-direct {p0, v1}, Lcom/android/gallery3d/util/WaterMarkMaker;->rotateOutputBitmap(I)V

    .line 170
    invoke-direct {p0, v0, v4}, Lcom/android/gallery3d/util/WaterMarkMaker;->saveCacheToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 181
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/util/WaterMarkMaker;->destroy(Landroid/os/Handler;)V

    .end local v0           #cacheFile:Ljava/io/File;
    .end local v1           #degrees:I
    :goto_0
    return-object v5

    .line 174
    :catch_0
    move-exception v2

    .line 175
    .local v2, e:Ljava/io/IOException;
    :try_start_1
    const-string v5, "WaterMarkMaker"

    const-string v6, "error when add water mark"

    invoke-static {v5, v6, v2}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 181
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/util/WaterMarkMaker;->destroy(Landroid/os/Handler;)V

    goto :goto_0

    .line 177
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 178
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "WaterMarkMaker"

    const-string v6, "error when add water mark"

    invoke-static {v5, v6, v2}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 181
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/util/WaterMarkMaker;->destroy(Landroid/os/Handler;)V

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {p0, p3}, Lcom/android/gallery3d/util/WaterMarkMaker;->destroy(Landroid/os/Handler;)V

    throw v5
.end method

.method public getWaterMarkedPic(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Handler;)Landroid/net/Uri;
    .locals 1
    .parameter "itemPath"
    .parameter "datamanager"
    .parameter "activity"
    .parameter "uiThreadHandler"

    .prologue
    .line 147
    invoke-virtual {p2, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/gallery3d/util/WaterMarkMaker;->getWaterMarkedPic(Lcom/android/gallery3d/data/MediaObject;Lcom/android/gallery3d/app/AbstractGalleryActivity;Landroid/os/Handler;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
