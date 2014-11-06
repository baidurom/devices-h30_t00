.class public Lcom/android/hwcamera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/Util$ImageFileNamer;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field private static final AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-exposure-lock-supported"

.field private static final AUTO_WHITE_BALANCE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-whitebalance-lock-supported"

.field public static final CAMERA_SOUND_STATE_PARA_KEY:Ljava/lang/String; = "camera_sound_state"

.field private static final EXTRAS_CAMERA_FACING:Ljava/lang/String; = "android.intent.extras.CAMERA_FACING"

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field private static final IMAGE_NAME_FORMAT:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"

.field private static IS_ENABLE_MENU:Z = false

.field private static final LARGEST_PREVIEW_SIZE:I = 0x10000

.field private static final LONG_PRESS_BURST:Ljava/lang/String; = "hw-k3-burst-supported"

.field public static final NEED_STABLEDETECTED_NUM:I = 0xa

.field private static final OPTIMAL_PAD_PREVIEW_SIZE:I = 0x3e8

.field private static final OPTIMAL_PHONE_PREVIEW_SIZE:I = 0x2da

.field public static final ORIENTATION_HYSTERESIS:I = 0x5

.field public static final RECORDING_HINT:Ljava/lang/String; = "recording-hint"

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field public static final SCENE_MODE_HDR:Ljava/lang/String; = "hdr"

.field private static final STABLE_EMS_VALUE:D = 10.0

.field private static final TAG:Ljava/lang/String; = "Util"

.field public static final TRUE:Ljava/lang/String; = "true"

.field private static final VIDEO_SNAPSHOT_SUPPORTED:Ljava/lang/String; = "video-snapshot-supported"

