.class public Lcom/android/gallery3d/data/HwFaceClustering;
.super Lcom/android/gallery3d/data/Clustering;
.source "HwFaceClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;,
        Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwFaceClustering"


# instance fields
.field private mClusters:[Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/gallery3d/data/Clustering;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/gallery3d/data/HwFaceClustering;->mResolver:Landroid/content/ContentResolver;

    .line 40
    return-void
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v4, p0, Lcom/android/gallery3d/data/HwFaceClustering;->mClusters:[Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;

    aget-object v4, v4, p1

    iget-object v1, v4, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;->mItems:Ljava/util/ArrayList;

    .line 83
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;

    .line 85
    .local v3, smallItem:Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;
    iget-object v4, v3, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v3           #smallItem:Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;
    :cond_0
    return-object v2
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClusterPersonId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/data/HwFaceClustering;->mClusters:[Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;->mPersonId:I

    return v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/data/HwFaceClustering;->mClusters:[Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;

    array-length v0, v0

    return v0
.end method

.method public run(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 5
    .parameter "baseSet"

    .prologue
    .line 54
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 57
    .local v2, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, existing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;>;"
    new-instance v3, Lcom/android/gallery3d/data/HwFaceClustering$1;

    invoke-direct {v3, p0, v0}, Lcom/android/gallery3d/data/HwFaceClustering$1;-><init>(Lcom/android/gallery3d/data/HwFaceClustering;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 68
    iget-object v3, p0, Lcom/android/gallery3d/data/HwFaceClustering;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/android/gallery3d/data/ImageFaceInfoManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/ImageFaceInfoManage;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/gallery3d/data/ImageFaceInfoManage;->clusterImageFaceInfo(Ljava/util/ArrayList;Ljava/util/TreeMap;)V

    .line 69
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;

    iput-object v3, p0, Lcom/android/gallery3d/data/HwFaceClustering;->mClusters:[Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;

    .line 70
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/data/HwFaceClustering;->mClusters:[Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/gallery3d/data/HwFaceClustering;->mClusters:[Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/gallery3d/data/HwFaceClustering$HwFaceCluster;->mItems:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method
