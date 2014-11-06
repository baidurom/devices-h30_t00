.class public Lcom/android/gallery3d/data/UriImage;
.super Lcom/android/gallery3d/data/MediaItem;
.source "UriImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/UriImage$UriImageRequest;,
        Lcom/android/gallery3d/data/UriImage$BitmapJob;,
        Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;
    }
.end annotation


# static fields
.field private static final STATE_DOWNLOADED:I = 0x2

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UriImage"

.field private static final mIsMpoSupported:Z


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

.field private final mContentType:Ljava/lang/String;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mFilePath:Ljava/lang/String;

.field private mFilePathFromFileUri:Ljava/lang/String;

.field private mHeight:I

.field private final mIsDrm:Z

.field public mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

.field private mMpoSubType:I

.field private mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

.field private mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mRotation:I

.field private mState:I

.field private final mUri:Landroid/net/Uri;

.field private mVoiceOffset:J

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->isMAVSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/data/UriImage;->mIsMpoSupported:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "application"
    .parameter "path"
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 96
    invoke-static {}, Lcom/android/gallery3d/data/UriImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFilePathFromFileUri:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 85
    new-instance v0, Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;-><init>(Lcom/android/gallery3d/data/MediaObject;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    .line 97
    iput-object p3, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    .line 98
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 99
    iput-object p4, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFilePath:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/util/DrmUtils;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/UriImage;->mIsDrm:Z

    .line 103
    invoke-direct {p0}, Lcom/android/gallery3d/data/UriImage;->CalcVoiceOffset()V

    .line 105
    return-void
.end method

.method private CalcVoiceOffset()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 427
    iget-object v7, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, scheme:Ljava/lang/String;
    const/4 v5, 0x0

    .line 429
    .local v5, path:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 430
    .local v3, offSet:J
    const-string v7, "file"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 431
    iget-object v7, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 432
    if-eqz v5, :cond_0

    .line 433
    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->getVoiceOffset(Ljava/lang/String;)J

    move-result-wide v3

    .line 434
    cmp-long v7, v3, v10

    if-lez v7, :cond_0

    .line 435
    iput-wide v3, p0, Lcom/android/gallery3d/data/UriImage;->mVoiceOffset:J

    .line 436
    iput-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mFilePathFromFileUri:Ljava/lang/String;

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    const-string v7, "content"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 440
    const/4 v1, 0x0

    .line 442
    .local v1, in:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    const-string v9, "r"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/data/UriImage;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 444
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/gallery3d/data/UriImage;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->getVoiceOffset(Ljava/io/FileInputStream;)J

    move-result-wide v3

    .line 446
    cmp-long v7, v3, v10

    if-lez v7, :cond_2

    .line 447
    iput-wide v3, p0, Lcom/android/gallery3d/data/UriImage;->mVoiceOffset:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 452
    :cond_2
    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/gallery3d/data/UriImage;->closeParcelFileDescriptor()V

    goto :goto_0

    .line 449
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 450
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v7, "UriImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CalcVoiceOffset fail to open: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/gallery3d/data/UriImage;->closeParcelFileDescriptor()V

    goto :goto_0

    .line 452
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->closeStreamSilencely(Ljava/io/Closeable;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/gallery3d/data/UriImage;->closeParcelFileDescriptor()V

    throw v7

    .line 452
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_2

    .line 449
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/data/UriImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/gallery3d/data/UriImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/data/UriImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/gallery3d/data/UriImage;->initstate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/data/UriImage;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/data/UriImage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/data/UriImage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 61
    invoke-static/range {p0 .. p6}, Lcom/android/gallery3d/data/UriImage;->decodeBitmapEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeBitmapEx(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/GalleryApp;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "jc"
    .parameter "application"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "type"
    .parameter "options"
    .parameter "targetSize"

    .prologue
    .line 516
    new-instance v1, Lcom/android/gallery3d/util/GalleryUtils$Params;

    invoke-direct {v1}, Lcom/android/gallery3d/util/GalleryUtils$Params;-><init>()V

    .line 517
    .local v1, params:Lcom/android/gallery3d/util/GalleryUtils$Params;
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalFrame:Z

    .line 518
    iput p4, v1, Lcom/android/gallery3d/util/GalleryUtils$Params;->inType:I

    .line 519
    iput p6, v1, Lcom/android/gallery3d/util/GalleryUtils$Params;->inOriginalTargetSize:I

    .line 520
    iget-boolean v0, p5, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    iput-boolean v0, v1, Lcom/android/gallery3d/util/GalleryUtils$Params;->inPQEnhance:Z

    move-object v2, p1

    .line 521
    check-cast v2, Landroid/content/Context;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/mediatek/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/util/GalleryUtils$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    move-result-object v7

    .line 523
    .local v7, dataBundle:Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
    if-eqz v7, :cond_0

    iget-object v6, v7, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 524
    .local v6, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {v6}, Lcom/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 523
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private initMpoSubType()V
    .locals 5

    .prologue
    .line 493
    const/4 v2, -0x1

    iget v3, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    if-ne v2, v3, :cond_0

    .line 494
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 495
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/mediatek/mpo/MpoDecoder;->decodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/mpo/MpoDecoder;

    move-result-object v0

    .line 496
    .local v0, mpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Lcom/mediatek/mpo/MpoDecoder;->suggestMtkMpoType()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    .line 498
    invoke-virtual {v0}, Lcom/mediatek/mpo/MpoDecoder;->close()V

    .line 499
    const-string v2, "UriImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMpoSubType:mMpoSubType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .end local v0           #mpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private initstate()V
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    .line 181
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    .line 182
    monitor-exit p0

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isSharable()Z
    .locals 2

    .prologue
    .line 330
    const-string v0, "file"

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private openFileOrDownloadTempFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 3
    .parameter "jc"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->openOrDownloadInner(Lcom/android/gallery3d/util/ThreadPool$JobContext;)I

    move-result v0

    .line 119
    .local v0, state:I
    monitor-enter p0

    .line 120
    :try_start_0
    iput v0, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    .line 121
    iget v1, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 127
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private openOrDownloadInner(Lcom/android/gallery3d/util/ThreadPool$JobContext;)I
    .locals 11
    .parameter "jc"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 132
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, scheme:Ljava/lang/String;
    const-string v8, "content"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.resource"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "file"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 138
    :cond_0
    :try_start_0
    const-string v8, "image/jpeg"

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "image/mpo"

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 140
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 142
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/gallery3d/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v8

    iput v8, p0, Lcom/android/gallery3d/data/UriImage;->mRotation:I

    .line 143
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 145
    .end local v1           #is:Ljava/io/InputStream;
    :cond_2
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    const-string v10, "r"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 147
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_4

    .line 174
    :cond_3
    :goto_0
    return v5

    :cond_4
    move v5, v7

    .line 148
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "UriImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to open: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 151
    goto :goto_0

    .line 155
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_5
    :try_start_1
    new-instance v8, Ljava/net/URI;

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    .line 156
    .local v4, url:Ljava/net/URL;
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getDownloadCache()Lcom/android/gallery3d/data/DownloadCache;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcom/android/gallery3d/data/DownloadCache;->download(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    .line 157
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 158
    iget-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    if-nez v5, :cond_6

    .line 159
    const-string v5, "UriImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 160
    goto :goto_0

    .line 163
    :cond_6
    const-string v5, "image/jpeg"

    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "image/mpo"

    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 165
    :cond_7
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    iget-object v5, v5, Lcom/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 166
    .restart local v1       #is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/gallery3d/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/data/UriImage;->mRotation:I

    .line 167
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 169
    .end local v1           #is:Ljava/io/InputStream;
    :cond_8
    iget-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    iget-object v5, v5, Lcom/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    const/high16 v8, 0x1000

    invoke-static {v5, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v7

    .line 171
    goto/16 :goto_0

    .line 172
    .end local v4           #url:Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 173
    .local v3, t:Ljava/lang/Throwable;
    const-string v5, "UriImage"

    const-string v7, "download error"

    invoke-static {v5, v7, v3}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 174
    goto/16 :goto_0
.end method

.method private prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 4
    .parameter "jc"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 186
    new-instance v2, Lcom/android/gallery3d/data/UriImage$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/data/UriImage$1;-><init>(Lcom/android/gallery3d/data/UriImage;)V

    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 196
    :goto_0
    monitor-enter p0

    .line 197
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 204
    :goto_1
    return v0

    .line 198
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    if-nez v2, :cond_1

    .line 199
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    .line 213
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->openFileOrDownloadTempFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V

    goto :goto_0

    .line 201
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 202
    monitor-exit p0

    goto :goto_1

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 203
    :cond_2
    :try_start_2
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 204
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    .line 207
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 211
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public canForward()Z
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery3d/util/DrmUtils;->canForward(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearCachedPanoramaSupport()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;->clearCachedValues()V

    .line 323
    return-void
.end method

.method public closeParcelFileDescriptor()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 484
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 378
    return-void

    .line 376
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 4

    .prologue
    .line 345
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 346
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    if-eqz v2, :cond_0

    .line 347
    const/4 v2, 0x6

    iget v3, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 348
    const/4 v2, 0x7

    iget v3, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 351
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 353
    :cond_1
    const-string v2, "file"

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, filePath:Ljava/lang/String;
    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 356
    invoke-static {v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    .line 358
    .end local v1           #filePath:Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 6

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/gallery3d/data/UriImage;->closeParcelFileDescriptor()V

    .line 466
    const/4 v1, 0x0

    .line 468
    .local v1, fd:Ljava/io/FileDescriptor;
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 470
    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 474
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .local v2, fd:Ljava/io/FileDescriptor;
    :goto_0
    return-object v2

    .line 471
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v3, "UriImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFileDescriptor fail to open: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 474
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .restart local v2       #fd:Ljava/io/FileDescriptor;
    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .restart local v1       #fd:Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v3

    move-object v2, v1

    .end local v1           #fd:Ljava/io/FileDescriptor;
    .restart local v2       #fd:Ljava/io/FileDescriptor;
    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFilePathFromFileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mPanoramaMetadata:Lcom/android/gallery3d/app/PanoramaMetadataSupport;

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/app/PanoramaMetadataSupport;->getPanoramaSupport(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 318
    return-void
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/android/gallery3d/data/UriImage;->mRotation:I

    return v0
.end method

.method public getSubType()I
    .locals 3

    .prologue
    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, subType:I
    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-direct {p0}, Lcom/android/gallery3d/data/UriImage;->initMpoSubType()V

    .line 507
    const v1, 0x20003

    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mMpoSubType:I

    if-ne v1, v2, :cond_0

    .line 508
    or-int/lit8 v0, v0, 0x2

    .line 511
    :cond_0
    return v0
.end method

.method public getSupportedOperations()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, supported:I
    iget-boolean v1, p0, Lcom/android/gallery3d/data/UriImage;->mIsDrm:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/UriImage;->hasCountConstraint()Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    :cond_0
    or-int/lit8 v0, v0, 0x20

    .line 284
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/data/UriImage;->mIsDrm:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->isFilterShowSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    or-int/lit16 v0, v0, 0x200

    .line 287
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/data/UriImage;->isSharable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/gallery3d/data/UriImage;->mIsDrm:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/data/UriImage;->canForward()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 288
    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 291
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/gallery3d/data/UriImage;->mIsDrm:Z

    if-nez v1, :cond_5

    .line 293
    or-int/lit8 v0, v0, 0x40

    .line 295
    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/gallery3d/data/UriImage;->getSubType()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 297
    const-string v1, "UriImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current type is mpo_mav, don\'t support full image, path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/data/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    and-int/lit8 v0, v0, -0x41

    .line 301
    :cond_5
    sget-boolean v1, Lcom/android/gallery3d/data/UriImage;->mIsMpoSupported:Z

    if-eqz v1, :cond_6

    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 303
    invoke-direct {p0}, Lcom/android/gallery3d/data/UriImage;->initMpoSubType()V

    .line 304
    invoke-virtual {p0}, Lcom/android/gallery3d/data/UriImage;->getSubType()I

    move-result v1

    if-ne v4, v1, :cond_6

    .line 305
    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    .line 310
    :cond_6
    iget-wide v1, p0, Lcom/android/gallery3d/data/UriImage;->mVoiceOffset:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    .line 312
    :cond_7
    return v0
.end method

.method public getVoiceOffset()J
    .locals 2

    .prologue
    .line 418
    iget-wide v0, p0, Lcom/android/gallery3d/data/UriImage;->mVoiceOffset:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public hasCountConstraint()Z
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFilePath:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/DrmUtils;->haveCountConstraints(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasRight()Z
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFilePath:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/DrmUtils;->haveRightsForAction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/gallery3d/data/UriImage;->mIsDrm:Z

    return v0
.end method

.method public isVoiceImage()Z
    .locals 4

    .prologue
    .line 423
    iget-wide v0, p0, Lcom/android/gallery3d/data/UriImage;->mVoiceOffset:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 109
    new-instance v0, Lcom/android/gallery3d/data/UriImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/data/UriImage$BitmapJob;-><init>(Lcom/android/gallery3d/data/UriImage;I)V

    return-object v0
.end method

.method public requestImage(ILcom/android/gallery3d/util/GalleryUtils$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/gallery3d/util/GalleryUtils$Params;",
            ")",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/android/gallery3d/util/GalleryUtils$DataBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    new-instance v0, Lcom/android/gallery3d/data/UriImage$UriImageRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/gallery3d/data/UriImage$UriImageRequest;-><init>(Lcom/android/gallery3d/data/UriImage;ILcom/android/gallery3d/util/GalleryUtils$Params;)V

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
    .line 114
    new-instance v0, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;-><init>(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/data/UriImage$1;)V

    return-object v0
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/gallery3d/data/UriImage;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    .line 491
    return-void
.end method
