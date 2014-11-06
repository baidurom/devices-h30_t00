.class public final Lcom/android/gallery3d/data/ReloadNotifier;
.super Ljava/lang/Object;
.source "ReloadNotifier.java"


# static fields
.field public static final TYPE_RELOAD_DEFAULT:I = 0x6

.field public static final TYPE_RELOAD_HIDDEN:I = 0x100

.field public static final TYPE_RELOAD_IMAGE:I = 0x2

.field public static final TYPE_RELOAD_PRIVATE:I = 0x200

.field public static final TYPE_RELOAD_VIDEO:I = 0x4


# instance fields
.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mReloadType:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "set"
    .parameter "uri"
    .parameter "application"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/data/ReloadNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/ReloadNotifier;->mReloadType:I

    .line 40
    iput-object p1, p0, Lcom/android/gallery3d/data/ReloadNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 41
    invoke-interface {p3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/android/gallery3d/data/DataManager;->registerReloadNotifier(Landroid/net/Uri;Lcom/android/gallery3d/data/ReloadNotifier;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 3
    .parameter "set"
    .parameter "uris"
    .parameter "application"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/gallery3d/data/ReloadNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/data/ReloadNotifier;->mReloadType:I

    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/data/ReloadNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 46
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 47
    invoke-interface {p3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2, p0}, Lcom/android/gallery3d/data/DataManager;->registerReloadNotifier(Landroid/net/Uri;Lcom/android/gallery3d/data/ReloadNotifier;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public fakeChange()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/ReloadNotifier;->onChange(I)V

    .line 66
    return-void
.end method

.method public declared-synchronized getReloadType()I
    .locals 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/data/ReloadNotifier;->mReloadType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    .line 61
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/gallery3d/data/ReloadNotifier;->mReloadType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDirty()Z
    .locals 3

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ReloadNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
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

.method protected declared-synchronized onChange(I)V
    .locals 3
    .parameter "newType"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/gallery3d/data/ReloadNotifier;->mReloadType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 76
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/data/ReloadNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 74
    iput p1, p0, Lcom/android/gallery3d/data/ReloadNotifier;->mReloadType:I

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/data/ReloadNotifier;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
