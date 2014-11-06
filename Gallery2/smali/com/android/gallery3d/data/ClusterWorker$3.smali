.class Lcom/android/gallery3d/data/ClusterWorker$3;
.super Ljava/lang/Thread;
.source "ClusterWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/ClusterWorker;->submit(Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/ClusterWorker;

.field final synthetic val$consumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;

.field final synthetic val$mediaSet:Lcom/android/gallery3d/data/MediaSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/ClusterWorker;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker$3;,"Lcom/android/gallery3d/data/ClusterWorker.3;"
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterWorker$3;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    iput-object p2, p0, Lcom/android/gallery3d/data/ClusterWorker$3;->val$mediaSet:Lcom/android/gallery3d/data/MediaSet;

    iput-object p3, p0, Lcom/android/gallery3d/data/ClusterWorker$3;->val$consumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 275
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker$3;,"Lcom/android/gallery3d/data/ClusterWorker.3;"
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker$3;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/ClusterWorker;->setDone(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker$3;->val$mediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterWorker$3;->val$consumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 277
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker$3;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/data/ClusterWorker;->mClusterThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/android/gallery3d/data/ClusterWorker;->access$402(Lcom/android/gallery3d/data/ClusterWorker;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker$3;->this$0:Lcom/android/gallery3d/data/ClusterWorker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/ClusterWorker;->setDone(Z)V

    .line 279
    return-void
.end method
