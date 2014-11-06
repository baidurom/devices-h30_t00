.class final Lcom/android/gallery3d/data/LocationClustering$LocationCluster$1;
.super Ljava/lang/Object;
.source "LocationClustering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocationClustering$LocationCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/gallery3d/data/LocationClustering$LocationCluster;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)I
    .locals 5
    .parameter "item1"
    .parameter "item2"

    .prologue
    const/4 v3, 0x0

    .line 110
    #getter for: Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mCluster:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->access$000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    iget-wide v1, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->dateInMs:J

    #getter for: Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->mCluster:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;->access$000(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    iget-wide v3, v0, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->dateInMs:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    check-cast p1, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    .end local p1
    check-cast p2, Lcom/android/gallery3d/data/LocationClustering$LocationCluster;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/data/LocationClustering$LocationCluster$1;->compare(Lcom/android/gallery3d/data/LocationClustering$LocationCluster;Lcom/android/gallery3d/data/LocationClustering$LocationCluster;)I

    move-result v0

    return v0
.end method
