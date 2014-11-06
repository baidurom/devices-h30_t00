.class public Lcom/android/gallery3d/ui/BitmapScreenNail;
.super Lcom/android/gallery3d/ui/AbstractGifScreenNail;
.source "BitmapScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;


# instance fields
.field private final mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/gallery3d/ui/AbstractGifScreenNail;-><init>()V

    .line 27
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 28
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 7
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 42
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->drawGifIfNecessary(Lcom/android/gallery3d/ui/GLCanvas;IIII)Z

    move-result v6

    .line 43
    .local v6, completed:Z
    if-eqz v6, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-interface {p1, v0, p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 61
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 55
    invoke-super {p0}, Lcom/android/gallery3d/ui/AbstractGifScreenNail;->recycle()V

    .line 56
    return-void
.end method
