.class public Lcom/android/gallery3d/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/android/gallery3d/app/StitchingChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/DataManager$1;,
        Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;,
        Lcom/android/gallery3d/data/DataManager$NotifyBroker;,
        Lcom/android/gallery3d/data/DataManager$DateTakenComparator;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_PICTURE:Ljava/lang/String; = "com.android.gallery3d.action.DELETE_PICTURE"

.field public static final INCLUDE_ALL:I = 0x3

.field public static final INCLUDE_IMAGE:I = 0x1

.field public static final INCLUDE_LOCAL_ALL_ONLY:I = 0x7

.field public static final INCLUDE_LOCAL_IMAGE_ONLY:I = 0x5

.field public static final INCLUDE_LOCAL_ONLY:I = 0x4

.field public static final INCLUDE_LOCAL_VIDEO_ONLY:I = 0x6

.field public static final INCLUDE_VIDEO:I = 0x2

.field public static final LOCK:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "DataManager"

.field private static final TOP_IMAGE_SET_PATH:Ljava/lang/String; = null

.field private static final TOP_LOCAL_IMAGE_SET_PATH:Ljava/lang/String; = "/local/image"

.field private static final TOP_LOCAL_SET_PATH:Ljava/lang/String; = "/local/all"

.field private static final TOP_LOCAL_VIDEO_SET_PATH:Ljava/lang/String; = "/local/video"

.field private static final TOP_SET_PATH:Ljava/lang/String; = null

.field private static final TOP_VIDEO_SET_PATH:Ljava/lang/String; = "/combo/{/local/video,/picasa/video}"

.field public static final sDateTakenComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveCount:I

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mDefaultMainHandler:Landroid/os/Handler;

.field private mNotifierMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/gallery3d/data/DataManager$NotifyBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mPasteWorker:Lcom/android/gallery3d/util/PasteWorker;

.field private mReloadNotifierMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/MediaSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    .line 87
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MTP:Z

    if-eqz v0, :cond_0

    const-string v0, "/combo/{/mtp,/local/all,/picasa/all}"

    :goto_0
    sput-object v0, Lcom/android/gallery3d/data/DataManager;->TOP_SET_PATH:Ljava/lang/String;

    .line 91
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MTP:Z

    if-eqz v0, :cond_1

    const-string v0, "/combo/{/mtp,/local/image,/picasa/image}"

    :goto_1
    sput-object v0, Lcom/android/gallery3d/data/DataManager;->TOP_IMAGE_SET_PATH:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/android/gallery3d/data/DataManager$DateTakenComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/DataManager$DateTakenComparator;-><init>(Lcom/android/gallery3d/data/DataManager$1;)V

    sput-object v0, Lcom/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    return-void

    .line 87
    :cond_0
    const-string v0, "/combo/{/local/all,/picasa/all}"

    goto :goto_0

    .line 91
    :cond_1
    const-string v0, "/combo/{/local/image,/picasa/image}"

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "application"

    .prologue
    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mReloadNotifierMap:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    .line 136
    iput-object p1, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcom/android/gallery3d/util/PasteWorker;

    invoke-direct {v0, p1, p0}, Lcom/android/gallery3d/util/PasteWorker;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/DataManager;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mPasteWorker:Lcom/android/gallery3d/util/PasteWorker;

    .line 139
    return-void
.end method


