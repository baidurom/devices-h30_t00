.class Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;
.super Ljava/lang/Object;
.source "AbstractGifScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AbstractGifScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mNext:Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;

.field mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field state:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->ensureBitmap(II)V

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->state:I

    .line 113
    return-void
.end method


# virtual methods
.method ensureBitmap(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mBitmap:Landroid/graphics/Bitmap;

    .line 118
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 120
    :cond_1
    return-void
.end method

.method recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 125
    iput-object v1, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    iput-object v1, p0, Lcom/android/gallery3d/ui/AbstractGifScreenNail$Entry;->mBitmap:Landroid/graphics/Bitmap;

    .line 131
    :cond_1
    return-void
.end method
