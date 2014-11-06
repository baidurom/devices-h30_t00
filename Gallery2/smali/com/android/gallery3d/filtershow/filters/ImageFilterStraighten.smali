.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterStraighten.java"


# instance fields
.field private final mConfig:Landroid/graphics/Bitmap$Config;

.field private mRotation:F

.field private mZoomFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 25
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 30
    const-string v0, "Straighten"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "rotation"
    .parameter "zoomFactor"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 25
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 42
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->mRotation:F

    .line 43
    iput p2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->mZoomFactor:F

    .line 44
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 60
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->mConfig:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 61
    .local v1, temp:Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    .local v12, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    .line 63
    new-instance v11, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v11, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 64
    .local v11, bounds:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v16, v0

    .line 65
    .local v16, w:F
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 66
    .local v13, h:F
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v15, v3, v4

    .line 67
    .local v15, mw:F
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v14, v3, v4

    .line 69
    .local v14, mh:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->mZoomFactor:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->mZoomFactor:F

    invoke-virtual {v12, v3, v4, v15, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 70
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->mRotation:F

    invoke-virtual {v12, v3, v15, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 71
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 72
    invoke-virtual {v12}, Landroid/graphics/Canvas;->restore()V

    .line 74
    mul-float v3, v16, v13

    float-to-int v3, v3

    new-array v2, v3, [I

    .line 75
    .local v2, pixels:[I
    const/4 v3, 0x0

    move/from16 v0, v16

    float-to-int v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v16

    float-to-int v7, v0

    float-to-int v8, v13

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 76
    const/4 v5, 0x0

    move/from16 v0, v16

    float-to-int v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v16

    float-to-int v9, v0

    float-to-int v10, v13

    move-object/from16 v3, p1

    move-object v4, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 77
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    const/4 v1, 0x0

    .line 79
    const/4 v2, 0x0

    .line 80
    return-object p1
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;

    .line 36
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->mRotation:F

    iput v1, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->mRotation:F

    .line 37
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->mZoomFactor:F

    iput v1, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->mZoomFactor:F

    .line 38
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
    .line 24
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public setRotation(F)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->mRotation:F

    .line 48
    return-void
.end method

.method public setRotationZoomFactor(F)V
    .locals 0
    .parameter "zoomFactor"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterStraighten;->mZoomFactor:F

    .line 52
    return-void
.end method
