.class public Lcom/android/gallery3d/filtershow/cache/ZoomCache;
.super Ljava/lang/Object;
.source "ZoomCache.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBounds:Landroid/graphics/Rect;

.field private mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 27
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "preset"
    .parameter "bounds"

    .prologue
    const/4 v0, 0x0

    .line 33
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->same(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public reset(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 1
    .parameter "imagePreset"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    if-ne p1, v0, :cond_0

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 57
    :cond_0
    return-void
.end method

.method public setImage(Lcom/android/gallery3d/filtershow/presets/ImagePreset;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "preset"
    .parameter "bounds"
    .parameter "bitmap"

    .prologue
    .line 48
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mBounds:Landroid/graphics/Rect;

    .line 50
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/cache/ZoomCache;->mImagePreset:Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 51
    return-void
.end method
