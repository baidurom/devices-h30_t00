.class public Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$EntryUpdater;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;,
        Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_ALBUM_ENTRY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumSetSlidingWindow"


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mClusterType:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

.field private mExternalStoragePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private final mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

.field private final mLabelUploader:Lcom/android/gallery3d/ui/TextureUploader;

.field private mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

.field private mLoadingLabel:Lcom/android/gallery3d/ui/BitmapTexture;

.field private final mLoadingText:Ljava/lang/String;

.field private mSize:I

.field private mSlotWidth:I

.field private final mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

.field private final mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;I)V
    .locals 2
    .parameter "activity"
    .parameter "source"
    .parameter "labelSpec"
    .parameter "cacheSize"

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 54
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 56
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 57
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 73
    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 74
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 109
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setModelListener(Lcom/android/gallery3d/app/AlbumSetDataLoader$DataListener;)V

    .line 110
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    .line 111
    new-array v0, p4, [Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 112
    invoke-virtual {p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .line 113
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 115
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getExternalStoragePaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mExternalStoragePaths:Ljava/util/List;

    .line 118
    new-instance v0, Lcom/android/gallery3d/ui/AlbumLabelMaker;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/android/gallery3d/ui/AlbumLabelMaker;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    .line 119
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d024a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/TextureUploader;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    .line 123
    new-instance v0, Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/TextureUploader;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/android/gallery3d/ui/TextureUploader;

    .line 125
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$1;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$1;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 132
    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/AlbumLabelMaker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/android/gallery3d/ui/TextureUploader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mClusterType:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/util/ThreadPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)Lcom/android/gallery3d/ui/TextureUploader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$806(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method private cancelImagesInSlot(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 244
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 246
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    .line 247
    :cond_2
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_3

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    .line 248
    :cond_3
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    goto :goto_0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    .prologue
    .line 227
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 229
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 230
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 231
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelImagesInSlot(I)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method private freeSlotContent(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 259
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 260
    :cond_0
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 261
    :cond_1
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 262
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 263
    :cond_3
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 264
    :cond_4
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 265
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 266
    return-void
.end method

.method private static getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J
    .locals 2
    .parameter "object"

    .prologue
    .line 252
    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static identifyCacheFlag(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 1
    .parameter "set"

    .prologue
    .line 569
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 571
    :cond_0
    const/4 v0, 0x0

    .line 574
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getCacheFlag()I

    move-result v0

    goto :goto_0
.end method

.method private static identifyCacheStatus(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 1
    .parameter "set"

    .prologue
    .line 578
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 580
    :cond_0
    const/4 v0, 0x0

    .line 583
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getCacheStatus()I

    move-result v0

    goto :goto_0
.end method

.method private identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I
    .locals 2
    .parameter "set"

    .prologue
    .line 288
    invoke-static {p1}, Lcom/android/gallery3d/data/DataSourceType;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v0

    .line 289
    .local v0, sourceType:I
    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    .line 290
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getBucketPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isExternalStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    const/16 v0, 0xc

    .line 296
    .end local v0           #sourceType:I
    :cond_1
    :goto_0
    return v0

    .line 293
    .restart local v0       #sourceType:I
    :cond_2
    const/16 v0, 0xb

    goto :goto_0
.end method

.method private isExternalStorage(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 276
    if-nez p1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v2

    .line 277
    :cond_1
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 279
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mExternalStoragePaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 280
    .local v1, storage:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 281
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isLabelChanged(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z
    .locals 1
    .parameter "entry"
    .parameter "title"
    .parameter "totalCount"
    .parameter "sourceType"

    .prologue
    .line 270
    iget-object v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    if-ne v0, p3, :cond_0

    iget v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPersonIdChange(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/Path;)Z
    .locals 5
    .parameter "oldSetPath"
    .parameter "newSetPath"

    .prologue
    const/4 v2, 0x0

    .line 301
    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mClusterType:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v2

    .line 303
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 304
    .local v1, oldPerson:I
    invoke-virtual {p2}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 305
    .local v0, newPerson:I
    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private prepareSlotContent(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 366
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;-><init>()V

    .line 367
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    .line 368
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aput-object v0, v1, v2

    .line 369
    return-void
.end method

.method private requestImagesInSlot(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 236
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 238
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 239
    :cond_2
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_3

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 240
    :cond_3
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    goto :goto_0
.end method

.method private requestNonactiveImages()V
    .locals 5

    .prologue
    .line 218
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 220
    .local v1, range:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 221
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 222
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestImagesInSlot(I)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method

.method private setContentWindow(II)V
    .locals 3
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 159
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    .line 187
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_3

    .line 162
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 163
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setActiveWindow(II)V

    .line 166
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_7

    .line 167
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 170
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .restart local v0       #i:I
    :goto_3
    if-ge v0, p1, :cond_4

    .line 171
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 173
    :cond_4
    move v0, p2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .restart local v1       #n:I
    :goto_4
    if-ge v0, v1, :cond_5

    .line 174
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 176
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setActiveWindow(II)V

    .line 177
    move v0, p1

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_6

    .line 178
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 180
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 181
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 185
    :cond_7
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .line 186
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private static startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z
    .locals 1
    .parameter "loader"

    .prologue
    .line 372
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapLoader;->startLoad()V

    .line 374
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z

    move-result v0

    goto :goto_0
.end method

.method private updateAlbumSetEntry(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V
    .locals 12
    .parameter "entry"
    .parameter "slotIndex"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v7

    .line 310
    .local v7, album:Lcom/android/gallery3d/data/MediaSet;
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getCoverItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v8

    .line 311
    .local v8, cover:Lcom/android/gallery3d/data/MediaItem;
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getTotalCount(I)I

    move-result v4

    .line 312
    .local v4, totalCount:I
    iget-object v9, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    .line 314
    .local v9, oldSetPath:Lcom/android/gallery3d/data/Path;
    iput-object v7, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    .line 315
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setDataVersion:J

    .line 316
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheFlag(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v0

    iput v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->cacheFlag:I

    .line 317
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifyCacheStatus(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v0

    iput v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->cacheStatus:I

    .line 318
    if-nez v7, :cond_6

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    .line 319
    if-nez v7, :cond_7

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isHidden:Z

    .line 320
    if-nez v7, :cond_8

    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isPrivate:Z

    .line 322
    if-nez v7, :cond_9

    const-string v3, ""

    .line 323
    .local v3, title:Ljava/lang/String;
    :goto_3
    invoke-direct {p0, v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->identifySourceType(Lcom/android/gallery3d/data/MediaSet;)I

    move-result v5

    .line 324
    .local v5, sourceType:I
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isLabelChanged(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    iput-object v3, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    .line 326
    iput v4, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    .line 327
    iput v5, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    .line 328
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 330
    const/4 v0, 0x0

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 331
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 333
    :cond_0
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 335
    const/4 v0, 0x0

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$202(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 336
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 338
    :cond_1
    if-eqz v7, :cond_2

    .line 339
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    sget-object v6, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;->NORMAL_STYLE:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;IILcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 342
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    sget-object v6, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;->SELECT_STYLE:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;IILcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$202(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 348
    :cond_2
    iput-object v8, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Lcom/android/gallery3d/data/MediaItem;

    .line 349
    invoke-static {v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v0

    iget-wide v10, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/android/gallery3d/data/Path;

    invoke-direct {p0, v9, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isPersonIdChange(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/Path;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 351
    :cond_3
    invoke-static {v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->getDataVersion(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverDataVersion:J

    .line 352
    if-nez v8, :cond_a

    const/4 v0, 0x0

    :goto_4
    iput v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    .line 353
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 354
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 355
    const/4 v0, 0x0

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 356
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 357
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/android/gallery3d/ui/Texture;

    .line 359
    :cond_4
    if-eqz v8, :cond_5

    .line 360
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-direct {v0, p0, p2, v8}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILcom/android/gallery3d/data/MediaItem;)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {p1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$002(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 363
    :cond_5
    return-void

    .line 318
    .end local v3           #title:Ljava/lang/String;
    .end local v5           #sourceType:I
    :cond_6
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    goto/16 :goto_0

    .line 319
    :cond_7
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->isHidden()Z

    move-result v0

    goto/16 :goto_1

    .line 320
    :cond_8
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->isPrivate()Z

    move-result v0

    goto/16 :goto_2

    .line 322
    :cond_9
    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 352
    .restart local v3       #title:Ljava/lang/String;
    .restart local v5       #sourceType:I
    :cond_a
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    goto :goto_4
.end method

.method private updateAllImageRequests()V
    .locals 5

    .prologue
    .line 418
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 419
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .local v1, i:I
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 420
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    rem-int v4, v1, v4

    aget-object v0, v3, v4

    .line 421
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$000(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 422
    :cond_0
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 423
    :cond_1
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->startLoadBitmap(Lcom/android/gallery3d/ui/BitmapLoader;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    .line 419
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_3
    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveRequestCount:I

    if-nez v3, :cond_4

    .line 426
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->requestNonactiveImages()V

    .line 430
    :goto_1
    return-void

    .line 428
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateTextureUploadQueue()V
    .locals 7

    .prologue
    .line 391
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v4, :cond_1

    .line 415
    :cond_0
    return-void

    .line 393
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 394
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 397
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .local v1, i:I
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 398
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    .line 399
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v4, :cond_2

    .line 400
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 402
    :cond_2
    iget-object v4, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v4, :cond_3

    .line 403
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v5, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/TextureUploader;->addFgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 397
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    .end local v0           #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_4
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 411
    .local v3, range:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 412
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    .line 413
    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->uploadBackgroundTextureInSlot(I)V

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private uploadBackgroundTextureInSlot(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 378
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 380
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    .line 385
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/android/gallery3d/ui/TextureUploader;

    iget-object v2, v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/TextureUploader;->addBgTexture(Lcom/android/gallery3d/ui/UploadedTexture;)V

    goto :goto_0
.end method


# virtual methods
.method public get(I)Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    .locals 4
    .parameter "slotIndex"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "invalid slot: %s outsides (%s, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLoadingTexture()Lcom/android/gallery3d/ui/BitmapTexture;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 467
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingText:Ljava/lang/String;

    const-string v3, ""

    sget-object v4, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;->NORMAL_STYLE:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->requestLabel(Ljava/lang/String;Ljava/lang/String;ILcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;)Lcom/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 472
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 473
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1, v5}, Lcom/android/gallery3d/ui/BitmapTexture;->setOpaque(Z)V

    .line 475
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/android/gallery3d/ui/BitmapTexture;

    return-object v1
.end method

.method public isActiveSlot(I)Z
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChanged(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 444
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-nez v1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_3

    .line 451
    :cond_2
    const-string v1, "AlbumSetSlidingWindow"

    const-string v2, "invalid update: %s is outside (%s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    .line 458
    .local v0, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAlbumSetEntry(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;I)V

    .line 459
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 460
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    .line 461
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0
.end method

.method public onSizeChanged(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_2

    .line 435
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    .line 436
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;->onSizeChanged(I)V

    .line 437
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .line 438
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 440
    :cond_2
    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 10
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x0

    .line 649
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    if-ne v0, p1, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    .line 652
    iput-object v9, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLoadingLabel:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 653
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSlotWidth:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->setLabelWidth(I)V

    .line 655
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 657
    iget v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v2, i:I
    iget v8, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v8, n:I
    :goto_1
    if-ge v2, v8, :cond_5

    .line 658
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v1, v1

    rem-int v1, v2, v1

    aget-object v7, v0, v1

    .line 659
    .local v7, entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 660
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 661
    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v7, v9}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 662
    iput-object v9, v7, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 664
    :cond_2
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 665
    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v7}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;)Lcom/android/gallery3d/ui/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapLoader;->recycle()V

    .line 666
    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v7, v9}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$202(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 667
    iput-object v9, v7, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 669
    :cond_3
    iget-object v0, v7, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_4

    .line 670
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    iget-object v3, v7, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    iget v4, v7, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    iget v5, v7, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    sget-object v6, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;->NORMAL_STYLE:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;IILcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v7, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$102(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 673
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;

    iget-object v3, v7, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->title:Ljava/lang/String;

    iget v4, v7, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->totalCount:I

    iget v5, v7, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->sourceType:I

    sget-object v6, Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;->SELECT_STYLE:Lcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumLabelLoader;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;ILjava/lang/String;IILcom/android/gallery3d/ui/AlbumLabelMaker$StyleType;)V

    #setter for: Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->selectLabelLoader:Lcom/android/gallery3d/ui/BitmapLoader;
    invoke-static {v7, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;->access$202(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;Lcom/android/gallery3d/ui/BitmapLoader;)Lcom/android/gallery3d/ui/BitmapLoader;

    .line 657
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 678
    .end local v7           #entry:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 679
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 479
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 480
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 482
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mTextureUploader:Lcom/android/gallery3d/ui/TextureUploader;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TextureUploader;->clear()V

    .line 484
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 485
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->freeSlotContent(I)V

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mLabelMaker:Lcom/android/gallery3d/ui/AlbumLabelMaker;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/AlbumLabelMaker;->clearRecycledLabels()V

    .line 488
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 491
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    .line 492
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentStart:I

    .local v0, i:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mContentEnd:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 493
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->prepareSlotContent(I)V

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 496
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, 0x0

    .line 190
    if-gt p1, p2, :cond_0

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v4, v4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    if-le p2, v3, :cond_1

    .line 191
    :cond_0
    const-string v3, "start = %s, end = %s, length = %s, size = %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/gallery3d/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mData:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    .line 196
    .local v2, data:[Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$AlbumSetEntry;
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    .line 197
    iput p2, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    .line 198
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 200
    .local v1, contentStart:I
    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 201
    .local v0, contentEnd:I
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->setContentWindow(II)V

    .line 203
    iget-object v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSource:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    iget v4, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveStart:I

    iget v5, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mActiveEnd:I

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->setVisibleWindow(II)V

    .line 206
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_2

    .line 207
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateTextureUploadQueue()V

    .line 208
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->updateAllImageRequests()V

    .line 210
    :cond_2
    return-void
.end method

.method public setClusterType(I)V
    .locals 0
    .parameter "clusterType"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mClusterType:I

    .line 136
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mListener:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;

    .line 140
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->mSize:I

    return v0
.end method
