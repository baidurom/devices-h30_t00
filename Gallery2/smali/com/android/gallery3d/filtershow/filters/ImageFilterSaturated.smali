.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterSaturated.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 24
    const-string v0, "Saturated"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 32
    .local v3, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 33
    .local v0, h:I
    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mParameter:I

    iput v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mAppliedParameter:I

    .line 34
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mParameter:I

    .line 35
    .local v1, p:I
    const/high16 v4, 0x3f80

    int-to-float v5, v1

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    add-float v2, v4, v5

    .line 36
    .local v2, value:F
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;->nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V

    .line 37
    return-object p1
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IIF)V
.end method
