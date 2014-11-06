.class Lcom/android/gallery3d/data/ClusterAlbumSet$3;
.super Ljava/lang/Object;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContents()V
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
.field final synthetic this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/ClusterAlbumSet;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$3;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/ClusterAlbumSet$3;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 1
    .parameter "jc"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$3;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #calls: Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContentsInternal()V
    invoke-static {v0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$700(Lcom/android/gallery3d/data/ClusterAlbumSet;)V

    .line 385
    const/4 v0, 0x0

    return-object v0
.end method
