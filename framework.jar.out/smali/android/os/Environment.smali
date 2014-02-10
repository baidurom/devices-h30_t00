.class public Landroid/os/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Environment$UserEnvironmentSD;,
        Landroid/os/Environment$UserEnvironment;
    }
.end annotation


# static fields
.field private static final DATA_DIRECTORY:Ljava/io/File; = null

.field public static DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static DIRECTORY_ANDROID:Ljava/lang/String; = null

.field public static DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field private static final DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File; = null

.field private static final ENV_EMULATED_STORAGE_SOURCE:Ljava/lang/String; = "EMULATED_STORAGE_SOURCE"

.field private static final ENV_EMULATED_STORAGE_TARGET:Ljava/lang/String; = "EMULATED_STORAGE_TARGET"

.field private static final ENV_EXTERNAL_STORAGE:Ljava/lang/String; = "EXTERNAL_STORAGE"

.field private static final ENV_MEDIA_STORAGE:Ljava/lang/String; = "MEDIA_STORAGE"

#the value of this static final field might be set in the static constructor
.field private static final IS_SWITCH_SD_ENABLED:Z = false

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_ERROR:Ljava/lang/String; = "error"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field private static final ROOT_DIRECTORY:Ljava/io/File; = null

.field private static final SECURE_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final SYSTEM_PROPERTY_EFS_ENABLED:Ljava/lang/String; = "persist.security.efs.enabled"

.field private static final TAG:Ljava/lang/String; = "Environment"

.field private static sCurrentUser:Landroid/os/Environment$UserEnvironment;

