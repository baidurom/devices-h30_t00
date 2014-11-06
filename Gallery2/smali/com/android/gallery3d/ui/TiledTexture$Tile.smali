.class Lcom/android/gallery3d/ui/TiledTexture$Tile;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "TiledTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TiledTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tile"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public contentHeight:I

.field public contentWidth:I

.field public nextFreeTile:Lcom/android/gallery3d/ui/TiledTexture$Tile;

.field public offsetX:I

.field public offsetY:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/TiledTexture$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TiledTexture$Tile;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 158
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/16 v12, 0xfe

    const/high16 v4, 0x4380

    const/4 v2, 0x0

    .line 137
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v10, v0, 0x1

    .line 138
    .local v10, x:I
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v11, v0, 0x1

    .line 139
    .local v11, y:I
    iget-object v8, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 140
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int v9, v0, v10

    .line 142
    .local v9, r:I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int v7, v0, v11

    .line 143
    .local v7, b:I
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, v10

    int-to-float v3, v11

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$100()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v0, v8, v1, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 144
    const/4 v8, 0x0

    .line 147
    if-lez v10, :cond_0

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v0

    add-int/lit8 v1, v10, -0x1

    int-to-float v1, v1

    add-int/lit8 v3, v10, -0x1

    int-to-float v3, v3

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 148
    :cond_0
    if-lez v11, :cond_1

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v1

    add-int/lit8 v0, v11, -0x1

    int-to-float v3, v0

    add-int/lit8 v0, v11, -0x1

    int-to-float v5, v0

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 149
    :cond_1
    if-ge v9, v12, :cond_2

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, v9

    int-to-float v3, v9

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 150
    :cond_2
    if-ge v7, v12, :cond_3

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$200()Landroid/graphics/Canvas;

    move-result-object v1

    int-to-float v3, v7

    int-to-float v5, v7

    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$300()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 152
    .end local v7           #b:I
    .end local v9           #r:I
    :cond_3
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->access$400()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0x100

    .line 127
    iput p1, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentWidth:I

    .line 128
    iput p2, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentHeight:I

    .line 129
    add-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    .line 130
    add-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    .line 131
    iput v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    .line 132
    iput v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    .line 133
    return-void
.end method
