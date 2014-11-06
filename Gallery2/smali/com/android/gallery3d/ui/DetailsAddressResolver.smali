.class public Lcom/android/gallery3d/ui/DetailsAddressResolver;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;,
        Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;,
        Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;,
        Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;,
        Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;
    }
.end annotation


# instance fields
.field private final mContext:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private final mHandler:Landroid/os/Handler;

.field private final mQueryFromCacheStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

.field private final mQueryFromNetworkStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

.field private mResolveAddressFromCacheTask:Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;

.field private mResolveAddressFromNetworkTask:Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;-><init>(Lcom/android/gallery3d/ui/DetailsAddressResolver$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mQueryFromCacheStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    .line 93
    new-instance v0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;-><init>(Lcom/android/gallery3d/ui/DetailsAddressResolver$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mQueryFromNetworkStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mContext:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/DetailsAddressResolver;Landroid/location/Address;Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->updateLocation(Landroid/location/Address;Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/DetailsAddressResolver;)Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mQueryFromCacheStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/DetailsAddressResolver;Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddressFromCache(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/DetailsAddressResolver;Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->queryFromNetWork(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/DetailsAddressResolver;)Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mQueryFromNetworkStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/DetailsAddressResolver;Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddressFromNetwork(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V

    return-void
.end method

.method private declared-synchronized queryFromCache(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mQueryFromCacheStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->push(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized queryFromNetWork(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mQueryFromNetworkStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->push(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resolveAddressDone(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;Landroid/location/Address;)V
    .locals 2
    .parameter "address"
    .parameter "resolvedAddress"

    .prologue
    .line 189
    iget-boolean v0, p1, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mCancel:Z

    if-eqz v0, :cond_1

    .line 190
    iget-boolean v0, p1, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mNeedResponseForUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mListener:Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;->onAddressAvailable(Ljava/lang/String;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-boolean v0, p1, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mNeedResponseForUI:Z

    if-eqz v0, :cond_2

    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->updateLocation(Landroid/location/Address;Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;Z)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/ui/DetailsAddressResolver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$1;-><init>(Lcom/android/gallery3d/ui/DetailsAddressResolver;Landroid/location/Address;Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private resolveAddressFromCache(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)Z
    .locals 8
    .parameter "address"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    new-instance v0, Lcom/android/gallery3d/util/ReverseGeocoder;

    iget-object v4, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mContext:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, geocoder:Lcom/android/gallery3d/util/ReverseGeocoder;
    iget-object v4, p1, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mLatlng:[D

    aget-wide v4, v4, v2

    iget-object v6, p1, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mLatlng:[D

    aget-wide v6, v6, v3

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddressFromCache(DD)Landroid/location/Address;

    move-result-object v1

    .line 170
    .local v1, resolvedAddress:Landroid/location/Address;
    if-nez v1, :cond_0

    .line 173
    :goto_0
    return v2

    .line 172
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddressDone(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;Landroid/location/Address;)V

    move v2, v3

    .line 173
    goto :goto_0
.end method

.method private resolveAddressFromNetwork(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V
    .locals 7
    .parameter "address"

    .prologue
    .line 177
    const/4 v6, 0x0

    .line 179
    .local v6, resolvedAddress:Landroid/location/Address;
    :try_start_0
    iget-boolean v1, p1, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mCancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 184
    invoke-direct {p0, p1, v6}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddressDone(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;Landroid/location/Address;)V

    .line 186
    :goto_0
    return-void

    .line 181
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/gallery3d/util/ReverseGeocoder;

    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mContext:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, geocoder:Lcom/android/gallery3d/util/ReverseGeocoder;
    iget-object v1, p1, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mLatlng:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    iget-object v3, p1, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mLatlng:[D

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 184
    invoke-direct {p0, p1, v6}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddressDone(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;Landroid/location/Address;)V

    goto :goto_0

    .end local v0           #geocoder:Lcom/android/gallery3d/util/ReverseGeocoder;
    :catchall_0
    move-exception v1

    invoke-direct {p0, p1, v6}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddressDone(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;Landroid/location/Address;)V

    throw v1
.end method

.method private resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    new-instance v0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;-><init>(Lcom/android/gallery3d/ui/DetailsAddressResolver;Lcom/android/gallery3d/ui/DetailsAddressResolver$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mResolveAddressFromCacheTask:Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;

    .line 51
    new-instance v0, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;-><init>(Lcom/android/gallery3d/ui/DetailsAddressResolver;Lcom/android/gallery3d/ui/DetailsAddressResolver$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mResolveAddressFromNetworkTask:Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mResolveAddressFromCacheTask:Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;->start()V

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mResolveAddressFromNetworkTask:Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;->start()V

    .line 54
    return-void
.end method

.method private updateLocation(Landroid/location/Address;Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;Z)V
    .locals 7
    .parameter "resolvedAddress"
    .parameter "address"
    .parameter "isAlwaysCallBack"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 261
    if-eqz p1, :cond_6

    .line 263
    const/4 v2, 0x0

    .line 264
    .local v2, parts:[Ljava/lang/String;
    iget-boolean v4, p2, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mResolveAllInfo:Z

    if-eqz v4, :cond_1

    .line 265
    const/16 v4, 0x9

    new-array v2, v4, [Ljava/lang/String;

    .end local v2           #parts:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x5

    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x6

    invoke-virtual {p1}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x7

    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/16 v4, 0x8

    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 281
    .restart local v2       #parts:[Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v0, addressText:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 283
    aget-object v4, v2, v1

    if-eqz v4, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 282
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    .end local v0           #addressText:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    :cond_1
    new-array v2, v6, [Ljava/lang/String;

    .end local v2           #parts:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .restart local v2       #parts:[Ljava/lang/String;
    goto :goto_0

    .line 284
    .restart local v0       #addressText:Ljava/lang/StringBuilder;
    .restart local v1       #i:I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 285
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_3
    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 290
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, text:Ljava/lang/String;
    iget-object v4, p2, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mListener:Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    invoke-interface {v4, v3}, Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;->onAddressAvailable(Ljava/lang/String;)V

    .line 296
    .end local v0           #addressText:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #parts:[Ljava/lang/String;
    .end local v3           #text:Ljava/lang/String;
    :cond_5
    :goto_3
    return-void

    .line 293
    :cond_6
    if-eqz p3, :cond_5

    .line 294
    iget-object v4, p2, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;->mListener:Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;->onAddressAvailable(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public cancel(Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 299
    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mQueryFromCacheStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->cancel(Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)V

    .line 301
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mQueryFromNetworkStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->cancel(Lcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)V

    .line 302
    monitor-exit p0

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "NN_NAKED_NOTIFY"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mQueryFromCacheStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->cancelAll()V

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mQueryFromNetworkStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->cancelAll()V

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mQueryFromCacheStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->clean()V

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mQueryFromNetworkStack:Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddressStack;->clean()V

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mResolveAddressFromCacheTask:Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mResolveAddressFromCacheTask:Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;->terminate()V

    .line 67
    iput-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mResolveAddressFromCacheTask:Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mResolveAddressFromNetworkTask:Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mResolveAddressFromNetworkTask:Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;->terminate()V

    .line 71
    iput-object v1, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mResolveAddressFromNetworkTask:Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromNetworkTask;

    .line 74
    :cond_1
    monitor-enter p0

    .line 75
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 76
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    return-void

    .line 63
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 76
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public resolveAddress([DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;Z)Ljava/lang/String;
    .locals 1
    .parameter "latlng"
    .parameter "listener"
    .parameter "resolveAllInfo"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddress([DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveAddress([DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;ZZ)Ljava/lang/String;
    .locals 5
    .parameter "latlng"
    .parameter "listener"
    .parameter "resolveAllInfo"
    .parameter "needResponseForUI"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsAddressResolver;->mResolveAddressFromCacheTask:Lcom/android/gallery3d/ui/DetailsAddressResolver$ResolveAddressFromCacheTask;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->resume()V

    .line 86
    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;-><init>([DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;ZZ)V

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->queryFromCache(Lcom/android/gallery3d/ui/DetailsAddressResolver$GalleryAddress;)V

    .line 87
    const-string v0, "(%f,%f)"

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    const/4 v3, 0x1

    aget-wide v3, p1, v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
