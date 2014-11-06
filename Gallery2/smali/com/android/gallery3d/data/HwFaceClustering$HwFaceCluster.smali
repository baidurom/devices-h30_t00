.class public Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;
.super Ljava/lang/Object;
.source "HwFaceClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/HwFaceClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HwFaceCluster"
.end annotation


# instance fields
.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;",
            ">;"
        }
    .end annotation
.end field

.field mPersonId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "personId"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;->mItems:Ljava/util/ArrayList;

    .line 24
    iput p1, p0, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;->mPersonId:I

    .line 25
    return-void
.end method


# virtual methods
.method public add(Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;)V
    .locals 1
    .parameter "smallItem"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
