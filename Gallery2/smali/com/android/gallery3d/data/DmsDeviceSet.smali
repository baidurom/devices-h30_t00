.class public Lcom/android/gallery3d/data/DmsDeviceSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "DmsDeviceSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/DmsDeviceSet$DmsDeviceLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/gallery3d/data/MediaSet;",
        "Lcom/android/gallery3d/util/FutureListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/gallery3d/data/MediaSet;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AirSharing_DmsDeviceSet"


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mDeviceSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mDmsContext:Lcom/android/gallery3d/data/DmsContext;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/DmsContext;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "dmsContext"

    .prologue
    .line 38
    invoke-static {}, Lcom/android/gallery3d/data/DmsDeviceSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    .line 39
    iput-object p2, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 40
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    const-string v1, "dms://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 41
    iput-object p3, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    .line 42
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mName:Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/DmsDeviceSet;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/DmsDeviceSet;)Lcom/android/gallery3d/data/DmsContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mDmsContext:Lcom/android/gallery3d/data/DmsContext;

    return-object v0
.end method

.method public static getDeviceName(Lcom/android/gallery3d/data/DmsContext;I)Ljava/lang/String;
    .locals 3
    .parameter "dmsContext"
    .parameter "deviceId"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/gallery3d/data/DmsContext;->getDmsClient()Lcom/android/gallery3d/data/DmsClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/data/DmsClient;->getDevice(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    move-result-object v0

    .line 74
    .local v0, device:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    if-nez v0, :cond_0

    .line 75
    const-string v1, ""

    .line 77
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;->getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFutureDone(Lcom/android/gallery3d/util/Future;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mLoadTask:Lcom/android/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    .line 132
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mIsLoading:Z

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/data/DmsDeviceSet$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/data/DmsDeviceSet$1;-><init>(Lcom/android/gallery3d/data/DmsDeviceSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload()J
    .locals 5

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 104
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mIsLoading:Z

    .line 105
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/data/DmsDeviceSet$DmsDeviceLoader;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/data/DmsDeviceSet$DmsDeviceLoader;-><init>(Lcom/android/gallery3d/data/DmsDeviceSet;Lcom/android/gallery3d/data/DmsDeviceSet$1;)V

    invoke-virtual {v2, v3, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 108
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    .line 109
    const-string v2, "AirSharing_DmsDeviceSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reload() mDeviceSet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 111
    iget-object v2, p0, Lcom/android/gallery3d/data/DmsDeviceSet;->mDeviceSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 112
    .local v0, device:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    .end local v0           #device:Lcom/android/gallery3d/data/MediaSet;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 114
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/data/DmsDeviceSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 116
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v2
.end method
