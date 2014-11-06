.class public Lcom/android/gallery3d/ui/ThemeableNinePatchTexture;
.super Lcom/android/gallery3d/ui/NinePatchTexture;
.source "ThemeableNinePatchTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NinePatchTexture2"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 36
    iget-object v10, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 39
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 40
    iget-object v10, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mResId:I

    invoke-static {v10, v11, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 42
    .local v1, bitmap1:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v6

    .line 43
    .local v6, ninePatchChunk:[B
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    if-nez v6, :cond_2

    .line 45
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid nine-patch image: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mResId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 48
    :cond_2
    iget-object v10, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 49
    .local v8, res:Landroid/content/res/Resources;
    iget v10, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mResId:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 50
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 52
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 54
    .local v2, canvas:Landroid/graphics/Canvas;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 56
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->setNinePatchChunk([B)V

    .line 62
    iput-object v0, p0, Lcom/android/gallery3d/ui/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/android/gallery3d/ui/ThemeableNinePatchTexture;->setSize(II)V

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 65
    .local v3, chunkData:[B
    if-nez v3, :cond_3

    :goto_1
    iput-object v9, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

    .line 68
    iget-object v9, p0, Lcom/android/gallery3d/ui/NinePatchTexture;->mChunk:Lcom/android/gallery3d/ui/NinePatchChunk;

    if-nez v9, :cond_0

    .line 69
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid nine-patch image: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/gallery3d/ui/ResourceTexture;->mResId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 57
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #chunkData:[B
    :catch_0
    move-exception v5

    .line 58
    .local v5, ex:Ljava/lang/Exception;
    const-string v10, "ResourceTexture"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed to create the Bitmap "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 59
    goto/16 :goto_0

    .line 65
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    .restart local v3       #chunkData:[B
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/ui/NinePatchChunk;->deserialize([B)Lcom/android/gallery3d/ui/NinePatchChunk;

    move-result-object v9

    goto :goto_1
.end method
