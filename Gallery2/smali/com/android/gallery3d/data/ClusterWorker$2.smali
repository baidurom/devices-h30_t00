.class Lcom/android/gallery3d/data/ClusterWorker$2;
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
        "Ljava/lang/String;",
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
    .line 96
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker$2;,"Lcom/android/gallery3d/data/ClusterWorker.2;"
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterWorker$2;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker$2;,"Lcom/android/gallery3d/data/ClusterWorker.2;"
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/data/ClusterWorker$2;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker$2;,"Lcom/android/gallery3d/data/ClusterWorker.2;"
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 100
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker$2;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    #getter for: Lcom/android/gallery3d/data/ClusterWorker;->mAlbumComparator:Ljava/util/Comparator;
    invoke-static {v9}, Lcom/android/gallery3d/data/ClusterWorker;->access$200(Lcom/android/gallery3d/data/ClusterWorker;)Ljava/util/Comparator;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 101
    const-string v9, "-1"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v6

    .line 103
    :cond_1
    const-string v9, "-1"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v6, v7

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    const-string v9, "-2"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v6, v7

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    const-string v9, "-2"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 109
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker$2;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    #getter for: Lcom/android/gallery3d/data/ClusterWorker;->mAlbumPaths:Ljava/util/Map;
    invoke-static {v9}, Lcom/android/gallery3d/data/ClusterWorker;->access$300(Lcom/android/gallery3d/data/ClusterWorker;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 110
    .local v2, list1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker$2;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    #getter for: Lcom/android/gallery3d/data/ClusterWorker;->mAlbumPaths:Ljava/util/Map;
    invoke-static {v9}, Lcom/android/gallery3d/data/ClusterWorker;->access$300(Lcom/android/gallery3d/data/ClusterWorker;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 111
    .local v3, list2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    if-ne v2, v3, :cond_4

    move v6, v8

    .line 112
    goto :goto_0

    .line 113
    :cond_4
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 115
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    move v6, v7

    .line 116
    goto :goto_0

    .line 117
    :cond_6
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Path;

    .line 118
    .local v4, p1:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/Path;

    .line 120
    .local v5, p2:Lcom/android/gallery3d/data/Path;
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker$2;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    #getter for: Lcom/android/gallery3d/data/ClusterWorker;->mCachedPathP:Ljava/util/Map;
    invoke-static {v9}, Lcom/android/gallery3d/data/ClusterWorker;->access$000(Lcom/android/gallery3d/data/ClusterWorker;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, item1:Ljava/lang/Object;,"TP;"
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker$2;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    #getter for: Lcom/android/gallery3d/data/ClusterWorker;->mCachedPathP:Ljava/util/Map;
    invoke-static {v9}, Lcom/android/gallery3d/data/ClusterWorker;->access$000(Lcom/android/gallery3d/data/ClusterWorker;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 122
    .local v1, item2:Ljava/lang/Object;,"TP;"
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    move v6, v8

    .line 123
    goto :goto_0

    .line 124
    :cond_7
    if-eqz v0, :cond_0

    .line 126
    if-nez v1, :cond_8

    move v6, v7

    .line 127
    goto :goto_0

    .line 128
    :cond_8
    iget-object v6, p0, Lcom/android/gallery3d/data/ClusterWorker$2;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    #getter for: Lcom/android/gallery3d/data/ClusterWorker;->mAlbumComparator:Ljava/util/Comparator;
    invoke-static {v6}, Lcom/android/gallery3d/data/ClusterWorker;->access$200(Lcom/android/gallery3d/data/ClusterWorker;)Ljava/util/Comparator;

    move-result-object v6

    invoke-interface {v6, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_0

    .line 131
    .end local v0           #item1:Ljava/lang/Object;,"TP;"
    .end local v1           #item2:Ljava/lang/Object;,"TP;"
    .end local v2           #list1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v3           #list2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v4           #p1:Lcom/android/gallery3d/data/Path;
    .end local v5           #p2:Lcom/android/gallery3d/data/Path;
    :cond_9
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    move v6, v8

    .line 132
    goto/16 :goto_0

    .line 133
    :cond_a
    if-nez p2, :cond_b

    move v6, v7

    .line 134
    goto/16 :goto_0

    .line 135
    :cond_b
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0
.end method
