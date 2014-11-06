.class public Lcom/android/gallery3d/filtershow/presets/ImagePresetSaturated;
.super Lcom/android/gallery3d/filtershow/presets/ImagePreset;
.source "ImagePresetSaturated.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>()V

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "Saturated"

    return-object v0
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;-><init>()V

    .line 31
    .local v0, filter:Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterSaturated;->setParameter(I)V

    .line 32
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method
