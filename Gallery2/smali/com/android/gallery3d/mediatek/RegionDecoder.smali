.class public Lcom/android/gallery3d/mediatek/RegionDecoder;
.super Ljava/lang/Object;
.source "RegionDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegionDecoder"


# instance fields
.field public regionDecoder:Landroid/graphics/BitmapRegionDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/mediatek/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 14
    return-void
.end method

.method public showInfo()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "RegionDecoder"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/mediatek/RegionDecoder;->showInfo(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public showInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInfo:regionDecoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/mediatek/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/mediatek/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInfo:regionDecoder["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/mediatek/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/mediatek/RegionDecoder;->regionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-void
.end method
