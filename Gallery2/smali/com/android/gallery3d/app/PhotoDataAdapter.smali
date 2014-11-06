.class public Lcom/android/gallery3d/app/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateContent;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$MyFaceInfoListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;,
        Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;
    }
.end annotation


# static fields
.field private static final BIT_FULL_IMAGE:I = 0x2

.field private static final BIT_MAV_PLAYBACK:I = 0x10000000

.field private static final BIT_SCREEN_NAIL:I = 0x1

.field private static final DATA_CACHE_SIZE:I = 0x20

.field private static final IMAGE_CACHE_SIZE:I = 0x7

.field private static final MIN_LOAD_COUNT:I = 0x8

.field private static final MSG_GET_FACEINFO:I = 0x11

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final MSG_UPDATE_IMAGE_REQUESTS:I = 0x4

.field private static final SCREEN_NAIL_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhotoDataAdapter"

.field public static final TYPE_LOAD_FRAME:I = 0x1

.field public static final TYPE_LOAD_TOTAL_COUNT:I

.field private static final mIsMavSupported:Z

.field private static final mIsStereoDisplaySupported:Z

.field private static sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mCameraIndex:I

.field private final mChanges:[J

.field private mContentEnd:I

.field private mContentStart:I

.field private mCurrentIndex:I

.field private mCurrentMpoIndex:I

.field private mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private final mData:[Lcom/android/gallery3d/data/MediaItem;

.field private mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

.field private mFaceInfoListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MyFaceInfoListener;

.field private mFocusHintDirection:I

.field private mFocusHintPath:Lcom/android/gallery3d/data/Path;

.field private mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mIsMavLoadingFinished:Z

.field private mIsMavStereoMode:Z

.field private mIsPanorama:Z

.field private mIsStaticCamera:Z

.field private mItemPath:Lcom/android/gallery3d/data/Path;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

.field private mNeedFullImage:Z

.field private final mPaths:[Lcom/android/gallery3d/data/Path;

.field private final mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

.field private mRenderLock:Ljava/lang/Object;

.field public mRenderRequested:Z

.field private mSize:I

.field private final mSource:Lcom/android/gallery3d/data/MediaSet;

.field private final mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

.field private mSourceVersion:J

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private final mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 97
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->isMAVSupported()Z

    move-result v7

    sput-boolean v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    .line 117
    const/4 v4, 0x0

    .line 118
    .local v4, stereoRequestCount:I
    sget-boolean v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v7, :cond_0

    move v3, v5

    .line 119
    .local v3, mpoRequestCount:I
    :goto_0
    const/4 v1, 0x0

    .line 120
    .local v1, k:I
    add-int/lit8 v7, v3, 0x10

    new-array v7, v7, [Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    sput-object v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    .line 121
    sget-object v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .local v2, k:I
    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v8, v6, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v8, v7, v1

    .line 123
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    const/4 v7, 0x7

    if-ge v0, v7, :cond_1

    .line 124
    sget-object v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v8, v0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v8, v7, v2

    .line 125
    sget-object v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    neg-int v9, v0

    invoke-direct {v8, v9, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v8, v7, v1

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v2           #k:I
    .end local v3           #mpoRequestCount:I
    :cond_0
    move v3, v6

    .line 118
    goto :goto_0

    .line 128
    .restart local v0       #i:I
    .restart local v2       #k:I
    .restart local v3       #mpoRequestCount:I
    :cond_1
    sget-object v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v8, v6, v10}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v8, v7, v2

    .line 129
    sget-object v7, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v8, v5, v10}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v8, v7, v1

    .line 130
    sget-object v5, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v10}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v7, v5, v2

    .line 132
    sget-boolean v5, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v5, :cond_2

    .line 133
    sget-object v5, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/high16 v8, 0x1000

    invoke-direct {v7, v6, v8}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v7, v5, v1

    move v1, v2

    .line 135
    .end local v2           #k:I
    .restart local v1       #k:I
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;IIZZI)V
    .locals 6
    .parameter "activity"
    .parameter "view"
    .parameter "mediaSet"
    .parameter "itemPath"
    .parameter "indexHint"
    .parameter "cameraIndex"
    .parameter "isPanorama"
    .parameter "isStaticCamera"
    .parameter "setSize"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 221
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    .line 150
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    .line 151
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 152
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    .line 161
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 162
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 171
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    .line 174
    new-array v0, v3, [Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    .line 183
    iput-wide v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    .line 184
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    .line 191
    iput v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    .line 192
    iput-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    .line 200
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-direct {v0, p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    .line 201
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$MyFaceInfoListener;

    invoke-direct {v0, p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$MyFaceInfoListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFaceInfoListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MyFaceInfoListener;

    .line 1643
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderLock:Ljava/lang/Object;

    .line 1644
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderRequested:Z

    .line 1659
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavStereoMode:Z

    .line 1736
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentMpoIndex:I

    .line 222
    const v0, 0x7f0d024a

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/ui/TiledScreenNail;->setLoadingTip(Ljava/lang/String;)V

    .line 223
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 224
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 225
    invoke-static {p4}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 226
    iput p5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 227
    iput p6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    .line 228
    iput-boolean p7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    .line 229
    iput-boolean p8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStaticCamera:Z

    .line 230
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 232
    invoke-static {p9, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    .line 236
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 240
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$1;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$1;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    .line 273
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 274
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateFullImage(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/PhotoDataAdapter;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/PhotoDataAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/gallery3d/app/PhotoDataAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/android/gallery3d/data/Path;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->findIndexOfPathInCache(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/android/gallery3d/data/Path;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    return v0
.end method

.method static synthetic access$3300()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateMavDecoder(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/app/PhotoDataAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/app/PhotoDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavStereoMode:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/gallery3d/app/PhotoDataAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavStereoMode:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentMpoIndex:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/PhotoDataAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->processFaceInfoMessage(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/app/PhotoDataAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/gallery3d/app/PhotoDataAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isTemporaryItem(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1216
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1217
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1220
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1222
    :goto_0
    return-object v2

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 1223
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1224
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private findIndexOfPathInCache(Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/android/gallery3d/data/Path;)I
    .locals 5
    .parameter "info"
    .parameter "path"

    .prologue
    .line 1452
    iget-object v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    .line 1453
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1454
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    .line 1455
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    if-ne v4, p2, :cond_0

    .line 1456
    iget v4, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    add-int/2addr v4, v0

    .line 1459
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    :goto_1
    return v4

    .line 1453
    .restart local v1       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1459
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private fireDataChange()V
    .locals 15

    .prologue
    const v10, 0x7fffffff

    const/4 v14, 0x0

    const/4 v13, 0x7

    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, changed:Z
    const/4 v3, -0x3

    .local v3, i:I
    :goto_0
    const/4 v9, 0x3

    if-gt v3, v9, :cond_1

    .line 347
    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v9, v3

    invoke-direct {p0, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v5

    .line 348
    .local v5, newVersion:J
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v11, v3, 0x3

    aget-wide v11, v9, v11

    cmp-long v9, v11, v5

    if-eqz v9, :cond_0

    .line 349
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v11, v3, 0x3

    aput-wide v5, v9, v11

    .line 350
    const/4 v1, 0x1

    .line 346
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 354
    .end local v5           #newVersion:J
    :cond_1
    if-nez v1, :cond_2

    .line 391
    :goto_1
    return-void

    .line 359
    :cond_2
    const/4 v0, 0x7

    .line 360
    .local v0, N:I
    new-array v2, v13, [I

    .line 363
    .local v2, fromIndex:[I
    new-array v7, v13, [Lcom/android/gallery3d/data/Path;

    .line 364
    .local v7, oldPaths:[Lcom/android/gallery3d/data/Path;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    invoke-static {v9, v14, v7, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v13, :cond_3

    .line 368
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    iget v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, -0x3

    invoke-direct {p0, v11}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v11

    aput-object v11, v9, v3

    .line 367
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 372
    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v13, :cond_8

    .line 373
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/android/gallery3d/data/Path;

    aget-object v8, v9, v3

    .line 374
    .local v8, p:Lcom/android/gallery3d/data/Path;
    if-nez v8, :cond_4

    .line 375
    aput v10, v2, v3

    .line 372
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 381
    :cond_4
    const/4 v4, 0x0

    .local v4, j:I
    :goto_5
    if-ge v4, v13, :cond_5

    .line 382
    aget-object v9, v7, v4

    if-ne v9, v8, :cond_6

    .line 386
    :cond_5
    if-ge v4, v13, :cond_7

    add-int/lit8 v9, v4, -0x3

    :goto_6
    aput v9, v2, v3

    goto :goto_4

    .line 381
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    move v9, v10

    .line 386
    goto :goto_6

    .line 389
    .end local v4           #j:I
    .end local v8           #p:Lcom/android/gallery3d/data/Path;
    :cond_8
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget v10, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    neg-int v10, v10

    iget v11, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int/2addr v11, v12

    invoke-virtual {v9, v2, v10, v11}, Lcom/android/gallery3d/ui/PhotoView;->notifyDataChange([III)V

    goto :goto_1
.end method

.method private getItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 509
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 515
    :goto_0
    return-object v0

    .line 510
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 512
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v0, :cond_3

    .line 513
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v1, p1, 0x20

    aget-object v0, v0, v1

    goto :goto_0

    .line 510
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 515
    goto :goto_0
.end method

.method private getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 283
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-object v0

    .line 284
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v1, p1, 0x20

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getPath(I)Lcom/android/gallery3d/data/Path;
    .locals 2
    .parameter "index"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 339
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 340
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method private getScreenNails([Landroid/graphics/Bitmap;)[Lcom/android/gallery3d/ui/ScreenNail;
    .locals 7
    .parameter "bmps"

    .prologue
    .line 1599
    if-nez p1, :cond_1

    .line 1600
    const/4 v3, 0x0

    .line 1611
    :cond_0
    return-object v3

    .line 1602
    :cond_1
    array-length v1, p1

    .line 1603
    .local v1, len:I
    new-array v3, v1, [Lcom/android/gallery3d/ui/ScreenNail;

    .line 1604
    .local v3, screenNails:[Lcom/android/gallery3d/ui/ScreenNail;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1605
    aget-object v4, p1, v0

    if-nez v4, :cond_2

    .line 1606
    const-string v4, "PhotoDataAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bmps["

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

    .line 1608
    :cond_2
    new-instance v2, Lcom/android/gallery3d/ui/BitmapScreenNail;

    aget-object v4, p1, v0

    invoke-direct {v2, v4}, Lcom/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    .line 1609
    .local v2, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    aput-object v2, v3, v0

    .line 1604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getTargetScreenNail(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 2
    .parameter "entry"

    .prologue
    const/4 v0, 0x0

    .line 1480
    if-nez p1, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return-object v0

    .line 1482
    :cond_1
    iget-object v1, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v1, :cond_0

    .line 1483
    const-string v0, "PhotoDataAdapter"

    const-string v1, "return current MpoFrame"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0
.end method

.method private getVersion(I)J
    .locals 3
    .parameter "index"

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 333
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    .line 334
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v1

    goto :goto_0
.end method

.method private isTemporaryItem(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 6
    .parameter "mediaItem"

    .prologue
    const/4 v1, 0x0

    .line 891
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-gez v2, :cond_1

    .line 902
    :cond_0
    :goto_0
    return v1

    .line 893
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/data/LocalMediaItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 894
    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 895
    .local v0, item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v2

    sget v3, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne v2, v3, :cond_0

    .line 897
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 898
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 899
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    .line 901
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 902
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 4
    .parameter "item"

    .prologue
    .line 909
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v2

    .line 910
    .local v2, width:I
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    .line 911
    .local v0, height:I
    new-instance v1, Lcom/android/gallery3d/ui/TiledScreenNail;

    invoke-direct {v1, v2, v0}, Lcom/android/gallery3d/ui/TiledScreenNail;-><init>(II)V

    .line 913
    .local v1, nail:Lcom/android/gallery3d/ui/TiledScreenNail;
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-ltz v3, :cond_0

    if-lez v2, :cond_0

    if-lez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/TiledScreenNail;->enableLoadingTip(Z)V

    .line 917
    return-object v1

    .line 913
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processFaceInfoMessage(I)V
    .locals 2
    .parameter "imageId"

    .prologue
    .line 277
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 278
    .local v0, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/data/LocalImage;

    .end local v0           #mediaItem:Lcom/android/gallery3d/data/MediaItem;
    iget v1, v0, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    if-ne v1, p1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 281
    :cond_0
    return-void
.end method

.method private requestRender()V
    .locals 5

    .prologue
    .line 1647
    const-string v2, "PhotoDataAdapter"

    const-string v3, "requestRender"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1649
    .local v0, time:J
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1650
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderRequested:Z

    .line 1651
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1652
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 1654
    const-string v2, "PhotoDataAdapter"

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

    .line 1655
    return-void

    .line 1652
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private startMavPlayback(Lcom/android/gallery3d/data/Path;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 1615
    const-string v4, "PhotoDataAdapter"

    const-string v5, "startMavPlayback"

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1617
    .local v1, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v1, :cond_0

    .line 1641
    :goto_0
    return-void

    .line 1620
    :cond_0
    iget v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    .line 1621
    .local v3, totalCount:I
    if-lez v3, :cond_3

    .line 1623
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 1624
    .local v0, currentIndex:I
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    if-ne p1, v4, :cond_2

    .line 1626
    div-int/lit8 v2, v3, 0x2

    .line 1627
    .local v2, middleFrame:I
    const-string v4, "PhotoDataAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the middle frame is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    if-eqz v4, :cond_1

    .line 1629
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setSeekBar(II)V

    .line 1630
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setStatus(Z)V

    .line 1634
    :cond_1
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;

    invoke-direct {v4, p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;)V

    invoke-virtual {v4}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavRenderThread;->start()V

    goto :goto_0

    .line 1636
    .end local v2           #middleFrame:I
    :cond_2
    const-string v4, "PhotoDataAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incorrect path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1639
    .end local v0           #currentIndex:I
    :cond_3
    const-string v4, "PhotoDataAdapter"

    const-string v5, "mpoTotalCount <= 0"

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startTaskIfNeeded(II)Lcom/android/gallery3d/util/Future;
    .locals 13
    .parameter "index"
    .parameter "which"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    const/high16 v12, 0x1000

    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 922
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v5, :cond_0

    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v5, :cond_1

    :cond_0
    move-object v5, v8

    .line 995
    :goto_0
    return-object v5

    .line 924
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 925
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_2

    move-object v5, v8

    goto :goto_0

    .line 926
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v9, p1, 0x20

    aget-object v1, v5, v9

    .line 927
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_3

    move v5, v6

    :goto_1
    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 928
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v3

    .line 930
    .local v3, version:J
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-eq p1, v5, :cond_4

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->hasCountConstraint()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v8

    .line 931
    goto :goto_0

    .end local v3           #version:J
    :cond_3
    move v5, v7

    .line 927
    goto :goto_1

    .line 934
    .restart local v3       #version:J
    :cond_4
    if-ne p2, v6, :cond_5

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v5, :cond_5

    iget-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v5, v9, v3

    if-nez v5, :cond_5

    .line 936
    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 937
    :cond_5
    if-ne p2, v11, :cond_6

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v5, :cond_6

    iget-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v5, v9, v3

    if-nez v5, :cond_6

    .line 939
    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 943
    :cond_6
    if-ne p2, v12, :cond_7

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v5, :cond_7

    iget-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedMav:J

    cmp-long v5, v9, v3

    if-nez v5, :cond_7

    .line 945
    const-string v5, "PhotoDataAdapter"

    const-string v6, "startTaskIfNeed: return existed mpoDecoderTask"

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 950
    :cond_7
    if-ne p2, v6, :cond_8

    iget-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    cmp-long v5, v9, v3

    if-eqz v5, :cond_8

    .line 951
    iput-wide v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 952
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v6, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v6, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v7, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v5

    iput-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 956
    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 958
    :cond_8
    if-ne p2, v11, :cond_9

    iget-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    cmp-long v5, v9, v3

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v5

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_9

    .line 961
    iput-wide v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 962
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v6, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;

    invoke-direct {v6, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageJob;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;

    invoke-direct {v7, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$FullImageListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v5

    iput-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 966
    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .line 970
    :cond_9
    sget-boolean v5, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v5, :cond_a

    if-ne p2, v12, :cond_a

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v5

    if-nez v5, :cond_a

    iget-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedMav:J

    cmp-long v5, v9, v3

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v5

    const/high16 v9, 0x4000

    and-int/2addr v5, v9

    if-eqz v5, :cond_a

    .line 975
    const-string v5, "PhotoDataAdapter"

    const-string v8, "create mav decoder task"

    invoke-static {v5, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iput-wide v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedMav:J

    .line 982
    new-instance v2, Lcom/android/gallery3d/util/GalleryUtils$Params;

    invoke-direct {v2}, Lcom/android/gallery3d/util/GalleryUtils$Params;-><init>()V

    .line 983
    .local v2, params:Lcom/android/gallery3d/util/GalleryUtils$Params;
    iput-boolean v6, v2, Lcom/android/gallery3d/util/GalleryUtils$Params;->inMpoTotalCount:Z

    .line 985
    const-string v5, "PhotoDataAdapter"

    const-string v8, "get mav total count"

    invoke-static {v5, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iput-boolean v7, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingFinished:Z

    .line 987
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingFinished:Z

    invoke-virtual {v5, v8}, Lcom/android/gallery3d/ui/PhotoView;->setMavLoadingFinished(Z)V

    .line 989
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    invoke-virtual {v1, v6, v2}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/android/gallery3d/util/GalleryUtils$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v6

    new-instance v8, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-direct {v8, p0, v9, v1, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;I)V

    invoke-virtual {v5, v6, v8}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v5

    iput-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 992
    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    goto/16 :goto_0

    .end local v2           #params:Lcom/android/gallery3d/util/GalleryUtils$Params;
    :cond_a
    move-object v5, v8

    .line 995
    goto/16 :goto_0
.end method

.method private updateCurrentIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 519
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ne v1, p1, :cond_0

    .line 545
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 523
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderRequested:Z

    .line 524
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 525
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 528
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 530
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v2, p1, 0x20

    aget-object v0, v1, v2

    .line 531
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 533
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    .line 536
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 537
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 538
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    .line 540
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-interface {v1, p1, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/android/gallery3d/data/Path;)V

    .line 544
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    goto :goto_0

    .line 525
    .end local v0           #item:Lcom/android/gallery3d/data/MediaItem;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 531
    .restart local v0       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_1
.end method

.method private updateFullImage(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;II)V
    .locals 4
    .parameter "path"
    .parameter
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 436
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eq v2, p2, :cond_2

    .line 437
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    .line 438
    .local v1, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 453
    .end local v1           #fullImage:Landroid/graphics/BitmapRegionDecoder;
    :cond_1
    :goto_0
    return-void

    .line 442
    :cond_2
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 443
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapRegionDecoder;

    iput-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 444
    iput p3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->width:I

    .line 445
    iput p4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->height:I

    .line 446
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v2, :cond_3

    .line 447
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 448
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 449
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 452
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0
.end method

.method private updateImageCache()V
    .locals 13

    .prologue
    .line 999
    new-instance v8, Ljava/util/HashSet;

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1000
    .local v8, toBeRemoved:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .local v1, i:I
    :goto_0
    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v9, :cond_a

    .line 1001
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v10, v1, 0x20

    aget-object v4, v9, v10

    .line 1002
    .local v4, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v4, :cond_1

    .line 1000
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1003
    :cond_1
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 1004
    .local v6, path:Lcom/android/gallery3d/data/Path;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1005
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1006
    if-eqz v0, :cond_9

    .line 1007
    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 1008
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_2

    .line 1009
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1010
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 1012
    :cond_2
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 1013
    const-wide/16 v9, -0x1

    iput-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 1015
    :cond_3
    iget-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    .line 1018
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    instance-of v9, v9, Lcom/android/gallery3d/ui/TiledScreenNail;

    if-eqz v9, :cond_4

    .line 1019
    iget-object v7, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v7, Lcom/android/gallery3d/ui/TiledScreenNail;

    .line 1020
    .local v7, s:Lcom/android/gallery3d/ui/TiledScreenNail;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/android/gallery3d/ui/TiledScreenNail;->updatePlaceholderSize(II)V

    .line 1027
    .end local v7           #s:Lcom/android/gallery3d/ui/TiledScreenNail;
    :cond_4
    sget-boolean v9, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-lez v9, :cond_0

    .line 1029
    const-string v9, "PhotoDataAdapter"

    const-string v10, "updateImageCache: release mav"

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_5

    .line 1031
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1032
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 1034
    :cond_5
    const/4 v9, 0x0

    iput v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    .line 1035
    const-wide/16 v9, -0x1

    iput-wide v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedMav:J

    .line 1036
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->isMpoFrameRecyled:Z

    .line 1038
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_6

    .line 1039
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1040
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1055
    :cond_6
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_0

    .line 1056
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    array-length v5, v9

    .line 1057
    .local v5, length:I
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_2
    if-ge v3, v5, :cond_8

    .line 1058
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v9, v9, v3

    if-eqz v9, :cond_7

    .line 1059
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1060
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    const/4 v10, 0x0

    aput-object v10, v9, v3

    .line 1057
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1063
    :cond_8
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    goto/16 :goto_1

    .line 1068
    .end local v3           #idx:I
    .end local v5           #length:I
    :cond_9
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    const/4 v9, 0x0

    invoke-direct {v0, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    .line 1069
    .restart local v0       #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1074
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v4           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    :cond_a
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/Path;

    .line 1075
    .restart local v6       #path:Lcom/android/gallery3d/data/Path;
    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1076
    .restart local v0       #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_c

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1077
    :cond_c
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_d

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1078
    :cond_d
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_e

    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1081
    :cond_e
    sget-boolean v9, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v9, :cond_b

    .line 1082
    const-string v9, "PhotoDataAdapter"

    const-string v10, "updateImageCache: release mav"

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v9, :cond_f

    .line 1084
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v9}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1086
    :cond_f
    const/4 v9, 0x0

    iput v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    .line 1087
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->isMpoFrameRecyled:Z

    .line 1089
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_10

    .line 1090
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1091
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->currentMpoFrame:Lcom/android/gallery3d/ui/ScreenNail;

    .line 1106
    :cond_10
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v9, :cond_b

    .line 1107
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    array-length v5, v9

    .line 1108
    .restart local v5       #length:I
    const/4 v3, 0x0

    .restart local v3       #idx:I
    :goto_4
    if-ge v3, v5, :cond_12

    .line 1109
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v9, v9, v3

    if-eqz v9, :cond_11

    .line 1110
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    aget-object v9, v9, v3

    invoke-interface {v9}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 1111
    iget-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    const/4 v10, 0x0

    aput-object v10, v9, v3

    .line 1108
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1114
    :cond_12
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_3

    .line 1119
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v3           #idx:I
    .end local v5           #length:I
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    :cond_13
    return-void
.end method

.method private updateImageRequests()V
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 786
    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v8, :cond_1

    .line 827
    :cond_0
    return-void

    .line 788
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 789
    .local v1, currentIndex:I
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v9, v1, 0x20

    aget-object v5, v8, v9

    .line 790
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v8, v9, :cond_0

    .line 796
    const/4 v7, 0x0

    .line 797
    .local v7, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<*>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    array-length v8, v8

    if-ge v3, v8, :cond_4

    .line 798
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v6, v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 799
    .local v6, offset:I
    sget-object v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->sImageFetchSeq:[Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    aget-object v8, v8, v3

    iget v0, v8, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    .line 800
    .local v0, bit:I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_3

    iget-boolean v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    if-nez v8, :cond_3

    .line 797
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 801
    :cond_3
    add-int v8, v1, v6

    invoke-direct {p0, v8, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->startTaskIfNeeded(II)Lcom/android/gallery3d/util/Future;

    move-result-object v7

    .line 802
    if-eqz v7, :cond_2

    .line 806
    .end local v0           #bit:I
    .end local v6           #offset:I
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 807
    .local v2, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_6

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_6

    .line 808
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 809
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 810
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 812
    :cond_6
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_7

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_7

    .line 813
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 814
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    .line 815
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    .line 819
    :cond_7
    sget-boolean v8, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v8, :cond_5

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v8, :cond_5

    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eq v8, v7, :cond_5

    .line 821
    iget-object v8, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v8}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 822
    iput-object v10, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 823
    iput-wide v11, v2, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedMav:J

    goto :goto_1
.end method

.method private updateMavDecoder(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;Lcom/android/gallery3d/data/MediaItem;I)V
    .locals 10
    .parameter "path"
    .parameter
    .parameter "item"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/util/GalleryUtils$DataBundle;",
            ">;",
            "Lcom/android/gallery3d/data/MediaItem;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1536
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/util/GalleryUtils$DataBundle;>;"
    const-string v5, "PhotoDataAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> updateMavDecoder, type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1538
    .local v3, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eq v5, p2, :cond_1

    .line 1539
    :cond_0
    const-string v5, "PhotoDataAdapter"

    const-string v6, "updateMpoDecoder:invalid entry or future"

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :goto_0
    return-void

    .line 1542
    :cond_1
    if-nez p4, :cond_7

    .line 1543
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 1544
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    iget v5, v5, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->mpoTotalCount:I

    iput v5, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    .line 1545
    const-string v5, "PhotoDataAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the mav total count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    if-eqz v5, :cond_2

    .line 1549
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    iget v6, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;->setSeekBar(II)V

    .line 1553
    :cond_2
    new-instance v4, Lcom/android/gallery3d/util/GalleryUtils$Params;

    invoke-direct {v4}, Lcom/android/gallery3d/util/GalleryUtils$Params;-><init>()V

    .line 1554
    .local v4, params:Lcom/android/gallery3d/util/GalleryUtils$Params;
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/gallery3d/util/GalleryUtils$Params;->inMpoFrames:Z

    .line 1556
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1557
    .local v2, defaultDisplay:Landroid/view/Display;
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/android/gallery3d/util/GalleryUtils;->availableMemoryForMavPlayback(Lcom/android/gallery3d/app/AbstractGalleryActivity;)J

    move-result-wide v0

    .line 1558
    .local v0, availableMemory:J
    const-wide/32 v5, 0x6400000

    cmp-long v5, v0, v5

    if-lez v5, :cond_5

    .line 1559
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v5

    iput v5, v4, Lcom/android/gallery3d/util/GalleryUtils$Params;->inTargetDisplayHeight:I

    .line 1560
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v5

    iput v5, v4, Lcom/android/gallery3d/util/GalleryUtils$Params;->inTargetDisplayWidth:I

    .line 1570
    :cond_3
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/gallery3d/util/GalleryUtils$Params;->inPQEnhance:Z

    .line 1571
    const-string v5, "PhotoDataAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "display width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    invoke-virtual {p3, v5}, Lcom/android/gallery3d/data/MediaItem;->setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V

    .line 1575
    const-string v5, "PhotoDataAdapter"

    const-string v6, "start load all mav frames"

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    const/4 v6, 0x1

    invoke-virtual {p3, v6, v4}, Lcom/android/gallery3d/data/MediaItem;->requestImage(ILcom/android/gallery3d/util/GalleryUtils$Params;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v6

    new-instance v7, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;

    invoke-virtual {p3}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v7, p0, v8, p3, v9}, Lcom/android/gallery3d/app/PhotoDataAdapter$MavDecoderListener;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;I)V

    invoke-virtual {v5, v6, v7}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v5

    iput-object v5, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 1595
    .end local v0           #availableMemory:J
    .end local v2           #defaultDisplay:Landroid/view/Display;
    .end local v4           #params:Lcom/android/gallery3d/util/GalleryUtils$Params;
    :cond_4
    :goto_2
    const-string v5, "PhotoDataAdapter"

    const-string v6, "<< updateMavDecoder"

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1561
    .restart local v0       #availableMemory:J
    .restart local v2       #defaultDisplay:Landroid/view/Display;
    .restart local v4       #params:Lcom/android/gallery3d/util/GalleryUtils$Params;
    :cond_5
    const-wide/32 v5, 0x6400000

    cmp-long v5, v0, v5

    if-gtz v5, :cond_6

    const-wide/32 v5, 0x3200000

    cmp-long v5, v0, v5

    if-lez v5, :cond_6

    .line 1562
    const-string v5, "PhotoDataAdapter"

    const-string v6, "no enough memory, degrade sample rate to 1/4"

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/gallery3d/util/GalleryUtils$Params;->inTargetDisplayHeight:I

    .line 1564
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/gallery3d/util/GalleryUtils$Params;->inTargetDisplayWidth:I

    goto :goto_1

    .line 1565
    :cond_6
    const-wide/32 v5, 0x3200000

    cmp-long v5, v0, v5

    if-gtz v5, :cond_3

    .line 1566
    const-string v5, "PhotoDataAdapter"

    const-string v6, "no enough memory, degrade sample rate to 1/9"

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    iput v5, v4, Lcom/android/gallery3d/util/GalleryUtils$Params;->inTargetDisplayHeight:I

    .line 1568
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    iput v5, v4, Lcom/android/gallery3d/util/GalleryUtils$Params;->inTargetDisplayWidth:I

    goto/16 :goto_1

    .line 1579
    .end local v0           #availableMemory:J
    .end local v2           #defaultDisplay:Landroid/view/Display;
    .end local v4           #params:Lcom/android/gallery3d/util/GalleryUtils$Params;
    :cond_7
    const/4 v5, 0x1

    if-ne p4, v5, :cond_4

    .line 1580
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 1581
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;

    iget-object v5, v5, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->mpoFrames:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getScreenNails([Landroid/graphics/Bitmap;)[Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v5

    iput-object v5, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    .line 1583
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->isMpoFrameRecyled:Z

    .line 1590
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingFinished:Z

    .line 1591
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    iget-boolean v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingFinished:Z

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/PhotoView;->setMavLoadingFinished(Z)V

    .line 1592
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->startMavPlayback(Lcom/android/gallery3d/data/Path;)V

    .line 1593
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_2
.end method

.method private updateScreenNail(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/util/Future;)V
    .locals 6
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Lcom/android/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p2, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Lcom/android/gallery3d/ui/ScreenNail;>;"
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 399
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-interface {p2}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/ScreenNail;

    .line 401
    .local v4, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eq v5, p2, :cond_2

    .line 402
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 407
    :cond_2
    if-nez v4, :cond_6

    const/4 v2, 0x1

    .line 408
    .local v2, isLoadFailed:Z
    :goto_1
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    .line 411
    iget-object v5, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    instance-of v5, v5, Lcom/android/gallery3d/ui/TiledScreenNail;

    if-eqz v5, :cond_3

    .line 412
    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v3, Lcom/android/gallery3d/ui/TiledScreenNail;

    .line 413
    .local v3, original:Lcom/android/gallery3d/ui/TiledScreenNail;
    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/TiledScreenNail;->combine(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    .line 416
    .end local v3           #original:Lcom/android/gallery3d/ui/TiledScreenNail;
    :cond_3
    if-nez v4, :cond_7

    .line 417
    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 423
    :goto_2
    const/4 v1, -0x3

    .local v1, i:I
    :goto_3
    const/4 v5, 0x3

    if-gt v1, v5, :cond_5

    .line 424
    iget v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v5, v1

    invoke-direct {p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    if-ne p1, v5, :cond_8

    .line 425
    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 426
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v5, v1}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    .line 430
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto :goto_0

    .line 407
    .end local v1           #i:I
    .end local v2           #isLoadFailed:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 419
    .restart local v2       #isLoadFailed:Z
    :cond_7
    iput-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 420
    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_2

    .line 423
    .restart local v1       #i:I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private updateSlidingWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 759
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x3

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x7

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 761
    .local v2, start:I
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 763
    .local v0, end:I
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ne v3, v0, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    .line 766
    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    .line 769
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x10

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x20

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    .line 771
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x20

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 772
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_0

    .line 774
    :cond_2
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .local v1, i:I
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v1, v3, :cond_5

    .line 775
    if-lt v1, v2, :cond_3

    if-lt v1, v0, :cond_4

    .line 776
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v4, v1, 0x20

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 774
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 779
    :cond_5
    iput v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    .line 780
    iput v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    .line 781
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method private updateTileProvider()V
    .locals 3

    .prologue
    .line 723
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 724
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_0

    .line 725
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 729
    :goto_0
    return-void

    .line 727
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    goto :goto_0
.end method

.method private updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    .locals 7
    .parameter "entry"

    .prologue
    .line 732
    iget-object v2, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 733
    .local v2, screenNail:Lcom/android/gallery3d/ui/ScreenNail;
    iget-object v0, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Landroid/graphics/BitmapRegionDecoder;

    .line 734
    .local v0, fullImage:Landroid/graphics/BitmapRegionDecoder;
    if-eqz v2, :cond_2

    .line 737
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProviderEx(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 738
    const-string v4, "PhotoDataAdapter"

    const-string v5, "updateTileProvider:we return!"

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :goto_0
    return-void

    .line 742
    :cond_0
    if-eqz v0, :cond_1

    .line 744
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    iget v5, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->width:I

    iget v6, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->height:I

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    .line 745
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    iget v5, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->width:I

    iget v6, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->height:I

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;II)V

    goto :goto_0

    .line 748
    :cond_1
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v3

    .line 749
    .local v3, width:I
    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v1

    .line 750
    .local v1, height:I
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    goto :goto_0

    .line 753
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    goto :goto_0
.end method

.method private updateTileProviderEx(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z
    .locals 6
    .parameter "entry"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1465
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 1467
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getTargetScreenNail(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    .line 1468
    .local v1, targetScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-nez v1, :cond_1

    .line 1476
    :goto_1
    return v5

    .end local v1           #targetScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_0
    move v3, v5

    .line 1465
    goto :goto_0

    .line 1472
    .restart local v1       #targetScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_1
    invoke-interface {v1}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v2

    .line 1473
    .local v2, w:I
    invoke-interface {v1}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v0

    .line 1475
    .local v0, h:I
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;II)V

    move v5, v4

    .line 1476
    goto :goto_1
.end method


# virtual methods
.method public cancelCurrentMavDecodeTask()V
    .locals 3

    .prologue
    .line 1807
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getCurrentIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1808
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    sget-boolean v1, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1809
    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    .line 1810
    iget-object v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1811
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 1813
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    .line 1814
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedMav:J

    .line 1816
    :cond_1
    return-void
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 593
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 594
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v1

    goto :goto_0
.end method

.method public getImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V
    .locals 3
    .parameter "offset"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 581
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 582
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_0

    .line 583
    iput v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 584
    iput v2, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 589
    :goto_0
    return-void

    .line 586
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    iput v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 587
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v1

    iput v1, p2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getLevelCount()I

    move-result v0

    return v0
.end method

.method public getLoadingState(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 636
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 637
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return v1

    .line 638
    :cond_1
    iget-boolean v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 639
    :cond_2
    iget-object v2, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 3
    .parameter "offset"

    .prologue
    .line 681
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v0, v1, p1

    .line 682
    .local v0, index:I
    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v0, v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    rem-int/lit8 v2, v0, 0x20

    aget-object v1, v1, v2

    .line 685
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v3, 0x0

    .line 554
    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v1, v4, p1

    .line 555
    .local v1, index:I
    if-ltz v1, :cond_0

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge v1, v4, :cond_0

    iget-boolean v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v4, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-object v3

    .line 556
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v4, :cond_3

    iget v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 558
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 559
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_0

    .line 561
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 562
    .local v0, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-eqz v0, :cond_0

    .line 566
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getTargetScreenNail(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    .line 567
    .local v3, targetScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    if-nez v3, :cond_0

    .line 571
    iget-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 572
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    iput-object v4, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 573
    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    .line 576
    :cond_2
    iget-object v3, v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    goto :goto_0

    .line 556
    .end local v0           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v3           #targetScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"
    .parameter "borderSize"
    .parameter "pool"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->getTile(IIIIILcom/android/gallery3d/data/BitmapPool;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTitleList()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, length:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    if-nez v5, :cond_0

    .line 314
    const/4 v3, 0x0

    .line 327
    :goto_0
    return-object v3

    .line 316
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    array-length v1, v5

    .line 317
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 318
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    aget-object v5, v5, v0

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 320
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, title:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 322
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v4           #title:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    :cond_2
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 327
    .local v3, st:[Ljava/lang/String;
    goto :goto_0
.end method

.method public getTotalFrameCount()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1786
    const/4 v1, 0x0

    .line 1787
    .local v1, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 1788
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 1789
    .local v0, currentPath:Lcom/android/gallery3d/data/Path;
    :goto_0
    if-eqz v0, :cond_0

    .line 1790
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1792
    .restart local v1       #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    :cond_0
    if-eqz v1, :cond_1

    .line 1793
    iget v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoTotalCount:I

    .line 1795
    :cond_1
    return v3

    .line 1788
    .end local v0           #currentPath:Lcom/android/gallery3d/data/Path;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUrlList()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 292
    const/4 v1, 0x0

    .line 293
    .local v1, length:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    if-nez v5, :cond_0

    .line 295
    const/4 v3, 0x0

    .line 308
    :goto_0
    return-object v3

    .line 297
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    array-length v1, v5

    .line 298
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 299
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    aget-object v5, v5, v0

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 301
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/android/gallery3d/data/MediaItem;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 302
    .local v4, url:Landroid/net/Uri;
    if-eqz v4, :cond_1

    .line 303
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v4           #url:Landroid/net/Uri;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 307
    :cond_2
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 308
    .local v3, st:[Ljava/lang/String;
    goto :goto_0
.end method

.method public isCamera(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 605
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeletable(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 628
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 629
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMav(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v0, 0x0

    .line 1494
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 1495
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v1, :cond_0

    .line 1499
    :goto_0
    return v0

    .line 1498
    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1499
    .local v0, isMavType:Z
    :cond_1
    goto :goto_0
.end method

.method public isMavLoadingFinished()Z
    .locals 1

    .prologue
    .line 1803
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavLoadingFinished:Z

    return v0
.end method

.method public isPanorama(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 610
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStaticCamera(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsStaticCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo(I)Z
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 620
    iget v2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 621
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    .line 550
    return-void
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 473
    iput-boolean v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 475
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->terminate()V

    .line 476
    iput-object v6, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 478
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 479
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFaceInfoListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MyFaceInfoListener;

    invoke-static {v3}, Lcom/android/gallery3d/data/FaceInfoProcess;->removeFaceInfoListener(Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoListener;)V

    .line 481
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 482
    .local v1, entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 483
    :cond_1
    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 484
    :cond_2
    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->recycle()V

    .line 487
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 488
    .local v0, currentItem:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    sget-boolean v3, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavSupported:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 491
    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    if-eqz v3, :cond_4

    .line 492
    const-string v3, "TAG"

    const-string v4, "cancel decoder task when pause"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v3, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v3}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 494
    iput-object v6, v1, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoDecoderTask:Lcom/android/gallery3d/util/Future;

    .line 497
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderLock:Ljava/lang/Object;

    monitor-enter v4

    .line 498
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderRequested:Z

    .line 499
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mRenderLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 500
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 504
    .end local v0           #currentItem:Lcom/android/gallery3d/data/MediaItem;
    .end local v1           #entry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 505
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    .line 506
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    .line 460
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 461
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFaceInfoListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MyFaceInfoListener;

    invoke-static {v0}, Lcom/android/gallery3d/data/FaceInfoProcess;->addFaceInfoListener(Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoListener;)V

    .line 462
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 463
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    .line 465
    new-instance v0, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    .line 466
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->start()V

    .line 468
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 469
    return-void
.end method

.method public setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V
    .locals 3
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 690
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v1, p1, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 692
    iput p2, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    .line 693
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    .line 694
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    .line 695
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    .line 699
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    if-eqz v1, :cond_3

    .line 700
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/Path;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 701
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    .line 706
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 707
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method public setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    .line 395
    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 714
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintDirection:I

    .line 715
    return-void
.end method

.method public setFocusHintPath(Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/android/gallery3d/data/Path;

    .line 720
    return-void
.end method

.method public setImageBitmap(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 1740
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 1741
    .local v1, currentItem:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 1742
    .local v2, currentPath:Lcom/android/gallery3d/data/Path;
    :goto_0
    if-nez v2, :cond_0

    .line 1743
    const-string v5, "PhotoDataAdapter"

    const-string v6, "setImageBitmap: the currentPath is null"

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    .line 1746
    .local v3, mavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    if-nez v3, :cond_2

    .line 1747
    const-string v5, "PhotoDataAdapter"

    const-string v6, "setImageBitmap: the mavEntry is null"

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :goto_1
    return-void

    .line 1741
    .end local v2           #currentPath:Lcom/android/gallery3d/data/Path;
    .end local v3           #mavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1750
    .restart local v2       #currentPath:Lcom/android/gallery3d/data/Path;
    .restart local v3       #mavEntry:Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    :cond_2
    iget-object v5, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v5, :cond_3

    .line 1751
    const-string v5, "PhotoDataAdapter"

    const-string v6, "setImageBitmap: the mpoFrames of current entry is null"

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1754
    :cond_3
    const/4 v4, 0x0

    .line 1755
    .local v4, nextIndex:I
    const/4 v0, 0x0

    .line 1757
    .local v0, arrayLen:I
    iget-object v5, v3, Lcom/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mpoFrames:[Lcom/android/gallery3d/ui/ScreenNail;

    array-length v0, v5

    .line 1758
    if-ltz p1, :cond_4

    if-ge p1, v0, :cond_4

    .line 1759
    iput p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mCurrentMpoIndex:I

    .line 1760
    const-string v5, "PhotoDataAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get current mpo frame, index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_4
    iget-boolean v5, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavStereoMode:Z

    if-eqz v5, :cond_7

    .line 1764
    const/4 v5, 0x1

    if-le v0, v5, :cond_5

    .line 1765
    add-int/lit8 v4, p1, 0x1

    .line 1766
    if-gez v4, :cond_6

    .line 1767
    move v4, p1

    .line 1776
    :cond_5
    :goto_2
    const-string v5, "PhotoDataAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get next mpo frame, index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->requestRender()V

    goto :goto_1

    .line 1768
    :cond_6
    add-int/lit8 v5, v0, -0x1

    if-le v4, v5, :cond_5

    .line 1769
    add-int/lit8 v4, v0, -0x1

    goto :goto_2

    .line 1773
    :cond_7
    move v4, p1

    goto :goto_2
.end method

.method public setMavListener(Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1782
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMavListener:Lcom/android/gallery3d/app/PhotoDataAdapter$MavListener;

    .line 1783
    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 599
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    .line 600
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 601
    return-void
.end method

.method public updateMavStereoMode(Z)V
    .locals 0
    .parameter "isMavStereoMode"

    .prologue
    .line 1799
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter;->mIsMavStereoMode:Z

    .line 1800
    return-void
.end method
