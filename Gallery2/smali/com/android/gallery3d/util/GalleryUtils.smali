.class public Lcom/android/gallery3d/util/GalleryUtils;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/GalleryUtils$DataBundle;,
        Lcom/android/gallery3d/util/GalleryUtils$Params;
    }
.end annotation


# static fields
.field private static final CAMERA_LAUNCHER_NAME:Ljava/lang/String; = "com.android.hwcamera.CameraLauncher"

.field private static final DATE_DEFAULT_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final DIR_TYPE_IMAGE:Ljava/lang/String; = "vnd.android.cursor.dir/image"

.field private static final DIR_TYPE_VIDEO:Ljava/lang/String; = "vnd.android.cursor.dir/video"

.field public static final DT_FLAG:I = 0x10a15

.field private static final EARTH_RADIUS_METERS:D = 6367000.0

#the value of this static final field might be set in the static constructor
.field public static final FIXED_WALLPAPER_ENANBLED:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_SUPPORT_HW_ANIMATION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_SUPPORT_PRIVACY:Z = false

.field private static final KEY_CAMERA_UPDATE:Ljava/lang/String; = "camera-update"

.field private static final KEY_HAS_CAMERA:Ljava/lang/String; = "has-camera"

.field private static final MAPS_CLASS_NAME:Ljava/lang/String; = "com.google.android.maps.MapsActivity"

.field private static final MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field public static final MEMORY_THRESHOLD_MAV_L1:J = 0x6400000L

.field public static final MEMORY_THRESHOLD_MAV_L2:J = 0x3200000L

.field public static final MIME_TYPE_ALL:Ljava/lang/String; = "*/*"

.field public static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field public static final MIME_TYPE_PANORAMA360:Ljava/lang/String; = "application/vnd.google.panorama360+jpg"

.field public static final MIME_TYPE_VIDEO:Ljava/lang/String; = "video/*"

.field private static final PREFIX_HAS_PHOTO_EDITOR:Ljava/lang/String; = "has-editor-"

.field private static final PREFIX_PHOTO_EDITOR_UPDATE:Ljava/lang/String; = "editor-update-"

.field public static final PRIVACY_BROADCAST_ACTION:Ljava/lang/String; = "android.intent.actions.PRIVACY_MODE_CHANGED"

.field public static final PRIVACY_BROADCAST_PERMISSION:Ljava/lang/String; = "com.huawei.privacymode.permission.SEND_MODE_CHANGED"

.field private static final RAD_PER_DEG:D = 0.017453292519943295

.field public static final SHARE_LIMIT_EXCEED_NUM:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "GalleryUtils"

.field private static mMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture; = null

.field private static sCameraAvailable:Z = false

.field private static sCameraAvailableInitialized:Z = false

.field private static volatile sCurrentThread:Ljava/lang/Thread; = null

.field private static sLanguage:Ljava/lang/String; = null

.field private static sPixelDensity:F = 0.0f

.field private static sPrivacyMode:Z = false

.field private static sSoundPlayer:Lcom/android/gallery3d/app/SoundClips$Player; = null

