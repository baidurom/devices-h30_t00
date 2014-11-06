.class final Lcom/android/gallery3d/data/HwFaceClustering$SmallItem$1;
.super Ljava/lang/Object;
.source "HwFaceClustering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;
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
        "Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;)I
    .locals 4
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 47
    iget-wide v0, p2, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;->dateInMs:J

    iget-wide v2, p1, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;->dateInMs:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    check-cast p1, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;

    .end local p1
    check-cast p2, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem$1;->compare(Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;)I

    move-result v0

    return v0
.end method
