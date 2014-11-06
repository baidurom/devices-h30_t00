.class public Lcom/android/gallery3d/data/ClusterWorker;
.super Ljava/lang/Thread;
.source "ClusterWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/ClusterWorker$Proxy;,
        Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Thread;"
    }
.end annotation


# static fields
.field public static final S_FLAG_FIRST:Ljava/lang/String; = "-2"

.field public static final S_FLAG_LAST:Ljava/lang/String; = "-1"

.field private static final TAG:Ljava/lang/String; = "ClusterWorker"


# instance fields
.field private mAlbumComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TP;>;"
        }
    .end annotation
.end field

.field private mAlbumName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlbums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedPathP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            "TP;>;"
        }
    .end annotation
.end field

.field private mClient:Lcom/android/gallery3d/data/ClusterWorker$Proxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/data/ClusterWorker$Proxy",
            "<TP;>;"
        }
    .end annotation
.end field

.field private mClusterThread:Ljava/lang/Thread;

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private volatile mDone:Z

.field private mItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TP;>;"
        }
    .end annotation
.end field

.field private final mItemQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<TP;>;"
        }
    .end annotation
.end field

.field private mKeyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;

.field private mParent:Lcom/android/gallery3d/data/MediaSet;

.field private mPathPComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Lcom/android/gallery3d/data/Path;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "manager"
    .parameter "parent"
    .parameter "root"

    .prologue
    .line 146
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mItemQueue:Ljava/util/ArrayDeque;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumName:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbums:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumPaths:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mCachedPathP:Ljava/util/Map;

    .line 78
    new-instance v0, Lcom/android/gallery3d/data/ClusterWorker$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/ClusterWorker$1;-><init>(Lcom/android/gallery3d/data/ClusterWorker;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mPathPComparator:Ljava/util/Comparator;

    .line 96
    new-instance v0, Lcom/android/gallery3d/data/ClusterWorker$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/ClusterWorker$2;-><init>(Lcom/android/gallery3d/data/ClusterWorker;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mKeyComparator:Ljava/util/Comparator;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mDone:Z

    .line 147
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterWorker;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 148
    iput-object p3, p0, Lcom/android/gallery3d/data/ClusterWorker;->mRoot:Lcom/android/gallery3d/data/Path;

    .line 149
    iput-object p2, p0, Lcom/android/gallery3d/data/ClusterWorker;->mParent:Lcom/android/gallery3d/data/MediaSet;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/ClusterWorker;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mCachedPathP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/ClusterWorker;)Ljava/util/Comparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mItemComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/ClusterWorker;)Ljava/util/Comparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/data/ClusterWorker;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumPaths:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/data/ClusterWorker;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterWorker;->mClusterThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private notifyDone()V
    .locals 10

    .prologue
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    const/4 v8, 0x1

    .line 322
    const-string v7, "ClusterWorker"

    const-string v9, "notify done, will refresh albumset"

    invoke-static {v7, v9}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterWorker;->mListener:Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;

    .line 324
    .local v5, l:Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;
    if-nez v5, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterWorker;->mItemComparator:Ljava/util/Comparator;

    if-eqz v7, :cond_3

    move v1, v8

    .line 328
    .local v1, hasComparator:Z
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mPathPComparator:Ljava/util/Comparator;

    .line 331
    .local v0, c:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/Path;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v7, "ClusterWork state: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 332
    .local v3, info:Ljava/lang/StringBuffer;
    const-string v7, " album count -> "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumName:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 333
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumName:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 334
    .local v4, key:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 335
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumPaths:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 336
    .local v6, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 338
    const-string v7, ", [key="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    const-string v7, ", item count="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 340
    const-string v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 343
    .end local v6           #paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_2
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbums:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-interface {v5, v7, v8}, Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;->onClusterChanged(Lcom/android/gallery3d/data/ClusterAlbum;Z)V

    goto :goto_2

    .line 326
    .end local v0           #c:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/Path;>;"
    .end local v1           #hasComparator:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Ljava/lang/StringBuffer;
    .end local v4           #key:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 345
    .restart local v0       #c:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/Path;>;"
    .restart local v1       #hasComparator:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #info:Ljava/lang/StringBuffer;
    :cond_4
    const-string v7, ", cached PathP count -> "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterWorker;->mCachedPathP:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 346
    const-string v7, "ClusterWorker"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumName:Ljava/util/List;

    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterWorker;->mKeyComparator:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 348
    invoke-interface {v5}, Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;->onClusterDone()V

    .line 350
    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterWorker;->mCachedPathP:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized addItem(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    .local p1, item:Ljava/lang/Object;,"TP;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mItemQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 258
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mItemQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbums:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(I)Lcom/android/gallery3d/data/ClusterAlbum;
    .locals 2
    .parameter "index"

    .prologue
    .line 230
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbums:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/ClusterWorker;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/gallery3d/data/ClusterAlbum;
    .locals 1
    .parameter "key"

    .prologue
    .line 235
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbums:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 222
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt p1, v0, :cond_1

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 240
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumName:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt p1, v1, :cond_1

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 245
    :goto_0
    monitor-exit p0

    return-object v0

    .line 243
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumName:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbums:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 240
    .end local v0           #key:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 12

    .prologue
    .line 160
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    :goto_0
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mItemQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 162
    iget-boolean v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mDone:Z

    if-eqz v9, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterWorker;->notifyDone()V

    .line 164
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 165
    monitor-exit p0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 167
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mItemQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    .line 168
    .local v2, item:Ljava/lang/Object;,"TP;"
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mClient:Lcom/android/gallery3d/data/ClusterWorker$Proxy;

    if-nez v9, :cond_2

    .line 171
    const-string v9, "ClusterWorker"

    const-string v10, "Client for proxy is null !!!"

    invoke-static {v9, v10}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_2
    const/4 v4, 0x0

    .line 175
    .local v4, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mClient:Lcom/android/gallery3d/data/ClusterWorker$Proxy;

    invoke-interface {v9, v2}, Lcom/android/gallery3d/data/ClusterWorker$Proxy;->getClusterKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, key:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mRoot:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v9, v3}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 180
    .local v1, childPath:Lcom/android/gallery3d/data/Path;
    monitor-enter p0

    .line 181
    :try_start_2
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbums:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 182
    .local v0, album:Lcom/android/gallery3d/data/ClusterAlbum;
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumPaths:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 183
    .local v6, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    if-nez v0, :cond_5

    .line 185
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v9, v1}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 186
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    if-nez v0, :cond_3

    .line 187
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterWorker;->mParent:Lcom/android/gallery3d/data/MediaSet;

    invoke-direct {v0, v1, v9, v10}, Lcom/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V

    .line 188
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mClient:Lcom/android/gallery3d/data/ClusterWorker$Proxy;

    invoke-interface {v9, v2}, Lcom/android/gallery3d/data/ClusterWorker$Proxy;->generateCaption(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    .line 191
    :cond_3
    monitor-enter p0

    .line 192
    if-nez v6, :cond_4

    .line 193
    :try_start_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 194
    .end local v6           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .local v7, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :try_start_4
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumPaths:Ljava/util/Map;

    invoke-interface {v9, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v6, v7

    .line 196
    .end local v7           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .restart local v6       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_4
    :try_start_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 198
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbums:Ljava/util/Map;

    invoke-interface {v9, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumName:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 201
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumName:Ljava/util/List;

    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterWorker;->mKeyComparator:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 202
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 203
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mListener:Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;

    if-eqz v9, :cond_5

    .line 204
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mListener:Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;

    invoke-interface {v9, v0}, Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;->onClusterCreated(Lcom/android/gallery3d/data/ClusterAlbum;)V

    .line 207
    :cond_5
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mClient:Lcom/android/gallery3d/data/ClusterWorker$Proxy;

    invoke-interface {v9, v2}, Lcom/android/gallery3d/data/ClusterWorker$Proxy;->getPath(Ljava/lang/Object;)Lcom/android/gallery3d/data/Path;

    move-result-object v5

    .line 208
    .local v5, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 210
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mCachedPathP:Ljava/util/Map;

    invoke-interface {v9, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v9, "ClusterWorker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "zcf add MediaItem->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/gallery3d/data/ClusterWorker;->mClient:Lcom/android/gallery3d/data/ClusterWorker$Proxy;

    invoke-interface {v11, v2}, Lcom/android/gallery3d/data/ClusterWorker$Proxy;->getPath(Ljava/lang/Object;)Lcom/android/gallery3d/data/Path;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 213
    .local v8, size:I
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterWorker;->mListener:Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;

    if-eqz v9, :cond_6

    .line 214
    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterWorker;->mListener:Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;

    rem-int/lit8 v9, v8, 0x64

    if-nez v9, :cond_7

    const/4 v9, 0x1

    :goto_1
    invoke-interface {v10, v0, v9}, Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;->onClusterChanged(Lcom/android/gallery3d/data/ClusterAlbum;Z)V

    .line 215
    :cond_6
    const/4 v2, 0x0

    .line 216
    const/4 v3, 0x0

    .line 217
    goto/16 :goto_0

    .line 183
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    .end local v5           #path:Lcom/android/gallery3d/data/Path;
    .end local v6           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v8           #size:I
    :catchall_1
    move-exception v9

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v9

    .line 202
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    .restart local v6       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :catchall_2
    move-exception v9

    :goto_2
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v9

    .line 214
    .restart local v5       #path:Lcom/android/gallery3d/data/Path;
    .restart local v8       #size:I
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 202
    .end local v5           #path:Lcom/android/gallery3d/data/Path;
    .end local v6           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v8           #size:I
    .restart local v7       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :catchall_3
    move-exception v9

    move-object v6, v7

    .end local v7           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .restart local v6       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    goto :goto_2
.end method

.method public setAlbumCompartor(Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TP;>;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TP;>;"
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumComparator:Ljava/util/Comparator;

    .line 315
    return-void
.end method

.method public setClusterListener(Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 290
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterWorker;->mListener:Lcom/android/gallery3d/data/ClusterWorker$ClusterListener;

    .line 291
    return-void
.end method

.method public declared-synchronized setDone(Z)V
    .locals 1
    .parameter "done"

    .prologue
    .line 285
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/gallery3d/data/ClusterWorker;->mDone:Z

    .line 286
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setItemComparator(Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TP;>;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TP;>;"
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterWorker;->mItemComparator:Ljava/util/Comparator;

    .line 305
    return-void
.end method

.method public setItemProxy(Lcom/android/gallery3d/data/ClusterWorker$Proxy;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/ClusterWorker$Proxy",
            "<TP;>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    .local p1, c:Lcom/android/gallery3d/data/ClusterWorker$Proxy;,"Lcom/android/gallery3d/data/ClusterWorker$Proxy<TP;>;"
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterWorker;->mClient:Lcom/android/gallery3d/data/ClusterWorker$Proxy;

    .line 295
    return-void
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 249
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mAlbumName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public submit(Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 1
    .parameter "mediaSet"
    .parameter "consumer"

    .prologue
    .line 270
    .local p0, this:Lcom/android/gallery3d/data/ClusterWorker;,"Lcom/android/gallery3d/data/ClusterWorker<TP;>;"
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mClusterThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mClusterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 273
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/ClusterWorker$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/gallery3d/data/ClusterWorker$3;-><init>(Lcom/android/gallery3d/data/ClusterWorker;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mClusterThread:Ljava/lang/Thread;

    .line 281
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterWorker;->mClusterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 282
    return-void
.end method
