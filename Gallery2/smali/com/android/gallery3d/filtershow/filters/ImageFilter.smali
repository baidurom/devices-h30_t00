.class public Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.super Ljava/lang/Object;
.source "ImageFilter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final TYPE_BORDER:B = 0x1t

.field public static final TYPE_FACE:B = 0x20t

.field public static final TYPE_FX:B = 0x2t

.field public static final TYPE_NORMAL:B = 0x5t

.field public static final TYPE_TINYPLANET:B = 0x6t

.field public static final TYPE_VIGNETTE:B = 0x4t

.field public static final TYPE_WBALANCE:B = 0x3t


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private filterType:B

.field protected mAppliedParameter:I

.field protected mDefaultParameter:I

.field private mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

.field protected mMaxParameter:I

.field protected mMinParameter:I

.field protected mName:Ljava/lang/String;

.field protected mParameter:I

.field protected mPreviewParameter:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    .line 26
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    .line 27
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mPreviewParameter:I

    .line 28
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mDefaultParameter:I

    .line 29
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mParameter:I

    .line 30
    iput v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mAppliedParameter:I

    .line 33
    const-string v0, "Original"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 34
    const-string v0, "ImageFilter"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->LOGTAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->filterType:B

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 83
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
    .line 54
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    .line 55
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilter;
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getParameter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 57
    iget-byte v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->filterType:B

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setFilterType(B)V

    .line 58
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    iput v1, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    .line 59
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    iput v1, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    .line 60
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    iput-object v1, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 61
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mDefaultParameter:I

    iput v1, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mDefaultParameter:I

    .line 62
    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mPreviewParameter:I

    iput v1, v0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mPreviewParameter:I

    .line 63
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
    .line 23
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->clone()Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getAppliedParameter()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mAppliedParameter:I

    return v0
.end method

.method public getDefaultParameter()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mDefaultParameter:I

    return v0
.end method

.method public getFilterType()B
    .locals 1

    .prologue
    .line 45
    iget-byte v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->filterType:B

    return v0
.end method

.method public getImagePreset()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method public getMaxParameter()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMaxParameter:I

    return v0
.end method

.method public getMinParameter()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mMinParameter:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mParameter:I

    return v0
.end method

.method public getPreviewParameter()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mPreviewParameter:I

    return v0
.end method

.method public isNil()Z
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mParameter:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mDefaultParameter:I

    if-ne v0, v1, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected native nativeApplyGradientFilter(Landroid/graphics/Bitmap;II[I[I[I)V
.end method

.method public same(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)Z
    .locals 3
    .parameter "filter"

    .prologue
    const/4 v0, 0x0

    .line 139
    if-nez p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setFilterType(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 49
    iput-byte p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->filterType:B

    .line 50
    return-void
.end method

.method public setImagePreset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 0
    .parameter "mPreset"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 136
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setParameter(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mParameter:I

    .line 96
    return-void
.end method
