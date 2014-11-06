.class Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;
.super Ljava/lang/Object;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/LocationClustering$LocationInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/ClusterAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationInfoListener"
.end annotation


# instance fields
.field private mClusterAlbumset:Lcom/android/gallery3d/data/ClusterAlbumSet;

.field final synthetic this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/ClusterAlbumSet;Lcom/android/gallery3d/data/ClusterAlbumSet;)V
    .locals 0
    .parameter
    .parameter "clusterAlbumset"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->mClusterAlbumset:Lcom/android/gallery3d/data/ClusterAlbumSet;

    .line 75
    return-void
.end method

.method private updateAlbumsContent(Z)V
    .locals 10
    .parameter "isUpdateAll"

    .prologue
    .line 93
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mLocationClustering:Lcom/android/gallery3d/data/LocationClustering;
    invoke-static {v7}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$100(Lcom/android/gallery3d/data/ClusterAlbumSet;)Lcom/android/gallery3d/data/LocationClustering;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/LocationClustering;->getNumberOfClusters()I

    move-result v6

    .line 94
    .local v6, size:I
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v7}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$200(Lcom/android/gallery3d/data/ClusterAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 95
    .local v3, dataManager:Lcom/android/gallery3d/data/DataManager;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 97
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mLocationClustering:Lcom/android/gallery3d/data/LocationClustering;
    invoke-static {v7}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$100(Lcom/android/gallery3d/data/ClusterAlbumSet;)Lcom/android/gallery3d/data/LocationClustering;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/gallery3d/data/LocationClustering;->getClusterName(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, childName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    iget-object v7, v7, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    const/16 v8, 0x2c

    const/16 v9, 0x20

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 100
    .local v2, childPath:Lcom/android/gallery3d/data/Path;
    sget-object v8, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 102
    .local v0, album:Lcom/android/gallery3d/data/ClusterAlbum;
    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->mClusterAlbumset:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-direct {v0, v2, v3, v7}, Lcom/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V

    .line 105
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mLocationClustering:Lcom/android/gallery3d/data/LocationClustering;
    invoke-static {v7}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$100(Lcom/android/gallery3d/data/ClusterAlbumSet;)Lcom/android/gallery3d/data/LocationClustering;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/gallery3d/data/LocationClustering;->getClusterCover(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/data/ClusterAlbum;->setCoverMediaItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 106
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    .line 107
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mLocationClustering:Lcom/android/gallery3d/data/LocationClustering;
    invoke-static {v7}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$100(Lcom/android/gallery3d/data/ClusterAlbumSet;)Lcom/android/gallery3d/data/LocationClustering;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/gallery3d/data/LocationClustering;->getCluster(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 108
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$000(Lcom/android/gallery3d/data/ClusterAlbumSet;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 109
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mLocationClustering:Lcom/android/gallery3d/data/LocationClustering;
    invoke-static {v7}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$100(Lcom/android/gallery3d/data/ClusterAlbumSet;)Lcom/android/gallery3d/data/LocationClustering;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/LocationClustering;->getNoLocationString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 110
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$000(Lcom/android/gallery3d/data/ClusterAlbumSet;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    :goto_1
    monitor-exit v8

    .line 95
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 112
    :cond_2
    if-nez p1, :cond_4

    .line 113
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$000(Lcom/android/gallery3d/data/ClusterAlbumSet;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 119
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    .end local v1           #childName:Ljava/lang/String;
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v3           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v5           #i:I
    .end local v6           #size:I
    :catch_0
    move-exception v4

    .line 122
    .local v4, e:Ljava/lang/Exception;
    const-string v7, "ClusterAlbumSet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In onLocationInfoChange Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v4           #e:Ljava/lang/Exception;
    :cond_3
    return-void

    .line 115
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    .restart local v1       #childName:Ljava/lang/String;
    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    .restart local v3       #dataManager:Lcom/android/gallery3d/data/DataManager;
    .restart local v5       #i:I
    .restart local v6       #size:I
    :cond_4
    :try_start_3
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$000(Lcom/android/gallery3d/data/ClusterAlbumSet;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public onLocationInfoChange()V
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->updateAlbumsContent(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-static {}, Lcom/android/gallery3d/data/MediaObject;->nextVersionNumber()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->notifyContentChanged()V

    .line 80
    return-void
.end method

.method public onUpdateAll()V
    .locals 3

    .prologue
    .line 83
    sget-object v1, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    #getter for: Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->access$000(Lcom/android/gallery3d/data/ClusterAlbumSet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->updateAlbumsContent(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-static {}, Lcom/android/gallery3d/data/MediaObject;->nextVersionNumber()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;->this$0:Lcom/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->notifyContentChanged()V

    .line 90
    return-void

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
