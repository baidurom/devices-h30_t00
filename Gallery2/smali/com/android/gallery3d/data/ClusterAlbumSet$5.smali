.class Lcom/android/gallery3d/data/ClusterAlbumSet$5;
.super Ljava/lang/Object;
.source "ClusterAlbumSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/ClusterAlbumSet;->onFutureDone(Lcom/android/gallery3d/util/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/ClusterAlbumSet;)V
    .locals 0
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$5;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$5;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->notifyContentChanged()V

    .line 680
    return-void
.end method
