.class public Lcom/android/gallery3d/data/PhotoShareAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "PhotoShareAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;
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
.field public static final PATH_PHOTOSHARE_ALL:Lcom/android/gallery3d/data/Path; = null

.field private static final TAG:Ljava/lang/String; = "PhotoShareAlbumSet"


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

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

.field private mPhotoshareChangeNotifier:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

.field private final mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "/photoshare/all"

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->PATH_PHOTOSHARE_ALL:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/PhotoShareContext;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "photoshareContext"

    .prologue
    .line 35
    invoke-static {}, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 36
    iput-object p2, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mHandler:Landroid/os/Handler;

    .line 38
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d03f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mName:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;

    .line 40
    new-instance v0, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mPhotoshareChangeNotifier:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)Lcom/android/gallery3d/app/GalleryApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)Lcom/android/gallery3d/data/PhotoShareContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mPhotoshareContext:Lcom/android/gallery3d/data/PhotoShareContext;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mIsLoading:Z
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
    .line 114
    .local p1, future:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSet;>;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 124
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mIsLoading:Z

    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/gallery3d/data/PhotoShareAlbumSet$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/data/PhotoShareAlbumSet$1;-><init>(Lcom/android/gallery3d/data/PhotoShareAlbumSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload()J
    .locals 5

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mPhotoshareChangeNotifier:Lcom/android/gallery3d/data/PhotoShareChangeNotifier;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/PhotoShareChangeNotifier;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 130
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mIsLoading:Z

    .line 131
    iget-object v2, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/data/PhotoShareAlbumSet$AlbumsLoader;-><init>(Lcom/android/gallery3d/data/PhotoShareAlbumSet;Lcom/android/gallery3d/data/PhotoShareAlbumSet$1;)V

    invoke-virtual {v2, v3, p0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mLoadTask:Lcom/android/gallery3d/util/Future;

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 135
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 136
    iget-object v2, p0, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->mAlbums:Ljava/util/ArrayList;

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

    .line 137
    .local v0, album:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 128
    .end local v0           #album:Lcom/android/gallery3d/data/MediaSet;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 139
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/gallery3d/data/PhotoShareAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 141
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v2
.end method
