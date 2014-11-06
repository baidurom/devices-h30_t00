.class public Lcom/android/gallery3d/data/TimeClusters;
.super Ljava/lang/Object;
.source "TimeClusters.java"

# interfaces
.implements Lcom/android/gallery3d/data/Clusters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/TimeClusters$SmallItemClient;,
        Lcom/android/gallery3d/data/TimeClusters$SmallItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeCluster"

.field private static final mDataComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/TimeClusters$SmallItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field private mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/data/ClusterWorker",
            "<",
            "Lcom/android/gallery3d/data/TimeClusters$SmallItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/android/gallery3d/data/TimeClusters$1;

    invoke-direct {v0}, Lcom/android/gallery3d/data/TimeClusters$1;-><init>()V

    sput-object v0, Lcom/android/gallery3d/data/TimeClusters;->mDataComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/ClusterAlbumSet;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;)V
    .locals 3
    .parameter "application"
    .parameter "parent"
    .parameter "mediaSet"
    .parameter "root"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/gallery3d/data/TimeClusters;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 63
    iput-object p3, p0, Lcom/android/gallery3d/data/TimeClusters;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 64
    new-instance v0, Lcom/android/gallery3d/data/ClusterWorker;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-direct {v0, v1, p2, p4}, Lcom/android/gallery3d/data/ClusterWorker;-><init>(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;

    const-string v1, "TimeCluster"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/ClusterWorker;->setName(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;

    sget-object v1, Lcom/android/gallery3d/data/TimeClusters;->mDataComparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/ClusterWorker;->setItemComparator(Ljava/util/Comparator;)V

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;

    new-instance v1, Lcom/android/gallery3d/data/TimeClusters$SmallItemClient;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/gallery3d/data/TimeClusters$SmallItemClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/ClusterWorker;->setItemProxy(Lcom/android/gallery3d/data/ClusterWorker$Proxy;)V

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterWorker;->start()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/TimeClusters;)Lcom/android/gallery3d/data/ClusterWorker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/TimeClusters;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClusters;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterWorker;->clear()V

    .line 86
    return-void
.end method

.method public get(I)Lcom/android/gallery3d/data/ClusterAlbum;
    .locals 1
    .parameter "index"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/ClusterWorker;->get(I)Lcom/android/gallery3d/data/ClusterAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItems(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/ClusterWorker;->get(I)Lcom/android/gallery3d/data/ClusterAlbum;

    move-result-object v0

    .line 75
    .local v0, ca:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public reload()Lcom/android/gallery3d/util/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClusters;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/data/TimeClusters$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/data/TimeClusters$2;-><init>(Lcom/android/gallery3d/data/TimeClusters;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/ClusterWorker;->remove(I)Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setClusterListener(Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/ClusterWorker;->setClusterListener(Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;)V

    .line 144
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClusters;->mClusterWorker:Lcom/android/gallery3d/data/ClusterWorker;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ClusterWorker;->size()I

    move-result v0

    return v0
.end method
