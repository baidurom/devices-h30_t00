.class public Lcom/android/gallery3d/ui/ResourceTexture;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "ResourceTexture.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mContext:Landroid/content/Context;

    .line 38
    iput p2, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mResId:I

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ResourceTexture;->setOpaque(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    return-void
.end method

.method public bridge synthetic draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 31
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    return-void
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureHeight()I
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureWidth()I
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasBorder()Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->hasBorder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isContentValid()Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoaded()Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpaque()Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isUploading()Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->isUploading()Z

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 66
    invoke-static {}, Lcom/android/gallery3d/ui/ResourceTexture;->inFinalizer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    :cond_0
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 45
    iget-object v6, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 46
    .local v5, res:Landroid/content/res/Resources;
    iget v6, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 48
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v3

    .line 55
    .local v3, ex:Ljava/lang/Exception;
    const-string v6, "ResourceTexture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to create the Bitmap "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 57
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 58
    iget-object v6, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mResId:I

    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->recycle()V

    return-void
.end method

.method public bridge synthetic setOpaque(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    return-void
.end method

.method public bridge synthetic updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method public bridge synthetic yield()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->yield()V

    return-void
.end method
