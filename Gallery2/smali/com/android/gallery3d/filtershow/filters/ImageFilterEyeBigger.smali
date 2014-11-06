.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterEyeBigger;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterEyeBigger.java"


# static fields
.field private static final EYEMAX_PARAM:I = 0xc8

.field private static final EYEMIN_PARAM:I = 0x0

.field private static final IRISMAX_PARAM:I = 0x0

.field private static final IRISMIN_PARAM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageFilterEyeBigger"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    .line 22
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    .line 23
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mDefaultParameter:I

    .line 24
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mPreviewParameter:I

    .line 25
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mDefaultParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mParameter:I

    .line 26
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterEyeBigger;->setFilterType(B)V

    .line 27
    return-void
.end method

.method private getEyeParameter(I)I
    .locals 5
    .parameter "parameter"

    .prologue
    .line 30
    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 31
    .local v0, input:I
    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    const/high16 v3, 0x4348

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v1, v2, 0x0

    .line 32
    .local v1, output:I
    return v1
.end method

.method private getIrisParameter(I)I
    .locals 5
    .parameter "parameter"

    .prologue
    .line 36
    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 37
    .local v0, input:I
    iget v2, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    iget v4, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v1, v2, 0x0

    .line 38
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
    .line 52
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mAppliedParameter:I

    .line 99
    return-object p1
.end method

.method public setParameter(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterEyeBigger;->getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v0

    .line 45
    .local v0, imagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-eqz v0, :cond_0

    .line 46
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->updateFaceBeautifierParameter(II)V

    .line 48
    :cond_0
    return-void
.end method