.field private static sVolumePaths:[Ljava/lang/String; = null

.field private static volatile sWarned:Z = false

.field private static final supportMAV:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    const-string v0, "ro.config.hw_privacymode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    .line 109
    const-string v0, "ro.config.gallery_hw_animation"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_HW_ANIMATION:Z

    .line 134
    const/high16 v0, -0x4080

    sput v0, Lcom/android/gallery3d/util/GalleryUtils;->sPixelDensity:F

    .line 135
    sput-boolean v1, Lcom/android/gallery3d/util/GalleryUtils;->sCameraAvailableInitialized:Z

    .line 143
    sput-boolean v1, Lcom/android/gallery3d/util/GalleryUtils;->sPrivacyMode:Z

    .line 146
    sput-object v3, Lcom/android/gallery3d/util/GalleryUtils;->sLanguage:Ljava/lang/String;

    .line 148
    const-string v0, "ro.config.enable_fixedwallpaper"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->FIXED_WALLPAPER_ENANBLED:Z

    .line 888
    sput-object v3, Lcom/android/gallery3d/util/GalleryUtils;->mMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    return-void
.end method

.method public static accurateDistanceMeters(DDDD)D
    .locals 14
    .parameter "lat1"
    .parameter "lng1"
    .parameter "lat2"
    .parameter "lng2"

    .prologue
    .line 269
    const-wide/high16 v6, 0x3fe0

    sub-double v8, p4, p0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 270
    .local v0, dlat:D
    const-wide/high16 v6, 0x3fe0

    sub-double v8, p6, p2

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 271
    .local v2, dlng:D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 272
    .local v4, x:D
    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0

    sub-double/2addr v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x415849c600000000L

    mul-double/2addr v6, v8

    return-wide v6
.end method

.method public static assertNotInRenderThread()V
    .locals 3

    .prologue
    .line 233
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->sWarned:Z

    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 235
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->sWarned:Z

    .line 236
    const-string v0, "GalleryUtils"

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Should not do this in render thread"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    :cond_0
    return-void
.end method

.method public static availableMemoryForMavPlayback(Lcom/android/gallery3d/app/AbstractGalleryActivity;)J
    .locals 7
    .parameter "mActivity"

    .prologue
    .line 876
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    move-object v0, v4

    check-cast v0, Landroid/app/ActivityManager;

    .line 877
    .local v0, am:Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 878
    .local v3, mi:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 879
    iget-wide v1, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 880
    .local v1, availableMemory:J
    const-string v4, "GalleryUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current available memory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    return-wide v1
.end method

.method public static checkDiskSpace(Ljava/lang/String;J)Z
    .locals 6
    .parameter "path"
    .parameter "minSize"

    .prologue
    const/4 v1, 0x0

    .line 559
    if-nez p0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return v1

    .line 560
    :cond_1
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 561
    .local v0, fs:Landroid/os/StatFs;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkLanguage(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, language:Ljava/lang/String;
    sget-object v1, Lcom/android/gallery3d/util/GalleryUtils;->sLanguage:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/gallery3d/util/GalleryUtils;->sLanguage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 863
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->updateAppName(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 865
    :cond_0
    sput-object v0, Lcom/android/gallery3d/util/GalleryUtils;->sLanguage:Ljava/lang/String;

    .line 866
    return-void
.end method

.method public static checkSupportedAction(II)Z
    .locals 3
    .parameter "action"
    .parameter "supported"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 637
    sparse-switch p0, :sswitch_data_0

    move v0, v1

    .line 694
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 640
    :sswitch_1
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 645
    :sswitch_2
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 648
    :sswitch_3
    and-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 650
    :sswitch_4
    and-int/lit16 v2, p1, 0x1000

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_5
    move v0, v1

    .line 653
    goto :goto_0

    .line 656
    :sswitch_6
    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 659
    :sswitch_7
    and-int/lit8 v2, p1, 0x20

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 661
    :sswitch_8
    and-int/lit8 v2, p1, 0x10

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 664
    :sswitch_9
    and-int/lit16 v2, p1, 0x200

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 667
    :sswitch_a
    and-int/lit16 v2, p1, 0x400

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 669
    :sswitch_b
    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 672
    :sswitch_c
    const/high16 v2, 0x200

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 675
    :sswitch_d
    const/high16 v2, 0x800

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 678
    :sswitch_e
    const/high16 v2, 0x400

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 682
    :sswitch_f
    const/high16 v2, 0x100

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 685
    :sswitch_10
    const/high16 v2, 0x2000

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 689
    :sswitch_11
    const/high16 v2, 0x80

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 637
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x7f0d01eb -> :sswitch_3
        0x7f0d0269 -> :sswitch_1
        0x7f0d026d -> :sswitch_6
        0x7f0d0279 -> :sswitch_a
        0x7f0d027a -> :sswitch_c
        0x7f0d027b -> :sswitch_e
        0x7f0d027d -> :sswitch_d
        0x7f0d0291 -> :sswitch_2
        0x7f0d0292 -> :sswitch_2
        0x7f0d0294 -> :sswitch_9
        0x7f0d03da -> :sswitch_f
        0x7f0d03db -> :sswitch_11
        0x7f0d03f8 -> :sswitch_10
        0x7f0d0479 -> :sswitch_7
        0x7f10022d -> :sswitch_6
        0x7f10022f -> :sswitch_10
        0x7f100230 -> :sswitch_1
        0x7f100231 -> :sswitch_f
        0x7f100232 -> :sswitch_11
        0x7f10023e -> :sswitch_c
        0x7f100242 -> :sswitch_d
        0x7f100271 -> :sswitch_b
        0x7f100272 -> :sswitch_5
        0x7f100273 -> :sswitch_9
        0x7f100274 -> :sswitch_2
        0x7f100275 -> :sswitch_2
        0x7f100276 -> :sswitch_3
        0x7f100277 -> :sswitch_7
        0x7f100278 -> :sswitch_8
        0x7f100279 -> :sswitch_e
        0x7f10027a -> :sswitch_a
        0x7f10027b -> :sswitch_4
    .end sparse-switch
.end method

.method public static closeStreamSilencely(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 771
    if-nez p0, :cond_0

    .line 777
    :goto_0
    return-void

    .line 774
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 586
    const/4 v8, 0x0

    .line 587
    .local v8, path:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 588
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 589
    .local v10, scheme:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 616
    .end local v10           #scheme:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 592
    .restart local v10       #scheme:Ljava/lang/String;
    :cond_2
    const-string v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rtsp"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 593
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 594
    :cond_4
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 596
    .local v2, PROJECTION:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 598
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 601
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 602
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 603
    .local v9, pathIndex:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 610
    .end local v9           #pathIndex:I
    :cond_5
    if-eqz v6, :cond_1

    .line 611
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 606
    :catch_0
    move-exception v7

    .line 607
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 611
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private static createGoogleMapIntent(DD)Landroid/content/Intent;
    .locals 6
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 397
    const-string v3, "http://maps.google.com/maps?f=q&q=(%f,%f)"

    invoke-static {v3, p0, p1, p2, p3}, Lcom/android/gallery3d/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, uri:Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.google.android.apps.maps"

    const-string v4, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .local v0, compName:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 400
    .local v1, intent:Landroid/content/Intent;
    return-object v1
.end method

.method private static createNormalMapIntent(DD)Landroid/content/Intent;
    .locals 4
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 404
    const-string v1, "geo:%f,%f"

    invoke-static {v1, p0, p1, p2, p3}, Lcom/android/gallery3d/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, uri:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method public static determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 4
    .parameter "context"
    .parameter "intent"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 451
    const/4 v1, 0x0

    .line 452
    .local v1, typeBits:I
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, type:Ljava/lang/String;
    const-string v2, "*/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    const/4 v1, 0x3

    .line 466
    :goto_0
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_INTENT_EXTRA_LOCAL_ONLY:Z

    if-eqz v2, :cond_0

    .line 467
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    or-int/lit8 v1, v1, 0x4

    .line 472
    :cond_0
    return v1

    .line 456
    :cond_1
    const-string v2, "image/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 459
    :cond_3
    const-string v2, "video/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "vnd.android.cursor.dir/video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 461
    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    .line 463
    :cond_5
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static dismissDialogSafely(Landroid/app/Dialog;Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1
    .parameter "dialog"
    .parameter "activity"

    .prologue
    .line 752
    if-nez p0, :cond_0

    .line 768
    :goto_0
    return-void

    .line 758
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static dpToPixel(F)F
    .locals 1
    .parameter "dp"

    .prologue
    .line 200
    sget v0, Lcom/android/gallery3d/util/GalleryUtils;->sPixelDensity:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dpToPixel(I)I
    .locals 1
    .parameter "dp"

    .prologue
    .line 204
    int-to-float v0, p0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static ensureExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 9
    .parameter "context"

    .prologue
    .line 532
    const-wide/32 v4, 0x80000

    .line 534
    .local v4, minSize:J
    const/4 v1, 0x0

    .line 536
    .local v1, dir:Ljava/io/File;
    sget-object v0, Lcom/android/gallery3d/util/GalleryUtils;->sVolumePaths:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 538
    .local v6, path:Ljava/lang/String;
    const-wide/32 v7, 0x80000

    invoke-static {v6, v7, v8}, Lcom/android/gallery3d/util/GalleryUtils;->checkDiskSpace(Ljava/lang/String;J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 539
    new-instance v1, Ljava/io/File;

    .end local v1           #dir:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/Android/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .end local v6           #path:Ljava/lang/String;
    .restart local v1       #dir:Ljava/io/File;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 545
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v8, ".nomedia"

    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_1

    .line 549
    const-string v7, "GalleryUtils"

    const-string v8, "Unable to create external cache directory"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_1
    return-object v1

    .line 536
    .restart local v6       #path:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    .end local v6           #path:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static fakeBusy(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)V
    .locals 3
    .parameter "jc"
    .parameter "timeout"

    .prologue
    .line 283
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 284
    .local v0, cv:Landroid/os/ConditionVariable;
    new-instance v1, Lcom/android/gallery3d/util/GalleryUtils$1;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/util/GalleryUtils$1;-><init>(Landroid/os/ConditionVariable;)V

    invoke-interface {p0, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 290
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 291
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 292
    return-void
.end method

.method public static fastDistanceMeters(DDDD)D
    .locals 12
    .parameter "latRad1"
    .parameter "lngRad1"
    .parameter "latRad2"
    .parameter "lngRad2"

    .prologue
    .line 246
    sub-double v8, p0, p4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_0

    sub-double v8, p2, p6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f91df46a2529d39L

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 248
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/android/gallery3d/util/GalleryUtils;->accurateDistanceMeters(DDDD)D

    move-result-wide v8

    .line 264
    :goto_0
    return-wide v8

    .line 251
    :cond_1
    sub-double v2, p0, p4

    .line 254
    .local v2, sineLat:D
    sub-double v4, p2, p6

    .line 258
    .local v4, sineLng:D
    add-double v8, p0, p4

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 259
    .local v0, cosTerms:D
    mul-double/2addr v0, v0

    .line 260
    mul-double v8, v2, v2

    mul-double v10, v0, v4

    mul-double/2addr v10, v4

    add-double v6, v8, v10

    .line 261
    .local v6, trigTerm:D
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 264
    const-wide v8, 0x415849c600000000L

    mul-double/2addr v8, v6

    goto :goto_0
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "duration"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 437
    div-int/lit16 v1, p1, 0xe10

    .line 438
    .local v1, h:I
    mul-int/lit16 v4, v1, 0xe10

    sub-int v4, p1, v4

    div-int/lit8 v2, v4, 0x3c

    .line 439
    .local v2, m:I
    mul-int/lit16 v4, v1, 0xe10

    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v4, v5

    sub-int v3, p1, v4

    .line 441
    .local v3, s:I
    if-nez v1, :cond_0

    .line 442
    const v4, 0x7f0d0241

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, durationValue:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 444
    .end local v0           #durationValue:Ljava/lang/String;
    :cond_0
    const v4, 0x7f0d0242

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #durationValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;
    .locals 4
    .parameter "format"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 378
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBucketId(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 432
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter "in"

    .prologue
    .line 213
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 214
    .local v6, result:[B
    const/4 v4, 0x0

    .line 215
    .local v4, output:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v5, v4

    .end local v4           #output:I
    .local v5, output:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 216
    .local v1, ch:C
    add-int/lit8 v4, v5, 0x1

    .end local v5           #output:I
    .restart local v4       #output:I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 217
    add-int/lit8 v5, v4, 0x1

    .end local v4           #output:I
    .restart local v5       #output:I
    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v1           #ch:C
    :cond_0
    return-object v6
.end method

.method public static getDelayTime(I)I
    .locals 3
    .parameter "time"

    .prologue
    .line 626
    const-string v1, "ro.autotest.delaytimes"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 628
    .local v0, times:I
    mul-int v1, p0, v0

    return v1
.end method

.method public static getExifData(Ljava/lang/String;)Lcom/android/gallery3d/exif/ExifData;
    .locals 7
    .parameter "path"

    .prologue
    .line 787
    const/4 v1, 0x0

    .line 789
    .local v1, is:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    .end local v1           #is:Ljava/io/FileInputStream;
    .local v2, is:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Lcom/android/gallery3d/exif/ExifReader;

    invoke-direct {v3}, Lcom/android/gallery3d/exif/ExifReader;-><init>()V

    .line 791
    .local v3, reader:Lcom/android/gallery3d/exif/ExifReader;
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 797
    .local v0, data:Lcom/android/gallery3d/exif/ExifData;
    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    move-object v1, v2

    .end local v0           #data:Lcom/android/gallery3d/exif/ExifData;
    .end local v2           #is:Ljava/io/FileInputStream;
    .end local v3           #reader:Lcom/android/gallery3d/exif/ExifReader;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 793
    :catch_0
    move-exception v4

    .line 794
    .local v4, t:Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string v5, "GalleryUtils"

    const-string v6, "Cannot read EXIF data"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 795
    const/4 v0, 0x0

    .line 797
    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v4           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    throw v5

    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 793
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getExternalStoragePaths(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    new-instance v1, Ljava/util/ArrayList;

    const/4 v8, 0x5

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 569
    .local v1, externalStorgeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "storage"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 570
    .local v5, sm:Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 572
    .local v7, volumeArr:[Landroid/os/storage/StorageVolume;
    move-object v0, v7

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v6, v0, v2

    .line 573
    .local v6, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 574
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, path:Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 576
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 578
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    .end local v4           #path:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    return-object v1
.end method

.method public static getFileSizeString(J)Ljava/lang/String;
    .locals 11
    .parameter "fileSizeByte"

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 714
    const-wide/16 v0, 0x400

    .line 715
    .local v0, UNIT_KB:J
    const-wide/32 v2, 0x100000

    .line 716
    .local v2, UNIT_MB:J
    const-wide/16 v4, 0x400

    cmp-long v4, p0, v4

    if-gez v4, :cond_0

    .line 717
    const-string v4, "%d B"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 721
    :goto_0
    return-object v4

    .line 718
    :cond_0
    const-wide/32 v4, 0x100000

    cmp-long v4, p0, v4

    if-gez v4, :cond_1

    .line 719
    const-string v4, "%.1f KB"

    new-array v5, v6, [Ljava/lang/Object;

    long-to-double v6, p0

    const-wide/high16 v8, 0x4090

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 721
    :cond_1
    const-string v4, "%.1f MB"

    new-array v5, v6, [Ljava/lang/Object;

    long-to-double v6, p0

    const-wide/high16 v8, 0x4130

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getFomattedDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "mills"

    .prologue
    .line 734
    const v1, 0x10a15

    invoke-static {p0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, dateString:Ljava/lang/String;
    return-object v0
.end method

.method public static getGalleryIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"

    .prologue
    .line 824
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 825
    .local v2, pkgName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 827
    .local v0, appIcon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 831
    :goto_0
    return-object v0

    .line 828
    :catch_0
    move-exception v1

    .line 829
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "GalleryUtils"

    const-string v4, "component package name not found!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getSelectionModePrompt(I)I
    .locals 1
    .parameter "typeBits"

    .prologue
    .line 476
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 477
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f0d025b

    .line 481
    :goto_0
    return v0

    .line 477
    :cond_0
    const v0, 0x7f0d025c

    goto :goto_0

    .line 481
    :cond_1
    const v0, 0x7f0d025a

    goto :goto_0
.end method

.method public static getSettingFormatShortDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "mills"

    .prologue
    .line 728
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 729
    .local v0, shortDateFormat:Ljava/text/DateFormat;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSoundPlayer()Lcom/android/gallery3d/app/SoundClips$Player;
    .locals 1

    .prologue
    .line 748
    sget-object v0, Lcom/android/gallery3d/util/GalleryUtils;->sSoundPlayer:Lcom/android/gallery3d/app/SoundClips$Player;

    return-object v0
.end method

.method public static getThemeContext(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;
    .locals 2
    .parameter "context"

    .prologue
    .line 707
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->getThemeID(Landroid/content/Context;)I

    move-result v1

    .line 708
    .local v1, themeID:I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 709
    .local v0, themeContext:Landroid/view/ContextThemeWrapper;
    return-object v0
.end method

.method public static getThemeID(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 700
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "androidhwext:style/Theme.Emui"

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 702
    .local v0, themeID:I
    return v0
.end method

.method public static getVolumePaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    sget-object v0, Lcom/android/gallery3d/util/GalleryUtils;->sVolumePaths:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static hasSpaceForSize(J)Z
    .locals 9
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 485
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, state:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v4

    .line 490
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, path:Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 493
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    cmp-long v5, v5, p0

    if-lez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 494
    .end local v2           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v0

    .line 495
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "GalleryUtils"

    const-string v6, "Fail to access external storage"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static hasSpaceForSize(JLjava/lang/String;)Z
    .locals 11
    .parameter "size"
    .parameter "dataPath"

    .prologue
    const/4 v6, 0x0

    .line 516
    sget-object v0, Lcom/android/gallery3d/util/GalleryUtils;->sVolumePaths:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 518
    .local v4, path:Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 520
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 521
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v7, v9

    cmp-long v7, v7, p0

    if-lez v7, :cond_0

    const/4 v6, 0x1

    .line 527
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #stat:Landroid/os/StatFs;
    :cond_0
    return v6

    .line 522
    .restart local v4       #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 523
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "GalleryUtils"

    const-string v8, "Fail to access external storage"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 151
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 152
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 156
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 158
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcom/android/gallery3d/util/GalleryUtils;->sPixelDensity:F

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 160
    .local v1, r:Landroid/content/res/Resources;
    const v4, 0x7f0a002b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/gallery3d/ui/TiledScreenNail;->setPlaceholderColor(I)V

    .line 162
    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->initializeThumbnailSizes(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    .line 166
    const-string v4, "storage"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 167
    .local v2, sm:Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/gallery3d/util/GalleryUtils;->sVolumePaths:[Ljava/lang/String;

    .line 171
    invoke-static {p0}, Lcom/android/gallery3d/app/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/android/gallery3d/app/SoundClips$Player;

    move-result-object v4

    sput-object v4, Lcom/android/gallery3d/util/GalleryUtils;->sSoundPlayer:Lcom/android/gallery3d/app/SoundClips$Player;

    .line 172
    return-void
.end method

.method private static initializeThumbnailSizes(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V
    .locals 3
    .parameter "metrics"
    .parameter "r"

    .prologue
    .line 175
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 178
    .local v0, maxPixels:I
    div-int/lit8 v1, v0, 0x2

    div-int/lit8 v2, v0, 0x5

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/MediaItem;->setThumbnailSizes(II)V

    .line 179
    div-int/lit8 v1, v0, 0x2

    invoke-static {v1}, Lcom/android/gallery3d/ui/TiledScreenNail;->setMaxSide(I)V

    .line 180
    return-void
.end method

.method public static intColorToFloatARGBArray(I)[F
    .locals 4
    .parameter "from"

    .prologue
    const/high16 v3, 0x437f

    .line 191
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method public static isAlbumNameValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "albumName"

    .prologue
    .line 780
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    const/4 v0, 0x0

    .line 783
    :goto_0
    return v0

    :cond_0
    const-string v0, "^[^\\\\/:*?<>\"|\\[\\]\\{\\}]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isAnyCameraAvailable(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 314
    invoke-static {p0}, Lcom/android/gallery3d/app/PackagesMonitor;->getPackagesVersion(Landroid/content/Context;)I

    move-result v3

    .line 315
    .local v3, version:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 316
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v6, "camera-update"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v3, :cond_1

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 318
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 320
    .local v0, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "camera-update"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "has-camera"

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    move v4, v5

    :cond_0
    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 324
    .end local v0           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    :cond_1
    const-string v4, "has-camera"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    return v4
.end method

.method public static isAnyMapAvailable(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 383
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "geo:0,0"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 385
    .local v0, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isCameraAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 328
    sget-boolean v4, Lcom/android/gallery3d/util/GalleryUtils;->sCameraAvailableInitialized:Z

    if-eqz v4, :cond_0

    sget-boolean v3, Lcom/android/gallery3d/util/GalleryUtils;->sCameraAvailable:Z

    .line 336
    :goto_0
    return v3

    .line 329
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 330
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.hwcamera.CameraLauncher"

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 331
    .local v0, name:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 332
    .local v2, state:I
    sput-boolean v3, Lcom/android/gallery3d/util/GalleryUtils;->sCameraAvailableInitialized:Z

    .line 333
    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    :goto_1
    sput-boolean v3, Lcom/android/gallery3d/util/GalleryUtils;->sCameraAvailable:Z

    .line 336
    sget-boolean v3, Lcom/android/gallery3d/util/GalleryUtils;->sCameraAvailable:Z

    goto :goto_0

    .line 333
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "mimeType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 295
    invoke-static {p0}, Lcom/android/gallery3d/app/PackagesMonitor;->getPackagesVersion(Landroid/content/Context;)I

    move-result v5

    .line 297
    .local v5, version:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "editor-update-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, updateKey:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "has-editor-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, hasKey:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 301
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v5, :cond_1

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 303
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v2, v8, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 305
    .local v1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    move v6, v7

    :cond_0
    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 310
    .end local v1           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    :cond_1
    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    return v6
.end method

.method private static isGoogleMapAvailable(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 391
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4, v5, v4, v5}, Lcom/android/gallery3d/util/GalleryUtils;->createGoogleMapIntent(DD)Landroid/content/Intent;

    move-result-object v1

    .line 392
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 393
    .local v0, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static isHighResolution(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0x800

    .line 183
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 184
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 186
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 187
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v2, v3, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMAVSupported()Z
    .locals 1

    .prologue
    .line 885
    const/4 v0, 0x1

    return v0
.end method

.method public static isPanorama(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 501
    if-nez p0, :cond_1

    .line 504
    :cond_0
    :goto_0
    return v2

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    .line 503
    .local v1, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    .line 504
    .local v0, h:I
    if-lez v0, :cond_0

    div-int v3, v1, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isPrivacyMode()Z
    .locals 1

    .prologue
    .line 744
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->sPrivacyMode:Z

    return v0
.end method

.method public static isPrivacyMode(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 340
    sget-boolean v3, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    if-nez v3, :cond_0

    .line 353
    :goto_0
    return v0

    .line 342
    :cond_0
    const/4 v0, 0x0

    .line 345
    .local v0, isPrivacyMode:Z
    :try_start_0
    const-string v3, "com.huawei.privacymode"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 347
    .local v1, privacyModeAppContext:Landroid/content/Context;
    const-string v3, "privacy_mode_settings"

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 349
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "privacy_mode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 350
    .end local v1           #privacyModeAppContext:Landroid/content/Context;
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isValidLocation(DD)Z
    .locals 3
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const-wide/16 v1, 0x0

    .line 371
    cmpl-double v0, p0, v1

    if-nez v0, :cond_0

    cmpl-double v0, p2, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static meterToPixel(F)I
    .locals 2
    .parameter "meter"

    .prologue
    .line 209
    const v0, 0x421d7ae1

    mul-float/2addr v0, p0

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized renderSubTypeOverlay(Landroid/content/Context;Lcom/android/gallery3d/ui/GLCanvas;III)V
    .locals 8
    .parameter "context"
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "subType"

    .prologue
    .line 891
    const-class v7, Lcom/android/gallery3d/util/GalleryUtils;

    monitor-enter v7

    if-nez p4, :cond_1

    .line 908
    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    .line 898
    :cond_1
    const/4 v6, 0x1

    .line 899
    .local v6, isMav:Z
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    and-int/2addr v6, v0

    .line 900
    if-eqz v6, :cond_0

    .line 901
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/util/GalleryUtils;->mMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    if-nez v0, :cond_2

    .line 902
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020197

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/gallery3d/util/GalleryUtils;->mMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 904
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v4, v0, 0x3

    .line 906
    .local v4, side:I
    sget-object v0, Lcom/android/gallery3d/util/GalleryUtils;->mMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    sub-int v1, p2, v4

    div-int/lit8 v2, v1, 0x2

    sub-int v1, p3, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 891
    .end local v4           #side:I
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 899
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static setHorizontalFadeEdge(Landroid/widget/TextView;)V
    .locals 2
    .parameter "tv"

    .prologue
    const/4 v1, 0x1

    .line 813
    if-nez p0, :cond_0

    .line 819
    :goto_0
    return-void

    .line 816
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 817
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 818
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_0
.end method

.method public static setPrivacyMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 740
    sput-boolean p0, Lcom/android/gallery3d/util/GalleryUtils;->sPrivacyMode:Z

    .line 741
    return-void
.end method

.method public static setRenderThread()V
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    .line 230
    return-void
.end method

.method public static setTextColor(Landroid/widget/TextView;Landroid/content/res/Resources;)V
    .locals 2
    .parameter "tv"
    .parameter "res"

    .prologue
    .line 837
    if-nez p0, :cond_0

    .line 841
    :goto_0
    return-void

    .line 839
    :cond_0
    const v1, 0x7f0a0047

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 840
    .local v0, textColor:I
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public static setViewPointMatrix([FFFF)V
    .locals 4
    .parameter "matrix"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v3, 0x0

    .line 424
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p0, v3, v0, v1}, Ljava/util/Arrays;->fill([FIIF)V

    .line 425
    const/4 v0, 0x5

    const/16 v1, 0xf

    neg-float v2, p3

    aput v2, p0, v1

    aput v2, p0, v0

    aput v2, p0, v3

    .line 426
    const/16 v0, 0x8

    aput p1, p0, v0

    .line 427
    const/16 v0, 0x9

    aput p2, p0, v0

    .line 428
    const/16 v0, 0xa

    const/16 v1, 0xb

    const/high16 v2, 0x3f80

    aput v2, p0, v1

    aput v2, p0, v0

    .line 429
    return-void
.end method

.method public static showLimitExceedDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "confim"

    .prologue
    .line 803
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 806
    .local v0, limitExceedDialog:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 807
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 808
    return-void
.end method

.method public static showOnMap(Landroid/content/Context;DD)V
    .locals 2
    .parameter "context"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 409
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->isGoogleMapAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/android/gallery3d/util/GalleryUtils;->createGoogleMapIntent(DD)Landroid/content/Intent;

    move-result-object v0

    .line 413
    .local v0, mapIntent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 414
    return-void

    .line 409
    .end local v0           #mapIntent:Landroid/content/Intent;
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/gallery3d/util/GalleryUtils;->createNormalMapIntent(DD)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static startCameraActivity(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 357
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 360
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 361
    return-void
.end method

.method public static startGalleryActivity(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 364
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 367
    return-void
.end method

.method public static final toMile(D)D
    .locals 2
    .parameter "meter"

    .prologue
    .line 278
    const-wide v0, 0x4099240000000000L

    div-double v0, p0, v0

    return-wide v0
.end method

.method private static updateAppName(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 8
    .parameter "activity"

    .prologue
    .line 846
    sget-object v3, Lcom/android/gallery3d/util/MediaSetUtils;->sNameMap:Landroid/util/SparseIntArray;

    .line 847
    .local v3, nameMap:Landroid/util/SparseIntArray;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 848
    .local v1, dm:Lcom/android/gallery3d/data/DataManager;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 849
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 850
    .local v0, bucketId:I
    sget-object v7, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 851
    :try_start_0
    sget-object v6, Lcom/android/gallery3d/data/LocalAlbumSet;->PATH_ALL:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 852
    .local v5, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v1, v5}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 853
    .local v4, object:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v4, :cond_0

    .line 854
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->updateName()V

    .line 856
    :cond_0
    monitor-exit v7

    .line 848
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 856
    .end local v4           #object:Lcom/android/gallery3d/data/MediaObject;
    .end local v5           #path:Lcom/android/gallery3d/data/Path;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 858
    .end local v0           #bucketId:I
    :cond_1
    return-void
.end method
