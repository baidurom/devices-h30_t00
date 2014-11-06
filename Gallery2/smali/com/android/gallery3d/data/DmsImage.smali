.class public Lcom/android/gallery3d/data/DmsImage;
.super Lcom/android/gallery3d/data/MediaItem;
.source "DmsImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/DmsImage$BitmapJob;,
        Lcom/android/gallery3d/data/DmsImage$RegionDecoderJob;
    }
.end annotation


# static fields
.field private static final STATE_DOWNLOADED:I = 0x2

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AirSharing_DmsImage"


# instance fields
.field private mAddDate:Ljava/lang/String;

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

.field private final mContentType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceId:I

.field private final mDmsContext:Lcom/android/gallery3d/data/DmsContext;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mFileName:Ljava/lang/String;

.field private final mHashCode:I

.field private mHeight:I

.field private mInfoType:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

.field private mMediaId:Ljava/lang/String;

.field private final mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

.field private mMediaSize:I

.field private mRotation:I

.field private mState:I

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private final mThumbnailUri:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;Lcom/android/gallery3d/data/DmsContext;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "deviceId"
    .parameter "mediaInfo"
    .parameter "dmsContext"

    .prologue
    .line 92
    invoke-static {}, Lcom/android/gallery3d/data/DmsImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/data/DmsImage;->mState:I

    .line 93
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 94
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mContext:Landroid/content/Context;

    .line 95
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 96
    iput-object p5, p0, Lcom/android/gallery3d/data/DmsImage;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    .line 97
    iput p3, p0, Lcom/android/gallery3d/data/DmsImage;->mDeviceId:I

    .line 98
    iput-object p4, p0, Lcom/android/gallery3d/data/DmsImage;->mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    .line 99
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getItemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mMediaId:Ljava/lang/String;

    .line 100
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getSize()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/DmsImage;->mMediaSize:I

    .line 101
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getAddDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mAddDate:Ljava/lang/String;

    .line 102
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mFileName:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/data/DmsImage;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/data/DmsImage;->mMediaSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/DmsImage;->mHashCode:I

    .line 104
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/DmsImage;->mWidth:I

    .line 105
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/DmsImage;->mHeight:I

    .line 106
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mUri:Ljava/lang/String;

    .line 107
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getIconUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mThumbnailUri:Ljava/lang/String;

    .line 108
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mContentType:Ljava/lang/String;

    .line 109
    invoke-virtual {p4}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getMediaInfoType()Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mInfoType:Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;

    .line 110
    return-void
.end method

