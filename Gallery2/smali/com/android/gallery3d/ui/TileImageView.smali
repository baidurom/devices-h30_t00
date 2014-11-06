.class public Lcom/android/gallery3d/ui/TileImageView;
.super Lcom/android/gallery3d/ui/GLView;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/TileImageView$1;,
        Lcom/android/gallery3d/ui/TileImageView$TileDecoder;,
        Lcom/android/gallery3d/ui/TileImageView$TileQueue;,
        Lcom/android/gallery3d/ui/TileImageView$Tile;,
        Lcom/android/gallery3d/ui/TileImageView$TileUploader;,
        Lcom/android/gallery3d/ui/TileImageView$Model;
    }
.end annotation


# static fields
.field private static BITMAP_SIZE:I = 0x0

.field public static final SIZE_UNKNOWN:I = -0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_DECODED:I = 0x8

.field private static final STATE_DECODE_FAIL:I = 0x10

.field private static final STATE_DECODING:I = 0x4

.field private static final STATE_IN_QUEUE:I = 0x2

.field private static final STATE_RECYCLED:I = 0x40

.field private static final STATE_RECYCLING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "TileImageView"

.field private static final TILE_BORDER:I = 0x1

.field private static TILE_SIZE:I = 0x0

.field private static final UPLOAD_LIMIT:I = 0x1

.field private static sTilePool:Lcom/android/gallery3d/data/BitmapPool;


# instance fields
.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/common/LongSparseArray",
            "<",
            "Lcom/android/gallery3d/ui/TileImageView$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field protected mCenterX:I

.field protected mCenterY:I

.field private final mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

.field private mFullPictureLoaded:Z

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mIsTextureFreed:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private final mRecycledQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private final mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

.field private mTileDecoder:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileRange:Landroid/graphics/Rect;

.field private final mTileUploader:Lcom/android/gallery3d/ui/TileImageView$TileUploader;

.field private final mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

