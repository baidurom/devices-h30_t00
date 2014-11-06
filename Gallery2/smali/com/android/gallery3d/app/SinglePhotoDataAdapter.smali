.class public Lcom/android/gallery3d/app/SinglePhotoDataAdapter;
.super Lcom/android/gallery3d/ui/TileImageViewAdapter;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;,
        Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;,
        Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;
    }
.end annotation


# static fields
.field private static final MSG_RUN_OBJECT:I = 0x2

.field private static final MSG_UPDATE_IMAGE:I = 0x1

.field private static final SIZE_BACKUP:I = 0x400

.field private static final TAG:Ljava/lang/String; = "SinglePhotoDataAdapter"

.field private static final TYPE_LOAD_FRAME:I = 0x1

.field private static final TYPE_LOAD_TOTAL_COUNT:I

.field private static final mIsMavSupported:Z

.field private static final mIsStereoDisplaySupported:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

.field private mCurrentMpoIndex:I

.field private mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mHandler:Landroid/os/Handler;

.field private mHasFullImage:Z

.field private mIsActive:Z

.field private mIsMavLoadingFinished:Z

.field private mIsMavStereoMode:Z

.field private mItem:Lcom/android/gallery3d/data/MediaItem;

.field private mLargeListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingState:I

.field private mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

.field private mMavPlayback:Z

.field private mMpoDecoderTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/util/GalleryUtils$DataBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mRenderLock:Ljava/lang/Object;

.field public mRenderRequested:Z

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private mThumbListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

