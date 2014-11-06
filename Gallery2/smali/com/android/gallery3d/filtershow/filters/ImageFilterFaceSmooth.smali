.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceSmooth;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterFaceSmooth.java"


# static fields
.field private static final MAXPARA:I = 0x82

.field private static final MINPARA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageFilterFaceSmooth"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    .line 16
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    .line 17
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mDefaultParameter:I

    .line 18
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mPreviewParameter:I

    .line 19
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mDefaultParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mParameter:I

    .line 20
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceSmooth;->setFilterType(B)V

    .line 21
    return-void
.end method

.method private getRealParameter(I)I
    .locals 5
    .parameter "parameter"

    .prologue
    .line 24
    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 25
    .local v0, input:I
    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    const/high16 v3, 0x4302

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v1, v2, 0x0

    .line 26
    .local v1, output:I
    return v1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mAppliedParameter:I

    .line 47
    return-object p1
.end method

.method public setParameter(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFaceSmooth;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    .line 33
    .local v0, imagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-eqz v0, :cond_0

    .line 34
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->updateFaceBeautifierParameter(II)V

    .line 36
    :cond_0
    return-void
.end method
