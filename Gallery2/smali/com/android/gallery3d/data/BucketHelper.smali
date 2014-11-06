.class Lcom/android/gallery3d/data/BucketHelper;
.super Ljava/lang/Object;
.source "BucketHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    }
.end annotation


# static fields
.field private static final BUCKET_GROUP_BY:Ljava/lang/String; = "1) GROUP BY 1,(2"

.field private static final BUCKET_GROUP_BY_IN_ONE_TABLE:Ljava/lang/String; = "1) GROUP BY (1"

.field private static final BUCKET_ORDER_BY:Ljava/lang/String; = "MAX(datetaken) DESC"

.field private static final EXTERNAL_MEDIA:Ljava/lang/String; = "external"

.field private static final HIDDEN_BUCKETS_WHERE:Ljava/lang/String; = " _data like \'%.hidden\' "

.field private static final INDEX_BUCKET_DATA:I = 0x3

.field private static final INDEX_BUCKET_ID:I = 0x0

.field private static final INDEX_BUCKET_IS_PRIVATE:I = 0x4

.field private static final INDEX_BUCKET_NAME:I = 0x2

.field private static final INDEX_DATE_TAKEN:I = 0x1

.field private static final INDEX_MEDIA_TYPE:I = 0x1

.field private static final MEDIA_COLUMN_IS_PRIVACY:Ljava/lang/String; = "is_hw_privacy"