# virtual methods
.method addSource(Lcom/android/gallery3d/data/MediaSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSource;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public broadcastLocalDeletion()V
    .locals 3

    .prologue
    .line 436
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 438
    .local v1, manager:Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.gallery3d.action.DELETE_PICTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 440
    return-void
.end method

.method public cancelPrivate(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 497
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->cancelPrivate()V

    .line 498
    return-void
.end method

.method public delete(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->delete()V

    .line 285
    return-void
.end method

.method public editPhotoShare(Landroid/content/Context;Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    .line 288
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaObject;->editPhotoShare(Landroid/content/Context;)V

    .line 289
    return-void
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 5
    .parameter "uri"
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 333
    if-nez p1, :cond_0

    move-object v1, v3

    .line 338
    :goto_0
    return-object v1

    .line 334
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaSource;

    .line 335
    .local v2, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/data/MediaSource;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 336
    .local v1, path:Lcom/android/gallery3d/data/Path;
    if-eqz v1, :cond_1

    goto :goto_0

    .end local v1           #path:Lcom/android/gallery3d/data/Path;
    .end local v2           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_2
    move-object v1, v3

    .line 338
    goto :goto_0
.end method

.method public getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPasteState()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mPasteWorker:Lcom/android/gallery3d/util/PasteWorker;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/PasteWorker;->getCurrentPasteState()I

    move-result v0

    return v0
.end method

.method public getDefaultItemDateTaken(Lcom/android/gallery3d/data/Path;)J
    .locals 5
    .parameter "item"

    .prologue
    const-wide/16 v1, -0x1

    .line 363
    if-nez p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-wide v1

    .line 366
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSource;

    .line 367
    .local v0, source:Lcom/android/gallery3d/data/MediaSource;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaSource;->getDefaultItemDateTaken(Lcom/android/gallery3d/data/Path;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getDefaultItemId(Lcom/android/gallery3d/data/Path;)I
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, -0x1

    .line 354
    if-nez p1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v1

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSource;

    .line 358
    .local v0, source:Lcom/android/gallery3d/data/MediaSource;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaSource;->getDefaultItemId(Lcom/android/gallery3d/data/Path;)I

    move-result v1

    goto :goto_0
.end method

.method public getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 343
    if-nez p1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-object v1

    .line 346
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSource;

    .line 347
    .local v0, source:Lcom/android/gallery3d/data/MediaSource;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaSource;->getDefaultSetOf(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 9
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 198
    sget-object v5, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 199
    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 200
    .local v0, obj:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    monitor-exit v5

    .line 216
    .end local v0           #obj:Lcom/android/gallery3d/data/MediaObject;
    :goto_0
    return-object v0

    .line 202
    .restart local v0       #obj:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    iget-object v6, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaSource;

    .line 203
    .local v2, source:Lcom/android/gallery3d/data/MediaSource;
    if-nez v2, :cond_1

    .line 204
    const-string v6, "DataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot find media source for path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    goto :goto_0

    .line 209
    :cond_1
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/android/gallery3d/data/MediaSource;->createMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    .line 210
    .local v1, object:Lcom/android/gallery3d/data/MediaObject;
    if-nez v1, :cond_2

    .line 211
    const-string v6, "DataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot create media object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    :cond_2
    :try_start_2
    monitor-exit v5

    move-object v0, v1

    goto :goto_0

    .line 214
    .end local v1           #object:Lcom/android/gallery3d/data/MediaObject;
    :catch_0
    move-exception v3

    .line 215
    .local v3, t:Ljava/lang/Throwable;
    const-string v6, "DataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception in creating media object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 218
    .end local v0           #obj:Lcom/android/gallery3d/data/MediaObject;
    .end local v2           #source:Lcom/android/gallery3d/data/MediaSource;
    .end local v3           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;
    .locals 1
    .parameter "s"

    .prologue
    .line 222
    invoke-static {p1}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "path"

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "s"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getMediaSetsFromString(Ljava/lang/String;)[Lcom/android/gallery3d/data/MediaSet;
    .locals 5
    .parameter "segment"

    .prologue
    .line 234
    invoke-static {p1}, Lcom/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, seq:[Ljava/lang/String;
    array-length v1, v2

    .line 236
    .local v1, n:I
    new-array v3, v1, [Lcom/android/gallery3d/data/MediaSet;

    .line 237
    .local v3, sets:[Lcom/android/gallery3d/data/MediaSet;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 238
    aget-object v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v3, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    return-object v3
.end method

.method public getMediaType(Lcom/android/gallery3d/data/Path;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    return v0
.end method

.method public getPanoramaSupport(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V
    .locals 1
    .parameter "path"
    .parameter "callback"

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/data/MediaObject;->getPanoramaSupport(Lcom/android/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 281
    return-void
.end method

.method public getSupportedOperations(Lcom/android/gallery3d/data/Path;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    return v0
.end method

.method public getTopSetPath(I)Ljava/lang/String;
    .locals 1
    .parameter "typeBits"

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_0

    .line 176
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 170
    :pswitch_1
    sget-object v0, Lcom/android/gallery3d/data/DataManager;->TOP_IMAGE_SET_PATH:Ljava/lang/String;

    .line 175
    :goto_0
    return-object v0

    .line 171
    :pswitch_2
    const-string v0, "/combo/{/local/video,/picasa/video}"

    goto :goto_0

    .line 172
    :pswitch_3
    sget-object v0, Lcom/android/gallery3d/data/DataManager;->TOP_SET_PATH:Ljava/lang/String;

    goto :goto_0

    .line 173
    :pswitch_4
    const-string v0, "/local/image"

    goto :goto_0

    .line 174
    :pswitch_5
    const-string v0, "/local/video"

    goto :goto_0

    .line 175
    :pswitch_6
    const-string v0, "/local/all"

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getTotalTargetCacheSize()J
    .locals 6

    .prologue
    .line 385
    const-wide/16 v2, 0x0

    .line 386
    .local v2, sum:J
    iget-object v4, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 387
    .local v1, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->getTotalTargetCacheSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 389
    .end local v1           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_0
    return-wide v2
.end method

.method public getTotalUsedCacheSize()J
    .locals 6

    .prologue
    .line 375
    const-wide/16 v2, 0x0

    .line 376
    .local v2, sum:J
    iget-object v4, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 377
    .local v1, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->getTotalUsedCacheSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 379
    .end local v1           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_0
    return-wide v2
.end method

.method public hide(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->hide()V

    .line 486
    return-void
.end method

.method public initPaste(Landroid/os/Bundle;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "data"
    .parameter "eventHandler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 300
    .local p3, processList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mPasteWorker:Lcom/android/gallery3d/util/PasteWorker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/util/PasteWorker;->initPaste(Landroid/os/Bundle;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized initializeSourceMap()V
    .locals 4

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 165
    :cond_0
    monitor-exit p0

    return-void

    .line 145
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/gallery3d/data/LocalSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/LocalSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 146
    new-instance v2, Lcom/android/gallery3d/picasasource/PicasaSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/picasasource/PicasaSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 147
    sget-boolean v2, Lcom/android/gallery3d/common/ApiHelper;->HAS_MTP:Z

    if-eqz v2, :cond_2

    .line 148
    new-instance v2, Lcom/android/gallery3d/data/MtpSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/MtpSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 153
    :cond_2
    new-instance v2, Lcom/android/gallery3d/data/ComboSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/ComboSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 154
    new-instance v2, Lcom/android/gallery3d/data/ClusterSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/ClusterSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 155
    new-instance v2, Lcom/android/gallery3d/data/FilterSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/FilterSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 156
    new-instance v2, Lcom/android/gallery3d/data/SecureSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/SecureSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 157
    new-instance v2, Lcom/android/gallery3d/data/UriSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/UriSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 158
    new-instance v2, Lcom/android/gallery3d/data/SnailSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/SnailSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 159
    new-instance v2, Lcom/android/gallery3d/data/PhotoShareSource;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/PhotoShareSource;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/data/DataManager;->addSource(Lcom/android/gallery3d/data/MediaSource;)V

    .line 160
    iget v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    if-lez v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 162
    .local v1, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #source:Lcom/android/gallery3d/data/MediaSource;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V
    .locals 11
    .parameter
    .parameter "consumer"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet$ItemConsumer;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 255
    .local v5, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 256
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/Path;

    .line 257
    .local v6, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, prefix:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 259
    .local v1, group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    if-nez v1, :cond_0

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .restart local v1       #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_0
    new-instance v9, Lcom/android/gallery3d/data/MediaSource$PathId;

    add-int v10, v2, p3

    invoke-direct {v9, v6, v10}, Lcom/android/gallery3d/data/MediaSource$PathId;-><init>(Lcom/android/gallery3d/data/Path;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v1           #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;"
    .end local v6           #path:Lcom/android/gallery3d/data/Path;
    .end local v7           #prefix:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 268
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 269
    .restart local v7       #prefix:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaSource;

    .line 270
    .local v8, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v8, v9, p2}, Lcom/android/gallery3d/data/MediaSource;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    goto :goto_1

    .line 272
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaSource$PathId;>;>;"
    .end local v7           #prefix:Ljava/lang/String;
    .end local v8           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_2
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 407
    const/4 v1, 0x0

    .line 408
    .local v1, broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 409
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/gallery3d/data/DataManager$NotifyBroker;

    move-object v1, v0

    .line 410
    if-nez v1, :cond_0

    .line 411
    monitor-exit v3

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager$NotifyBroker;->onChange(Z)V

    .line 414
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public notifyReload(Landroid/net/Uri;I)V
    .locals 4
    .parameter "uri"
    .parameter "reloadType"

    .prologue
    .line 501
    const/4 v1, 0x0

    .line 502
    .local v1, broker:Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mReloadNotifierMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 503
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mReloadNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;

    move-object v1, v0

    .line 504
    if-nez v1, :cond_0

    .line 505
    monitor-exit v3

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;->reload(I)V

    .line 508
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onPasteCanceled(Landroid/os/Bundle;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V
    .locals 1
    .parameter "data"
    .parameter "eventHandler"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mPasteWorker:Lcom/android/gallery3d/util/PasteWorker;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/util/PasteWorker;->onPasteCanceled(Landroid/os/Bundle;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V

    .line 314
    return-void
.end method

.method public onPasteComplete(Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V
    .locals 1
    .parameter "eventHandler"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/data/DataManager;->mPasteWorker:Lcom/android/gallery3d/util/PasteWorker;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/PasteWorker;->onPasteComplete(Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V

    .line 318
    return-void
.end method

.method public onStitchingProgress(Landroid/net/Uri;I)V
    .locals 0
    .parameter "uri"
    .parameter "progress"

    .prologue
    .line 482
    return-void
.end method

.method public onStitchingQueued(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 466
    return-void
.end method

.method public onStitchingResult(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 470
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 471
    .local v1, path:Lcom/android/gallery3d/data/Path;
    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 473
    .local v0, mediaObject:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->clearCachedPanoramaSupport()V

    .line 477
    .end local v0           #mediaObject:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    return-void
.end method

.method public paste(Lcom/android/gallery3d/data/Path;Landroid/os/Bundle;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V
    .locals 3
    .parameter "itemPath"
    .parameter "data"
    .parameter "eventHandler"

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    .line 305
    .local v0, item:Lcom/android/gallery3d/data/MediaObject;
    instance-of v2, v0, Lcom/android/gallery3d/data/MediaItem;

    if-nez v2, :cond_0

    .line 310
    .end local v0           #item:Lcom/android/gallery3d/data/MediaObject;
    :goto_0
    return-void

    .line 308
    .restart local v0       #item:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    const-string v2, "key-targetpath"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, targetFileParent:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mPasteWorker:Lcom/android/gallery3d/util/PasteWorker;

    check-cast v0, Lcom/android/gallery3d/data/MediaItem;

    .end local v0           #item:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v2, v0, v1, p3}, Lcom/android/gallery3d/util/PasteWorker;->paste(Lcom/android/gallery3d/data/MediaItem;Ljava/lang/String;Lcom/android/gallery3d/util/PasteWorker$PasteEventHandler;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 425
    iget v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    if-nez v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 427
    .local v1, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->pause()V

    goto :goto_0

    .line 430
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_0
    return-void
.end method

.method public peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;
    .locals 1
    .parameter "path"

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getObject()Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public photoshareDownload(Lcom/android/gallery3d/data/Path;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->photoshareDownLoadOperation()Z

    move-result v0

    return v0
.end method

.method public registerChangeNotifier(Landroid/net/Uri;Lcom/android/gallery3d/data/ChangeNotifier;)V
    .locals 6
    .parameter "uri"
    .parameter "notifier"

    .prologue
    .line 393
    const/4 v1, 0x0

    .line 394
    .local v1, broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    iget-object v4, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 395
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/gallery3d/data/DataManager$NotifyBroker;

    move-object v1, v0

    .line 396
    if-nez v1, :cond_0

    .line 397
    new-instance v2, Lcom/android/gallery3d/data/DataManager$NotifyBroker;

    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/DataManager$NotifyBroker;-><init>(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .end local v1           #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .local v2, broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    :try_start_1
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 400
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 402
    .end local v2           #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .restart local v1       #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    invoke-virtual {v1, p2}, Lcom/android/gallery3d/data/DataManager$NotifyBroker;->registerNotifier(Lcom/android/gallery3d/data/ChangeNotifier;)V

    .line 404
    return-void

    .line 402
    :catchall_0
    move-exception v3

    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1           #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .restart local v2       #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    .restart local v1       #broker:Lcom/android/gallery3d/data/DataManager$NotifyBroker;
    goto :goto_0
.end method

.method public registerReloadNotifier(Landroid/net/Uri;Lcom/android/gallery3d/data/ReloadNotifier;)V
    .locals 5
    .parameter "uri"
    .parameter "notifier"

    .prologue
    .line 511
    const/4 v1, 0x0

    .line 512
    .local v1, broker:Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;
    iget-object v4, p0, Lcom/android/gallery3d/data/DataManager;->mReloadNotifierMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 513
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mReloadNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;

    move-object v1, v0

    .line 514
    if-nez v1, :cond_0

    .line 515
    new-instance v2, Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;-><init>(Lcom/android/gallery3d/data/DataManager$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    .end local v1           #broker:Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;
    .local v2, broker:Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;
    :try_start_1
    iget-object v3, p0, Lcom/android/gallery3d/data/DataManager;->mReloadNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 518
    .end local v2           #broker:Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;
    .restart local v1       #broker:Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 519
    invoke-virtual {v1, p2}, Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;->registerNotifier(Lcom/android/gallery3d/data/ReloadNotifier;)V

    .line 520
    return-void

    .line 518
    :catchall_0
    move-exception v3

    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1           #broker:Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;
    .restart local v2       #broker:Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #broker:Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;
    .restart local v1       #broker:Lcom/android/gallery3d/data/DataManager$ReloadNotifyBroker;
    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 417
    iget v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/data/DataManager;->mActiveCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/gallery3d/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSource;

    .line 419
    .local v1, source:Lcom/android/gallery3d/data/MediaSource;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSource;->resume()V

    goto :goto_0

    .line 422
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #source:Lcom/android/gallery3d/data/MediaSource;
    :cond_0
    return-void
.end method

.method public rotate(Lcom/android/gallery3d/data/Path;I)V
    .locals 1
    .parameter "path"
    .parameter "degrees"

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/data/MediaObject;->rotate(I)V

    .line 322
    return-void
.end method

.method public setAsPrivate(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->setAsPrivate()V

    .line 494
    return-void
.end method

.method public show(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->show()V

    .line 490
    return-void
.end method
