.class public Lcom/huawei/hicloud/photosharesdk/helper/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hicloud/photosharesdk/helper/Util$SDPath;
    }
.end annotation


# static fields
.field private static final KEY_EXTERNAL_PATH:Ljava/lang/String; = "persist.sys.hw_external_path"

.field private static final KEY_INTERNAL_PATH:Ljava/lang/String; = "persist.sys.hw_internal_path"

.field private static final TAG:Ljava/lang/String;

.field private static sPixelDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/huawei/hicloud/photosharesdk/helper/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/helper/Util;->TAG:Ljava/lang/String;

    .line 35
    const/high16 v0, -0x4080

    sput v0, Lcom/huawei/hicloud/photosharesdk/helper/Util;->sPixelDensity:F

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LT2UTC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->getInstance()Lcom/huawei/hicloud/photosharesdk/helper/DateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->LT2UTC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apnTypeIsWap()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 268
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v10

    .line 295
    .local v6, activeNetInfo:Landroid/net/NetworkInfo;
    .local v8, connectivityManager:Landroid/net/ConnectivityManager;
    :goto_0
    return v0

    .line 272
    .end local v6           #activeNetInfo:Landroid/net/NetworkInfo;
    .end local v8           #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 273
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 272
    check-cast v8, Landroid/net/ConnectivityManager;

    .line 274
    .restart local v8       #connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 275
    .restart local v6       #activeNetInfo:Landroid/net/NetworkInfo;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v11, :cond_1

    move v0, v10

    .line 277
    goto :goto_0

    .line 279
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 280
    const-string v1, "content://telephony/carriers/preferapn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 279
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 281
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 283
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 284
    const-string v0, "user"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 285
    .local v9, user:Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string v0, "ctwap"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 288
    goto :goto_0

    .line 291
    .end local v9           #user:Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    .line 293
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v10

    .line 295
    goto :goto_0
.end method

.method public static declared-synchronized dpToPixel(Landroid/content/Context;F)F
    .locals 4
    .parameter "context"
    .parameter "dp"

    .prologue
    .line 254
    const-class v2, Lcom/huawei/hicloud/photosharesdk/helper/Util;

    monitor-enter v2

    :try_start_0
    sget v1, Lcom/huawei/hicloud/photosharesdk/helper/Util;->sPixelDensity:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 256
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 257
    .local v0, metrics:Landroid/util/DisplayMetrics;
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 259
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 261
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/huawei/hicloud/photosharesdk/helper/Util;->sPixelDensity:F

    .line 263
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    :cond_1
    sget v1, Lcom/huawei/hicloud/photosharesdk/helper/Util;->sPixelDensity:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float/2addr v1, p1

    monitor-exit v2

    return v1

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static dpToPixel(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "dp"

    .prologue
    .line 249
    int-to-float v0, p1

    invoke-static {p0, v0}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static formatTimeAsDefault(Ljava/lang/String;)J
    .locals 2
    .parameter "time"

    .prologue
    .line 201
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->getInstance()Lcom/huawei/hicloud/photosharesdk/helper/DateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->formatTimeAsDefault(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static formatTimeAsGMT(J)Ljava/lang/String;
    .locals 1
    .parameter "time"

    .prologue
    .line 153
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->getInstance()Lcom/huawei/hicloud/photosharesdk/helper/DateManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/huawei/hicloud/photosharesdk/helper/DateManager;->formatTimeAsGMT(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 393
    const-string v3, ""

    .line 396
    .local v3, versionName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 397
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 398
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 399
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-gtz v4, :cond_1

    .line 401
    :cond_0
    const-string v4, ""

    .line 410
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v4

    .line 404
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/helper/Util;->TAG:Ljava/lang/String;

    const-string v5, "getAppVersionName"

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move-object v4, v3

    .line 410
    goto :goto_0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xb

    .line 454
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Build.VERSION.SDK_INT:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 455
    const-string v4, ",Build.VERSION_CODES.HONEYCOMB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 457
    .local v0, context:Landroid/content/Context;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v5, :cond_0

    .line 459
    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->getExternalStoragePath1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 463
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->getExternalStoragePath2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getExternalStoragePath1(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 515
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 516
    const-string v0, "TestCard"

    const-string v1, "getExternalStoragePath1"

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_0
    const-string v0, "persist.sys.hw_external_path"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    const-string v0, "persist.sys.hw_external_path"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getExternalStoragePath2(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 545
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 546
    const-string v3, "TestCard"

    const-string v4, "getExternalStoragePath2"

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_0
    const-string v3, "storage"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 548
    .local v0, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 549
    .local v2, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 556
    const-string v3, ""

    :goto_1
    return-object v3

    .line 549
    :cond_1
    aget-object v1, v2, v3

    .line 551
    .local v1, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "usb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 553
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 549
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getFirmVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getHardwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getInternalStoragePath()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xb

    .line 474
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Build.VERSION.SDK_INT:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 475
    const-string v4, ",Build.VERSION_CODES.HONEYCOMB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 477
    .local v0, context:Landroid/content/Context;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v5, :cond_0

    .line 479
    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->getInternalStoragePath1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 483
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->getInternalStoragePath2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getInternalStoragePath1(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 489
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 490
    const-string v0, "TestCard"

    const-string v1, "getInternalStoragePath1"

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_0
    const-string v0, "persist.sys.hw_internal_path"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    const-string v0, "persist.sys.hw_internal_path"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private static getInternalStoragePath2(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 529
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 530
    const-string v3, "TestCard"

    const-string v4, "getInternalStoragePath2"

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_0
    const-string v3, "storage"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 532
    .local v0, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 533
    .local v2, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 540
    const-string v3, ""

    :goto_1
    return-object v3

    .line 533
    :cond_1
    aget-object v1, v2, v3

    .line 535
    .local v1, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "usb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 537
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 533
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getLocalMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 73
    .local v1, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 74
    .local v0, info:Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_0

    .line 76
    const-string v2, ""

    .line 78
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static isConnect(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 305
    .line 306
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 305
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 307
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 310
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    .line 314
    const/4 v3, 0x1

    .line 324
    .end local v0           #connectivity:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 319
    :catch_0
    move-exception v1

    .line 321
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "erro"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 138
    const/4 v0, 0x1

    .line 139
    .local v0, exist:Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 143
    :cond_0
    return v0
.end method

.method public static isInstalledByPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 425
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_0
    return v2

    .line 428
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/huawei/hicloud/photosharesdk/helper/Util;->TAG:Ljava/lang/String;

    const-string v3, "isInstalledByPackage"

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMobileConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 370
    if-nez p0, :cond_0

    .line 372
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 375
    :cond_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 374
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 376
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 378
    .local v1, mobNetInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 384
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isMobileNO(Ljava/lang/String;)Z
    .locals 3
    .parameter "mobiles"

    .prologue
    .line 124
    const-string v2, "^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 125
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 127
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 347
    if-nez p0, :cond_0

    .line 349
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 352
    :cond_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 351
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 353
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 355
    .local v1, wifiNetInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 357
    const/4 v2, 0x0

    .line 361
    :cond_1
    return v2
.end method

.method public static isWifiOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 329
    .line 330
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 329
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 331
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 332
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 338
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
