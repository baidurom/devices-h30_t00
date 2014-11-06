.class public interface abstract Lcom/android/gallery3d/data/Clusters;
.super Ljava/lang/Object;
.source "Clusters.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(I)Lcom/android/gallery3d/data/ClusterAlbum;
.end method

.method public abstract getMediaItems(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reload()Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract remove(I)V
.end method

.method public abstract setClusterListener(Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;)V
.end method

.method public abstract size()I
.end method
