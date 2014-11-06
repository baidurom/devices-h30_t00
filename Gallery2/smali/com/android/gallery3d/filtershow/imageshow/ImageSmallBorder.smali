.class public Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;
.source "ImageSmallBorder.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field protected final mImageScaleFactor:F

.field protected final mInnerBorderColor:I

.field protected final mInnerBorderWidth:I

.field protected final mSelectedBackgroundColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mSelectedBackgroundColor:I

    .line 39
    const/high16 v0, -0x100

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mInnerBorderColor:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mInnerBorderWidth:I

    .line 41
    const/high16 v0, 0x4060

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mImageScaleFactor:F

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mSelectedBackgroundColor:I

    .line 39
    const/high16 v0, -0x100

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mInnerBorderColor:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mInnerBorderWidth:I

    .line 41
    const/high16 v0, 0x4060

    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mImageScaleFactor:F

    .line 50
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getImageLoader()Lcom/android/gallery3d/filtershow/cache/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/cache/ImageLoader;->getOriginalBitmapSmall()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->drawSmallFilter(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->getDestinationRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->drawText(Landroid/graphics/Canvas;)V

    .line 64
    return-void
.end method

.method public setBorderBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/ImageSmallBorder;->mBitmap:Landroid/graphics/Bitmap;

    .line 54
    return-void
.end method
