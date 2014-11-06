.class public Lcom/android/gallery3d/ui/TiledTexture;
.super Ljava/lang/Object;
.source "TiledTexture.java"

# interfaces
.implements Lcom/android/gallery3d/ui/Texture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/TiledTexture$1;,
        Lcom/android/gallery3d/ui/TiledTexture$Tile;,
        Lcom/android/gallery3d/ui/TiledTexture$Uploader;
    }
.end annotation


# static fields
.field private static final BORDER_SIZE:I = 0x1

.field private static final CONTENT_SIZE:I = 0xfe

.field private static final INIT_CAPACITY:I = 0x8

.field private static final TILE_SIZE:I = 0x100

.field private static final UPLOAD_TILE_LIMIT:J = 0x4L

.field private static sBitmapPaint:Landroid/graphics/Paint;

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

.field private static final sFreeTileLock:Ljava/lang/Object;

.field private static sPaint:Landroid/graphics/Paint;

.field private static sUploadBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final mDestRect:Landroid/graphics/RectF;

.field private final mHeight:I

.field private final mSrcRect:Landroid/graphics/RectF;

.field private final mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

.field private mUploadIndex:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    const/16 v8, 0xfe

    .line 204
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    .line 62
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 63
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/ui/TiledTexture$Tile;>;"
    const/4 v4, 0x0

    .local v4, x:I
    iget v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    .local v3, w:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 210
    const/4 v5, 0x0

    .local v5, y:I
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    .local v0, h:I
    :goto_1
    if-ge v5, v0, :cond_0

    .line 211
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->obtainTile()Lcom/android/gallery3d/ui/TiledTexture$Tile;

    move-result-object v2

    .line 212
    .local v2, tile:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    iput v4, v2, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    .line 213
    iput v5, v2, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    .line 214
    iput-object p1, v2, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 215
    iget v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    sub-int/2addr v6, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    sub-int/2addr v7, v5

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/android/gallery3d/ui/TiledTexture$Tile;->setSize(II)V

    .line 218
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit16 v5, v5, 0xfe

    goto :goto_1

    .line 209
    .end local v2           #tile:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :cond_0
    add-int/lit16 v4, v4, 0xfe

    goto :goto_0

    .line 221
    .end local v0           #h:I
    .end local v5           #y:I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/gallery3d/ui/TiledTexture$Tile;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/gallery3d/ui/TiledTexture$Tile;

    iput-object v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/TiledTexture;Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/TiledTexture;->uploadNextTile(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$400()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static freeResources()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 238
    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    .line 239
    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    .line 240
    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    .line 241
    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    .line 242
    return-void
.end method

.method private static freeTile(Lcom/android/gallery3d/ui/TiledTexture$Tile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TiledTexture$Tile;->invalidateContent()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 164
    sget-object v1, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    iput-object v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->nextFreeTile:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 166
    sput-object p0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 167
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V
    .locals 4
    .parameter "output"
    .parameter "src"
    .parameter "x0"
    .parameter "y0"
    .parameter "x"
    .parameter "y"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 270
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p6

    add-float/2addr v0, p4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p3

    mul-float/2addr v1, p7

    add-float/2addr v1, p5

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p2

    mul-float/2addr v2, p6

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    mul-float/2addr v3, p7

    add-float/2addr v3, p5

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 274
    return-void
.end method

.method private static obtainTile()Lcom/android/gallery3d/ui/TiledTexture$Tile;
    .locals 3

    .prologue
    .line 171
    sget-object v2, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 172
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 173
    .local v0, result:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .end local v0           #result:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/TiledTexture$Tile;-><init>(Lcom/android/gallery3d/ui/TiledTexture$1;)V

    monitor-exit v2

    .line 176
    .restart local v0       #result:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :goto_0
    return-object v0

    .line 174
    :cond_0
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->nextFreeTile:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    sput-object v1, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 175
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->nextFreeTile:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 176
    monitor-exit v2

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static prepareResources()V
    .locals 3

    .prologue
    const/16 v1, 0x100

    .line 245
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    .line 246
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/android/gallery3d/ui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    .line 247
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    .line 248
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 249
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    .line 250
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 251
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    return-void
.end method

.method private uploadNextTile(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v1, 0x1

    .line 181
    iget v2, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    monitor-enter v2

    .line 184
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    iget v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    aget-object v0, v3, v4

    .line 188
    .local v0, next:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    iget-object v3, v0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 191
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TiledTexture$Tile;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 200
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget v2, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 200
    .end local v0           #next:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 351
    iget v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/TiledTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 352
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 13
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 300
    .local v2, src:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 301
    .local v1, dest:Landroid/graphics/RectF;
    move/from16 v0, p4

    int-to-float v3, v0

    iget v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    int-to-float v4, v4

    div-float v7, v3, v4

    .line 302
    .local v7, scaleX:F
    move/from16 v0, p5

    int-to-float v3, v0

    iget v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    int-to-float v4, v4

    div-float v8, v3, v4

    .line 303
    .local v8, scaleY:F
    iget-object v12, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    monitor-enter v12

    .line 304
    const/4 v9, 0x0

    .local v9, i:I
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v10, v3

    .local v10, n:I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 305
    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    aget-object v11, v3, v9

    .line 306
    .local v11, t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentWidth:I

    int-to-float v5, v5

    iget v6, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentHeight:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 307
    iget v3, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    int-to-float v3, v3

    iget v4, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 308
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p2

    move/from16 v0, p3

    int-to-float v6, v0

    invoke-static/range {v1 .. v8}, Lcom/android/gallery3d/ui/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 309
    iget v3, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 310
    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    invoke-interface {p1, v11, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 304
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 312
    .end local v11           #t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :cond_0
    monitor-exit v12

    .line 313
    return-void

    .line 312
    .end local v10           #n:I
    :catchall_0
    move-exception v3

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 17
    .parameter "canvas"
    .parameter "source"
    .parameter "target"

    .prologue
    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 318
    .local v2, src:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 319
    .local v1, dest:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 320
    .local v3, x0:F
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 321
    .local v4, y0:F
    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/RectF;->left:F

    .line 322
    .local v5, x:F
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/RectF;->top:F

    .line 323
    .local v6, y:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v7, v12, v13

    .line 324
    .local v7, scaleX:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float v8, v12, v13

    .line 326
    .local v8, scaleY:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    monitor-enter v13

    .line 327
    const/4 v9, 0x0

    .local v9, i:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v10, v12

    .local v10, n:I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    aget-object v11, v12, v9

    .line 329
    .local v11, t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    const/4 v12, 0x0

    const/4 v14, 0x0

    iget v15, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentWidth:I

    int-to-float v15, v15

    iget v0, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v12, v14, v15, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 330
    iget v12, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    int-to-float v12, v12

    iget v14, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    int-to-float v14, v14

    invoke-virtual {v2, v12, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 331
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 327
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 332
    :cond_0
    invoke-static/range {v1 .. v8}, Lcom/android/gallery3d/ui/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 333
    iget v12, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    iget v14, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v14, v14, 0x1

    int-to-float v14, v14

    invoke-virtual {v2, v12, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 334
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v2, v1}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1

    .line 336
    .end local v10           #n:I
    .end local v11           #t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .restart local v10       #n:I
    :cond_1
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    return-void
.end method

.method public drawMixed(Lcom/android/gallery3d/ui/GLCanvas;IFIIII)V
    .locals 18
    .parameter "canvas"
    .parameter "color"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 281
    .local v2, src:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 282
    .local v1, dest:Landroid/graphics/RectF;
    move/from16 v0, p6

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    int-to-float v4, v4

    div-float v7, v3, v4

    .line 283
    .local v7, scaleX:F
    move/from16 v0, p7

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    int-to-float v4, v4

    div-float v8, v3, v4

    .line 284
    .local v8, scaleY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 285
    const/4 v15, 0x0

    .local v15, i:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v0, v3

    move/from16 v16, v0

    .local v16, n:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    aget-object v10, v3, v15

    .line 287
    .local v10, t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentWidth:I

    int-to-float v5, v5

    iget v6, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentHeight:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 288
    iget v3, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    int-to-float v3, v3

    iget v4, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 289
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    invoke-static/range {v1 .. v8}, Lcom/android/gallery3d/ui/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 290
    iget v3, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    move-object/from16 v9, p1

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-interface/range {v9 .. v14}, Lcom/android/gallery3d/ui/GLCanvas;->drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 285
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 293
    .end local v10           #t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :cond_0
    monitor-exit v17

    .line 294
    return-void

    .line 293
    .end local v16           #n:I
    :catchall_0
    move-exception v3

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 225
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 4

    .prologue
    .line 230
    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    monitor-enter v3

    .line 231
    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/gallery3d/ui/TiledTexture;->freeTile(Lcom/android/gallery3d/ui/TiledTexture$Tile;)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    monitor-exit v3

    .line 235
    return-void

    .line 234
    .end local v1           #n:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
