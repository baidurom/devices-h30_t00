.class Lcom/android/gallery3d/data/ClusterWorker$1;
.super Ljava/lang/Object;
.source "ClusterWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/ClusterWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/gallery3d/data/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/ClusterWorker;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/ClusterWorker;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker$1;,"Lcom/android/gallery3d/data/ClusterWorker.1;"
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterWorker$1;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/Path;)I
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 82
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker$1;,"Lcom/android/gallery3d/data/ClusterWorker.1;"
    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterWorker$1;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    #getter for: Lcom/android/gallery3d/data/ClusterWorker;->mCachedPathP:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/gallery3d/data/ClusterWorker;->access$000(Lcom/android/gallery3d/data/ClusterWorker;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, lp:Ljava/lang/Object;,"TP;"
    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterWorker$1;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    #getter for: Lcom/android/gallery3d/data/ClusterWorker;->mCachedPathP:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/gallery3d/data/ClusterWorker;->access$000(Lcom/android/gallery3d/data/ClusterWorker;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    .local v1, rp:Ljava/lang/Object;,"TP;"
    if-ne v0, v1, :cond_0

    .line 85
    const/4 v2, 0x0

    .line 90
    :goto_0
    return v2

    .line 86
    :cond_0
    if-nez v0, :cond_1

    .line 87
    const/4 v2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    if-nez v1, :cond_2

    .line 89
    const/4 v2, -0x1

    goto :goto_0

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterWorker$1;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    #getter for: Lcom/android/gallery3d/data/ClusterWorker;->mItemComparator:Ljava/util/Comparator;
    invoke-static {v2}, Lcom/android/gallery3d/data/ClusterWorker;->access$100(Lcom/android/gallery3d/data/ClusterWorker;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker$1;,"Lcom/android/gallery3d/data/ClusterWorker.1;"
    check-cast p1, Lcom/android/gallery3d/data/Path;

    .end local p1
    check-cast p2, Lcom/android/gallery3d/data/Path;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/data/ClusterWorker$1;->compare(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/Path;)I

    move-result v0

    return v0
.end method
