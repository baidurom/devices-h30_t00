.class public Lcom/android/gallery3d/filtershow/presets/ImagePresetFX;
.super Lcom/android/gallery3d/filtershow/presets/ImagePreset;
.source "ImagePresetFX.java"


# instance fields
.field fxBitmap:Landroid/graphics/Bitmap;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .parameter "bitmap"
    .parameter "name"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/presets/ImagePresetFX;->fxBitmap:Landroid/graphics/Bitmap;

    .line 34
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePresetFX;->name:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/presets/ImagePresetFX;->setup()V

    .line 36
    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePresetFX;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setup()V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePresetFX;->fxBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/presets/ImagePresetFX;->fxBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/presets/ImagePresetFX;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    return-void
.end method
