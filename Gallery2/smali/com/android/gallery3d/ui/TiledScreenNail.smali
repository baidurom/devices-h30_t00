.class public Lcom/android/gallery3d/ui/TiledScreenNail;
.super Lcom/android/gallery3d/ui/AbstractGifScreenNail;
.source "TiledScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;


# static fields
.field private static final ANIMATION_DONE:J = -0x3L

.field private static final ANIMATION_NEEDED:J = -0x2L

.field private static final ANIMATION_NOT_NEEDED:J = -0x1L

.field private static final DURATION:I = 0xb4

.field private static final TAG:Ljava/lang/String; = "TiledScreenNail"

.field private static mDrawPlaceholder:Z

.field private static mLoading:Lcom/android/gallery3d/ui/StringTexture;

.field private static mPlaceholderColor:I

.field private static sMaxSide:I


# instance fields
.field private mAnimationStartTime:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDrawLoadingTip:Z

.field private mHeight:I

.field private mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x280

    sput v0, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 70
    const v0, -0xddddde

    sput v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AbstractGifScreenNail;-><init>()V

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawLoadingTip:Z

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/TiledScreenNail;->setSize(II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AbstractGifScreenNail;-><init>()V

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawLoadingTip:Z

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 59
    iput-object p1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 61
    return-void
.end method

.method public static disableDrawPlaceholder()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    .line 160
    return-void
.end method

.method public static enableDrawPlaceholder()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    .line 164
    return-void
.end method

.method private getRatio()F
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 223
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x4334

    div-float v0, v1, v2

    .line 224
    .local v0, r:F
    sub-float v1, v5, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method private static recycleBitmap(Lcom/android/gallery3d/data/BitmapPool;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "pool"
    .parameter "bitmap"

    .prologue
    .line 94
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static setLoadingTip(Ljava/lang/String;)V
    .locals 2
    .parameter "loadingTip"

    .prologue
    .line 80
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mLoading:Lcom/android/gallery3d/ui/StringTexture;

    .line 81
    return-void
.end method

.method public static setMaxSide(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 237
    sput p0, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 238
    return-void
.end method

.method public static setPlaceholderColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 76
    sput p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    .line 77
    return-void
.end method

.method private setSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 84
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 85
    :cond_0
    sget p1, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    .line 86
    sget v1, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 p2, v1, 0x4

    .line 88
    :cond_1
    const/high16 v1, 0x3f80

    sget v2, Lcom/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    int-to-float v2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 89
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 90
    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 91
    return-void
.end method


# virtual methods
.method public combine(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 4
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 101
    if-nez p1, :cond_0

    .line 124
    .end local p0
    :goto_0
    return-object p0

    .line 105
    .restart local p0
    :cond_0
    instance-of v1, p1, Lcom/android/gallery3d/ui/TiledScreenNail;

    if-nez v1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TiledScreenNail;->recycle()V

    move-object p0, p1

    .line 107
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 112
    check-cast v0, Lcom/android/gallery3d/ui/TiledScreenNail;

    .line 113
    .local v0, newer:Lcom/android/gallery3d/ui/TiledScreenNail;
    iget v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    .line 114
    iget v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    iput v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    .line 115
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_3

    .line 116
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/TiledScreenNail;->recycleBitmap(Lcom/android/gallery3d/data/BitmapPool;Landroid/graphics/Bitmap;)V

    .line 117
    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 118
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 119
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    iput-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 120
    iput-object v3, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 121
    iput-object v3, v0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 123
    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledScreenNail;->recycle()V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 12
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 169
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->drawGifIfNecessary(Lcom/android/gallery3d/ui/GLCanvas;IIII)Z

    move-result v9

    .line 170
    .local v9, completed:Z
    if-eqz v9, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v1, :cond_3

    .line 172
    iget-wide v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 173
    const-wide/16 v1, -0x2

    iput-wide v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 175
    :cond_2
    sget-boolean v1, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawPlaceholder:Z

    if-eqz v1, :cond_0

    .line 176
    int-to-float v2, p2

    int-to-float v3, p3

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p5

    int-to-float v5, v0

    sget v6, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 177
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawLoadingTip:Z

    if-eqz v1, :cond_0

    .line 178
    sget-object v1, Lcom/android/gallery3d/ui/TiledScreenNail;->mLoading:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v1

    sub-int v1, p4, v1

    div-int/lit8 v1, v1, 0x2

    add-int v10, p2, v1

    .line 179
    .local v10, xt:I
    div-int/lit8 v1, p5, 0x14

    add-int v11, p3, v1

    .line 180
    .local v11, yt:I
    sget-object v1, Lcom/android/gallery3d/ui/TiledScreenNail;->mLoading:Lcom/android/gallery3d/ui/StringTexture;

    invoke-virtual {v1, p1, v10, v11}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 186
    .end local v10           #xt:I
    .end local v11           #yt:I
    :cond_3
    iget-wide v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 187
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    .line 190
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 191
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    sget v3, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    invoke-direct {p0}, Lcom/android/gallery3d/ui/TiledScreenNail;->getRatio()F

    move-result v4

    move-object v1, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/gallery3d/ui/GLCanvas;->drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFIIII)V

    goto :goto_0

    .line 194
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v0, :cond_0

    .line 201
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    sget v5, Lcom/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-interface {p1, v0, p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public enableLoadingTip(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mDrawLoadingTip:Z

    .line 246
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BitmapTexture;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    iget-wide v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 215
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xb4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 216
    const-wide/16 v2, -0x3

    iput-wide v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    move v0, v1

    .line 217
    goto :goto_0
.end method

.method public isShowingPlaceholder()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 151
    iput-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 153
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/TiledScreenNail;->recycleBitmap(Lcom/android/gallery3d/data/BitmapPool;Landroid/graphics/Bitmap;)V

    .line 154
    iput-object v2, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 155
    invoke-super {p0}, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->recycle()V

    .line 156
    return-void
.end method

.method public updatePlaceholderSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/TiledScreenNail;->setSize(II)V

    goto :goto_0
.end method
