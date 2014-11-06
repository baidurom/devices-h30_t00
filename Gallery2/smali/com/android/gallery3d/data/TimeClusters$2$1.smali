.class Lcom/android/gallery3d/data/TimeClusters$2$1;
.super Ljava/lang/Object;
.source "TimeClusters.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/TimeClusters$2;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/data/TimeClusters$2;

.field final synthetic val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/TimeClusters$2;ILcom/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/gallery3d/data/TimeClusters$2$1;->this$1:Lcom/android/gallery3d/data/TimeClusters$2;

    iput p2, p0, Lcom/android/gallery3d/data/TimeClusters$2$1;->val$total:I

    iput-object p3, p0, Lcom/android/gallery3d/data/TimeClusters$2$1;->val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 3
    .parameter "index"
    .parameter "item"

    .prologue
    .line 111
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/data/TimeClusters$2$1;->val$total:I

    if-lt p1, v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/data/TimeClusters$2$1;->val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/android/gallery3d/data/TimeClusters$2$1;->val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    goto :goto_0

    .line 119
    :cond_2
    new-instance v0, Lcom/android/gallery3d/data/TimeClusters$SmallItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/TimeClusters$SmallItem;-><init>(Lcom/android/gallery3d/data/TimeClusters$1;)V

    .line 120
    .local v0, s:Lcom/android/gallery3d/data/TimeClusters$SmallItem;
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/data/TimeClusters$SmallItem;->path:Lcom/android/gallery3d/data/Path;

    .line 121
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/gallery3d/data/TimeClusters$SmallItem;->dateInMs:J

    .line 125
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getNormalizedDate()I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/data/TimeClusters$SmallItem;->key:I

    .line 126
    iget-object v1, p0, Lcom/android/gallery3d/data/TimeClusters$2$1;->this$1:Lcom/android/gallery3d/data/TimeClusters$2;

    iget-object v1, v1, Lcom/android/gallery3d/data/TimeClusters$2;->this$0:Lcom/android/gallery3d/data/TimeClusters;

    #getter for: Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;
    invoke-static {v1}, Lcom/android/gallery3d/data/TimeClusters;->access$000(Lcom/android/gallery3d/data/TimeClusters;)Lcom/android/gallery3d/data/ClusterWorker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/ClusterWorker;->addItem(Ljava/lang/Object;)V

    goto :goto_0
.end method
