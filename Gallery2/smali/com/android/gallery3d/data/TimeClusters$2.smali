.class Lcom/android/gallery3d/data/TimeClusters$2;
.super Ljava/lang/Object;
.source "TimeClusters.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/TimeClusters;->reload()Lcom/android/gallery3d/util/Future;
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
.field final synthetic this$0:Lcom/android/gallery3d/data/TimeClusters;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/TimeClusters;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/gallery3d/data/TimeClusters$2;->this$0:Lcom/android/gallery3d/data/TimeClusters;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/TimeClusters$2;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4
    .parameter "jc"

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    :goto_0
    return-object v3

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/TimeClusters$2;->this$0:Lcom/android/gallery3d/data/TimeClusters;

    #getter for: Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;
    invoke-static {v1}, Lcom/android/gallery3d/data/TimeClusters;->access$000(Lcom/android/gallery3d/data/TimeClusters;)Lcom/android/gallery3d/data/ClusterWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/ClusterWorker;->clear()V

    .line 102
    iget-object v1, p0, Lcom/android/gallery3d/data/TimeClusters$2;->this$0:Lcom/android/gallery3d/data/TimeClusters;

    #getter for: Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;
    invoke-static {v1}, Lcom/android/gallery3d/data/TimeClusters;->access$000(Lcom/android/gallery3d/data/TimeClusters;)Lcom/android/gallery3d/data/ClusterWorker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/ClusterWorker;->setDone(Z)V

    .line 103
    iget-object v1, p0, Lcom/android/gallery3d/data/TimeClusters$2;->this$0:Lcom/android/gallery3d/data/TimeClusters;

    #getter for: Lcom/android/gallery3d/data/TimeClusters;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v1}, Lcom/android/gallery3d/data/TimeClusters;->access$100(Lcom/android/gallery3d/data/TimeClusters;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    .line 107
    .local v0, total:I
    iget-object v1, p0, Lcom/android/gallery3d/data/TimeClusters$2;->this$0:Lcom/android/gallery3d/data/TimeClusters;

    #getter for: Lcom/android/gallery3d/data/TimeClusters;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v1}, Lcom/android/gallery3d/data/TimeClusters;->access$100(Lcom/android/gallery3d/data/TimeClusters;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/data/TimeClusters$2$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/gallery3d/data/TimeClusters$2$1;-><init>(Lcom/android/gallery3d/data/TimeClusters$2;ILcom/android/gallery3d/util/ThreadPool$JobContext;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 129
    iget-object v1, p0, Lcom/android/gallery3d/data/TimeClusters$2;->this$0:Lcom/android/gallery3d/data/TimeClusters;

    #getter for: Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;
    invoke-static {v1}, Lcom/android/gallery3d/data/TimeClusters;->access$000(Lcom/android/gallery3d/data/TimeClusters;)Lcom/android/gallery3d/data/ClusterWorker;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/ClusterWorker;->setDone(Z)V

    goto :goto_0
.end method
