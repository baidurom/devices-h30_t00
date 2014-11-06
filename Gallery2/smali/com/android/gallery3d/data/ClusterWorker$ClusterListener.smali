.class public interface abstract Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;
.super Ljava/lang/Object;
.source "ClusterWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/ClusterWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClusterListener"
.end annotation


# virtual methods
.method public abstract onClusterChanged(Lcom/android/gallery3d/data/ClusterAlbum;Z)V
.end method

.method public abstract onClusterCreated(Lcom/android/gallery3d/data/ClusterAlbum;)V
.end method

.method public abstract onClusterDone()V
.end method
