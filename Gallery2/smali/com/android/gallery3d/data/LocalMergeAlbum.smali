.class public Lcom/android/gallery3d/data/LocalMergeAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "LocalMergeAlbum.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "LocalMergeAlbum"


# instance fields
.field private mBucketId:I

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCountId:I

.field private mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

.field private mIndex:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private final mSources:[Lcom/android/gallery3d/data/MediaSet;

.field private mSupportedOperation:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 6
    .parameter "path"
    .parameter
    .parameter "sources"
    .parameter "bucketId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/data/Path;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;[",
            "Lcom/android/gallery3d/data/MediaSet;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/gallery3d/data/MediaItem;>;"
    const-wide/16 v4, -0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 49
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mCountId:I

    .line 52
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    .line 57
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    .line 58
    iput-object p3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .line 59
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->getNameFromSource()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    .line 60
    iput p4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mBucketId:I

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 62
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->reload()J

    .line 65
    return-void
.end method

.method private getNameFromSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 132
    const-string v0, ""

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private invalidateCache()V
    .locals 6

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->invalidate()V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    monitor-enter v3

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 97
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v5, v5

    new-array v5, v5, [I

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit v3

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateData()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v3, v3

    if-nez v3, :cond_0

    .line 78
    .local v2, supported:I
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v3, v3

    new-array v3, v3, [Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    iput-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v1, v3

    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 80
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    new-instance v4, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v5, v5, v0

    invoke-direct {v4, v5}, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;-><init>(Lcom/android/gallery3d/data/MediaSet;)V

    aput-object v4, v3, v0

    .line 81
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v3

    and-int/2addr v2, v3

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #supported:I
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 83
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local v2       #supported:I
    :cond_1
    iput v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSupportedOperation:I

    .line 84
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    monitor-enter v4

    .line 85
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    .line 86
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v6, v6

    new-array v6, v6, [I

    invoke-virtual {v3, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->getNameFromSource()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    .line 89
    return-void

    .line 87
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public cancelPrivate()V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 355
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->cancelPrivate()V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 274
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->delete()V

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public getBucketPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 392
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getBucketPath()Ljava/lang/String;

    move-result-object v4

    .line 394
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 103
    iget v1, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mBucketId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, bucketId:Ljava/lang/String;
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "bucketId"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 111
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "bucketId"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemCountById(IJ)I
    .locals 1
    .parameter "id"
    .parameter "dateTaken"

    .prologue
    .line 145
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/gallery3d/data/LocalMergeAlbum;->getTotalItemCountById(IJ)I

    move-result v0

    return v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 21
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
    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 167
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    move-object/from16 v17, v0

    add-int/lit8 v19, p1, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v4

    .line 168
    .local v4, head:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    invoke-interface {v4}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 169
    .local v9, markPos:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    invoke-virtual/range {v17 .. v17}, [I->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    .line 170
    .local v14, subPos:[I
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mCountId:I

    move/from16 v17, v0

    if-lez v17, :cond_0

    sub-int v17, p1, v9

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    const/16 v17, 0xc8

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 175
    div-int/lit8 v10, p1, 0x40

    .line 176
    .local v10, n:I
    mul-int/lit8 v8, v10, 0x40

    .line 177
    .local v8, key:I
    const/16 v16, 0x0

    .line 178
    .local v16, videoCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v15, v0, [I

    .line 180
    .local v15, value:[I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/data/MediaSet;->getImageCountByLimit(I)I

    move-result v16

    .line 181
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 182
    const/16 v17, 0x0

    sub-int v18, v8, v16

    aput v18, v15, v17

    .line 183
    const/16 v17, 0x1

    aput v16, v15, v17

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    move-object/from16 v17, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual {v15}, [I->clone()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    move v9, v8

    .line 188
    move-object v14, v15

    .line 189
    const/16 v17, 0x0

    :try_start_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/data/LocalMergeAlbum;->mCountId:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 196
    .end local v8           #key:I
    .end local v10           #n:I
    .end local v15           #value:[I
    .end local v16           #videoCount:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v13, v0, [Lcom/android/gallery3d/data/MediaItem;

    .line 198
    .local v13, slot:[Lcom/android/gallery3d/data/MediaItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v12, v0

    .line 201
    .local v12, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v12, :cond_1

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    aget-object v17, v17, v5

    aget v18, v14, v5

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v17

    aput-object v17, v13, v5

    .line 201
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 170
    .end local v4           #head:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    .end local v5           #i:I
    .end local v9           #markPos:I
    .end local v12           #size:I
    .end local v13           #slot:[Lcom/android/gallery3d/data/MediaItem;
    .end local v14           #subPos:[I
    :catchall_0
    move-exception v17

    :try_start_4
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v17

    .line 186
    .restart local v4       #head:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    .restart local v8       #key:I
    .restart local v9       #markPos:I
    .restart local v10       #n:I
    .restart local v14       #subPos:[I
    .restart local v15       #value:[I
    .restart local v16       #videoCount:I
    :catchall_1
    move-exception v17

    :try_start_5
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v17
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 191
    :catch_0
    move-exception v3

    .line 192
    .local v3, e:Ljava/lang/Exception;
    const-string v17, "LocalMergeAlbum"

    const-string v18, "getImageCountByLimit  ERROR"

    invoke-static/range {v17 .. v18}, Lcom/android/gallery3d/data/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #key:I
    .end local v10           #n:I
    .end local v15           #value:[I
    .end local v16           #videoCount:I
    .restart local v5       #i:I
    .restart local v12       #size:I
    .restart local v13       #slot:[Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v11, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    move v5, v9

    :goto_2
    add-int v17, p1, p2

    move/from16 v0, v17

    if-ge v5, v0, :cond_5

    .line 208
    const/4 v7, -0x1

    .line 209
    .local v7, k:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    if-ge v6, v12, :cond_4

    .line 210
    aget-object v17, v13, v6

    if-eqz v17, :cond_3

    .line 211
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    move-object/from16 v17, v0

    aget-object v18, v13, v6

    aget-object v19, v13, v7

    invoke-interface/range {v17 .. v19}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v17

    if-gez v17, :cond_3

    .line 212
    :cond_2
    move v7, v6

    .line 209
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 218
    :cond_4
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_6

    .line 235
    .end local v6           #j:I
    .end local v7           #k:I
    :cond_5
    return-object v11

    .line 221
    .restart local v6       #j:I
    .restart local v7       #k:I
    :cond_6
    aget v17, v14, v7

    add-int/lit8 v17, v17, 0x1

    aput v17, v14, v7

    .line 222
    move/from16 v0, p1

    if-lt v5, v0, :cond_7

    .line 223
    aget-object v17, v13, v7

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mFetcher:[Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    aget v18, v14, v7

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v17

    aput-object v17, v13, v7

    .line 228
    add-int/lit8 v17, v5, 0x1

    rem-int/lit8 v17, v17, 0x40

    if-nez v17, :cond_8

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 230
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    move-object/from16 v17, v0

    add-int/lit8 v19, v5, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual {v14}, [I->clone()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    monitor-exit v18

    .line 207
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 231
    :catchall_2
    move-exception v17

    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v17
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->getNameFromSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSupportedOperation:I

    return v0
.end method

.method public getTotalItemCountById(IJ)I
    .locals 6
    .parameter "id"
    .parameter "dateTaken"

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, count:I
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 152
    .local v4, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/gallery3d/data/MediaSet;->getTotalItemCountById(IJ)I

    move-result v5

    add-int/2addr v1, v5

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v4           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    iput v1, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mCountId:I

    .line 155
    return v1
.end method

.method public getTotalMediaItemCount()I
    .locals 6

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, count:I
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 242
    .local v4, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v4           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return v1
.end method

.method public hide()V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 334
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->hide()V

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public isCameraRoll()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v5, v5

    if-nez v5, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v4

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 71
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 5

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 362
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 364
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :goto_1
    return v4

    .line 361
    .restart local v3       #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method public isPrivate()Z
    .locals 5

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 370
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->isPrivate()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 372
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :goto_1
    return v4

    .line 369
    .restart local v3       #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->notifyContentChanged()V

    .line 264
    return-void
.end method

.method public reload()J
    .locals 7

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v2, v3

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 251
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 250
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_1
    if-eqz v0, :cond_2

    .line 254
    invoke-static {}, Lcom/android/gallery3d/data/LocalMergeAlbum;->nextVersionNumber()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 255
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->updateData()V

    .line 256
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalMergeAlbum;->invalidateCache()V

    .line 258
    :cond_2
    iget-wide v3, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v3
.end method

.method public rotate(I)V
    .locals 4
    .parameter "degrees"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 281
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/MediaSet;->rotate(I)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public setAsPrivate()V
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 341
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->setAsPrivate()V

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public setBucketPath(Ljava/lang/String;)V
    .locals 4
    .parameter "bucketPath"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 400
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/MediaSet;->setBucketPath(Ljava/lang/String;)V

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public setHidden(Z)V
    .locals 4
    .parameter "isHidden"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 378
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/MediaSet;->setHidden(Z)V

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public setPrivate(Z)V
    .locals 4
    .parameter "isPrivate"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 385
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/data/MediaSet;->setPrivate(Z)V

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    .local v0, arr$:[Lcom/android/gallery3d/data/MediaSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 348
    .local v3, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->show()V

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v3           #set:Lcom/android/gallery3d/data/MediaSet;
    :cond_0
    return-void
.end method

.method public updateName()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;->mSources:[Lcom/android/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->updateName()V

    .line 128
    :cond_0
    return-void
.end method
