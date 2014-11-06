.class public Lcom/android/gallery3d/data/ClusterAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;,
        Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/gallery3d/data/MediaSet;",
        "Lcom/android/gallery3d/data/ContentListener;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClusterAlbumSet"


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field private mClusters:Lcom/android/gallery3d/data/Clusters;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFirstReloadDone:Z

.field private mFuture:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mKind:I

.field private mLocationClustering:Lcom/android/gallery3d/data/LocationClustering;

.field private mMyLocationInfoListener:Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;

.field private mNetworkChangeReload:Z

.field private mNetworkConnnect:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUseCluster:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 4
    .parameter "path"
    .parameter "application"
    .parameter "baseSet"
    .parameter "kind"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 57
    iput-boolean v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mIsLoading:Z

    .line 58
    iput-boolean v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkConnnect:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkChangeReload:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    .line 130
    iput-object p2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 131
    iput-object p3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 132
    iput p4, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mHandler:Landroid/os/Handler;

    .line 137
    iget v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    packed-switch v0, :pswitch_data_0

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mClusters:Lcom/android/gallery3d/data/Clusters;

    .line 150
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mClusters:Lcom/android/gallery3d/data/Clusters;

    new-instance v1, Lcom/android/gallery3d/data/ClusterAlbumSet$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/data/ClusterAlbumSet$1;-><init>(Lcom/android/gallery3d/data/ClusterAlbumSet;)V

    invoke-interface {v0, v1}, Lcom/android/gallery3d/data/Clusters;->setClusterListener(Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;)V

    .line 181
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    if-ne v0, v3, :cond_2

    .line 182
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkConnnect:Z

    .line 186
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFilter:Landroid/content/IntentFilter;

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbumSet$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/ClusterAlbumSet$2;-><init>(Lcom/android/gallery3d/data/ClusterAlbumSet;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    if-nez v0, :cond_2

    .line 208
    new-instance v0, Lcom/android/gallery3d/data/LocationClustering;

    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/data/LocationClustering;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mLocationClustering:Lcom/android/gallery3d/data/LocationClustering;

    .line 209
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;

    invoke-direct {v0, p0, p0}, Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;-><init>(Lcom/android/gallery3d/data/ClusterAlbumSet;Lcom/android/gallery3d/data/ClusterAlbumSet;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mMyLocationInfoListener:Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mLocationClustering:Lcom/android/gallery3d/data/LocationClustering;

    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mMyLocationInfoListener:Lcom/android/gallery3d/data/ClusterAlbumSet$MyLocationInfoListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/LocationClustering;->addLocationInfoListener(Lcom/android/gallery3d/data/LocationClustering$LocationInfoListener;)V

    .line 214
    :cond_2
    invoke-virtual {p3, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 215
    return-void

    .line 139
    :pswitch_0
    new-instance v0, Lcom/android/gallery3d/data/TimeClusters;

    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-direct {v0, p2, p0, v1, p1}, Lcom/android/gallery3d/data/TimeClusters;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/ClusterAlbumSet;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mClusters:Lcom/android/gallery3d/data/Clusters;

    .line 140
    iput-boolean v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    goto :goto_0

    .line 143
    :pswitch_1
    new-instance v0, Lcom/android/gallery3d/data/LocationClusters;

    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-direct {v0, p2, p0, v1, p1}, Lcom/android/gallery3d/data/LocationClusters;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/ClusterAlbumSet;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mClusters:Lcom/android/gallery3d/data/Clusters;

    .line 144
    iput-boolean v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    goto/16 :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/ClusterAlbumSet;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/ClusterAlbumSet;)Lcom/android/gallery3d/data/LocationClustering;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mLocationClustering:Lcom/android/gallery3d/data/LocationClustering;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/ClusterAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/data/ClusterAlbumSet;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/data/ClusterAlbumSet;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/data/ClusterAlbumSet;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/data/ClusterAlbumSet;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkConnnect:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/data/ClusterAlbumSet;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkConnnect:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/gallery3d/data/ClusterAlbumSet;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkChangeReload:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/data/ClusterAlbumSet;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContentsInternal()V

    return-void
.end method

.method private faceClusterAlbumSort()V
    .locals 5

    .prologue
    .line 604
    iget-object v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0397

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, unNamed:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, unTagged:Ljava/lang/String;
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;-><init>(Lcom/android/gallery3d/data/ClusterAlbumSet;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    .local v0, faceComparator:Lcom/android/gallery3d/data/ClusterAlbumSet$FaceComparator;
    sget-object v4, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 609
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 610
    monitor-exit v4

    .line 612
    return-void

    .line 610
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getName(I)Ljava/lang/String;
    .locals 3
    .parameter "personId"

    .prologue
    .line 464
    if-lez p1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/data/PersonManage;->getInstance(Landroid/content/ContentResolver;)Lcom/android/gallery3d/data/PersonManage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/PersonManage;->getPersonName(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0397

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 472
    :cond_0
    :goto_0
    return-object v0

    .line 470
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0
.end method

.method private processAddReq(Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;)V
    .locals 10
    .parameter "req"

    .prologue
    .line 476
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 477
    .local v3, dataManager:Lcom/android/gallery3d/data/DataManager;
    sget-object v7, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iget v8, p1, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;->mImageId:I

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 478
    .local v6, imagePath:Lcom/android/gallery3d/data/Path;
    iget-object v7, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget v8, p1, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;->mNewPersonId:I

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 479
    .local v2, childPath:Lcom/android/gallery3d/data/Path;
    const/4 v4, 0x0

    .line 480
    .local v4, findAlbum:Z
    const-string v7, "ClusterAlbumSet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processAddReq imagePath:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ;childPath:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 482
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 483
    .local v0, album:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbum;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 484
    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbum;->addDataVersion()V

    .line 485
    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 486
    .local v1, albumData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 487
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_0
    const/4 v4, 0x1

    .line 481
    .end local v1           #albumData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 492
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    :cond_2
    if-nez v4, :cond_4

    .line 493
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 495
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    if-nez v0, :cond_3

    .line 496
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-direct {v0, v2, v3, p0}, Lcom/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V

    .line 498
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 499
    .restart local v1       #albumData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 500
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    iget v7, p1, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;->mNewPersonId:I

    invoke-direct {p0, v7}, Lcom/android/gallery3d/data/ClusterAlbumSet;->getName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    .line 502
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->faceClusterAlbumSort()V

    .line 505
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    .end local v1           #albumData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_4
    return-void
.end method

.method private processDeleteReq(Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;)V
    .locals 9
    .parameter "req"

    .prologue
    .line 508
    sget-object v6, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iget v7, p1, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;->mImageId:I

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 509
    .local v4, imagePath:Lcom/android/gallery3d/data/Path;
    iget-object v6, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget v7, p1, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;->mOldPersonId:I

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 510
    .local v2, childPath:Lcom/android/gallery3d/data/Path;
    const-string v6, "ClusterAlbumSet"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processDeleteReq imagePath:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ;childPath:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 512
    iget-object v6, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 513
    .local v0, album:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbum;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 514
    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 515
    .local v1, albumData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 516
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 517
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 518
    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbum;->addDataVersion()V

    .line 519
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 520
    iget-object v6, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 515
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 511
    .end local v1           #albumData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v5           #j:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 526
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    :cond_2
    return-void
.end method

.method private processFaceReq(Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;)V
    .locals 2
    .parameter "req"

    .prologue
    .line 572
    sget-object v1, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 573
    :try_start_0
    iget v0, p1, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 590
    :goto_0
    monitor-exit v1

    .line 592
    return-void

    .line 575
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/ClusterAlbumSet;->processAddReq(Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;)V

    goto :goto_0

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 578
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/ClusterAlbumSet;->processAddReq(Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;)V

    .line 579
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/ClusterAlbumSet;->processDeleteReq(Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;)V

    goto :goto_0

    .line 582
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/ClusterAlbumSet;->processDeleteReq(Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;)V

    goto :goto_0

    .line 585
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/ClusterAlbumSet;->processMergeReq(Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processMergeReq(Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;)V
    .locals 14
    .parameter "req"

    .prologue
    .line 529
    iget-object v11, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget v12, p1, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;->mOldPersonId:I

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v8

    .line 530
    .local v8, oldChildPath:Lcom/android/gallery3d/data/Path;
    iget-object v11, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    iget v12, p1, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;->mNewPersonId:I

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    .line 531
    .local v4, newChildPath:Lcom/android/gallery3d/data/Path;
    const-string v11, "ClusterAlbumSet"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processMergeReq oldChildPath:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ;newChildPath:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v9, -0x1

    .line 533
    .local v9, oldIndex:I
    const/4 v5, -0x1

    .line 534
    .local v5, newIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_2

    .line 535
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 536
    .local v0, album:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbum;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 537
    move v9, v2

    .line 539
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbum;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 540
    move v5, v2

    .line 534
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    :cond_2
    const/4 v11, -0x1

    if-eq v11, v9, :cond_6

    .line 544
    const/4 v11, -0x1

    if-eq v11, v5, :cond_4

    .line 545
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 546
    .local v3, newAlbum:Lcom/android/gallery3d/data/ClusterAlbum;
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 547
    .local v7, oldAlbum:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-virtual {v7}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v10

    .line 548
    .local v10, oldPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v3}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 549
    .local v6, newPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_6

    .line 550
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 551
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 555
    .end local v3           #newAlbum:Lcom/android/gallery3d/data/ClusterAlbum;
    .end local v6           #newPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v7           #oldAlbum:Lcom/android/gallery3d/data/ClusterAlbum;
    .end local v10           #oldPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_4
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 556
    .restart local v7       #oldAlbum:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-virtual {v7}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v10

    .line 557
    .restart local v10       #oldPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v11}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 558
    .local v1, dataManager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 559
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    if-nez v0, :cond_5

    .line 560
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-direct {v0, v4, v1, p0}, Lcom/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V

    .line 562
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    :cond_5
    invoke-virtual {v0, v10}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 563
    iget v11, p1, Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;->mNewPersonId:I

    invoke-direct {p0, v11}, Lcom/android/gallery3d/data/ClusterAlbumSet;->getName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    .line 564
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->faceClusterAlbumSort()V

    .line 568
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    .end local v1           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v7           #oldAlbum:Lcom/android/gallery3d/data/ClusterAlbum;
    .end local v10           #oldPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_6
    return-void
.end method

.method private updateClusterName()V
    .locals 5

    .prologue
    .line 647
    iget v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 649
    sget-object v4, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 650
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 651
    iget-object v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 652
    .local v0, album:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbum;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 653
    .local v2, personId:I
    invoke-direct {p0, v2}, Lcom/android/gallery3d/data/ClusterAlbumSet;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    .end local v2           #personId:I
    :cond_0
    monitor-exit v4

    .line 658
    .end local v1           #i:I
    :cond_1
    return-void

    .line 655
    .restart local v1       #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateClusters()V
    .locals 14

    .prologue
    .line 288
    iget-boolean v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    if-eqz v11, :cond_3

    .line 289
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mClusters:Lcom/android/gallery3d/data/Clusters;

    if-nez v11, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFuture:Lcom/android/gallery3d/util/Future;

    if-eqz v11, :cond_2

    .line 292
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFuture:Lcom/android/gallery3d/util/Future;

    invoke-interface {v11}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 296
    :cond_2
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mClusters:Lcom/android/gallery3d/data/Clusters;

    invoke-interface {v11}, Lcom/android/gallery3d/data/Clusters;->reload()Lcom/android/gallery3d/util/Future;

    move-result-object v11

    iput-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFuture:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 300
    :cond_3
    iget v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 301
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mLocationClustering:Lcom/android/gallery3d/data/LocationClustering;

    iget-object v12, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/data/LocationClustering;->run(Lcom/android/gallery3d/data/MediaSet;)V

    .line 302
    :goto_1
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mLocationClustering:Lcom/android/gallery3d/data/LocationClustering;

    invoke-virtual {v11}, Lcom/android/gallery3d/data/LocationClustering;->isLoading()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 304
    const-wide/16 v11, 0x14

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 305
    :catch_0
    move-exception v11

    goto :goto_1

    .line 311
    :cond_4
    sget-object v12, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v12

    .line 312
    :try_start_1
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 313
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v11}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    .line 317
    .local v4, context:Landroid/content/Context;
    iget v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    packed-switch v11, :pswitch_data_0

    .line 331
    :pswitch_0
    new-instance v3, Lcom/android/gallery3d/data/SizeClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/SizeClustering;-><init>(Landroid/content/Context;)V

    .line 335
    .local v3, clustering:Lcom/android/gallery3d/data/Clustering;
    :goto_2
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3, v11}, Lcom/android/gallery3d/data/Clustering;->run(Lcom/android/gallery3d/data/MediaSet;)V

    .line 336
    invoke-virtual {v3}, Lcom/android/gallery3d/data/Clustering;->getNumberOfClusters()I

    move-result v9

    .line 337
    .local v9, n:I
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v11}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    .line 338
    .local v5, dataManager:Lcom/android/gallery3d/data/DataManager;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    if-ge v6, v9, :cond_c

    .line 340
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getClusterName(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, childName:Ljava/lang/String;
    iget v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    .line 342
    iget-object v11, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 361
    .local v2, childPath:Lcom/android/gallery3d/data/Path;
    :goto_4
    sget-object v12, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v12

    .line 362
    :try_start_2
    invoke-virtual {v5, v2}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 363
    .local v0, album:Lcom/android/gallery3d/data/ClusterAlbum;
    if-nez v0, :cond_5

    .line 364
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-direct {v0, v2, v5, p0}, Lcom/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V

    .line 366
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    :cond_5
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getCluster(I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 367
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v3, v6}, Lcom/android/gallery3d/data/Clustering;->getClusterCover(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/gallery3d/data/ClusterAlbum;->setCoverMediaItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 369
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_6
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 338
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 313
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    .end local v1           #childName:Ljava/lang/String;
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v6           #i:I
    .end local v9           #n:I
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 319
    .restart local v4       #context:Landroid/content/Context;
    :pswitch_1
    new-instance v3, Lcom/android/gallery3d/data/TimeClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/TimeClustering;-><init>(Landroid/content/Context;)V

    .line 320
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_2

    .line 322
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_2
    new-instance v3, Lcom/android/gallery3d/data/LocationClustering;

    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v3, v4, v11}, Lcom/android/gallery3d/data/LocationClustering;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/GalleryApp;)V

    .line 323
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_2

    .line 325
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_3
    new-instance v3, Lcom/android/gallery3d/data/TagClustering;

    invoke-direct {v3, v4}, Lcom/android/gallery3d/data/TagClustering;-><init>(Landroid/content/Context;)V

    .line 326
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_2

    .line 328
    .end local v3           #clustering:Lcom/android/gallery3d/data/Clustering;
    :pswitch_4
    new-instance v3, Lcom/android/gallery3d/data/HwFaceClustering;

    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v11}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/android/gallery3d/data/HwFaceClustering;-><init>(Landroid/content/ContentResolver;)V

    .line 329
    .restart local v3       #clustering:Lcom/android/gallery3d/data/Clustering;
    goto :goto_2

    .line 343
    .restart local v1       #childName:Ljava/lang/String;
    .restart local v5       #dataManager:Lcom/android/gallery3d/data/DataManager;
    .restart local v6       #i:I
    .restart local v9       #n:I
    :cond_7
    iget v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_8

    move-object v11, v3

    .line 344
    check-cast v11, Lcom/android/gallery3d/data/SizeClustering;

    invoke-virtual {v11, v6}, Lcom/android/gallery3d/data/SizeClustering;->getMinSize(I)J

    move-result-wide v7

    .line 345
    .local v7, minSize:J
    iget-object v11, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v11, v7, v8}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 346
    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    goto :goto_4

    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v7           #minSize:J
    :cond_8
    iget v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_9

    move-object v11, v3

    .line 347
    check-cast v11, Lcom/android/gallery3d/data/HwFaceClustering;

    invoke-virtual {v11, v6}, Lcom/android/gallery3d/data/HwFaceClustering;->getClusterPersonId(I)I

    move-result v10

    .line 348
    .local v10, personId:I
    iget-object v11, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v11, v10}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 349
    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    invoke-direct {p0, v10}, Lcom/android/gallery3d/data/ClusterAlbumSet;->getName(I)Ljava/lang/String;

    move-result-object v1

    .line 351
    goto :goto_4

    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v10           #personId:I
    :cond_9
    iget v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    if-nez v11, :cond_a

    .line 352
    iget-object v11, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v11, v1}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    goto/16 :goto_4

    .line 353
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    :cond_a
    iget v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    .line 354
    iget-object v11, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    const/16 v12, 0x2c

    const/16 v13, 0x20

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    goto/16 :goto_4

    .line 357
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    :cond_b
    iget-object v11, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v11, v6}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    goto/16 :goto_4

    .line 370
    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 372
    .end local v1           #childName:Ljava/lang/String;
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    :cond_c
    iget v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->faceClusterAlbumSort()V

    goto/16 :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateClustersContents()V
    .locals 2

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/data/ClusterAlbumSet$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/data/ClusterAlbumSet$3;-><init>(Lcom/android/gallery3d/data/ClusterAlbumSet;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContentsInternal()V

    goto :goto_0
.end method

.method private updateClustersContentsInternal()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 395
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 396
    .local v0, existing:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    new-instance v10, Lcom/android/gallery3d/data/ClusterAlbumSet$4;

    invoke-direct {v10, p0, v0}, Lcom/android/gallery3d/data/ClusterAlbumSet$4;-><init>(Lcom/android/gallery3d/data/ClusterAlbumSet;Ljava/util/HashSet;)V

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 404
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 408
    .local v8, removedItems:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    sget-object v10, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v10

    .line 409
    :try_start_0
    iget-boolean v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mClusters:Lcom/android/gallery3d/data/Clusters;

    invoke-interface {v9}, Lcom/android/gallery3d/data/Clusters;->size()I

    move-result v4

    .line 413
    .local v4, n:I
    :goto_0
    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_9

    .line 414
    iget-boolean v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mClusters:Lcom/android/gallery3d/data/Clusters;

    invoke-interface {v9, v1}, Lcom/android/gallery3d/data/Clusters;->getMediaItems(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 415
    .local v6, oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v5, newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 417
    .local v3, m:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-ge v2, v3, :cond_5

    .line 418
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/Path;

    .line 420
    .local v7, p:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 421
    :cond_0
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 417
    :cond_1
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 409
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #m:I
    .end local v4           #n:I
    .end local v5           #newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v6           #oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v7           #p:Lcom/android/gallery3d/data/Path;
    :cond_2
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    .line 414
    .restart local v1       #i:I
    .restart local v4       #n:I
    :cond_3
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v9}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_2

    .line 429
    .restart local v2       #j:I
    .restart local v3       #m:I
    .restart local v5       #newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .restart local v6       #oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .restart local v7       #p:Lcom/android/gallery3d/data/Path;
    :cond_4
    iget-boolean v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    if-nez v9, :cond_1

    iget v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    if-ne v9, v12, :cond_1

    .line 430
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/ClusterAlbum;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/gallery3d/data/ClusterAlbum;->setCoverMediaItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 431
    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mLocationClustering:Lcom/android/gallery3d/data/LocationClustering;

    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v9}, Lcom/android/gallery3d/data/ClusterAlbum;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9, v7}, Lcom/android/gallery3d/data/LocationClustering;->deletePath(Ljava/lang/String;Lcom/android/gallery3d/data/Path;)V

    goto :goto_4

    .line 449
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #m:I
    .end local v4           #n:I
    .end local v5           #newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v6           #oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v7           #p:Lcom/android/gallery3d/data/Path;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 436
    .restart local v1       #i:I
    .restart local v2       #j:I
    .restart local v3       #m:I
    .restart local v4       #n:I
    .restart local v5       #newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .restart local v6       #oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_5
    :try_start_1
    iget-boolean v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    if-eqz v9, :cond_7

    .line 437
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mClusters:Lcom/android/gallery3d/data/Clusters;

    invoke-interface {v9, v1}, Lcom/android/gallery3d/data/Clusters;->get(I)Lcom/android/gallery3d/data/ClusterAlbum;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 441
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 442
    iget-boolean v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    if-eqz v9, :cond_8

    .line 443
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mClusters:Lcom/android/gallery3d/data/Clusters;

    invoke-interface {v9, v1}, Lcom/android/gallery3d/data/Clusters;->remove(I)V

    .line 413
    :cond_6
    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 439
    :cond_7
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v9, v5}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    goto :goto_5

    .line 445
    :cond_8
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 449
    .end local v2           #j:I
    .end local v3           #m:I
    .end local v5           #newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v6           #oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_9
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lt v9, v12, :cond_a

    .line 453
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    .line 456
    :cond_a
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 459
    return-void
