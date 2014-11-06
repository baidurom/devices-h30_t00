.class Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;
.super Ljava/lang/Object;
.source "LocalMergeAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalMergeAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCache"
.end annotation


# instance fields
.field private mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field private mCacheRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStartPos:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 0
    .parameter "baseSet"

    .prologue
    .line 290
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 292
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 5
    .parameter "index"

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, needLoading:Z
    const/4 v0, 0x0

    .line 301
    .local v0, cache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    add-int/lit8 v3, v3, 0x40

    if-lt p1, v3, :cond_4

    .line 303
    :cond_0
    const/4 v1, 0x1

    .line 311
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 312
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    const/16 v4, 0x40

    invoke-virtual {v3, p1, v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 313
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    .line 314
    iput p1, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    .line 317
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    sub-int v2, p1, v3

    .line 318
    .local v2, targetIndex:I
    if-ltz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 319
    :cond_3
    const/4 v3, 0x0

    .line 322
    :goto_1
    return-object v3

    .line 305
    .end local v2           #targetIndex:I
    :cond_4
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 306
    .restart local v0       #cache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    if-nez v0, :cond_1

    .line 307
    const/4 v1, 0x1

    goto :goto_0

    .line 322
    .restart local v2       #targetIndex:I
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/MediaItem;

    goto :goto_1
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    .line 296
    return-void
.end method