.field private static final PROJECTION_BUCKET:[Ljava/lang/String; = null

.field private static final PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BucketHelper"

.field private static mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private static mShowHiddenAlbums:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v2

    const-string v1, "media_type"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "0"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/gallery3d/data/BucketHelper;->PROJECTION_BUCKET:[Ljava/lang/String;

    .line 72
    sget-boolean v0, Lcom/android/gallery3d/util/GalleryUtils;->IS_SUPPORT_PRIVACY:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_COLUMNS_IS_PRIVACY:Z

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/android/gallery3d/data/BucketHelper;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v1, "IFNULL(is_hw_privacy,0)"

    aput-object v1, v0, v6

    .line 99
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v2

    const-string v1, "MAX(datetaken)"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/gallery3d/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 301
    return-void
.end method

.method private static findHiddenBuckets(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 8
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-static {}, Lcom/android/gallery3d/data/BucketHelper;->getFilesContentUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/gallery3d/data/BucketHelper;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v3, " _data like \'%.hidden\' "

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 114
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v7, hiddenBuckets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 123
    return-object v7
.end method

.method public static getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 2
    .parameter "resolver"
    .parameter "bucketId"

    .prologue
    .line 288
    sget-boolean v1, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    if-eqz v1, :cond_1

    .line 289
    invoke-static {}, Lcom/android/gallery3d/data/BucketHelper;->getFilesContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/android/gallery3d/data/BucketHelper;->getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 297
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    .line 290
    goto :goto_0

    .line 292
    .end local v0           #result:Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, p1}, Lcom/android/gallery3d/data/BucketHelper;->getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 294
    .restart local v0       #result:Ljava/lang/String;
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    .line 295
    :cond_2
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1, p1}, Lcom/android/gallery3d/data/BucketHelper;->getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 297
    if-nez v0, :cond_3

    const-string v1, ""

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private static getBucketNameInTable(Landroid/content/ContentResolver;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 7
    .parameter "resolver"
    .parameter "tableUri"
    .parameter "bucketId"

    .prologue
    const/4 v5, 0x0

    .line 266
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 267
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 270
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/android/gallery3d/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    const-string v3, "bucket_id = ?"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 273
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 277
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 279
    :goto_0
    return-object v5

    .line 277
    :cond_0
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static getFilesContentUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 284
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static loadBucketEntries(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .locals 1
    .parameter "jc"
    .parameter "resolver"
    .parameter "type"

    .prologue
    .line 132
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/data/BucketHelper;->loadBucketEntriesFromFilesTable(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/data/BucketHelper;->loadBucketEntriesFromImagesAndVideoTable(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    move-result-object v0

    goto :goto_0
.end method

.method private static loadBucketEntriesFromFilesTable(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .locals 19
    .parameter "jc"
    .parameter "resolver"
    .parameter "type"

    .prologue
    .line 189
    invoke-static {}, Lcom/android/gallery3d/data/BucketHelper;->getFilesContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 191
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Lcom/android/gallery3d/data/BucketHelper;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v4, "1) GROUP BY 1,(2"

    const/4 v5, 0x0

    const-string v6, "MAX(datetaken) DESC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 194
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 195
    const-string v1, "BucketHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "cannot open local database: "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    .line 261
    :goto_0
    return-object v1

    .line 198
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v10, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    const/16 v17, 0x0

    .line 200
    .local v17, typeBits:I
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    .line 201
    or-int/lit8 v17, v17, 0x2

    .line 203
    :cond_1
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    .line 204
    or-int/lit8 v17, v17, 0x8

    .line 206
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/util/BlackList;->getInstance()Lcom/android/gallery3d/util/BlackList;

    move-result-object v9

    .line 207
    .local v9, blackList:Lcom/android/gallery3d/util/BlackList;
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/data/BucketHelper;->findHiddenBuckets(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v14

    .line 209
    .local v14, hiddenBuckets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v0, p2

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    .line 210
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/gallery3d/data/BucketHelper;->mShowHiddenAlbums:Z

    .line 216
    :goto_1
    sget-object v1, Lcom/android/gallery3d/data/BucketHelper;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "system_hidden_folder"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 219
    .local v15, mHiddenPreferences:Landroid/content/SharedPreferences;
    move/from16 v0, p2

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    const/16 v16, 0x1

    .line 221
    .local v16, showPrivateAlbums:Z
    :cond_3
    :goto_2
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 222
    const/4 v1, 0x1

    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    shl-int/2addr v1, v5

    and-int v1, v1, v17

    if-eqz v1, :cond_7

    .line 223
    const/4 v1, 0x3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 224
    .local v12, dataName:Ljava/lang/String;
    invoke-virtual {v9, v12}, Lcom/android/gallery3d/util/BlackList;->match(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 228
    const-string v1, "/"

    invoke-virtual {v12, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 229
    .local v13, end:I
    const/4 v1, 0x0

    invoke-virtual {v12, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, bucketPath:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 232
    .local v4, bucketId:I
    const/4 v6, 0x0

    .line 233
    .local v6, isHidden:Z
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 234
    const/4 v6, 0x1

    .line 239
    :cond_4
    :goto_3
    sget-boolean v1, Lcom/android/gallery3d/data/BucketHelper;->mShowHiddenAlbums:Z

    if-nez v1, :cond_5

    if-nez v6, :cond_3

    .line 243
    :cond_5
    const/4 v1, 0x4

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_b

    const/4 v8, 0x1

    .line 244
    .local v8, isPrivate:Z
    :goto_4
    if-nez v16, :cond_6

    if-nez v8, :cond_3

    .line 248
    :cond_6
    new-instance v3, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v3 .. v8}, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;ZLjava/lang/String;Z)V

    .line 252
    .local v3, entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 253
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v3           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .end local v4           #bucketId:I
    .end local v6           #isHidden:Z
    .end local v7           #bucketPath:Ljava/lang/String;
    .end local v8           #isPrivate:Z
    .end local v12           #dataName:Ljava/lang/String;
    .end local v13           #end:I
    :cond_7
    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 259
    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 212
    .end local v15           #mHiddenPreferences:Landroid/content/SharedPreferences;
    .end local v16           #showPrivateAlbums:Z
    :cond_8
    sget-object v1, Lcom/android/gallery3d/data/BucketHelper;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "gallery_settings"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v5, "show_hidden_albums"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/gallery3d/data/BucketHelper;->mShowHiddenAlbums:Z

    goto/16 :goto_1

    .line 219
    .restart local v15       #mHiddenPreferences:Landroid/content/SharedPreferences;
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 235
    .restart local v4       #bucketId:I
    .restart local v6       #isHidden:Z
    .restart local v7       #bucketPath:Ljava/lang/String;
    .restart local v12       #dataName:Ljava/lang/String;
    .restart local v13       #end:I
    .restart local v16       #showPrivateAlbums:Z
    :cond_a
    :try_start_1
    const-string v1, "/mnt"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/storage"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 236
    const/4 v1, 0x0

    invoke-interface {v15, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    goto :goto_3

    .line 243
    :cond_b
    const/4 v8, 0x0

    goto :goto_4

    .line 259
    .end local v4           #bucketId:I
    .end local v6           #isHidden:Z
    .end local v7           #bucketPath:Ljava/lang/String;
    .end local v12           #dataName:Ljava/lang/String;
    .end local v13           #end:I
    :cond_c
    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 261
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    goto/16 :goto_0

    .line 259
    :catchall_0
    move-exception v1

    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private static loadBucketEntriesFromImagesAndVideoTable(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    .locals 4
    .parameter "jc"
    .parameter "resolver"
    .parameter "type"

    .prologue
    .line 167
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 168
    .local v0, buckets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_0

    .line 169
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v2, v0}, Lcom/android/gallery3d/data/BucketHelper;->updateBucketEntriesFromTable(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V

    .line 172
    :cond_0
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_1

    .line 173
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v2, v0}, Lcom/android/gallery3d/data/BucketHelper;->updateBucketEntriesFromTable(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V

    .line 176
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    .line 177
    .local v1, entries:[Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    new-instance v2, Lcom/android/gallery3d/data/BucketHelper$1;

    invoke-direct {v2}, Lcom/android/gallery3d/data/BucketHelper$1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 184
    return-object v1
.end method

.method public static setGalleryApp(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 0
    .parameter "application"

    .prologue
    .line 127
    sput-object p0, Lcom/android/gallery3d/data/BucketHelper;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 128
    return-void
.end method

.method private static updateBucketEntriesFromTable(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/HashMap;)V
    .locals 10
    .parameter "jc"
    .parameter "resolver"
    .parameter "tableUri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/data/BucketHelper$BucketEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, buckets:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/data/BucketHelper$BucketEntry;>;"
    const/4 v4, 0x0

    .line 141
    sget-object v2, Lcom/android/gallery3d/data/BucketHelper;->PROJECTION_BUCKET_IN_ONE_TABLE:[Ljava/lang/String;

    const-string v3, "1) GROUP BY (1"

    move-object v0, p1

    move-object v1, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 143
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 144
    const-string v0, "BucketHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot open media database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 148
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 150
    .local v6, bucketId:I
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 151
    .local v8, dateTaken:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    .line 152
    .local v9, entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    if-nez v9, :cond_1

    .line 153
    new-instance v9, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;

    .end local v9           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v6, v0}, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 154
    .restart local v9       #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iput v8, v9, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->dateTaken:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 161
    .end local v6           #bucketId:I
    .end local v8           #dateTaken:I
    .end local v9           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    .line 157
    .restart local v6       #bucketId:I
    .restart local v8       #dateTaken:I
    .restart local v9       #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    :cond_1
    :try_start_1
    iget v0, v9, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->dateTaken:I

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Lcom/android/gallery3d/data/BucketHelper$BucketEntry;->dateTaken:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 161
    .end local v6           #bucketId:I
    .end local v8           #dateTaken:I
    .end local v9           #entry:Lcom/android/gallery3d/data/BucketHelper$BucketEntry;
    :cond_2
    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0
.end method