.method constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILjava/lang/String;Lcom/android/gallery3d/data/DmsContext;)V
    .locals 6
    .parameter "path"
    .parameter "app"
    .parameter "deviceId"
    .parameter "objectId"
    .parameter "dmsContext"

    .prologue
    .line 113
    invoke-static {p5, p3, p4}, Lcom/android/gallery3d/data/DmsDevice;->getObjectInfo(Lcom/android/gallery3d/data/DmsContext;ILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/DmsImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;ILcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;Lcom/android/gallery3d/data/DmsContext;)V

    .line 115
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/DmsImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/DmsImage;->prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/DmsImage;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/data/DmsImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/gallery3d/data/DmsImage;->mWidth:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/gallery3d/data/DmsImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/gallery3d/data/DmsImage;->mHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/data/DmsImage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method private openFileOrDownloadTempFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 3
    .parameter "jc"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/DmsImage;->openOrDownloadInner(Lcom/android/gallery3d/util/ThreadPool$JobContext;)I

    move-result v0

    .line 129
    .local v0, state:I
    monitor-enter p0

    .line 130
    :try_start_0
    iput v0, p0, Lcom/android/gallery3d/data/DmsImage;->mState:I

    .line 131
    iget v1, p0, Lcom/android/gallery3d/data/DmsImage;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/data/DmsImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 137
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit p0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private openOrDownloadInner(Lcom/android/gallery3d/util/ThreadPool$JobContext;)I
    .locals 8
    .parameter "jc"

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 143
    :try_start_0
    const-string v5, "AirSharing_DmsImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openOrDownloadInner mUri =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/data/DmsImage;->mUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v2, Ljava/net/URL;

    iget-object v5, p0, Lcom/android/gallery3d/data/DmsImage;->mUri:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, urlLarge:Ljava/net/URL;
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    .line 146
    iget-object v5, p0, Lcom/android/gallery3d/data/DmsImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getDownloadCache()Lcom/android/gallery3d/data/DownloadCache;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/android/gallery3d/data/DownloadCache;->download(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/data/DmsImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    .line 147
    const-string v5, "AirSharing_DmsImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download done : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/data/DmsImage;->mUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    .end local v2           #urlLarge:Ljava/net/URL;
    :goto_0
    return v3

    .line 149
    .restart local v2       #urlLarge:Ljava/net/URL;
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/data/DmsImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    if-nez v3, :cond_1

    .line 150
    const-string v3, "AirSharing_DmsImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 151
    goto :goto_0

    .line 153
    :cond_1
    const-string v3, "image/jpeg"

    iget-object v5, p0, Lcom/android/gallery3d/data/DmsImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/gallery3d/data/DmsImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    iget-object v3, v3, Lcom/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 155
    .local v0, is:Ljava/io/InputStream;
    invoke-static {v0}, Lcom/android/gallery3d/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/data/DmsImage;->mRotation:I

    .line 156
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 158
    .end local v0           #is:Ljava/io/InputStream;
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/data/DmsImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    iget-object v3, v3, Lcom/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    const/high16 v5, 0x1000

    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/data/DmsImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    const/4 v3, 0x2

    goto :goto_0

    .line 161
    .end local v2           #urlLarge:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 162
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "AirSharing_DmsImage"

    const-string v5, "download error"

    invoke-static {v3, v5, v1}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 163
    goto :goto_0
.end method

.method private prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 4
    .parameter "jc"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 168
    new-instance v2, Lcom/android/gallery3d/data/DmsImage$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/data/DmsImage$1;-><init>(Lcom/android/gallery3d/data/DmsImage;)V

    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 177
    :goto_0
    monitor-enter p0

    .line 178
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 185
    :goto_1
    return v0

    .line 179
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/data/DmsImage;->mState:I

    if-nez v2, :cond_1

    .line 180
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/data/DmsImage;->mState:I

    .line 194
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/DmsImage;->openFileOrDownloadTempFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V

    goto :goto_0

    .line 182
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/android/gallery3d/data/DmsImage;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 183
    monitor-exit p0

    goto :goto_1

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 184
    :cond_2
    :try_start_2
    iget v2, p0, Lcom/android/gallery3d/data/DmsImage;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 185
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    .line 188
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 192
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 306
    return-void

    .line 304
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 276
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 277
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    iget v1, p0, Lcom/android/gallery3d/data/DmsImage;->mWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/data/DmsImage;->mHeight:I

    if-eqz v1, :cond_0

    .line 278
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/gallery3d/data/DmsImage;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 279
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/gallery3d/data/DmsImage;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsImage;->mContentType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 282
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/gallery3d/data/DmsImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 284
    :cond_1
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/android/gallery3d/data/DmsImage;->mHeight:I

    return v0
.end method

.method public getMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mMediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/android/gallery3d/data/DmsImage;->mRotation:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 294
    iget v0, p0, Lcom/android/gallery3d/data/DmsImage;->mMediaSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSupportedOperations()I
    .locals 2

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, supported:I
    iget-object v1, p0, Lcom/android/gallery3d/data/DmsImage;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    or-int/lit8 v0, v0, 0x40

    .line 254
    :cond_0
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/gallery3d/data/DmsImage;->mWidth:I

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/android/gallery3d/data/DmsImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/data/DmsImage$BitmapJob;-><init>(Lcom/android/gallery3d/data/DmsImage;I)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lcom/android/gallery3d/data/DmsImage$RegionDecoderJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/data/DmsImage$RegionDecoderJob;-><init>(Lcom/android/gallery3d/data/DmsImage;Lcom/android/gallery3d/data/DmsImage$1;)V

    return-object v0
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 336
    return-void
.end method

.method public updateContent(Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mMediaId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;->getItemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsImage;->mMediaId:Ljava/lang/String;

    .line 260
    invoke-static {}, Lcom/android/gallery3d/data/DmsImage;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 262
    :cond_0
    return-void
.end method
