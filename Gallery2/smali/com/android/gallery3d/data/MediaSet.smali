.class public abstract Lcom/android/gallery3d/data/MediaSet;
.super Lcom/android/gallery3d/data/MediaObject;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;,
        Lcom/android/gallery3d/data/MediaSet$ItemConsumer;,
        Lcom/android/gallery3d/data/MediaSet$SyncListener;
    }
.end annotation


# static fields
.field private static final FUTURE_STUB:Lcom/android/gallery3d/util/Future; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final MEDIAITEM_BATCH_FETCH_COUNT:I = 0xc8

.field public static final SYNC_RESULT_CANCELLED:I = 0x1

.field public static final SYNC_RESULT_ERROR:I = 0x2

.field public static final SYNC_RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaSet"


# instance fields
.field protected mBucketPath:Ljava/lang/String;

.field protected mIsHidden:Z

.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/gallery3d/data/ContentListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 310
    new-instance v0, Lcom/android/gallery3d/data/MediaSet$1;

    invoke-direct {v0}, Lcom/android/gallery3d/data/MediaSet$1;-><init>()V

    sput-object v0, Lcom/android/gallery3d/data/MediaSet;->FUTURE_STUB:Lcom/android/gallery3d/util/Future;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;J)V
    .locals 1
    .parameter "path"
    .parameter "version"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaObject;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 183
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    .line 65
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 195
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    return-void
.end method

.method protected enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 9
    .parameter "consumer"
    .parameter "startIndex"

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    .line 263
    .local v6, total:I
    const/4 v5, 0x0

    .line 264
    .local v5, start:I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 265
    const/16 v7, 0xc8

    sub-int v8, v6, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 266
    .local v0, count:I
    invoke-virtual {p0, v5, v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 267
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, n:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 268
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 269
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    add-int v7, p2, v5

    add-int/2addr v7, v1

    invoke-interface {p1, v7, v2}, Lcom/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/android/gallery3d/data/MediaItem;)V

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 271
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    add-int/2addr v5, v0

    .line 272
    goto :goto_0

    .line 273
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v4           #n:I
    :cond_1
    return v6
.end method

.method public enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 1
    .parameter "consumer"

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I

    .line 248
    return-void
.end method

.method protected enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 5
    .parameter "consumer"
    .parameter "startIndex"

    .prologue
    .line 280
    const/4 v2, 0x0

    .line 281
    .local v2, start:I
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I

    move-result v4

    add-int/2addr v2, v4

    .line 282
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    .line 284
    .local v1, m:I
    const/4 v3, 0x0

    .line 285
    .local v3, subSet:Lcom/android/gallery3d/data/MediaSet;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 286
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v3

    .line 287
    if-nez v3, :cond_0

    .line 285
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    add-int v4, p2, v2

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 292
    :cond_1
    return v2
.end method

.method public enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 1
    .parameter "consumer"

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I

    .line 252
    return-void
.end method