.field private static fileNamerLock:[B

.field private static mAndroidConfigurationExClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mComHuaweiConfigurationExClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mGetExtraConfigMethod:Ljava/lang/reflect/Method;

.field private static mSimpleUiModeField:Ljava/lang/reflect/Field;

.field private static mSimpleUiyesField:Ljava/lang/reflect/Field;

.field private static sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

.field private static sLocation:[I

.field private static sPixelDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    sput-object v0, Lcom/android/hwcamera/Util;->mComHuaweiConfigurationExClass:Ljava/lang/Class;

    .line 141
    sput-object v0, Lcom/android/hwcamera/Util;->mAndroidConfigurationExClass:Ljava/lang/Class;

    .line 142
    sput-object v0, Lcom/android/hwcamera/Util;->mGetExtraConfigMethod:Ljava/lang/reflect/Method;

    .line 143
    sput-object v0, Lcom/android/hwcamera/Util;->mSimpleUiyesField:Ljava/lang/reflect/Field;

    .line 144
    sput-object v0, Lcom/android/hwcamera/Util;->mSimpleUiModeField:Ljava/lang/reflect/Field;

    .line 312
    const/high16 v0, 0x3f80

    sput v0, Lcom/android/hwcamera/Util;->sPixelDensity:F

    .line 315
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/hwcamera/Util;->fileNamerLock:[B

    .line 961
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/hwcamera/Util;->sLocation:[I

    .line 1265
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/hwcamera/Util;->IS_ENABLE_MENU:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 320
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 552
    if-nez p0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 555
    :cond_0
    return-void
.end method

.method public static Assert(ZLjava/lang/String;)V
    .locals 1
    .parameter "cond"
    .parameter "info"
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "NM_METHOD_NAMING_CONVENTION"
        }
    .end annotation

    .prologue
    .line 559
    if-nez p0, :cond_0

    .line 560
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 562
    :cond_0
    return-void
.end method

.method public static areasToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, areas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/16 v5, 0x2c

    .line 1359
    if-nez p0, :cond_0

    .line 1360
    const-string v4, "(0,0,0,0,0)"

    .line 1379
    :goto_0
    return-object v4

    .line 1362
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1363
    .local v1, buffer:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1364
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 1365
    .local v0, area:Landroid/hardware/Camera$Area;
    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 1366
    .local v3, rect:Landroid/graphics/Rect;
    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1367
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1368
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1369
    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1370
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1371
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1372
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1373
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1374
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1375
    iget v4, v0, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1376
    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1377
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1363
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1379
    .end local v0           #area:Landroid/hardware/Camera$Area;
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1049
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1051
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1052
    return-void
.end method

.method public static byteToUnsigned(B)I
    .locals 1
    .parameter "b"

    .prologue
    .line 1505
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static checkArrayInbounds(ILjava/util/Collection;)Z
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection;",
            ">(ITT;)Z"
        }
    .end annotation

    .prologue
    .line 1521
    .local p1, arrays:Ljava/util/Collection;,"TT;"
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkArrayInbounds(I[I)Z
    .locals 1
    .parameter "index"
    .parameter "arrays"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[I)Z"
        }
    .end annotation

    .prologue
    .line 1516
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    array-length v0, p1

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkArrayInbounds(I[Ljava/lang/Object;)Z
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;)Z"
        }
    .end annotation

    .prologue
    .line 1511
    .local p1, arrays:[Ljava/lang/Object;,"[TT;"
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    array-length v0, p1

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkDirectory(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 1448
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1449
    .local v0, testFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1450
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 1452
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 624
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 655
    if-le p0, p2, :cond_0

    .line 657
    .end local p2
    :goto_0
    return p2

    .line 656
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 657
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 543
    if-nez p0, :cond_0

    .line 549
    :goto_0
    return-void

    .line 545
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    .line 470
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 471
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 473
    .local v0, h:D
    if-gez p2, :cond_1

    move v2, v6

    .line 475
    .local v2, lowerBound:I
    :goto_0
    if-gez p1, :cond_2

    const/16 v3, 0x80

    .line 479
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 489
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 473
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 475
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 484
    .restart local v3       #upperBound:I
    :cond_3
    if-gez p2, :cond_4

    if-gez p1, :cond_4

    move v2, v6

    .line 485
    goto :goto_2

    .line 486
    :cond_4
    if-ltz p1, :cond_0

    move v2, v3

    .line 489
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 452
    invoke-static {p0, p1, p2}, Lcom/android/hwcamera/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 456
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 457
    const/4 v1, 0x1

    .line 458
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 459
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 465
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static createJpegName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 1039
    sget-object v1, Lcom/android/hwcamera/Util;->fileNamerLock:[B

    monitor-enter v1

    .line 1040
    :try_start_0
    sget-object v0, Lcom/android/hwcamera/Util;->sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

    if-nez v0, :cond_0

    .line 1041
    new-instance v0, Lcom/android/hwcamera/Util$ImageFileNamer;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v2}, Lcom/android/hwcamera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/hwcamera/Util;->sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

    .line 1043
    :cond_0
    sget-object v0, Lcom/android/hwcamera/Util;->sImageFileNamer:Lcom/android/hwcamera/Util$ImageFileNamer;

    invoke-virtual {v0, p0, p1}, Lcom/android/hwcamera/Util$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5
    .parameter "dir"

    .prologue
    .line 1536
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1537
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1538
    .local v0, children:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 1539
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/hwcamera/Util;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 1540
    .local v2, success:Z
    if-nez v2, :cond_0

    .line 1541
    const/4 v3, 0x0

    .line 1545
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #success:Z
    :goto_1
    return v3

    .line 1538
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #success:Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1545
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #success:Z
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method

.method public static distance(FFFF)F
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 642
    sub-float v0, p0, p2

    .line 643
    .local v0, dx:F
    sub-float v1, p1, p3

    .line 644
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method public static distance(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 4
    .parameter "lastRectF"
    .parameter "mFaceRect"

    .prologue
    .line 648
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const v0, 0x7f7fffff

    .line 650
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/hwcamera/Util;->distance(FFFF)F

    move-result v0

    goto :goto_0
.end method

.method public static dpToPixel(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 384
    sget v0, Lcom/android/hwcamera/Util;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static dumpParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    .line 893
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, flattened:Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    const-string v2, "Util"

    const-string v3, "Dump all camera parameters:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 897
    const-string v2, "Util"

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 899
    :cond_0
    return-void
.end method

.method public static dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 3
    .parameter "rect"
    .parameter "msg"

    .prologue
    .line 1014
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    return-void
.end method

.method public static enableMenu(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1272
    sput-boolean p0, Lcom/android/hwcamera/Util;->IS_ENABLE_MENU:Z

    .line 1273
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 628
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1064
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    const-wide/16 v2, 0x190

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;FFJ)V

    .line 1067
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1068
    return-void
.end method

.method public static fadeIn(Landroid/view/View;FFJ)V
    .locals 2
    .parameter "view"
    .parameter "startAlpha"
    .parameter "endAlpha"
    .parameter "duration"

    .prologue
    .line 1055
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1061
    :goto_0
    return-void

    .line 1057
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1059
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1060
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1081
    const/16 v0, 0x190

    invoke-static {p0, v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;I)V

    .line 1082
    return-void
.end method

.method public static fadeOut(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "duration"

    .prologue
    .line 1070
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1074
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1075
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1076
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1077
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1078
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static genPreferenceName(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 3
    .parameter "activity"
    .parameter "cameraId"

    .prologue
    .line 1459
    invoke-static {p0}, Lcom/android/hwcamera/Util;->isExtalCaptureIntent(Landroid/app/Activity;)Z

    move-result v0

    .line 1460
    .local v0, isFromExtal:Z
    invoke-static {}, Lcom/android/hwcamera/Util;->isSimpleUiOn()Z

    move-result v1

    .line 1461
    .local v1, isSimpleUiOn:Z
    invoke-static {p0, p1, v0, v1}, Lcom/android/hwcamera/Util;->genPreferenceName(Landroid/app/Activity;IZZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static genPreferenceName(Landroid/app/Activity;IZZ)Ljava/lang/String;
    .locals 2
    .parameter "activity"
    .parameter "cameraId"
    .parameter "isExtalCapture"
    .parameter "isSimpleUiOn"

    .prologue
    .line 1465
    if-eqz p3, :cond_1

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "simpleui_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "external_"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1468
    :goto_1
    return-object v0

    .line 1466
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 1468
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_2

    const-string v0, "external_"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method public static getArea(Landroid/graphics/RectF;)F
    .locals 2
    .parameter "rect"

    .prologue
    .line 1288
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1290
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public static getAvailableSpace(Ljava/lang/String;)J
    .locals 11
    .parameter "path"

    .prologue
    const-wide/16 v5, -0x1

    .line 1335
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1337
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1338
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mkdirs failure: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    move-wide v2, v5

    .line 1355
    .end local v0           #dir:Ljava/io/File;
    :goto_0
    return-wide v2

    .line 1346
    .restart local v0       #dir:Ljava/io/File;
    :cond_2
    :try_start_1
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1347
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v9, v9

    mul-long v2, v7, v9

    .line 1348
    .local v2, space:J
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "storage path"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " space:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1350
    .end local v2           #space:J
    .end local v4           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 1351
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "Util"

    const-string v8, "Fail to access external storage"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0           #dir:Ljava/io/File;
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    move-wide v2, v5

    .line 1355
    goto :goto_0

    .line 1353
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public static getBackCameraId()I
    .locals 1

    .prologue
    .line 1417
    const/4 v0, 0x0

    return v0
.end method

.method public static getCameraFacingIntentExtras(Landroid/app/Activity;)I
    .locals 7
    .parameter "currentActivity"

    .prologue
    const/4 v6, -0x1

    .line 932
    const/4 v1, -0x1

    .line 934
    .local v1, cameraId:I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 937
    .local v3, intentCameraId:I
    invoke-static {v3}, Lcom/android/hwcamera/Util;->isFrontCamera(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 939
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 940
    .local v2, frontCameraId:I
    if-eq v2, v6, :cond_0

    .line 941
    move v1, v2

    .line 950
    .end local v2           #frontCameraId:I
    :cond_0
    :goto_0
    return v1

    .line 943
    :cond_1
    invoke-static {v3}, Lcom/android/hwcamera/Util;->isBackCamera(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 945
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 946
    .local v0, backCameraId:I
    if-eq v0, v6, :cond_0

    .line 947
    move v1, v0

    goto :goto_0
.end method

.method public static getCameraOrientation(I)I
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 688
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 689
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 690
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v1
.end method

.method private static getDefaultDisplaySize(Landroid/app/Activity;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .parameter "activity"
    .parameter "size"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 712
    .local v0, d:Landroid/view/Display;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 713
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 717
    :goto_0
    return-object p1

    .line 715
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public static getDisplayOrientation(II)I
    .locals 4
    .parameter "degrees"
    .parameter "cameraId"

    .prologue
    .line 675
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 676
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 678
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 679
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 680
    .local v1, result:I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 684
    :goto_0
    return v1

    .line 682
    .end local v1           #result:I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 661
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 663
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 669
    :goto_0
    :pswitch_0
    return v1

    .line 665
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 666
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 667
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getDrawableArray(ILandroid/content/Context;)[I
    .locals 4
    .parameter "resId"
    .parameter "context"

    .prologue
    .line 1256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1257
    .local v2, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v0, v3, [I

    .line 1258
    .local v0, array:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1259
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v0, v1

    .line 1258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1261
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1262
    return-object v0
.end method

.method public static getFlashSupportedValues(Landroid/hardware/Camera$Parameters;I)Ljava/util/List;
    .locals 3
    .parameter "parameters"
    .parameter "cameraID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1245
    const/4 v1, 0x0

    .line 1246
    .local v1, supportedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1247
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1252
    :goto_0
    return-object v1

    .line 1249
    :cond_0
    const-string v2, "lcd-compensate-supported-values"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, flashValues:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/hwcamera/Util;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public static getJpegRotation(II)I
    .locals 4
    .parameter "cameraId"
    .parameter "orientation"

    .prologue
    .line 1087
    const/4 v1, 0x0

    .line 1088
    .local v1, rotation:I
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 1089
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p0

    .line 1090
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1091
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 1096
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    :goto_0
    return v1

    .line 1093
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 7
    .parameter "currentActivity"
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/high16 v6, 0x1

    .line 804
    if-nez p1, :cond_1

    .line 805
    const/4 v2, 0x0

    .line 842
    :cond_0
    :goto_0
    return-object v2

    .line 807
    :cond_1
    const/4 v2, 0x0

    .line 812
    .local v2, optimalSize:Landroid/hardware/Camera$Size;
    const/16 v1, 0x2da

    .line 813
    .local v1, optimalPreviewSize:I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 814
    .local v3, widthPixels:I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 815
    .local v0, heightPixels:I
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_5

    .line 816
    const/16 v1, 0x2da

    .line 826
    :goto_1
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/hwcamera/Util;->getPreviewSizeUnderMaxValueWithRatio(Landroid/app/Activity;Ljava/util/List;DI)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 828
    if-nez v2, :cond_2

    .line 829
    invoke-static {p0, p1, p2, p3, v6}, Lcom/android/hwcamera/Util;->getPreviewSizeUnderMaxValueWithRatio(Landroid/app/Activity;Ljava/util/List;DI)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 832
    :cond_2
    if-nez v2, :cond_3

    .line 833
    invoke-static {p0, p1, v1}, Lcom/android/hwcamera/Util;->getPreviewSizeUnderMaxValueWithoutRatio(Landroid/app/Activity;Ljava/util/List;I)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 836
    :cond_3
    if-nez v2, :cond_4

    .line 837
    invoke-static {p0, p1, v6}, Lcom/android/hwcamera/Util;->getPreviewSizeUnderMaxValueWithoutRatio(Landroid/app/Activity;Ljava/util/List;I)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 840
    :cond_4
    if-eqz v2, :cond_0

    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "optimalSize.width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and optimalSize.height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 818
    :cond_5
    const/16 v1, 0x3e8

    goto :goto_1
.end method

.method public static getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 11
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 849
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL

    .line 850
    .local v0, ASPECT_TOLERANCE:D
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 873
    :cond_0
    return-object v3

    .line 852
    :cond_1
    const/4 v3, 0x0

    .line 855
    .local v3, optimalSize:Landroid/hardware/Camera$Size;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 856
    .local v6, size:Landroid/hardware/Camera$Size;
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    div-double v4, v7, v9

    .line 857
    .local v4, ratio:D
    sub-double v7, v4, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f50624dd2f1a9fcL

    cmpl-double v7, v7, v9

    if-gtz v7, :cond_2

    .line 858
    if-eqz v3, :cond_3

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/hardware/Camera$Size;->width:I

    if-le v7, v8, :cond_2

    .line 859
    :cond_3
    move-object v3, v6

    goto :goto_0

    .line 865
    .end local v4           #ratio:D
    .end local v6           #size:Landroid/hardware/Camera$Size;
    :cond_4
    if-nez v3, :cond_0

    .line 866
    const-string v7, "Util"

    const-string v8, "No picture size match the aspect ratio"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 868
    .restart local v6       #size:Landroid/hardware/Camera$Size;
    if-eqz v3, :cond_6

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/hardware/Camera$Size;->width:I

    if-le v7, v8, :cond_5

    .line 869
    :cond_6
    move-object v3, v6

    goto :goto_1
.end method

.method private static getPreviewSizeUnderMaxValueWithRatio(Landroid/app/Activity;Ljava/util/List;DI)Landroid/hardware/Camera$Size;
    .locals 20
    .parameter "currentActivity"
    .parameter
    .parameter "targetRatio"
    .parameter "maxValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;DI)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v2, 0x3fa999999999999aL

    .line 725
    .local v2, ASPECT_TOLERANCE:D
    if-nez p1, :cond_1

    .line 726
    const/4 v9, 0x0

    .line 766
    :cond_0
    return-object v9

    .line 728
    :cond_1
    const/4 v9, 0x0

    .line 729
    .local v9, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v5, 0x7fefffffffffffffL

    .line 731
    .local v5, minDiff:D
    const-wide v7, 0x7fefffffffffffffL

    .line 739
    .local v7, minDiffWidth:D
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getDefaultDisplaySize(Landroid/app/Activity;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v10

    .line 740
    .local v10, point:Landroid/graphics/Point;
    iget v0, v10, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 742
    .local v14, targetHeight:I
    iget v0, v10, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 746
    .local v15, targetWidth:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/Camera$Size;

    .line 747
    .local v13, size:Landroid/hardware/Camera$Size;
    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p4

    if-ge v0, v1, :cond_2

    .line 748
    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v11, v16, v18

    .line 750
    .local v11, ratio:D
    sub-double v16, v11, p2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x3fa999999999999aL

    cmpl-double v16, v16, v18

    if-gtz v16, :cond_2

    .line 752
    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    sub-int v16, v16, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpg-double v16, v16, v5

    if-gez v16, :cond_3

    .line 753
    move-object v9, v13

    .line 754
    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    sub-int v16, v16, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    int-to-double v5, v0

    .line 755
    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    sub-int v16, v16, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    int-to-double v7, v0

    goto :goto_0

    .line 756
    :cond_3
    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    sub-int v16, v16, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v16, v16, v5

    if-nez v16, :cond_2

    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    sub-int v16, v16, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpg-double v16, v16, v7

    if-gez v16, :cond_2

    .line 758
    move-object v9, v13

    .line 759
    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    sub-int v16, v16, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    int-to-double v7, v0

    goto/16 :goto_0
.end method

.method private static getPreviewSizeUnderMaxValueWithoutRatio(Landroid/app/Activity;Ljava/util/List;I)Landroid/hardware/Camera$Size;
    .locals 9
    .parameter "currentActivity"
    .parameter
    .parameter "maxValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p1, :cond_1

    .line 774
    const/4 v3, 0x0

    .line 800
    :cond_0
    return-object v3

    .line 776
    :cond_1
    const/4 v3, 0x0

    .line 777
    .local v3, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v1, 0x7fefffffffffffffL

    .line 785
    .local v1, minDiff:D
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-static {p0, v7}, Lcom/android/hwcamera/Util;->getDefaultDisplaySize(Landroid/app/Activity;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 786
    .local v4, point:Landroid/graphics/Point;
    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 789
    .local v6, targetHeight:I
    const-wide v1, 0x7fefffffffffffffL

    .line 790
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 791
    .local v5, size:Landroid/hardware/Camera$Size;
    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    if-ge v7, p2, :cond_2

    .line 792
    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v7, v7, v1

    if-gez v7, :cond_2

    .line 793
    move-object v3, v5

    .line 794
    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v1, v7

    goto :goto_0
.end method

.method public static getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I
    .locals 6
    .parameter "reference"
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 971
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 972
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    aget v0, v2, v4

    .line 973
    .local v0, referenceX:I
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    aget v1, v2, v5

    .line 974
    .local v1, referenceY:I
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 975
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    aget v3, v2, v4

    sub-int/2addr v3, v0

    aput v3, v2, v4

    .line 976
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    aget v3, v2, v5

    sub-int/2addr v3, v1

    aput v3, v2, v5

    .line 977
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    return-object v2
.end method

.method public static getThemeID(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1500
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "androidhwext:style/Theme.Emui"

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1501
    .local v0, themeID:I
    return v0
.end method

.method public static getVolumFromChannel(Landroid/app/Activity;I)I
    .locals 2
    .parameter "activity"
    .parameter "channel"

    .prologue
    .line 1495
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1496
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    return v1
.end method

.method public static googleFaceToHwFace([Landroid/hardware/Camera$Face;)[Lcom/android/hwcamera/facedetect/event/Face;
    .locals 4
    .parameter "faces"

    .prologue
    .line 1276
    invoke-static {p0}, Lcom/android/hwcamera/Util;->isEmptyCollection([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 1284
    :cond_0
    return-object v1

    .line 1277
    :cond_1
    array-length v3, p0

    new-array v1, v3, [Lcom/android/hwcamera/facedetect/event/Face;

    .line 1278
    .local v1, hwfaces:[Lcom/android/hwcamera/facedetect/event/Face;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1279
    new-instance v0, Lcom/android/hwcamera/facedetect/event/Face;

    invoke-direct {v0}, Lcom/android/hwcamera/facedetect/event/Face;-><init>()V

    .line 1280
    .local v0, face:Lcom/android/hwcamera/facedetect/event/Face;
    aget-object v3, p0, v2

    iget v3, v3, Landroid/hardware/Camera$Face;->id:I

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/facedetect/event/Face;->setFaceId(I)V

    .line 1281
    aget-object v3, p0, v2

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/facedetect/event/Face;->setFaceRect(Landroid/graphics/Rect;)V

    .line 1282
    aput-object v0, v1, v2

    .line 1278
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static initDailog(Landroid/content/Context;IIIILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
    .locals 7
    .parameter "context"
    .parameter "saveButtonResId"
    .parameter "cancelButtonResId"
    .parameter "titleSourceId"
    .parameter "messageSourceId"
    .parameter "positiveRunable"
    .parameter "negativeRunable"
    .parameter "cancelRunable"

    .prologue
    .line 177
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .local v6, alertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, p4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 179
    invoke-static/range {v0 .. v6}, Lcom/android/hwcamera/Util;->setDailogMessage(IIILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static initDailog(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
    .locals 7
    .parameter "context"
    .parameter "titleSourceId"
    .parameter "messageSourceId"
    .parameter "positiveRunable"
    .parameter "negativeRunable"
    .parameter "cancelRunable"

    .prologue
    const/4 v0, 0x0

    .line 171
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    .local v6, alertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move v1, v0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 173
    invoke-static/range {v0 .. v6}, Lcom/android/hwcamera/Util;->setDailogMessage(IIILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static initDailog(Landroid/content/Context;Landroid/view/View;ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
    .locals 7
    .parameter "context"
    .parameter "view"
    .parameter "titleSourceId"
    .parameter "positiveRunable"
    .parameter "negativeRunable"
    .parameter "cancelRunable"

    .prologue
    const/4 v0, 0x0

    .line 183
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .local v6, alertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move v1, v0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 185
    invoke-static/range {v0 .. v6}, Lcom/android/hwcamera/Util;->setDailogMessage(IIILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static initDailogNotCancelable(Landroid/content/Context;IIILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
    .locals 7
    .parameter "context"
    .parameter "buttonResId"
    .parameter "titleSourceId"
    .parameter "messageSourceId"
    .parameter "positiveRunable"
    .parameter "negativeRunable"
    .parameter "cancelRunable"

    .prologue
    const/4 v1, 0x0

    .line 189
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    .local v6, alertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move v0, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 192
    invoke-static/range {v0 .. v6}, Lcom/android/hwcamera/Util;->setDailogMessage(IIILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static initGpsDialog(Landroid/app/Activity;ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
    .locals 11
    .parameter "activity"
    .parameter "titleSourceId"
    .parameter "positiveRunable"
    .parameter "negativeRunable"
    .parameter "cancelRunable"

    .prologue
    const/4 v0, 0x0

    .line 239
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    .local v6, alertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 243
    .local v8, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f040017

    const v1, 0x7f10004c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v8, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 245
    .local v10, view:Landroid/view/View;
    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 246
    const v1, 0x7f10004d

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 247
    .local v7, content:Landroid/widget/TextView;
    const v1, 0x7f0d0113

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    const v1, 0x7f10004e

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 249
    .local v9, summary:Landroid/widget/TextView;
    const v1, 0x7f0d0114

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(I)V

    .line 250
    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 251
    invoke-static/range {v0 .. v6}, Lcom/android/hwcamera/Util;->setDailogMessage(IIILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 323
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 324
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 326
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 327
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/hwcamera/Util;->sPixelDensity:F

    .line 328
    return-void
.end method

.method public static invisibleChildViews(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "parentView"

    .prologue
    .line 1391
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1396
    :cond_0
    return-void

    .line 1392
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1393
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1394
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 273
    const-string v0, "true"

    const-string v1, "auto-exposure-lock-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 277
    const-string v0, "true"

    const-string v1, "auto-whitebalance-lock-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBackCamera(I)Z
    .locals 1
    .parameter "intentCameraId"

    .prologue
    .line 958
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBestPhotoSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "parameters"

    .prologue
    .line 1586
    const-string v1, "hw-best-photo"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1587
    .local v0, vstabSupported:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1588
    const/4 v1, 0x1

    .line 1590
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBlueToothBonded()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1474
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1475
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    .line 1477
    .local v3, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v3, :cond_2

    .line 1478
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1479
    .local v1, bluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 1480
    .local v2, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1486
    .end local v1           #bluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v5

    :cond_2
    move v5, v6

    goto :goto_0
.end method

.method public static isCalling(Landroid/app/Activity;)Z
    .locals 2
    .parameter "activity"

    .prologue
    .line 1443
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1444
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCameraHdrSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    .line 287
    .local v0, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "hdr"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEmptyCollection(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    .line 1222
    .local p0, collection:Ljava/util/Collection;,"TT;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmptyCollection(Ljava/util/Map;)Z
    .locals 1
    .parameter "maps"

    .prologue
    .line 1413
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmptyCollection([B)Z
    .locals 1
    .parameter "collection"

    .prologue
    .line 1217
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmptyCollection([Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 1226
    .local p0, collection:[Ljava/lang/Object;,"[TT;"
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmptyString(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 1330
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isEnableMenu()Z
    .locals 1

    .prologue
    .line 1268
    sget-boolean v0, Lcom/android/hwcamera/Util;->IS_ENABLE_MENU:Z

    return v0
.end method

.method public static isExtalCaptureIntent(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 1432
    invoke-static {p0}, Lcom/android/hwcamera/Util;->isImageCaptureIntent(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/hwcamera/Util;->isVideoCaptureIntent(Landroid/app/Activity;)Z

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

.method public static isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .parameter "params"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 300
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_CAMERA_FOCUS_AREA:Z

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "auto"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 305
    :cond_0
    return v0
.end method

.method public static isFrontCamera(I)Z
    .locals 1
    .parameter "intentCameraId"

    .prologue
    const/4 v0, 0x1

    .line 954
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageCaptureIntent(Landroid/app/Activity;)Z
    .locals 2
    .parameter "activity"

    .prologue
    .line 1421
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1422
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLongPressBurstSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .parameter "params"

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public static isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "params"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 292
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_CAMERA_METERING_AREA:Z

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 295
    :cond_0
    return v0
.end method

.method public static isMirrorSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "parameters"

    .prologue
    .line 885
    const-string v1, "hw-capture-mirror-supproted"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, vstabSupported:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    const/4 v1, 0x1

    .line 889
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMmsCapable(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 905
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 907
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v4, :cond_0

    .line 927
    :goto_0
    return v5

    .line 912
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    new-array v1, v5, [Ljava/lang/Class;

    .line 913
    .local v1, partypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-class v5, Landroid/telephony/TelephonyManager;

    const-string v6, "isVoiceCapable"

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 916
    .local v3, sIsVoiceCapable:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    .line 917
    .local v0, arglist:[Ljava/lang/Object;
    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 918
    .local v2, retobj:Ljava/lang/Object;
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #retobj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 925
    .end local v0           #arglist:[Ljava/lang/Object;
    .end local v1           #partypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v3           #sIsVoiceCapable:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .line 927
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 922
    :catch_1
    move-exception v5

    goto :goto_1

    .line 919
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public static isPanorama(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 1436
    instance-of v0, p0, Lcom/android/hwcamera/CameraActivity;

    if-eqz v0, :cond_0

    .line 1437
    check-cast p0, Lcom/android/hwcamera/CameraActivity;

    .end local p0
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraActivity;->isPanorama()Z

    move-result v0

    .line 1439
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPointsStable(Ljava/util/List;)Z
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1294
    .local p0, points:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    .line 1325
    :goto_0
    return v17

    .line 1296
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    const/16 v17, 0x0

    goto :goto_0

    .line 1298
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1299
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/graphics/Point;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    .line 1301
    .local v8, size:I
    new-array v15, v8, [I

    .line 1302
    .local v15, yArray:[I
    new-array v13, v8, [I

    .line 1304
    .local v13, xArray:[I
    const/4 v14, 0x0

    .line 1305
    .local v14, xTotal:I
    const/16 v16, 0x0

    .line 1307
    .local v16, yTotal:I
    const-wide/16 v9, 0x0

    .line 1308
    .local v9, sumDeltPow2x:D
    const-wide/16 v11, 0x0

    .line 1310
    .local v11, sumDeltPow2y:D
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1311
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 1312
    .local v2, _point:Landroid/graphics/Point;
    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    add-int v14, v14, v17

    .line 1313
    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    aput v17, v13, v5

    .line 1314
    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    add-int v16, v16, v17

    .line 1315
    iget v0, v2, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    aput v17, v15, v5

    .line 1310
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1318
    .end local v2           #_point:Landroid/graphics/Point;
    :cond_2
    int-to-float v0, v14

    move/from16 v17, v0

    const/high16 v18, 0x3f80

    mul-float v17, v17, v18

    int-to-float v0, v8

    move/from16 v18, v0

    div-float v3, v17, v18

    .line 1319
    .local v3, averageX:F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f80

    mul-float v17, v17, v18

    int-to-float v0, v8

    move/from16 v18, v0

    div-float v4, v17, v18

    .line 1320
    .local v4, averageY:F
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    if-ge v7, v8, :cond_3

    .line 1321
    aget v17, v13, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v17, v3

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v9, v9, v17

    .line 1322
    aget v17, v15, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v17, v4

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v11, v11, v17

    .line 1320
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1325
    :cond_3
    mul-int v17, v8, v8

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v17, v9, v17

    const-wide/high16 v19, 0x4024

    cmpg-double v17, v17, v19

    if-gez v17, :cond_4

    mul-int v17, v8, v8

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v17, v11, v17

    const-wide/high16 v19, 0x4024

    cmpg-double v17, v17, v19

    if-gez v17, :cond_4

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public static isSimpleUiOn()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1560
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 1562
    .local v1, curConfig:Landroid/content/res/Configuration;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1563
    const-string v5, "com.huawei.android.content.res.ConfigurationEx"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/android/hwcamera/Util;->mComHuaweiConfigurationExClass:Ljava/lang/Class;

    .line 1564
    sget-object v5, Lcom/android/hwcamera/Util;->mComHuaweiConfigurationExClass:Ljava/lang/Class;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/res/Configuration;

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1565
    .local v0, cnfigex:Ljava/lang/Object;
    sget-object v5, Lcom/android/hwcamera/Util;->mComHuaweiConfigurationExClass:Ljava/lang/Class;

    const-string v6, "getExtraConfig"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/android/hwcamera/Util;->mGetExtraConfigMethod:Ljava/lang/reflect/Method;

    .line 1566
    const-string v5, "android.content.res.ConfigurationEx"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/android/hwcamera/Util;->mAndroidConfigurationExClass:Ljava/lang/Class;

    .line 1567
    sget-object v5, Lcom/android/hwcamera/Util;->mGetExtraConfigMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1568
    sget-object v5, Lcom/android/hwcamera/Util;->mAndroidConfigurationExClass:Ljava/lang/Class;

    const-string v6, "simpleuiMode"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sput-object v5, Lcom/android/hwcamera/Util;->mSimpleUiModeField:Ljava/lang/reflect/Field;

    .line 1569
    sget-object v5, Lcom/android/hwcamera/Util;->mAndroidConfigurationExClass:Ljava/lang/Class;

    const-string v6, "SIMPLEUIMODE_YES"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    sput-object v5, Lcom/android/hwcamera/Util;->mSimpleUiyesField:Ljava/lang/reflect/Field;

    .line 1570
    sget-object v5, Lcom/android/hwcamera/Util;->mSimpleUiyesField:Ljava/lang/reflect/Field;

    sget-object v6, Lcom/android/hwcamera/Util;->mAndroidConfigurationExClass:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    sget-object v6, Lcom/android/hwcamera/Util;->mSimpleUiModeField:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1573
    .end local v0           #cnfigex:Ljava/lang/Object;
    :goto_0
    return v3

    .restart local v0       #cnfigex:Ljava/lang/Object;
    :cond_0
    move v3, v4

    .line 1570
    goto :goto_0

    .line 1571
    .end local v0           #cnfigex:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1572
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simple UI is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1573
    goto :goto_0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 148
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportedVideoStabilizer(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "parameters"

    .prologue
    .line 877
    const-string v1, "video-stabilization-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, vstabSupported:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    const/4 v1, 0x1

    .line 881
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUiThread(Landroid/app/Activity;)Z
    .locals 2
    .parameter "mActivity"

    .prologue
    .line 1213
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6
    .parameter "uri"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 981
    if-nez p0, :cond_0

    .line 993
    :goto_0
    return v2

    .line 984
    :cond_0
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 985
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 986
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to open URI. URI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 990
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 991
    .local v0, ex:Ljava/io/IOException;
    goto :goto_0

    .line 989
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isVideoCaptureIntent(Landroid/app/Activity;)Z
    .locals 2
    .parameter "activity"

    .prologue
    .line 1427
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isVideoPauseResumeSupported()Z
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 333
    :try_start_0
    const-string v11, "android.media.MediaRecorder"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 334
    .local v6, mediaRecorderClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 335
    .local v9, methods:[Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 336
    .local v8, methodName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 337
    .local v3, isContainPause:Z
    const/4 v4, 0x0

    .line 338
    .local v4, isContainResume:Z
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v7, v0, v2

    .line 339
    .local v7, method:Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 340
    const-string v11, "pause"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 341
    const/4 v3, 0x1

    .line 338
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_1
    const-string v11, "resume"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_0

    .line 343
    const/4 v4, 0x1

    goto :goto_1

    .line 346
    .end local v7           #method:Ljava/lang/reflect/Method;
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const/4 v10, 0x1

    .line 350
    .end local v0           #arr$:[Ljava/lang/reflect/Method;
    .end local v2           #i$:I
    .end local v3           #isContainPause:Z
    .end local v4           #isContainResume:Z
    .end local v5           #len$:I
    .end local v8           #methodName:Ljava/lang/String;
    .end local v9           #methods:[Ljava/lang/reflect/Method;
    :cond_3
    :goto_2
    return v10

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public static isVideoSnapshotSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "params"

    .prologue
    .line 282
    const-string v0, "true"

    const-string v1, "video-snapshot-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static listPrefsExceptKey(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "preferenceGroup"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/hwcamera/PreferenceGroup;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/CameraPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    .restart local v0       #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_0
    invoke-static {p0, v0}, Lcom/android/hwcamera/Util;->listPrefsExceptKeys(Lcom/android/hwcamera/PreferenceGroup;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static listPrefsExceptKeys(Lcom/android/hwcamera/PreferenceGroup;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter "preferenceGroup"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/hwcamera/PreferenceGroup;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/hwcamera/CameraPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/PreferenceGroup;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 155
    :cond_0
    const/4 v2, 0x0

    .line 166
    :cond_1
    return-object v2

    .line 158
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v2, prefs:Ljava/util/List;,"Ljava/util/List<Lcom/android/hwcamera/CameraPreference;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/PreferenceGroup;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/PreferenceGroup;->get(I)Lcom/android/hwcamera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/ListPreference;

    .line 163
    .local v1, listPref:Lcom/android/hwcamera/ListPreference;
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/android/hwcamera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/PreferenceGroup;->get(I)Lcom/android/hwcamera/CameraPreference;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static listToSet(Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1384
    .local p0, prefs:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    invoke-static {p0}, Lcom/android/hwcamera/Util;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1387
    :goto_0
    return-object v0

    .line 1385
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    .local v0, lists:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static makeBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "picFile"
    .parameter "width"

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 517
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 518
    const/4 v2, 0x0

    .line 519
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    .line 520
    .local v0, bm:Landroid/graphics/Bitmap;
    if-lez p1, :cond_2

    .line 521
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 522
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 523
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 524
    iget-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v4, :cond_0

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v6, :cond_0

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v4, v6, :cond_1

    .line 539
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v3

    .line 528
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, p1

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 529
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 530
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 531
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 534
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 535
    :catch_0
    move-exception v1

    .line 536
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "jpegData"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, -0x1

    .line 495
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 496
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 497
    const/4 v4, 0x0

    array-length v5, p0

    invoke-static {p0, v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 499
    iget-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v4, :cond_0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v4, v6, :cond_0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v4, v6, :cond_1

    .line 512
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 503
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    if-lez p1, :cond_2

    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/android/hwcamera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    :cond_2
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 504
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 506
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 507
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 508
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 510
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 511
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .parameter "path"
    .parameter "directory"

    .prologue
    const/4 v4, 0x0

    .line 1549
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1550
    .local v2, originFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move-object v0, v4

    .line 1554
    :cond_1
    :goto_0
    return-object v0

    .line 1551
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1552
    .local v1, fileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1553
    .local v0, dstFile:Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 1554
    .local v3, ret:Z
    if-nez v3, :cond_1

    move-object v0, v4

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 632
    add-int/lit8 p0, p0, -0x1

    .line 633
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 634
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 635
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 636
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 637
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 638
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static openCamera(Landroid/app/Activity;I)Lcom/android/hwcamera/CameraManager$CameraProxy;
    .locals 2
    .parameter "activity"
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;,
            Lcom/android/hwcamera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-static {p0}, Lcom/android/hwcamera/Util;->throwIfCameraDisabled(Landroid/app/Activity;)V

    .line 581
    :try_start_0
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/CameraHolder;->open(I)Lcom/android/hwcamera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 582
    :catch_0
    move-exception v0

    .line 588
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    throw v0
.end method

.method public static pause(Ljava/lang/Object;)V
    .locals 5
    .parameter "obj"

    .prologue
    .line 355
    if-nez p0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 359
    .local v1, mediaRecorderClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "pause"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 360
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 361
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    .end local v1           #mediaRecorderClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static persistIntValue(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 2
    .parameter "mSharedPreferences"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1406
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 1407
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1408
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1409
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1410
    return-void

    .line 1406
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static persistStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "mSharedPreferences"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1399
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 1400
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1401
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1402
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1403
    return-void

    .line 1399
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pointInView(FFLandroid/view/View;)Z
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 965
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 966
    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    aget v2, v2, v1

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_0

    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    aget v2, v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-gez v2, :cond_0

    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    aget v2, v2, v0

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    sget-object v2, Lcom/android/hwcamera/Util;->sLocation:[I

    aget v2, v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter "matrix"
    .parameter "mirror"
    .parameter "displayOrientation"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 1028
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1030
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1033
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1034
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1035
    return-void

    :cond_0
    move v0, v1

    .line 1028
    goto :goto_0
.end method

.method public static printStackTrace()V
    .locals 2

    .prologue
    .line 1580
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "this is stack trace"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1582
    return-void
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rectF"
    .parameter "rect"

    .prologue
    .line 1019
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1020
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1021
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1022
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1023
    return-void
.end method

.method public static releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 1526
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1528
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    :cond_0
    :goto_0
    return-void

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmap recycle error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static resume(Ljava/lang/Object;)V
    .locals 5
    .parameter "obj"

    .prologue
    .line 370
    if-nez p0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 374
    .local v1, mediaRecorderClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "resume"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 375
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 376
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    .end local v1           #mediaRecorderClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "b"
    .parameter "degrees"

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/hwcamera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"
    .parameter "mirror"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 396
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p0, :cond_4

    .line 397
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 400
    .local v5, m:Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 401
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 402
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 403
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 404
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 411
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 413
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 418
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 420
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_4

    .line 421
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    move-object p0, v7

    .line 428
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 405
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_5
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 406
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 408
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static roundOrientation(II)I
    .locals 3
    .parameter "orientation"
    .parameter "orientationHistory"

    .prologue
    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, changeOrientation:Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 696
    const/4 v0, 0x1

    .line 702
    :goto_0
    if-eqz v0, :cond_0

    .line 703
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 705
    .end local p1
    :cond_0
    return p1

    .line 698
    .restart local p1
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 699
    .local v1, dist:I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 700
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static setDailogMessage(IIILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
    .locals 2
    .parameter "saveButtonResId"
    .parameter "cancelButtonResId"
    .parameter "titleSourceId"
    .parameter "positiveRunable"
    .parameter "negativeRunable"
    .parameter "cancelRunable"
    .parameter "alertDialog"

    .prologue
    .line 196
    invoke-virtual {p6, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 197
    if-nez p0, :cond_0

    const p0, 0x7f0d0251

    .end local p0
    :cond_0
    new-instance v0, Lcom/android/hwcamera/Util$3;

    invoke-direct {v0, p3}, Lcom/android/hwcamera/Util$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p6, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/hwcamera/Util$2;

    invoke-direct {v1, p5}, Lcom/android/hwcamera/Util$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/hwcamera/Util$1;

    invoke-direct {v1}, Lcom/android/hwcamera/Util$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    if-eqz p4, :cond_2

    .line 224
    if-nez p1, :cond_1

    const p1, 0x7f0d026c

    .end local p1
    :cond_1
    new-instance v0, Lcom/android/hwcamera/Util$4;

    invoke-direct {v0, p4}, Lcom/android/hwcamera/Util$4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p6, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    :cond_2
    invoke-virtual {p6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V
    .locals 13
    .parameter "parameters"
    .parameter "loc"

    .prologue
    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x0

    .line 1101
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 1104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v11

    invoke-virtual {p0, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 1107
    if-eqz p1, :cond_1

    .line 1108
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 1109
    .local v1, lat:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 1110
    .local v3, lon:D
    cmpl-double v7, v1, v9

    if-nez v7, :cond_0

    cmpl-double v7, v3, v9

    if-eqz v7, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1112
    .local v0, hasLatLon:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 1113
    const-string v7, "Util"

    const-string v8, "Set gps location"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-virtual {p0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 1115
    invoke-virtual {p0, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 1117
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1120
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 1127
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    .line 1130
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    div-long v5, v7, v11

    .line 1131
    .local v5, utcTimeSeconds:J
    invoke-virtual {p0, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 1137
    .end local v0           #hasLatLon:Z
    .end local v1           #lat:D
    .end local v3           #lon:D
    .end local v5           #utcTimeSeconds:J
    :cond_1
    :goto_2
    return-void

    .line 1110
    .restart local v1       #lat:D
    .restart local v3       #lon:D
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1125
    .restart local v0       #hasLatLon:Z
    :cond_3
    invoke-virtual {p0, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 1134
    :cond_4
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public static setVolumToChannel(Landroid/app/Activity;II)V
    .locals 2
    .parameter "activity"
    .parameter "volum"
    .parameter "channel"

    .prologue
    .line 1490
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1491
    .local v0, am:Landroid/media/AudioManager;
    const/16 v1, 0x8

    invoke-virtual {v0, p2, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1492
    return-void
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;I)V
    .locals 5
    .parameter "activity"
    .parameter "msgId"

    .prologue
    .line 594
    new-instance v0, Lcom/android/hwcamera/Util$5;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Util$5;-><init>(Landroid/app/Activity;)V

    .line 601
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 602
    .local v1, out:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010355

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 603
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0070

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d00b6

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/hwcamera/Util$6;

    invoke-direct {v3}, Lcom/android/hwcamera/Util$6;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 620
    return-void
.end method

.method public static split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1233
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 1241
    :cond_0
    return-object v0

    .line 1236
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1239
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static stopFMRadioPlay(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.android.FMRadio.fmradioservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1165
    .local v0, toFM:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1167
    return-void
.end method

.method public static stopVoiceRecording(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.soundrecorder.stoprecord"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1175
    .local v0, toVoiceRecording:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1176
    return-void
.end method

.method private static throwIfCameraDisabled(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 567
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_GET_CAMERA_DISABLED:Z

    if-eqz v1, :cond_0

    .line 568
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 570
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    new-instance v1, Lcom/android/hwcamera/CameraDisabledException;

    invoke-direct {v1}, Lcom/android/hwcamera/CameraDisabledException;-><init>()V

    throw v1

    .line 574
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    return-void
.end method

.method public static updateCameraScreenNailSize(IILcom/android/hwcamera/CameraScreenNail;Lcom/android/hwcamera/CameraActivity;)V
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "screenNail"
    .parameter "activity"

    .prologue
    const-wide/high16 v7, 0x3ff0

    .line 1141
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v3, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    invoke-virtual {p2}, Lcom/android/hwcamera/CameraScreenNail;->getWidth()I

    move-result v2

    .line 1144
    .local v2, oldWidth:I
    invoke-virtual {p2}, Lcom/android/hwcamera/CameraScreenNail;->getHeight()I

    move-result v1

    .line 1146
    .local v1, oldHeight:I
    if-eqz v2, :cond_2

    int-to-double v3, v2

    mul-double/2addr v3, v7

    int-to-double v5, p0

    div-double/2addr v3, v5

    int-to-double v5, v1

    mul-double/2addr v5, v7

    int-to-double v7, p1

    div-double/2addr v5, v7

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f847ae147ae147bL

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_0

    .line 1147
    :cond_2
    invoke-virtual {p2, p0, p1}, Lcom/android/hwcamera/CameraScreenNail;->setSize(II)V

    .line 1148
    invoke-virtual {p2}, Lcom/android/hwcamera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 1149
    invoke-virtual {p2}, Lcom/android/hwcamera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1150
    invoke-virtual {p3}, Lcom/android/hwcamera/CameraActivity;->doCameraScreenNailAnimation()V

    .line 1153
    :cond_3
    :try_start_0
    invoke-virtual {p3}, Lcom/android/hwcamera/CameraActivity;->notifyScreenNailChanged()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "Util"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static viewUri(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 5
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 997
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 998
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri invalid. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :goto_0
    return-void

    .line 1003
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.REVIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1004
    :catch_0
    move-exception v1

    .line 1006
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1007
    :catch_1
    move-exception v0

    .line 1008
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "review image fail. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