.field private mpoTotalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->isMAVSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavSupported:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 4
    .parameter "activity"
    .parameter "view"
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    .line 78
    iput v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Landroid/app/Activity;

    .line 94
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsActive:Z

    .line 153
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$2;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    .line 176
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$3;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/android/gallery3d/util/FutureListener;

    .line 494
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mRenderLock:Ljava/lang/Object;

    .line 495
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mRenderRequested:Z

    .line 510
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavStereoMode:Z

    .line 565
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentMpoIndex:I

    .line 99
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 100
    invoke-virtual {p3}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    .line 104
    sget-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    const/high16 v3, 0x4000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 106
    iput-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavPlayback:Z

    .line 111
    :goto_1
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 113
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Landroid/app/Activity;

    .line 115
    new-instance v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    .line 140
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 141
    return-void

    :cond_0
    move v0, v2

    .line 100
    goto :goto_0

    .line 108
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavPlayback:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentMpoIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)[Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsActive:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mRenderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/util/FutureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/android/gallery3d/util/FutureListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/android/gallery3d/util/ThreadPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->updateMavDecoder(Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavStereoMode:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavStereoMode:Z

    return p1
.end method

.method private getScreenNails([Landroid/graphics/Bitmap;)[Lcom/android/gallery3d/ui/ScreenNail;
    .locals 7
    .parameter "bmps"

    .prologue
    .line 460
    if-nez p1, :cond_1

    .line 461
    const/4 v3, 0x0

    .line 472
    :cond_0
    return-object v3

    .line 463
    :cond_1
    array-length v1, p1

    .line 464
    .local v1, len:I
    new-array v3, v1, [Lcom/android/gallery3d/ui/ScreenNail;

    .line 465
    .local v3, screenNails:[Lcom/android/gallery3d/ui/ScreenNail;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 466
    aget-object v4, p1, v0

    if-nez v4, :cond_2

    .line 467
    const-string v4, "SinglePhotoDataAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenNails: bmps["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_2
    new-instance v2, Lcom/android/gallery3d/ui/BitmapScreenNail;

    aget-object v4, p1, v0

    invoke-direct {v2, v4}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    .line 470
    .local v2, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    aput-object v2, v3, v0

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onDecodeLargeComplete(Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    .line 199
    iget-object v1, p1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 200
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "fail to decode large"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onDecodeThumbComplete(Lcom/android/gallery3d/util/Future;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 209
    .local v0, backup:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 210
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 212
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d024c

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 214
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 225
    .end local v0           #backup:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 218
    .restart local v0       #backup:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    .line 221
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v0           #backup:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 223
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "SinglePhotoDataAdapter"

    const-string v3, "fail to decode thumb"

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requestRender()V
    .locals 5

    .prologue
    .line 498
    const-string v2, "SinglePhotoDataAdapter"

    const-string v3, "requestRender"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 500
    .local v0, time:J
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mRenderLock:Ljava/lang/Object;

    monitor-enter v3

    .line 501
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mRenderRequested:Z

    .line 502
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mRenderLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 503
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 505
    const-string v2, "SinglePhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request render consumed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void

    .line 503
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private setScreenNail(Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 191
    new-instance v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 193
    return-void
.end method

.method private startMavPlayback()V
    .locals 4

    .prologue
    .line 476
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "startMavPlayback"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    if-lez v1, :cond_1

    .line 480
    iget v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    div-int/lit8 v0, v1, 0x2

    .line 481
    .local v0, middleFrame:I
    const-string v1, "SinglePhotoDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the middle frame is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    iget v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setSeekBar(II)V

    .line 484
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setStatus(Z)V

    .line 488
    :cond_0
    new-instance v1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;)V

    invoke-virtual {v1}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavRenderThread;->start()V

    .line 492
    .end local v0           #middleFrame:I
    :goto_0
    return-void

    .line 490
    :cond_1
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "mpoTotalCount <= 0"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateMavDecoder(Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 6
    .parameter
    .parameter "item"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/util/GalleryUtils$DataBundle;",
            ">;",
            "Lcom/android/gallery3d/data/MediaItem;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/util/GalleryUtils$DataBundle;>;"
    const/4 v5, 0x1

    .line 423
    const-string v2, "SinglePhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> updateMavDecoder, type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-nez p3, :cond_2

    .line 425
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    iget v2, v2, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->mpoTotalCount:I

    iput v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    .line 426
    const-string v2, "SinglePhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the mav total count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    if-eqz v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    iget v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setSeekBar(II)V

    .line 434
    :cond_0
    new-instance v1, Lcom/android/gallery3d/util/GalleryUtils$Params;

    invoke-direct {v1}, Lcom/android/gallery3d/util/GalleryUtils$Params;-><init>()V

    .line 435
    .local v1, params:Lcom/android/gallery3d/util/GalleryUtils$Params;
    iput-boolean v5, v1, Lcom/android/gallery3d/util/GalleryUtils$Params;->inMpoFrames:Z

    .line 437
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 438
    .local v0, defaultDisplay:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/util/GalleryUtils$Params;->inTargetDisplayHeight:I

    .line 439
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/util/GalleryUtils$Params;->inTargetDisplayWidth:I

    .line 440
    iput-boolean v5, v1, Lcom/android/gallery3d/util/GalleryUtils$Params;->inPQEnhance:Z

    .line 441
    const-string v2, "SinglePhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    invoke-virtual {p2, v2}, Lcom/android/gallery3d/data/MediaItem;->setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V

    .line 445
    const-string v2, "SinglePhotoDataAdapter"

    const-string v3, "start load all mav frames"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    invoke-virtual {p2, v5, v1}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/android/gallery3d/util/GalleryUtils$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;

    invoke-direct {v4, p0, p2, v5}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;I)V

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 456
    .end local v0           #defaultDisplay:Landroid/view/Display;
    .end local v1           #params:Lcom/android/gallery3d/util/GalleryUtils$Params;
    :cond_1
    :goto_0
    const-string v2, "SinglePhotoDataAdapter"

    const-string v3, "<< updateMavDecoder"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void

    .line 449
    :cond_2
    if-ne p3, v5, :cond_1

    .line 450
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    iget-object v2, v2, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->mpoFrames:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->getScreenNails([Landroid/graphics/Bitmap;)[Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    .line 452
    iput-boolean v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingFinished:Z

    .line 453
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingFinished:Z

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->setMavLoadingFinished(Z)V

    .line 454
    invoke-direct {p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->startMavPlayback()V

    goto :goto_0
.end method


# virtual methods
.method public cancelCurrentMavDecodeTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 616
    sget-boolean v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 618
    iput-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingFinished:Z

    .line 619
    iput v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    .line 621
    :cond_0
    return-void
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 315
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 1
    .parameter "offset"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 304
    if-nez p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_0
    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 309
    iput v0, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getLoadingState(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 380
    iget v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    return v0
.end method

.method public getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "offset"

    .prologue
    .line 355
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "offset"

    .prologue
    .line 320
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalFrameCount()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoTotalCount:I

    return v0
.end method

.method public isCamera(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public isDeletable(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public isMav(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    .line 386
    const-string v1, "image/mpo"

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 387
    .local v0, isMavType:Z
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 388
    return v0

    .line 387
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMavLoadingFinished()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingFinished:Z

    return v0
.end method

.method public isPanorama(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public isStaticCamera(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 299
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 268
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 269
    .local v2, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<*>;"
    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 270
    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 271
    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 272
    iput-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 274
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v3, :cond_1

    .line 275
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    .line 276
    iput-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 280
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v3, :cond_2

    .line 281
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 282
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 284
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v3, :cond_5

    .line 285
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    array-length v1, v3

    .line 286
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 287
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    .line 288
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 289
    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aput-object v4, v3, v0

    .line 286
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_4
    iput-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    .line 295
    .end local v0           #idx:I
    .end local v1           #length:I
    :cond_5
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 230
    iput-boolean v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsActive:Z

    .line 232
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    if-nez v1, :cond_0

    .line 233
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    .line 244
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v1, :cond_1

    .line 245
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavPlayback:Z

    if-eqz v1, :cond_1

    .line 246
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "create mav decoder task"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Lcom/android/gallery3d/util/GalleryUtils$Params;

    invoke-direct {v0}, Lcom/android/gallery3d/util/GalleryUtils$Params;-><init>()V

    .line 253
    .local v0, params:Lcom/android/gallery3d/util/GalleryUtils$Params;
    iput-boolean v4, v0, Lcom/android/gallery3d/util/GalleryUtils$Params;->inMpoTotalCount:Z

    .line 255
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "get mav total count"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iput-boolean v5, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingFinished:Z

    .line 257
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavLoadingFinished:Z

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->setMavLoadingFinished(Z)V

    .line 259
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4, v0}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/android/gallery3d/util/GalleryUtils$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;

    iget-object v4, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$MavDecoderListener;-><init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;I)V

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 264
    .end local v0           #params:Lcom/android/gallery3d/util/GalleryUtils$Params;
    :cond_1
    return-void

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0
.end method

.method public setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V
    .locals 0
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 366
    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 371
    return-void
.end method

.method public setFocusHintPath(Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 376
    return-void
.end method

.method public setImageBitmap(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 568
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v2, :cond_0

    .line 569
    const-string v2, "SinglePhotoDataAdapter"

    const-string v3, "setImageBitmap: the mpoFrames of current entry is null"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :goto_0
    return-void

    .line 572
    :cond_0
    const/4 v1, 0x0

    .line 573
    .local v1, nextIndex:I
    const/4 v0, 0x0

    .line 575
    .local v0, arrayLen:I
    iget-object v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    array-length v0, v2

    .line 576
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 577
    iput p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mCurrentMpoIndex:I

    .line 578
    const-string v2, "SinglePhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get current mpo frame, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_1
    iget-boolean v2, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavStereoMode:Z

    if-eqz v2, :cond_4

    .line 582
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 583
    add-int/lit8 v1, p1, 0x1

    .line 584
    if-gez v1, :cond_3

    .line 585
    move v1, p1

    .line 594
    :cond_2
    :goto_1
    const-string v2, "SinglePhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get next mpo frame, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-direct {p0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->requestRender()V

    goto :goto_0

    .line 586
    :cond_3
    add-int/lit8 v2, v0, -0x1

    if-le v1, v2, :cond_2

    .line 587
    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    .line 591
    :cond_4
    move v1, p1

    goto :goto_1
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    .line 601
    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 326
    return-void
.end method

.method public updateMavStereoMode(Z)V
    .locals 0
    .parameter "isMavStereoMode"

    .prologue
    .line 608
    iput-boolean p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->mIsMavStereoMode:Z

    .line 609
    return-void
.end method
