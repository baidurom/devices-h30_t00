.class Lcom/android/gallery3d/data/LocationClusters$2;
.super Ljava/lang/Object;
.source "LocationClusters.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/LocationClusters;->reload()Lcom/android/gallery3d/util/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/LocationClusters;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/LocationClusters;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/gallery3d/data/LocationClusters$2;->this$0:Lcom/android/gallery3d/data/LocationClusters;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/LocationClusters$2;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 5
    .parameter "jc"

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    :goto_0
    return-object v4

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/data/LocationClusters$2;->this$0:Lcom/android/gallery3d/data/LocationClusters;

    #getter for: Lcom/android/gallery3d/data/LocationClusters;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/android/gallery3d/data/LocationClusters;->access$000(Lcom/android/gallery3d/data/LocationClusters;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    .line 167
    .local v1, total:I
    const/4 v2, 0x2

    new-array v0, v2, [D

    .line 169
    .local v0, latLng:[D
    iget-object v2, p0, Lcom/android/gallery3d/data/LocationClusters$2;->this$0:Lcom/android/gallery3d/data/LocationClusters;

    #getter for: Lcom/android/gallery3d/data/LocationClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;
    invoke-static {v2}, Lcom/android/gallery3d/data/LocationClusters;->access$100(Lcom/android/gallery3d/data/LocationClusters;)Lcom/android/gallery3d/data/ClusterWorker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/ClusterWorker;->clear()V

    .line 171
    iget-object v2, p0, Lcom/android/gallery3d/data/LocationClusters$2;->this$0:Lcom/android/gallery3d/data/LocationClusters;

    #getter for: Lcom/android/gallery3d/data/LocationClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;
    invoke-static {v2}, Lcom/android/gallery3d/data/LocationClusters;->access$100(Lcom/android/gallery3d/data/LocationClusters;)Lcom/android/gallery3d/data/ClusterWorker;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/ClusterWorker;->setDone(Z)V

    .line 172
    iget-object v2, p0, Lcom/android/gallery3d/data/LocationClusters$2;->this$0:Lcom/android/gallery3d/data/LocationClusters;

    #getter for: Lcom/android/gallery3d/data/LocationClusters;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/android/gallery3d/data/LocationClusters;->access$000(Lcom/android/gallery3d/data/LocationClusters;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/data/LocationClusters$2$1;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/android/gallery3d/data/LocationClusters$2$1;-><init>(Lcom/android/gallery3d/data/LocationClusters$2;ILcom/android/gallery3d/util/ThreadPool$JobContext;[D)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 193
    iget-object v2, p0, Lcom/android/gallery3d/data/LocationClusters$2;->this$0:Lcom/android/gallery3d/data/LocationClusters;

    #getter for: Lcom/android/gallery3d/data/LocationClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;
    invoke-static {v2}, Lcom/android/gallery3d/data/LocationClusters;->access$100(Lcom/android/gallery3d/data/LocationClusters;)Lcom/android/gallery3d/data/ClusterWorker;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/ClusterWorker;->setDone(Z)V

    goto :goto_0
.end method