.end method

.method private updateFaceClusters()V
    .locals 3

    .prologue
    .line 595
    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess;->getFaceReqNum()I

    move-result v2

    .line 596
    .local v2, reqNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 597
    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess;->removeFaceReq()Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;

    move-result-object v1

    .line 598
    .local v1, req:Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
    if-nez v1, :cond_1

    .line 601
    .end local v1           #req:Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
    :cond_0
    return-void

    .line 599
    .restart local v1       #req:Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/gallery3d/data/ClusterAlbumSet;->processFaceReq(Lcom/android/gallery3d/data/FaceInfoProcess$ClusterReq;)V

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 2
    .parameter "index"

    .prologue
    .line 220
    sget-object v1, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mClusters:Lcom/android/gallery3d/data/Clusters;

    invoke-interface {v0}, Lcom/android/gallery3d/data/Clusters;->size()I

    move-result v0

    :goto_0
    if-lt p1, v0, :cond_1

    .line 223
    const/4 v0, 0x0

    monitor-exit v1

    .line 225
    :goto_1
    return-object v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 225
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mClusters:Lcom/android/gallery3d/data/Clusters;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/data/Clusters;->get(I)Lcom/android/gallery3d/data/ClusterAlbum;

    move-result-object v0

    :goto_2
    monitor-exit v1

    goto :goto_1

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 225
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mClusters:Lcom/android/gallery3d/data/Clusters;

    invoke-interface {v0}, Lcom/android/gallery3d/data/Clusters;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mIsLoading:Z

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->notifyContentChanged()V

    .line 284
    return-void