.field private mUploadQuota:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryContext;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 89
    iput v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    .line 99
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 100
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 102
    new-instance v1, Lcom/android/gallery3d/common/LongSparseArray;

    invoke-direct {v1}, Lcom/android/gallery3d/common/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    .line 105
    new-instance v1, Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcom/android/gallery3d/ui/TileImageView$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    .line 106
    new-instance v1, Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcom/android/gallery3d/ui/TileImageView$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    .line 107
    new-instance v1, Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcom/android/gallery3d/ui/TileImageView$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    .line 110
    iput v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 111
    iput v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 119
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 120
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v4

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 122
    new-instance v1, Lcom/android/gallery3d/ui/TileImageView$TileUploader;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/ui/TileImageView$TileUploader;-><init>(Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/TileImageView$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileUploader:Lcom/android/gallery3d/ui/TileImageView$TileUploader;

    .line 134
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mFullPictureLoaded:Z

    .line 160
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryContext;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    .line 161
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v2, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;-><init>(Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/TileImageView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/android/gallery3d/util/Future;

    .line 162
    sget v1, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    if-nez v1, :cond_1

    .line 163
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->isHighResolution(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    const/16 v1, 0x1fe

    sput v1, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    .line 168
    :goto_0
    sget v1, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    add-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/gallery3d/ui/TileImageView;->BITMAP_SIZE:I

    .line 169
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/gallery3d/data/BitmapPool;

    sget v1, Lcom/android/gallery3d/ui/TileImageView;->BITMAP_SIZE:I

    sget v2, Lcom/android/gallery3d/ui/TileImageView;->BITMAP_SIZE:I

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/data/BitmapPool;-><init>(III)V

    :cond_0
    sput-object v0, Lcom/android/gallery3d/ui/TileImageView;->sTilePool:Lcom/android/gallery3d/data/BitmapPool;

    .line 174
    :cond_1
    return-void

    .line 166
    :cond_2
    const/16 v1, 0xfe

    sput v1, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$TileQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$TileQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/gallery3d/data/BitmapPool;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/gallery3d/ui/TileImageView;->sTilePool:Lcom/android/gallery3d/data/BitmapPool;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/TileImageView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/android/gallery3d/ui/TileImageView;->BITMAP_SIZE:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/TileImageView;III)Lcom/android/gallery3d/ui/TileImageView$Tile;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView;->getTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/TileImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    return v0
.end method

.method private activateTile(III)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 605
    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView;->makeTileKey(III)J

    move-result-wide v0

    .line 606
    .local v0, key:J
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Lcom/android/gallery3d/common/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 607
    .local v2, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    if-eqz v2, :cond_1

    .line 608
    iget v3, v2, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 609
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView;->obtainTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v2

    .line 614
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/gallery3d/common/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private drawScreenNail(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 9
    .parameter "canvas"
    .parameter "screenNail"

    .prologue
    const/high16 v1, 0x4000

    .line 498
    if-nez p2, :cond_0

    .line 517
    :goto_0
    return-void

    .line 502
    :cond_0
    iget v7, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 503
    .local v7, renderWidth:I
    iget v6, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 504
    .local v6, renderHeight:I
    iget v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetX:I

    .line 505
    .local v2, offsetX:I
    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetY:I

    .line 506
    .local v3, offsetY:I
    iget v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    .line 507
    .local v8, scale:F
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageView;->isCameraQuickPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-interface {p2}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v7

    .line 509
    invoke-interface {p2}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v6

    .line 510
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 511
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->getHeight()I

    move-result v0

    sub-int/2addr v0, v6

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 512
    const/high16 v8, 0x3f80

    .line 514
    :cond_1
    int-to-float v0, v7

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v0, v6

    mul-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object v0, p2

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/ScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method static drawTile(Lcom/android/gallery3d/ui/TileImageView$Tile;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 5
    .parameter "tile"
    .parameter "canvas"
    .parameter "source"
    .parameter "target"

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v3, 0x4000

    .line 704
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    invoke-virtual {p2, v4, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 707
    invoke-interface {p1, p0, p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 708
    const/4 v1, 0x1

    .line 713
    :goto_1
    return v1

    .line 712
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView$Tile;->getParentTile()Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    .line 713
    .local v0, parent:Lcom/android/gallery3d/ui/TileImageView$Tile;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 714
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    iget v2, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    if-ne v1, v2, :cond_2

    .line 715
    iget v1, p2, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 716
    iget v1, p2, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 721
    :goto_2
    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    iget v2, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    if-ne v1, v2, :cond_3

    .line 722
    iget v1, p2, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 723
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 728
    :goto_3
    move-object p0, v0

    .line 729
    goto :goto_0

    .line 718
    :cond_2
    sget v1, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 719
    sget v1, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 725
    :cond_3
    sget v1, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 726
    sget v1, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_3
.end method

.method private getRange(Landroid/graphics/Rect;IIIFI)V
    .locals 25
    .parameter "out"
    .parameter "cX"
    .parameter "cY"
    .parameter "level"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 325
    move/from16 v0, p6

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 326
    .local v9, radians:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 327
    .local v16, w:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-double v5, v0

    .line 329
    .local v5, h:D
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 330
    .local v3, cos:D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 331
    .local v12, sin:D
    mul-double v19, v3, v16

    mul-double v21, v12, v5

    sub-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    mul-double v21, v3, v16

    mul-double v23, v12, v5

    add-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v18, v0

    .line 333
    .local v18, width:I
    mul-double v19, v12, v16

    mul-double v21, v3, v5

    add-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    mul-double v21, v12, v16

    mul-double v23, v3, v5

    sub-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v7, v0

    .line 336
    .local v7, height:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->floor(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v8, v0

    .line 337
    .local v8, left:I
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->floor(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .line 338
    .local v15, top:I
    int-to-float v0, v8

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->ceil(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 339
    .local v11, right:I
    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->ceil(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v2, v0

    .line 342
    .local v2, bottom:I
    sget v19, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    shl-int v14, v19, p4

    .line 343
    .local v14, size:I
    const/16 v19, 0x0

    div-int v20, v8, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 344
    const/16 v19, 0x0

    div-int v20, v15, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 348
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v15, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 349
    return-void
.end method

.method private getRange(Landroid/graphics/Rect;IIII)V
    .locals 7
    .parameter "out"
    .parameter "cX"
    .parameter "cY"
    .parameter "level"
    .parameter "rotation"

    .prologue
    .line 313
    const/high16 v0, 0x3f80

    const/4 v1, 0x1

    add-int/lit8 v2, p4, 0x1

    shl-int/2addr v1, v2

    int-to-float v1, v1

    div-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 314
    return-void
.end method

.method private getTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView;->makeTileKey(III)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/common/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/TileImageView$Tile;

    return-object v0
.end method

.method private isCameraQuickPreview()Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mFullPictureLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScreenNailAnimating()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    instance-of v0, v0, Lcom/android/gallery3d/ui/TiledScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/gallery3d/ui/TiledScreenNail;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutTiles(IIFI)V
    .locals 24
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getWidth()I

    move-result v21

    .line 229
    .local v21, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getHeight()I

    move-result v14

    .line 237
    .local v14, height:I
    const/high16 v3, 0x3f80

    div-float v3, v3, p3

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->floorLog2(F)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    invoke-static {v3, v5, v6}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    .line 242
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    if-eq v3, v5, :cond_1

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 244
    .local v4, range:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 245
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int v5, v5, p1

    int-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetX:I

    .line 246
    int-to-float v3, v14

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int v5, v5, p2

    int-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetY:I

    .line 247
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    shl-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, p3

    const/high16 v5, 0x3f40

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    add-int/lit8 v13, v3, -0x1

    .line 255
    .end local v4           #range:Landroid/graphics/Rect;
    .local v13, fromLevel:I
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    add-int/lit8 v5, v5, -0x2

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 256
    add-int/lit8 v3, v13, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 258
    .local v12, endLevel:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 259
    .local v4, range:[Landroid/graphics/Rect;
    move v9, v13

    .local v9, i:I
    :goto_1
    if-ge v9, v12, :cond_2

    .line 260
    sub-int v3, v9, v13

    aget-object v6, v4, v3

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/android/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIII)V

    .line 259
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 247
    .end local v9           #i:I
    .end local v12           #endLevel:I
    .end local v13           #fromLevel:I
    .local v4, range:Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    goto :goto_0

    .line 250
    .end local v4           #range:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    add-int/lit8 v13, v3, -0x2

    .line 251
    .restart local v13       #fromLevel:I
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    move/from16 v0, p1

    int-to-float v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetX:I

    .line 252
    int-to-float v3, v14

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    move/from16 v0, p2

    int-to-float v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetY:I

    goto :goto_0

    .line 264
    .local v4, range:[Landroid/graphics/Rect;
    .restart local v9       #i:I
    .restart local v12       #endLevel:I
    :cond_2
    rem-int/lit8 v3, p4, 0x5a

    if-eqz v3, :cond_3

    .line 297
    :goto_2
    return-void

    .line 266
    :cond_3
    monitor-enter p0

    .line 267
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 269
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    invoke-virtual {v3}, Lcom/android/gallery3d/common/LongSparseArray;->size()I

    move-result v16

    .line 274
    .local v16, n:I
    const/4 v9, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    invoke-virtual {v3, v9}, Lcom/android/gallery3d/common/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 276
    .local v20, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    .line 277
    .local v15, level:I
    if-lt v15, v13, :cond_4

    if-ge v15, v12, :cond_4

    sub-int v3, v15, v13

    aget-object v3, v4, v3

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mX:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mY:I

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 279
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    invoke-virtual {v3, v9}, Lcom/android/gallery3d/common/LongSparseArray;->removeAt(I)V

    .line 280
    add-int/lit8 v9, v9, -0x1

    .line 281
    add-int/lit8 v16, v16, -0x1

    .line 282
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/TileImageView;->recycleTile(Lcom/android/gallery3d/ui/TileImageView$Tile;)V

    .line 274
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 285
    .end local v15           #level:I
    .end local v20           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    move v9, v13

    :goto_4
    if-ge v9, v12, :cond_9

    .line 288
    sget v3, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    shl-int v19, v3, v9

    .line 289
    .local v19, size:I
    sub-int v3, v9, v13

    aget-object v17, v4, v3

    .line 290
    .local v17, r:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .local v23, y:I
    move-object/from16 v0, v17

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .local v11, bottom:I
    :goto_5
    move/from16 v0, v23

    if-ge v0, v11, :cond_8

    .line 291
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .local v22, x:I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .local v18, right:I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 292
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v9}, Lcom/android/gallery3d/ui/TileImageView;->activateTile(III)V

    .line 291
    add-int v22, v22, v19

    goto :goto_6

    .line 285
    .end local v11           #bottom:I
    .end local v16           #n:I
    .end local v17           #r:Landroid/graphics/Rect;
    .end local v18           #right:I
    .end local v19           #size:I
    .end local v22           #x:I
    .end local v23           #y:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 290
    .restart local v11       #bottom:I
    .restart local v16       #n:I
    .restart local v17       #r:Landroid/graphics/Rect;
    .restart local v18       #right:I
    .restart local v19       #size:I
    .restart local v22       #x:I
    .restart local v23       #y:I
    :cond_7
    add-int v23, v23, v19

    goto :goto_5

    .line 287
    .end local v18           #right:I
    .end local v22           #x:I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 296
    .end local v11           #bottom:I
    .end local v17           #r:Landroid/graphics/Rect;
    .end local v19           #size:I
    .end local v23           #y:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    goto/16 :goto_2
.end method

.method private static makeTileKey(III)J
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    const/16 v6, 0x10

    .line 622
    int-to-long v0, p0

    .line 623
    .local v0, result:J
    shl-long v2, v0, v6

    int-to-long v4, p1

    or-long v0, v2, v4

    .line 624
    shl-long v2, v0, v6

    int-to-long v4, p2

    or-long v0, v2, v4

    .line 625
    return-wide v0
.end method

.method private declared-synchronized obtainTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    .line 583
    .local v0, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    if-eqz v0, :cond_0

    .line 584
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 585
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView$Tile;->update(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    .end local v0           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0       #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .end local v0           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/gallery3d/ui/TileImageView$Tile;-><init>(Lcom/android/gallery3d/ui/TileImageView;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private uploadBackgroundTiles(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 536
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    .line 537
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    invoke-virtual {v3}, Lcom/android/gallery3d/common/LongSparseArray;->size()I

    move-result v1

    .line 538
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 539
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/common/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 540
    .local v2, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/TileImageView;->queueForDecode(Lcom/android/gallery3d/ui/TileImageView$Tile;)V

    .line 538
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    .end local v2           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_1
    return-void
.end method


# virtual methods
.method decodeTile(Lcom/android/gallery3d/ui/TileImageView$Tile;)Z
    .locals 4
    .parameter "tile"

    .prologue
    const/4 v1, 0x0

    .line 561
    monitor-enter p0

    .line 562
    :try_start_0
    iget v2, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    monitor-exit p0

    move v0, v1

    .line 577
    :goto_0
    return v0

    .line 563
    :cond_0
    const/4 v2, 0x4

    iput v2, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 564
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/TileImageView$Tile;->decode()Z

    move-result v0

    .line 566
    .local v0, decodeComplete:Z
    monitor-enter p0

    .line 567
    :try_start_1
    iget v2, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    .line 568
    const/16 v2, 0x40

    iput v2, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 569
    iget-object v2, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 570
    sget-object v2, Lcom/android/gallery3d/ui/TileImageView;->sTilePool:Lcom/android/gallery3d/data/BitmapPool;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/gallery3d/ui/TileImageView;->sTilePool:Lcom/android/gallery3d/data/BitmapPool;

    iget-object v3, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 571
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 573
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/android/gallery3d/ui/TileImageView$Tile;)Z

    .line 574
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    goto :goto_0

    .line 564
    .end local v0           #decodeComplete:Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 576
    .restart local v0       #decodeComplete:Z
    :cond_3
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    :goto_1
    :try_start_3
    iput v1, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 577
    monitor-exit p0

    goto :goto_0

    .line 578
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 576
    :cond_4
    const/16 v1, 0x10

    goto :goto_1
.end method

.method public drawTile(Lcom/android/gallery3d/ui/GLCanvas;IIIFFF)V
    .locals 12
    .parameter "canvas"
    .parameter "tx"
    .parameter "ty"
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "length"

    .prologue
    .line 669
    iget-object v5, p0, Lcom/android/gallery3d/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 670
    .local v5, source:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/gallery3d/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 671
    .local v6, target:Landroid/graphics/RectF;
    add-float v8, p5, p7

    add-float v9, p6, p7

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 672
    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    int-to-float v10, v10

    sget v11, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    int-to-float v11, v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 674
    move/from16 v0, p4

    invoke-direct {p0, p2, p3, v0}, Lcom/android/gallery3d/ui/TileImageView;->getTile(III)Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v7

    .line 675
    .local v7, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    if-eqz v7, :cond_4

    .line 676
    invoke-virtual {v7}, Lcom/android/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v8

    if-nez v8, :cond_0

    .line 677
    iget v8, v7, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_3

    .line 678
    iget v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    if-lez v8, :cond_2

    .line 679
    iget v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    .line 680
    invoke-virtual {v7, p1}, Lcom/android/gallery3d/ui/TileImageView$Tile;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 689
    :cond_0
    :goto_0
    invoke-static {v7, p1, v5, v6}, Lcom/android/gallery3d/ui/TileImageView;->drawTile(Lcom/android/gallery3d/ui/TileImageView$Tile;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 699
    :cond_1
    :goto_1
    return-void

    .line 682
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    goto :goto_0

    .line 684
    :cond_3
    iget v8, v7, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v9, 0x10

    if-eq v8, v9, :cond_0

    .line 685
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    .line 686
    invoke-virtual {p0, v7}, Lcom/android/gallery3d/ui/TileImageView;->queueForDecode(Lcom/android/gallery3d/ui/TileImageView$Tile;)V

    goto :goto_0

    .line 691
    :cond_4
    iget-object v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v8, :cond_1

    .line 692
    sget v8, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    shl-int v4, v8, p4

    .line 693
    .local v4, size:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v8}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    int-to-float v9, v9

    div-float v2, v8, v9

    .line 694
    .local v2, scaleX:F
    iget-object v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v8}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 695
    .local v3, scaleY:F
    int-to-float v8, p2

    mul-float/2addr v8, v2

    int-to-float v9, p3

    mul-float/2addr v9, v3

    add-int v10, p2, v4

    int-to-float v10, v10

    mul-float/2addr v10, v2

    add-int v11, p3, v4

    int-to-float v11, v11

    mul-float/2addr v11, v3

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 697
    iget-object v8, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v8, p1, v5, v6}, Lcom/android/gallery3d/ui/ScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method public freeTextures()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 388
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    .line 390
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/android/gallery3d/util/Future;

    if-eqz v4, :cond_0

    .line 391
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/android/gallery3d/util/Future;

    invoke-interface {v4}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 392
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/android/gallery3d/util/Future;

    invoke-interface {v4}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    .line 393
    iput-object v6, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/android/gallery3d/util/Future;

    .line 396
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    invoke-virtual {v4}, Lcom/android/gallery3d/common/LongSparseArray;->size()I

    move-result v1

    .line 397
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 398
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/common/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 399
    .local v2, texture:Lcom/android/gallery3d/ui/TileImageView$Tile;
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TileImageView$Tile;->recycle()V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .end local v2           #texture:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    invoke-virtual {v4}, Lcom/android/gallery3d/common/LongSparseArray;->clear()V

    .line 402
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 406
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 407
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    .line 408
    .local v3, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :goto_1
    if-eqz v3, :cond_2

    .line 409
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TileImageView$Tile;->recycle()V

    .line 410
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    goto :goto_1

    .line 412
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-virtual {p0, v6}, Lcom/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 414
    sget-object v4, Lcom/android/gallery3d/ui/TileImageView;->sTilePool:Lcom/android/gallery3d/data/BitmapPool;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/gallery3d/ui/TileImageView;->sTilePool:Lcom/android/gallery3d/data/BitmapPool;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/BitmapPool;->clear()V

    .line 415
    :cond_3
    return-void

    .line 412
    .end local v3           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getImageCenter(Landroid/graphics/Point;)V
    .locals 8
    .parameter "center"

    .prologue
    const/high16 v7, 0x4000

    .line 354
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->getWidth()I

    move-result v3

    .line 355
    .local v3, viewW:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->getHeight()I

    move-result v2

    .line 361
    .local v2, viewH:I
    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_0

    .line 362
    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    sub-int v1, v4, v5

    .line 363
    .local v1, distW:I
    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    sub-int v0, v4, v5

    .line 371
    .local v0, distH:I
    :goto_0
    int-to-float v4, v3

    div-float/2addr v4, v7

    int-to-float v5, v1

    iget v6, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 372
    int-to-float v4, v2

    div-float/2addr v4, v7

    int-to-float v5, v0

    iget v6, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 373
    return-void

    .line 365
    .end local v0           #distH:I
    .end local v1           #distW:I
    :cond_0
    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    sub-int v1, v4, v5

    .line 366
    .restart local v1       #distW:I
    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    sub-int v0, v4, v5

    .restart local v0       #distH:I
    goto :goto_0
.end method

.method protected declared-synchronized invalidateTiles()V
    .locals 4

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 301
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    .line 304
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    invoke-virtual {v3}, Lcom/android/gallery3d/common/LongSparseArray;->size()I

    move-result v1

    .line 305
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 306
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/common/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/TileImageView$Tile;

    .line 307
    .local v2, tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/TileImageView;->recycleTile(Lcom/android/gallery3d/ui/TileImageView$Tile;)V

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .end local v2           #tile:Lcom/android/gallery3d/ui/TileImageView$Tile;
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mActiveTiles:Lcom/android/gallery3d/common/LongSparseArray;

    invoke-virtual {v3}, Lcom/android/gallery3d/common/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    .line 300
    .end local v0           #i:I
    .end local v1           #n:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public notifyModelInvalidated()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidateTiles()V

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    if-nez v0, :cond_1

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 189
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 190
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 191
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    .line 198
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 199
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    .line 201
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mFullPictureLoaded:Z

    .line 205
    :cond_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 195
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getLevelCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 215
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/GLView;->onLayout(ZIIII)V

    .line 216
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 217
    :cond_0
    return-void
.end method

.method public prepareTextures()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 418
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/android/gallery3d/util/Future;

    if-nez v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mThreadPool:Lcom/android/gallery3d/util/ThreadPool;

    new-instance v2, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/ui/TileImageView$TileDecoder;-><init>(Lcom/android/gallery3d/ui/TileImageView;Lcom/android/gallery3d/ui/TileImageView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/android/gallery3d/util/Future;

    .line 421
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    if-eqz v1, :cond_1

    .line 422
    iget v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    iget v2, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    iget v3, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    iget v4, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 423
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    .line 424
    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 426
    :cond_1
    return-void

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/TileImageView$Model;->getScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    goto :goto_0
.end method

.method declared-synchronized queueForDecode(Lcom/android/gallery3d/ui/TileImageView$Tile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 554
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 555
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 556
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/android/gallery3d/ui/TileImageView$Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :cond_0
    monitor-exit p0

    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method queueForUpload(Lcom/android/gallery3d/ui/TileImageView$Tile;)V
    .locals 3
    .parameter "tile"

    .prologue
    .line 545
    monitor-enter p0

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/android/gallery3d/ui/TileImageView$Tile;)Z

    .line 547
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileUploader:Lcom/android/gallery3d/ui/TileImageView$TileUploader;

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/TileImageView;->mTileUploader:Lcom/android/gallery3d/ui/TileImageView$TileUploader;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 551
    :cond_0
    return-void

    .line 547
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized recycleTile(Lcom/android/gallery3d/ui/TileImageView$Tile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 592
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 593
    const/16 v0, 0x20

    iput v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    :goto_0
    monitor-exit p0

    return-void

    .line 596
    :cond_0
    const/16 v0, 0x40

    :try_start_1
    iput v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    .line 597
    iget-object v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 598
    sget-object v0, Lcom/android/gallery3d/ui/TileImageView;->sTilePool:Lcom/android/gallery3d/data/BitmapPool;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/gallery3d/ui/TileImageView;->sTilePool:Lcom/android/gallery3d/data/BitmapPool;

    iget-object v1, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 599
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/android/gallery3d/ui/TileImageView$Tile;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 430
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    .line 431
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    .line 434
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->isCameraQuickPreview()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->getCameraRotation()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    .line 439
    :cond_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevel:I

    .line 440
    .local v7, level:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    move/from16 v17, v0

    .line 441
    .local v17, rotation:I
    const/4 v13, 0x0

    .line 442
    .local v13, flags:I
    if-eqz v17, :cond_1

    or-int/lit8 v13, v13, 0x2

    .line 444
    :cond_1
    if-eqz v13, :cond_2

    .line 445
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 446
    if-eqz v17, :cond_2

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getWidth()I

    move-result v3

    div-int/lit8 v11, v3, 0x2

    .local v11, centerX:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->getHeight()I

    move-result v3

    div-int/lit8 v12, v3, 0x2

    .line 448
    .local v12, centerY:I
    int-to-float v3, v11

    int-to-float v4, v12

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 449
    move/from16 v0, v17

    int-to-float v3, v0

    const/4 v4, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f80

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 450
    neg-int v3, v11

    int-to-float v3, v3

    neg-int v4, v12

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 454
    .end local v11           #centerX:I
    .end local v12           #centerY:I
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mLevelCount:I

    if-eq v7, v3, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->isScreenNailAnimating()Z

    move-result v3

    if-nez v3, :cond_5

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v3, :cond_3

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->noDraw()V

    .line 459
    :cond_3
    sget v3, Lcom/android/gallery3d/ui/TileImageView;->TILE_SIZE:I

    shl-int v18, v3, v7

    .line 460
    .local v18, size:I
    move/from16 v0, v18

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    mul-float v10, v3, v4

    .line 461
    .local v10, length:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 463
    .local v16, r:Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .local v6, ty:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v3, :cond_6

    .line 464
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetY:I

    int-to-float v3, v3

    int-to-float v4, v14

    mul-float/2addr v4, v10

    add-float v9, v3, v4

    .line 465
    .local v9, y:F
    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .local v5, tx:I
    const/4 v15, 0x0

    .local v15, j:I
    :goto_1
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v5, v3, :cond_4

    .line 466
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mOffsetX:I

    int-to-float v3, v3

    int-to-float v4, v15

    mul-float/2addr v4, v10

    add-float v8, v3, v4

    .local v8, x:F
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 467
    invoke-virtual/range {v3 .. v10}, Lcom/android/gallery3d/ui/TileImageView;->drawTile(Lcom/android/gallery3d/ui/GLCanvas;IIIFFF)V

    .line 465
    add-int v5, v5, v18

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 463
    .end local v8           #x:F
    :cond_4
    add-int v6, v6, v18

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 470
    .end local v5           #tx:I
    .end local v6           #ty:I
    .end local v9           #y:F
    .end local v10           #length:F
    .end local v14           #i:I
    .end local v15           #j:I
    .end local v16           #r:Landroid/graphics/Rect;
    .end local v18           #size:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v3, :cond_6

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/ui/TileImageView;->drawScreenNail(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 474
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->isScreenNailAnimating()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    .line 479
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    if-eqz v3, :cond_7

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->getCameraScreenNail()Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/ui/TileImageView;->drawScreenNail(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/ScreenNail;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :cond_7
    if-eqz v13, :cond_8

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 487
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    if-eqz v3, :cond_b

    .line 488
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    if-nez v3, :cond_9

    invoke-direct/range {p0 .. p1}, Lcom/android/gallery3d/ui/TileImageView;->uploadBackgroundTiles(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 492
    :cond_9
    :goto_2
    return-void

    .line 484
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_a

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    :cond_a
    throw v3

    .line 490
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    goto :goto_2
.end method

.method public setModel(Lcom/android/gallery3d/ui/TileImageView$Model;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView;->mModel:Lcom/android/gallery3d/ui/TileImageView$Model;

    .line 178
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    .line 179
    :cond_0
    return-void
.end method

.method public setPhotoView(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 527
    return-void
.end method

.method public setPosition(IIFI)Z
    .locals 1
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 376
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    if-ne v0, p4, :cond_0

    .line 377
    const/4 v0, 0x0

    .line 384
    :goto_0
    return v0

    .line 378
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterX:I

    .line 379
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageView;->mCenterY:I

    .line 380
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageView;->mScale:F

    .line 381
    iput p4, p0, Lcom/android/gallery3d/ui/TileImageView;->mRotation:I

    .line 382
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/TileImageView;->layoutTiles(IIFI)V

    .line 383
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    .line 384
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 183
    return-void
.end method

.method public updateScreenNailSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 208
    iput p1, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    .line 209
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    .line 210
    return-void
.end method