.method public getBucketPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaSet;->mBucketPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverMediaItem()Lcom/android/gallery3d/data/MediaItem;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 97
    const/4 v5, 0x1

    invoke-virtual {p0, v6, v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 98
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    .line 109
    :goto_0
    return-object v5

    .line 100
    :cond_0
    const/4 v4, 0x0

    .line 101
    .local v4, subSet:Lcom/android/gallery3d/data/MediaSet;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    .local v3, n:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    .line 103
    if-nez v4, :cond_2

    .line 101
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 106
    .local v0, cover:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_1

    move-object v5, v0

    goto :goto_0

    .line 109
    .end local v0           #cover:Lcom/android/gallery3d/data/MediaItem;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 9

    .prologue
    .line 229
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaObject;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 230
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v4

    .line 232
    .local v4, subMediaItemCount:I
    const/16 v7, 0x96

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 233
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 234
    .local v3, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/MediaItem;>;"
    const-wide/16 v5, 0x0

    .line 235
    .local v5, sum:J
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 236
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getSize()J

    move-result-wide v7

    add-long/2addr v5, v7

    goto :goto_0

    .line 238
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    const/4 v7, 0x5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 239
    const/16 v7, 0xc8

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getBucketPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 240
    return-object v0
.end method

.method public getImageCountByLimit(I)I
    .locals 1
    .parameter "key"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method protected getIndexOf(Lcom/android/gallery3d/data/Path;Ljava/util/ArrayList;)I
    .locals 4
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 175
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaObject;

    .line 176
    .local v1, item:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    if-ne v3, p1, :cond_0

    .line 178
    .end local v0           #i:I
    .end local v1           #item:Lcom/android/gallery3d/data/MediaObject;
    :goto_1
    return v0

    .line 173
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/android/gallery3d/data/MediaObject;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v1           #item:Lcom/android/gallery3d/data/MediaObject;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getIndexOfItem(Lcom/android/gallery3d/data/Path;I)I
    .locals 7
    .parameter "path"
    .parameter "hint"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v3, 0xc8

    .line 153
    add-int/lit8 v6, p2, -0x64

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 155
    .local v2, start:I
    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 157
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {p0, p1, v1}, Lcom/android/gallery3d/data/MediaSet;->getIndexOf(Lcom/android/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v0

    .line 158
    .local v0, index:I
    if-eq v0, v5, :cond_0

    add-int v3, v2, v0

    .line 166
    :goto_0
    return v3

    .line 161
    :cond_0
    if-nez v2, :cond_1

    move v2, v3

    .line 162
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 164
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/android/gallery3d/data/MediaSet;->getIndexOf(Lcom/android/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v0

    .line 165
    if-eq v0, v5, :cond_2

    add-int v3, v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 161
    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v3, :cond_3

    move v3, v5

    goto :goto_0

    .line 167
    :cond_3
    add-int/lit16 v2, v2, 0xc8

    .line 168
    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2
.end method

.method public getItemCountById(IJ)I
    .locals 1
    .parameter "id"
    .parameter "dateTaken"

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 1
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 117
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalItemCountById(IJ)I
    .locals 1
    .parameter "id"
    .parameter "dateTaken"

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/gallery3d/data/MediaSet;->getItemCountById(IJ)I

    move-result v0

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 5

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    .line 139
    .local v3, total:I
    const/4 v2, 0x0

    .line 140
    .local v2, subSet:Lcom/android/gallery3d/data/MediaSet;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    .line 142
    if-nez v2, :cond_0

    .line 140
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 146
    :cond_1
    return v3
.end method

.method public isCameraRoll()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/gallery3d/data/MediaSet;->mIsHidden:Z

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public notifyContentChanged()V
    .locals 5

    .prologue
    .line 212
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 213
    .local v2, tmpListenerKeySet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/ContentListener;>;"
    iget-object v4, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 214
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 215
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/ContentListener;

    .line 217
    .local v1, listener:Lcom/android/gallery3d/data/ContentListener;
    invoke-interface {v1}, Lcom/android/gallery3d/data/ContentListener;->onContentDirty()V

    goto :goto_0

    .line 215
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/gallery3d/data/ContentListener;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 220
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public abstract reload()J
.end method

.method public removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 204
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    return-void
.end method

.method public requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/MediaSet$SyncListener;",
            ")",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/gallery3d/data/MediaSet$SyncListener;->onSyncDone(Lcom/android/gallery3d/data/MediaSet;I)V

    .line 307
    sget-object v0, Lcom/android/gallery3d/data/MediaSet;->FUTURE_STUB:Lcom/android/gallery3d/util/Future;

    return-object v0
.end method

.method protected requestSyncOnMultipleSets([Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;
    .locals 1
    .parameter "sets"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/gallery3d/data/MediaSet;",
            "Lcom/android/gallery3d/data/MediaSet$SyncListener;",
            ")",
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/gallery3d/data/MediaSet$MultiSetSyncFuture;-><init>(Lcom/android/gallery3d/data/MediaSet;[Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/MediaSet$SyncListener;)V

    return-object v0
.end method

.method public setBucketPath(Ljava/lang/String;)V
    .locals 0
    .parameter "bucketPath"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/gallery3d/data/MediaSet;->mBucketPath:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .parameter "isHidden"

    .prologue
    .line 426
    iput-boolean p1, p0, Lcom/android/gallery3d/data/MediaSet;->mIsHidden:Z

    .line 427
    return-void
.end method