.end method

.method public declared-synchronized onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/lang/Void;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/data/ClusterAlbumSet$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/data/ClusterAlbumSet$5;-><init>(Lcom/android/gallery3d/data/ClusterAlbumSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    monitor-exit p0

    return-void

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 660
    iget v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 663
    :cond_0
    return-void
.end method

.method public reload()J
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 245
    iput-boolean v4, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mIsLoading:Z

    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkChangeReload:Z

    if-eqz v0, :cond_2

    .line 247
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkChangeReload:Z

    if-eqz v0, :cond_4

    .line 248
    iput-boolean v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mNetworkChangeReload:Z

    .line 250
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mUseCluster:Z

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mLocationClustering:Lcom/android/gallery3d/data/LocationClustering;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/LocationClustering;->setFirstDivide(Z)V

    .line 253
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    .line 254
    iput-boolean v4, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    .line 261
    :goto_0
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 264
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess;->isFaceInfoChange()Z

    move-result v0

    if-ne v4, v0, :cond_3

    invoke-static {}, Lcom/android/gallery3d/data/FaceInfoProcess;->getReloadFlag()Z

    move-result v0

    if-ne v4, v0, :cond_3

    .line 267
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateFaceClusters()V

    .line 268
    invoke-static {v5}, Lcom/android/gallery3d/data/FaceInfoProcess;->setFaceInfoChage(Z)V

    .line 269
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 271
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClusterName()V

    .line 272
    iput-boolean v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mIsLoading:Z

    .line 273
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0

    .line 255
    :cond_4
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    if-eqz v0, :cond_5

    .line 256
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContents()V

    goto :goto_0

    .line 258
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    .line 259
    iput-boolean v4, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 666
    iget v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 669
    :cond_0
    return-void
.end method