.field private static sCurrentUserSd:Landroid/os/Environment$UserEnvironmentSD;

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sPrimaryVolume:Landroid/os/storage/StorageVolume;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-string v0, "Android"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    .line 44
    const-string v0, "ANDROID_ROOT"

    const-string v1, "/system"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->ROOT_DIRECTORY:Ljava/io/File;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    .line 89
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 270
    const-string v0, "ANDROID_DATA"

    const-string v1, "/data"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    .line 276
    const-string v0, "ANDROID_SECURE_DATA"

    const-string v1, "/data/secure"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 279
    const-string v0, "DOWNLOAD_CACHE"

    const-string v1, "/cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    .line 380
    const-string v0, "Music"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 392
    const-string v0, "Podcasts"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    .line 404
    const-string v0, "Ringtones"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 416
    const-string v0, "Alarms"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    .line 428
    const-string v0, "Notifications"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    .line 436
    const-string v0, "Pictures"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 444
    const-string v0, "Movies"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 454
    const-string v0, "Download"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 461
    const-string v0, "DCIM"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 877
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.config.switchPrimaryVolume"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/Environment;->IS_SWITCH_SD_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 778
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-static {p0, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "base"
    .parameter "segments"

    .prologue
    .line 719
    move-object v1, p0

    .line 720
    .local v1, cur:Ljava/io/File;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move-object v2, v1

    .end local v1           #cur:Ljava/io/File;
    .local v2, cur:Ljava/io/File;
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 721
    .local v5, segment:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 722
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 720
    .end local v2           #cur:Ljava/io/File;
    .restart local v1       #cur:Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1           #cur:Ljava/io/File;
    .restart local v2       #cur:Ljava/io/File;
    goto :goto_0

    .line 724
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v2           #cur:Ljava/io/File;
    .restart local v1       #cur:Ljava/io/File;
    goto :goto_1

    .line 727
    .end local v1           #cur:Ljava/io/File;
    .end local v5           #segment:Ljava/lang/String;
    .restart local v2       #cur:Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method private static checkPrimaryVolumeIsSD()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 880
    const-string/jumbo v2, "persist.sys.primarysd"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "variableName"
    .parameter "defaultPath"

    .prologue
    .line 708
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDownloadCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 596
    sget-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getEmulatedStorageObbSource()Ljava/io/File;
    .locals 3

    .prologue
    .line 368
    new-instance v0, Ljava/io/File;

    const-string v1, "EMULATED_STORAGE_SOURCE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "obb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getEmulatedStorageSource(I)Ljava/io/File;
    .locals 3
    .parameter "userId"

    .prologue
    .line 362
    new-instance v0, Ljava/io/File;

    const-string v1, "EMULATED_STORAGE_SOURCE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAndroidDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 507
    invoke-static {}, Landroid/os/Environment;->throwIfSystem()V

    .line 509
    sget-boolean v0, Landroid/os/Environment;->IS_SWITCH_SD_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->checkPrimaryVolumeIsSD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    sget-object v0, Landroid/os/Environment;->sCurrentUserSd:Landroid/os/Environment$UserEnvironmentSD;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironmentSD;->getExternalStorageAndroidDataDir()Ljava/io/File;

    move-result-object v0

    .line 512
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageAndroidDataDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 582
    invoke-static {}, Landroid/os/Environment;->throwIfSystem()V

    .line 584
    sget-boolean v0, Landroid/os/Environment;->IS_SWITCH_SD_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->checkPrimaryVolumeIsSD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    sget-object v0, Landroid/os/Environment;->sCurrentUserSd:Landroid/os/Environment$UserEnvironmentSD;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironmentSD;->getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 587
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 522
    invoke-static {}, Landroid/os/Environment;->throwIfSystem()V

    .line 524
    sget-boolean v0, Landroid/os/Environment;->IS_SWITCH_SD_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->checkPrimaryVolumeIsSD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    sget-object v0, Landroid/os/Environment;->sCurrentUserSd:Landroid/os/Environment$UserEnvironmentSD;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironmentSD;->getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 527
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 567
    invoke-static {}, Landroid/os/Environment;->throwIfSystem()V

    .line 569
    sget-boolean v0, Landroid/os/Environment;->IS_SWITCH_SD_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->checkPrimaryVolumeIsSD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    sget-object v0, Landroid/os/Environment;->sCurrentUserSd:Landroid/os/Environment$UserEnvironmentSD;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironmentSD;->getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 572
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 537
    invoke-static {}, Landroid/os/Environment;->throwIfSystem()V

    .line 539
    sget-boolean v0, Landroid/os/Environment;->IS_SWITCH_SD_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->checkPrimaryVolumeIsSD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    sget-object v0, Landroid/os/Environment;->sCurrentUserSd:Landroid/os/Environment$UserEnvironmentSD;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironmentSD;->getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 542
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 552
    invoke-static {}, Landroid/os/Environment;->throwIfSystem()V

    .line 554
    sget-boolean v0, Landroid/os/Environment;->IS_SWITCH_SD_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->checkPrimaryVolumeIsSD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    sget-object v0, Landroid/os/Environment;->sCurrentUserSd:Landroid/os/Environment$UserEnvironmentSD;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironmentSD;->getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 557
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 339
    invoke-static {}, Landroid/os/Environment;->throwIfSystem()V

    .line 341
    sget-boolean v0, Landroid/os/Environment;->IS_SWITCH_SD_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->checkPrimaryVolumeIsSD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Landroid/os/Environment;->sCurrentUserSd:Landroid/os/Environment$UserEnvironmentSD;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironmentSD;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 344
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "type"

    .prologue
    .line 492
    invoke-static {}, Landroid/os/Environment;->throwIfSystem()V

    .line 494
    sget-boolean v0, Landroid/os/Environment;->IS_SWITCH_SD_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->checkPrimaryVolumeIsSD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    sget-object v0, Landroid/os/Environment;->sCurrentUserSd:Landroid/os/Environment$UserEnvironmentSD;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironmentSD;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 497
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 6

    .prologue
    .line 666
    :try_start_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 668
    .local v0, mountService:Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 669
    .local v1, primary:Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 672
    .end local v1           #primary:Landroid/os/storage/StorageVolume;
    :goto_0
    return-object v3

    .line 670
    :catch_0
    move-exception v2

    .line 671
    .local v2, rex:Landroid/os/RemoteException;
    const-string v3, "Environment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read external storage state; assuming REMOVED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string/jumbo v3, "removed"

    goto :goto_0
.end method

.method public static getLegacyExternalStorageDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 351
    new-instance v0, Ljava/io/File;

    const-string v1, "EXTERNAL_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLegacyExternalStorageObbDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 356
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Environment;->throwIfSystem()V

    .line 241
    sget-boolean v0, Landroid/os/Environment;->IS_SWITCH_SD_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->checkPrimaryVolumeIsSD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Landroid/os/Environment;->sCurrentUserSd:Landroid/os/Environment$UserEnvironmentSD;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironmentSD;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .locals 6

    .prologue
    .line 70
    sget-object v3, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_1

    .line 71
    sget-object v4, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 72
    :try_start_0
    sget-object v3, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 74
    :try_start_1
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 76
    .local v1, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 77
    .local v2, volumes:[Landroid/os/storage/StorageVolume;
    invoke-static {v2}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    sput-object v3, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .end local v2           #volumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :cond_1
    sget-object v3, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;

    return-object v3

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "Environment"

    const-string v5, "couldn\'t talk to MountService"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public static getRootDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Landroid/os/Environment;->ROOT_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getSecureDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 228
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getSystemSecureDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 210
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUmsStoragePath()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 759
    :try_start_0
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 761
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 762
    .local v4, volumes:[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 763
    aget-object v3, v4, v1

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 764
    .local v3, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 765
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 771
    .end local v1           #i:I
    .end local v3           #volume:Landroid/os/storage/StorageVolume;
    .end local v4           #volumes:[Landroid/os/Parcelable;
    :cond_0
    :goto_1
    return-object v5

    .line 762
    .restart local v1       #i:I
    .restart local v3       #volume:Landroid/os/storage/StorageVolume;
    .restart local v4       #volumes:[Landroid/os/Parcelable;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 769
    .end local v1           #i:I
    .end local v3           #volume:Landroid/os/storage/StorageVolume;
    .end local v4           #volumes:[Landroid/os/Parcelable;
    :catch_0
    move-exception v0

    .line 770
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "Environment"

    const-string v7, "couldn\'t talk to MountService"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getUserSystemDirectory(I)Ljava/io/File;
    .locals 4
    .parameter "userId"

    .prologue
    .line 257
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static initForCurrentUser()V
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 95
    .local v0, userId:I
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v1, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    sput-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    .line 97
    sget-boolean v1, Landroid/os/Environment;->IS_SWITCH_SD_ENABLED:Z

    if-eqz v1, :cond_0

    .line 98
    new-instance v1, Landroid/os/Environment$UserEnvironmentSD;

    invoke-direct {v1, v0}, Landroid/os/Environment$UserEnvironmentSD;-><init>(I)V

    sput-object v1, Landroid/os/Environment;->sCurrentUserSd:Landroid/os/Environment$UserEnvironmentSD;

    .line 101
    :cond_0
    sget-object v2, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;

    .line 103
    monitor-exit v2

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isEncryptedFilesystemEnabled()Z
    .locals 2

    .prologue
    .line 267
    const-string/jumbo v0, "persist.security.efs.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageEmulated()Z
    .locals 2

    .prologue
    .line 703
    invoke-static {}, Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 704
    .local v0, primary:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageRemovable()Z
    .locals 2

    .prologue
    .line 685
    invoke-static {}, Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 686
    .local v0, primary:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUmsStorageMounted()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 733
    :try_start_0
    const-string/jumbo v7, "mount"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 735
    .local v4, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 736
    .local v3, list:[Landroid/os/Parcelable;
    if-nez v3, :cond_0

    move v7, v8

    .line 753
    .end local v3           #list:[Landroid/os/Parcelable;
    :goto_0
    return v7

    .line 737
    .restart local v3       #list:[Landroid/os/Parcelable;
    :cond_0
    array-length v2, v3

    .line 738
    .local v2, length:I
    new-array v6, v2, [Landroid/os/storage/StorageVolume;

    .line 739
    .local v6, storageVolume:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 740
    aget-object v7, v3, v1

    check-cast v7, Landroid/os/storage/StorageVolume;

    aput-object v7, v6, v1

    .line 741
    aget-object v7, v6, v1

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 742
    aget-object v7, v6, v1

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, state:Ljava/lang/String;
    const-string/jumbo v7, "mounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 744
    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    move v7, v8

    .line 746
    goto :goto_0

    .line 739
    .end local v5           #state:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v7, v8

    .line 750
    goto :goto_0

    .line 751
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #list:[Landroid/os/Parcelable;
    .end local v6           #storageVolume:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 752
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "Environment"

    const-string v9, "couldn\'t talk to MountService"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v8

    .line 753
    goto :goto_0
.end method

.method private static throwIfSystem()V
    .locals 3

    .prologue
    .line 713
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 714
    const-string v0, "Environment"

    const-string v1, "Static storage paths aren\'t available from AID_SYSTEM"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    :cond_0
    return-void
.end method
