.class public Lcom/android/gallery3d/app/GalleryAppImpl;
.super Landroid/app/Application;
.source "GalleryAppImpl.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryApp;


# static fields
.field private static final DOWNLOAD_CAPACITY:J = 0x4000000L

.field private static final DOWNLOAD_FOLDER:Ljava/lang/String; = "download"

.field private static final STRICT_MODE_TAG:Ljava/lang/String; = "GalleryStrictMode"


# instance fields
.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

.field private mFaceImageCacheService:Lcom/android/gallery3d/data/FaceImageCacheService;

.field private mFaceLock:Ljava/lang/Object;

.field private mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

.field private mLock:Ljava/lang/Object;

.field private mStitchingProgressManager:Lcom/android/gallery3d/app/StitchingProgressManager;

.field private mThreadPool:Lcom/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mFaceLock:Ljava/lang/Object;

    return-void
.end method

.method private initializeAsyncTask()V
    .locals 1

    .prologue
    .line 174
    :try_start_0
    const-class v0, Landroid/os/AsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 108
    return-object p0
.end method

.method public declared-synchronized getDataManager()Lcom/android/gallery3d/data/DataManager;
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/android/gallery3d/data/DataManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/DataManager;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->initializeSourceMap()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/android/gallery3d/data/DataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadCache()Lcom/android/gallery3d/data/DownloadCache;
    .locals 4

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

    if-nez v1, :cond_2

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->ensureExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 161
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v0           #cacheDir:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 165
    .restart local v0       #cacheDir:Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/gallery3d/data/DownloadCache;

    const-wide/32 v2, 0x4000000

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/gallery3d/data/DownloadCache;-><init>(Lcom/android/gallery3d/app/GalleryApp;Ljava/io/File;J)V

    iput-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;

    .line 167
    .end local v0           #cacheDir:Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/android/gallery3d/data/DownloadCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public getFaceImageCacheService()Lcom/android/gallery3d/data/FaceImageCacheService;
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mFaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mFaceImageCacheService:Lcom/android/gallery3d/data/FaceImageCacheService;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/android/gallery3d/data/FaceImageCacheService;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/FaceImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mFaceImageCacheService:Lcom/android/gallery3d/data/FaceImageCacheService;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mFaceImageCacheService:Lcom/android/gallery3d/data/FaceImageCacheService;

    monitor-exit v1

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/android/gallery3d/data/ImageCacheService;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStitchingProgressManager()Lcom/android/gallery3d/app/StitchingProgressManager;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mStitchingProgressManager:Lcom/android/gallery3d/app/StitchingProgressManager;

    return-object v0
.end method

.method public declared-synchronized getThreadPool()Lcom/android/gallery3d/util/ThreadPool;
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/android/gallery3d/util/ThreadPool;

    invoke-direct {v0}, Lcom/android/gallery3d/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 62
    const-string v5, "GalleryStrictMode"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    new-instance v5, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 69
    new-instance v5, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v5}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v5

    invoke-static {v5}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 75
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 76
    const/4 v3, 0x0

    .line 77
    .local v3, isCropProcess:Z
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 78
    .local v4, pid:I
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/GalleryAppImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 79
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 80
    .local v1, appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v4, :cond_1

    .line 81
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v6, "com.android.gallery3d:pushservice"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v6, "com.android.gallery3d:eventReceiver"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    .end local v1           #appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    :goto_0
    return-void

    .line 84
    .restart local v1       #appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v6, "com.android.gallery3d:crop"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    const/4 v3, 0x1

    .line 90
    .end local v1           #appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    if-nez v3, :cond_5

    .line 91
    invoke-static {p0}, Lcom/huawei/gallery3d/photoshare/utils/PhotoShareUtils;->initialize(Landroid/content/Context;)V

    .line 93
    :cond_5
    invoke-static {p0}, Lcom/android/hwcamera/Util;->initialize(Landroid/content/Context;)V

    .line 94
    invoke-direct {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->initializeAsyncTask()V

    .line 95
    invoke-static {p0}, Lcom/android/gallery3d/util/GalleryUtils;->initialize(Landroid/content/Context;)V

    .line 96
    invoke-static {p0}, Lcom/android/gallery3d/gadget/WidgetUtils;->initialize(Landroid/content/Context;)V

    .line 97
    invoke-static {p0}, Lcom/android/gallery3d/picasasource/PicasaSource;->initialize(Landroid/content/Context;)V

    .line 98
    invoke-static {p0}, Lcom/android/gallery3d/util/DrmUtils;->initialize(Landroid/content/Context;)V

    .line 99
    invoke-static {p0}, Lcom/huawei/gallery3d/multiscreen/MultiScreen;->initialize(Landroid/content/Context;)V

    .line 100
    invoke-static {p0}, Lcom/android/gallery3d/util/LightCycleHelper;->createStitchingManagerInstance(Lcom/android/gallery3d/app/GalleryApp;)Lcom/android/gallery3d/app/StitchingProgressManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mStitchingProgressManager:Lcom/android/gallery3d/app/StitchingProgressManager;

    .line 101
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mStitchingProgressManager:Lcom/android/gallery3d/app/StitchingProgressManager;

    if-eqz v5, :cond_2

    .line 102
    iget-object v5, p0, Lcom/android/gallery3d/app/GalleryAppImpl;->mStitchingProgressManager:Lcom/android/gallery3d/app/StitchingProgressManager;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/android/gallery3d/app/StitchingChangeListener;)V

    goto :goto_0
.end method
