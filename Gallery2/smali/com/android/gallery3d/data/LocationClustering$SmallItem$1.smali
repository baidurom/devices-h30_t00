.class final Lcom/android/gallery3d/data/LocationClustering$SmallItem$1;
.super Ljava/lang/Object;
.source "LocationClustering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocationClustering$SmallItem;
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
        "Lcom/android/gallery3d/data/LocationClustering$SmallItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/gallery3d/data/LocationClustering$SmallItem;Lcom/android/gallery3d/data/LocationClustering$SmallItem;)I
    .locals 4
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 122
    iget-wide v0, p2, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->dateInMs:J

    iget-wide v2, p1, Lcom/android/gallery3d/data/LocationClustering$SmallItem;->dateInMs:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    check-cast p1, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    .end local p1
    check-cast p2, Lcom/android/gallery3d/data/LocationClustering$SmallItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/data/LocationClustering$SmallItem$1;->compare(Lcom/android/gallery3d/data/LocationClustering$SmallItem;Lcom/android/gallery3d/data/LocationClustering$SmallItem;)I

    move-result v0

    return v0
.end method
