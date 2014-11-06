.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterGeometry.java"


# static fields
.field private static final BOTH:I = 0x3

.field private static final HORIZONTAL:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "ImageFilterGeometry"

.field private static final LOGV:Z = false

.field private static final NINETY:I = 0x1

.field private static final ONE_EIGHTY:I = 0x2

.field private static final TWO_SEVENTY:I = 0x3

.field private static final VERTICAL:I = 0x2


# instance fields
.field private final mConfig:Landroid/graphics/Bitmap$Config;

.field private mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 30
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 42
    const-string v0, "Geometry"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 72
    new-instance v2, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v2, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 73
    .local v2, cropBounds:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v9, p1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->getCropBounds(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v1

    .line 74
    .local v1, crop:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    .line 75
    invoke-static {v1}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMath;->roundNearest(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v2

    .line 77
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 78
    .local v8, width:I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 79
    .local v4, height:I
    if-gtz v8, :cond_1

    const/4 v8, 0x1

    .line 80
    :cond_1
    if-gtz v4, :cond_2

    const/4 v4, 0x1

    .line 81
    :cond_2
    const/4 v7, 0x0

    .line 82
    .local v7, temp:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v9}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->hasSwitchedWidthHeight()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 83
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 88
    :goto_0
    const/4 v9, 0x2

    new-array v3, v9, [F

    const/4 v9, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    aput v10, v3, v9

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    aput v10, v3, v9

    .line 92
    .local v3, displayCenter:[F
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11, v3}, Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;->buildTotalXform(FF[F)Landroid/graphics/Matrix;

    move-result-object v5

    .line 94
    .local v5, m1:Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 96
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 98
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 99
    invoke-virtual {v0, p1, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 100
    return-object v7

    .line 85
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v3           #displayCenter:[F
    .end local v5           #m1:Landroid/graphics/Matrix;
    .end local v6           #paint:Landroid/graphics/Paint;
    :cond_3
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;

    .line 48
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method protected native nativeApplyFilterCrop(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IIII)V
.end method

.method protected native nativeApplyFilterFlip(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;III)V
.end method

.method protected native nativeApplyFilterRotate(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;III)V
.end method

.method protected native nativeApplyFilterStraighten(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IIF)V
.end method

.method public setGeometryMetadata(Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterGeometry;->mGeometry:Lcom/android/gallery3d/filtershow/imageshow/GeometryMetadata;

    .line 53
    return-void
.end method
