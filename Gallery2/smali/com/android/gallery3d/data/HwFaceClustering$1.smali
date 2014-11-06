.class Lcom/android/gallery3d/data/HwFaceClustering$1;
.super Ljava/lang/Object;
.source "HwFaceClustering.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/HwFaceClustering;->run(Lcom/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/HwFaceClustering;

.field final synthetic val$existing:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/HwFaceClustering;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/gallery3d/data/HwFaceClustering$1;->this$0:Lcom/android/gallery3d/data/HwFaceClustering;

    iput-object p2, p0, Lcom/android/gallery3d/data/HwFaceClustering$1;->val$existing:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 3
    .parameter "index"
    .parameter "item"

    .prologue
    .line 61
    new-instance v0, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;

    invoke-direct {v0}, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;-><init>()V

    .line 62
    .local v0, s:Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;->path:Lcom/android/gallery3d/data/Path;

    .line 63
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/gallery3d/data/HwFaceClustering$SmallItem;->dateInMs:J

    .line 64
    iget-object v1, p0, Lcom/android/gallery3d/data/HwFaceClustering$1;->val$existing:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method
