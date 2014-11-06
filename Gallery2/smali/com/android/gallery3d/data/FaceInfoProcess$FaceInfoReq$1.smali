.class final Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq$1;
.super Ljava/lang/Object;
.source "FaceInfoProcess.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;->getComparator()Ljava/util/Comparator;
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
        "Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;)I
    .locals 4
    .parameter "r1"
    .parameter "r2"

    .prologue
    .line 322
    iget-wide v0, p1, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;->mRequestTime:J

    iget-wide v2, p2, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;->mRequestTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;->mRequestTime:J

    iget-wide v2, p2, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;->mRequestTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 320
    check-cast p1, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;

    .end local p1
    check-cast p2, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq$1;->compare(Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;Lcom/android/gallery3d/data/FaceInfoProcess$FaceInfoReq;)I

    move-result v0

    return v0
.end method
