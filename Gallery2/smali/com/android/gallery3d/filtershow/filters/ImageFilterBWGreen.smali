.class public Lcom/android/gallery3d/filtershow/filters/ImageFilterBWGreen;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilter;
.source "ImageFilterBWGreen.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;-><init>()V

    .line 24
    const-string v0, "B&W - Green"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"
    .parameter "scaleFactor"
    .parameter "highQuality"

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 32
    .local v1, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 33
    .local v0, h:I
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterBWGreen;->nativeApplyFilter(Landroid/graphics/Bitmap;II)V

    .line 34
    return-object p1
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;II)V
.end method
