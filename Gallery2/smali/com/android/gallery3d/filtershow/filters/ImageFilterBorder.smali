.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterBorder.java"


# instance fields
.field mNinePatch:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "ninePatch"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->setFilterType(B)V

    .line 36
    const-string v0, "Border"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    .line 38
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    const/4 v8, 0x0

    .line 71
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_0

    .line 94
    :goto_0
    return-object p1

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 76
    .local v7, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 78
    .local v2, h:I
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    .line 79
    .local v5, ninePatchWidth:I
    iget-object v9, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    .line 81
    .local v4, ninePatchHeight:I
    int-to-float v9, v7

    div-float/2addr v9, p2

    float-to-int v9, v9

    if-lt v9, v5, :cond_1

    int-to-float v9, v2

    div-float/2addr v9, p2

    float-to-int v9, v9

    if-ge v9, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 82
    .local v3, needSmallNinePatch:Z
    :goto_1
    const/high16 v6, 0x3f80

    .line 83
    .local v6, scale:F
    if-eqz v3, :cond_3

    .line 84
    int-to-float v9, v7

    int-to-float v10, v5

    div-float/2addr v9, v10

    int-to-float v10, v2

    int-to-float v11, v4

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 89
    :goto_2
    new-instance v0, Landroid/graphics/Rect;

    int-to-float v9, v7

    div-float/2addr v9, v6

    float-to-int v9, v9

    int-to-float v10, v2

    div-float/2addr v10, v6

    float-to-int v10, v10

    invoke-direct {v0, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 90
    .local v0, bounds:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 92
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 93
    iget-object v8, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .end local v0           #bounds:Landroid/graphics/Rect;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v3           #needSmallNinePatch:Z
    .end local v6           #scale:F
    :cond_2
    move v3, v8

    .line 81
    goto :goto_1

    .line 86
    .restart local v3       #needSmallNinePatch:Z
    .restart local v6       #scale:F
    :cond_3
    const/high16 v9, 0x4000

    mul-float v6, p2, v9

    goto :goto_2
.end method

.method public clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    .line 30
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
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
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public isNil()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public same(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)Z
    .locals 5
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->same(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)Z

    move-result v1

    .line 51
    .local v1, isBorderFilter:Z
    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v2

    .line 54
    :cond_1
    instance-of v3, p1, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;

    .line 58
    .local v0, borderFilter:Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    if-ne v3, v4, :cond_0

    .line 61
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "ninePatch"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilterBorder;->mNinePatch:Landroid/graphics/drawable/Drawable;

    .line 67
    return-void
.end method
