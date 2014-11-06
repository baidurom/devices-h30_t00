.class public Lcom/android/gallery3d/util/GalleryUtils$DataBundle;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/GalleryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBundle"
.end annotation


# instance fields
.field public firstFrame:Landroid/graphics/Bitmap;

.field public mpoFrames:[Landroid/graphics/Bitmap;

.field public mpoTotalCount:I

.field public originalFrame:Landroid/graphics/Bitmap;

.field public originalFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

.field public secondFrame:Landroid/graphics/Bitmap;

.field public secondFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1019
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    iput-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 1021
    iput-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    .line 1022
    iput-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    .line 1023
    iput-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    .line 1025
    iput-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    .line 1027
    iput-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->mpoFrames:[Landroid/graphics/Bitmap;

    .line 1028
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->mpoTotalCount:I

    .line 1029
    return-void
.end method


# virtual methods
.method public info()V
    .locals 1

    .prologue
    .line 1049
    const-string v0, "GalleryUtils"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->info(Ljava/lang/String;)V

    .line 1050
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBundle:originalFrame["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBundle:firstFrame["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBundle:secondFrame["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    if-eqz v0, :cond_3

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBundle:originalFullFrame["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    invoke-virtual {v1}, Lcom/android/gallery3d/mediatek/RegionDecoder;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    invoke-virtual {v1}, Lcom/android/gallery3d/mediatek/RegionDecoder;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    if-eqz v0, :cond_4

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBundle:secondFullFrame["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    invoke-virtual {v1}, Lcom/android/gallery3d/mediatek/RegionDecoder;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    invoke-virtual {v1}, Lcom/android/gallery3d/mediatek/RegionDecoder;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->mpoFrames:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBundle:mpoFrames,length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->mpoFrames:[Landroid/graphics/Bitmap;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->mpoTotalCount:I

    if-eqz v0, :cond_6

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBundle:mpoTotalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->mpoTotalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_6
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1031
    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    invoke-virtual {v0}, Lcom/android/gallery3d/mediatek/RegionDecoder;->release()V

    .line 1036
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    invoke-virtual {v0}, Lcom/android/gallery3d/mediatek/RegionDecoder;->release()V

    .line 1038
    :cond_4
    iput-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    .line 1039
    iput-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    .line 1040
    iput-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    .line 1042
    iput-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->secondFullFrame:Lcom/android/gallery3d/mediatek/RegionDecoder;

    .line 1044
    iput-object v1, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->mpoFrames:[Landroid/graphics/Bitmap;

    .line 1045
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/util/GalleryUtils$DataBundle;->mpoTotalCount:I

    .line 1046
    return-void
.end method
