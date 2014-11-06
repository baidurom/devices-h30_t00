.class Lcom/android/gallery3d/data/ClusterAlbumSet$1;
.super Ljava/lang/Object;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/ClusterAlbumSet;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaSet;I)V
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
    .line 151
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$1;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private refreshAlbumSet()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$1;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-static {}, Lcom/android/gallery3d/data/MediaObject;->nextVersionNumber()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$1;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->notifyContentChanged()V

    .line 171
    return-void
.end method


# virtual methods
.method public onClusterChanged(Lcom/android/gallery3d/data/ClusterAlbum;Z)V
    .locals 0
    .parameter "album"
    .parameter "shouldRefresh"

    .prologue
    .line 161
    if-eqz p2, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/android/gallery3d/data/ClusterAlbum;->addDataVersion()V

    .line 163
    invoke-virtual {p1}, Lcom/android/gallery3d/data/ClusterAlbum;->notifyContentChanged()V

    .line 164
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet$1;->refreshAlbumSet()V

    .line 166
    :cond_0
    return-void
.end method

.method public onClusterCreated(Lcom/android/gallery3d/data/ClusterAlbum;)V
    .locals 2
    .parameter "album"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet$1;->refreshAlbumSet()V

    .line 156
    const-string v0, "ClusterAlbumSet"

    const-string v1, "run-time  one cluster created!"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public onClusterDone()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet$1;->refreshAlbumSet()V

    .line 176
    return-void
.end method
