.class Lcom/android/gallery3d/data/ClusterAlbum$2;
.super Ljava/lang/Object;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/ClusterAlbum;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/ClusterAlbum;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/ClusterAlbum;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbum$2;->this$0:Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 2
    .parameter "index"
    .parameter "item"

    .prologue
    .line 140
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 142
    sget-object v1, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->delete()V

    .line 144
    monitor-exit v1

    .line 147
    :cond_0
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
