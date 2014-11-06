.class public Lcom/android/gallery3d/data/LocalAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "LocalAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final EXTERNAL_FILE_URI:Landroid/net/Uri; = null

.field private static final INVALID_COUNT:I = -0x1

.field private static final MEDIA_COLUMN_IS_PRIVACY:Ljava/lang/String; = "is_hw_privacy"

.field private static final TAG:Ljava/lang/String; = "LocalAlbum"


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private mCachedCount:I

.field private final mIsImage:Z

.field private final mItemPath:Lcom/android/gallery3d/data/Path;

.field private mName:Ljava/lang/String;

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mNotifierSettings:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private mReloadType:I

.field private final mReloader:Lcom/android/gallery3d/data/ReloadNotifier;

.field private final mResId:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbum;->EXTERNAL_FILE_URI:Landroid/net/Uri;

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZ)V
    .locals 6
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"

    .prologue
    .line 106
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/gallery3d/data/BucketHelper;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"
    .parameter "name"

    .prologue
    .line 75
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 68
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mReloadType:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 76
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 77
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 78
    iput p3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    .line 79
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3, p5}, Lcom/android/gallery3d/data/LocalAlbum;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    .line 80
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v0}, Lcom/android/gallery3d/data/LocalAlbum;->getResId(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResId:I

    .line 81
    iput-boolean p4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    .line 83
    if-eqz p4, :cond_0

    .line 84
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 85
    const-string v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 87
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 88
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 99
    :goto_0
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 100
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/android/gallery3d/app/Gallery;->SETTIGNS_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifierSettings:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 101
    new-instance v0, Lcom/android/gallery3d/data/ReloadNotifier;

    sget-object v1, Lcom/android/gallery3d/app/Gallery;->RELOAD_URI_ALBUM:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ReloadNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mReloader:Lcom/android/gallery3d/data/ReloadNotifier;

    .line 102
    return-void

    .line 91
    :cond_0
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 92
    const-string v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 94
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 95
    sget-object v0, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method private getHiddenFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/data/MediaSet;->mBucketPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "id"

    .prologue
    .line 244
    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "res"
    .parameter "bucketId"
    .parameter "name"

    .prologue
    .line 375
    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->SECONDARY_CAMERA_BUCKET_ID:I

    if-ne p1, v1, :cond_1

    .line 376
    sget-object p2, Lcom/android/gallery3d/util/MediaSetUtils;->SECONDARY_CAMERA_NAME:Ljava/lang/String;

    .line 382
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 378
    .restart local p2
    :cond_1
    invoke-static {p1}, Lcom/android/gallery3d/util/MediaSetUtils;->bucketId2ResourceId(I)I

    move-result v0

    .line 379
    .local v0, id:I
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static getMediaItemById(Lcom/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 20
    .parameter "application"
    .parameter "isImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/app/GalleryApp;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Lcom/android/gallery3d/data/MediaItem;"
        }
    .end annotation

    .prologue
    .line 181
    .local p2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lcom/android/gallery3d/data/MediaItem;

    move-object/from16 v18, v0

    .line 182
    .local v18, result:[Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    :goto_0
    return-object v18

    .line 183
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 184
    .local v14, idLow:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 190
    .local v13, idHigh:I
    if-eqz p1, :cond_1

    .line 191
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 192
    .local v3, baseUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 193
    .local v4, projection:[Ljava/lang/String;
    sget-object v16, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .line 200
    .local v16, itemPath:Lcom/android/gallery3d/data/Path;
    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 201
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v10

    .line 202
    .local v10, dataManager:Lcom/android/gallery3d/data/DataManager;
    const-string v5, "_id BETWEEN ? AND ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 205
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 206
    const-string v5, "LocalAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #baseUri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v16           #itemPath:Lcom/android/gallery3d/data/Path;
    :cond_1
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 196
    .restart local v3       #baseUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 197
    .restart local v4       #projection:[Ljava/lang/String;
    sget-object v16, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .restart local v16       #itemPath:Lcom/android/gallery3d/data/Path;
    goto :goto_1

    .line 210
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #dataManager:Lcom/android/gallery3d/data/DataManager;
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 211
    .local v17, n:I
    const/4 v11, 0x0

    .line 213
    .local v11, i:I
    :cond_3
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 214
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 219
    .local v12, id:I
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ge v5, v12, :cond_5

    .line 220
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_4

    .line 238
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 225
    :cond_5
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v12, :cond_3

    .line 230
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v8

    .line 231
    .local v8, childPath:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v8, v9, v10, v0, v1}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v15

    .line 233
    .local v15, item:Lcom/android/gallery3d/data/MediaItem;
    aput-object v15, v18, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    add-int/lit8 v11, v11, 0x1

    .line 235
    goto :goto_2

    .line 238
    .end local v8           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v12           #id:I
    .end local v15           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11           #i:I
    .end local v17           #n:I
    :catchall_0
    move-exception v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private static getResId(I)I
    .locals 1
    .parameter "bucketId"

    .prologue
    .line 387
    invoke-static {p0}, Lcom/android/gallery3d/util/MediaSetUtils;->bucketId2ResourceId(I)I

    move-result v0

    return v0
.end method

.method private isInvalid()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mReloadType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mReloadType:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;
    .locals 3
    .parameter "path"
    .parameter "cursor"
    .parameter "dataManager"
    .parameter "app"
    .parameter "isImage"

    .prologue
    .line 162
    sget-object v2, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 163
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 164
    .local v0, item:Lcom/android/gallery3d/data/LocalMediaItem;
    if-nez v0, :cond_1

    .line 165
    if-eqz p4, :cond_0

    .line 166
    new-instance v0, Lcom/android/gallery3d/data/LocalImage;

    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 173
    .restart local v0       #item:Lcom/android/gallery3d/data/LocalMediaItem;
    :goto_0
    monitor-exit v2

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/LocalVideo;

    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/data/LocalVideo;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .restart local v0       #item:Lcom/android/gallery3d/data/LocalMediaItem;
    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_0

    .line 174
    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public cancelPrivate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 452
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_IS_PRIVACY:Z

    if-nez v1, :cond_0

    .line 460
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 454
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 455
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "is_hw_privacy"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 458
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbum;->EXTERNAL_FILE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public delete()V
    .locals 6

    .prologue
    .line 359
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 360
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .line 365
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalAlbum;->show()V

    .line 366
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucketId"

    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucketId"

    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageCountByLimit(I)I
    .locals 14
    .parameter "key"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 297
    const/4 v6, 0x0

    .line 298
    .local v6, countId:I
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "bucketId"

    iget v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 303
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "datetaken DESC,_id DESC limit "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, newOrder:Ljava/lang/String;
    const-string v3, "bucket_id = ? AND (mime_type like \'image%\' or mime_type like \'video%\')"

    .line 306
    .local v3, where:Ljava/lang/String;
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v12

    const-string v4, "datetaken"

    aput-object v4, v2, v13

    new-array v4, v13, [Ljava/lang/String;

    iget v13, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 311
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 312
    const-string v0, "LocalAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query fail: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v12

    .line 327
    :goto_0
    return v0

    .line 316
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 317
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 318
    .local v11, id:I
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v8, v0

    .line 320
    .local v8, datetaken:J
    invoke-virtual {p0, v11, v8, v9}, Lcom/android/gallery3d/data/LocalAlbum;->getItemCountById(IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 327
    goto :goto_0

    .line 321
    .end local v8           #datetaken:J
    .end local v11           #id:I
    :catch_0
    move-exception v10

    .line 322
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "LocalAlbum"

    const-string v2, "getImageCountByLimit Exception"

    invoke-static {v0, v2}, Lcom/android/gallery3d/data/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto :goto_0

    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getItemCountById(IJ)I
    .locals 10
    .parameter "id"
    .parameter "dateTaken"

    .prologue
    const/4 v8, 0x0

    .line 273
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalAlbum;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v8

    .line 291
    :cond_0
    :goto_0
    return v6

    .line 274
    :cond_1
    const/4 v6, 0x0

    .line 275
    .local v6, countId:I
    const-string v3, "bucket_id = ? AND datetaken > ? or datetaken = ? AND _id > ?"

    .line 276
    .local v3, where:Ljava/lang/String;
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 280
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 281
    const-string v0, "LocalAlbum"

    const-string v1, "query fail"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 282
    goto :goto_0

    .line 285
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 286
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 288
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 13
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
    const/4 v12, 0x0

    .line 131
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalAlbum;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    :goto_0
    return-object v11

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    .line 133
    .local v8, dataManager:Lcom/android/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 135
    .local v1, uri:Landroid/net/Uri;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 141
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 142
    const-string v0, "LocalAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 149
    .local v9, id:I
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 150
    .local v6, childPath:Lcom/android/gallery3d/data/Path;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    invoke-static {v6, v7, v8, v0, v2}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    .line 152
    .local v10, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 155
    .end local v6           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v9           #id:I
    .end local v10           #item:Lcom/android/gallery3d/data/MediaItem;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public getMediaItemCount()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 250
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalAlbum;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    .line 266
    :goto_0
    return v0

    .line 251
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 255
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 256
    const-string v0, "LocalAlbum"

    const-string v1, "query fail"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 257
    goto :goto_0

    .line 260
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 261
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 266
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    goto :goto_0

    .line 263
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 354
    const/16 v0, 0x405

    return v0
.end method

.method public hide()V
    .locals 7

    .prologue
    .line 392
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 394
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/gallery3d/data/MediaSet;->mBucketPath:Ljava/lang/String;

    const-string v5, ".hidden"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .local v1, hiddenFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 397
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/data/MediaSet;->mBucketPath:Ljava/lang/String;

    const-string v5, "/mnt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/data/MediaSet;->mBucketPath:Ljava/lang/String;

    const-string v5, "/storage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 398
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 399
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 400
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalAlbum;->getHiddenFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v4, "bucket_id"

    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v4, "media_type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/gallery3d/data/LocalAlbum;->EXTERNAL_FILE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/DataManager;->notifyChange(Landroid/net/Uri;)V

    .line 415
    :cond_1
    return-void

    .line 405
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "system_hidden_folder"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 407
    .local v2, hiddenPreferences:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/gallery3d/data/MediaSet;->mBucketPath:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 410
    .end local v2           #hiddenPreferences:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isCameraRoll()Z
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    sget v1, Lcom/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 3

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mReloader:Lcom/android/gallery3d/data/ReloadNotifier;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/ReloadNotifier;->isDirty()Z

    move-result v0

    .line 344
    .local v0, reloadFlag:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mReloader:Lcom/android/gallery3d/data/ReloadNotifier;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/ReloadNotifier;->getReloadType()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mReloadType:I

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifierSettings:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v2

    or-int/2addr v1, v2

    or-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 346
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 347
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 349
    :cond_1
    iget-wide v1, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v1
.end method

.method public setAsPrivate()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 442
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_IS_PRIVACY:Z

    if-nez v1, :cond_0

    .line 448
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 444
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 445
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "is_hw_privacy"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public show()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 419
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 421
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/gallery3d/data/LocalAlbum;->EXTERNAL_FILE_URI:Landroid/net/Uri;

    const-string v5, "_data = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalAlbum;->getHiddenFileName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 423
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/gallery3d/data/MediaSet;->mBucketPath:Ljava/lang/String;

    const-string v4, ".hidden"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .local v1, hiddenFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->notifyChange(Landroid/net/Uri;)V

    .line 437
    return-void

    .line 427
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/gallery3d/data/MediaSet;->mBucketPath:Ljava/lang/String;

    const-string v4, "/mnt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/data/MediaSet;->mBucketPath:Ljava/lang/String;

    const-string v4, "/storage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "system_hidden_folder"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 430
    .local v2, hiddenPreferences:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/android/gallery3d/data/MediaSet;->mBucketPath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 431
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 433
    .end local v2           #hiddenPreferences:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 434
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateName()V
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResId:I

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    .line 339
    :cond_0
    return-void
.end method
