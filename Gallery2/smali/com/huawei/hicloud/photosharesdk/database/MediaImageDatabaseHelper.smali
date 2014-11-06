.class public Lcom/huawei/hicloud/photosharesdk/database/MediaImageDatabaseHelper;
.super Ljava/lang/Object;
.source "MediaImageDatabaseHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private static cursorToEntityList(Landroid/database/Cursor;)Ljava/util/List;
    .locals 11
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 66
    :goto_0
    return-object v7

    .line 20
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .local v7, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 34
    :cond_1
    new-instance v4, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;

    invoke-direct {v4}, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;-><init>()V

    .line 35
    .local v4, ie:Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;
    const-string v9, "_id"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 36
    .local v3, idCol:I
    const-string v9, "_data"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 37
    .local v5, imagePathCol:I
    const-string v9, "_size"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 39
    .local v8, sizeCol:I
    const-string v9, "_display_name"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 42
    .local v2, displayNameCol:I
    const-string v9, "datetaken"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 44
    .local v1, dateCol:I
    const-string v9, "date_modified"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 47
    .local v6, modifyDateCol:I
    const-string v9, "bucket_display_name"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 49
    .local v0, bucketDisplayNameCol:I
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageId:J

    .line 50
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imagePath:Ljava/lang/String;

    .line 51
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageSize:J

    .line 52
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageDisplayName:Ljava/lang/String;

    .line 55
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageDate:J

    .line 56
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v4, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageModifyDate:J

    .line 58
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;->imageBucketDisplayName:Ljava/lang/String;

    .line 59
    if-eqz v8, :cond_2

    .line 61
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    .line 33
    if-nez v9, :cond_1

    .line 65
    .end local v0           #bucketDisplayNameCol:I
    .end local v1           #dateCol:I
    .end local v2           #displayNameCol:I
    .end local v3           #idCol:I
    .end local v4           #ie:Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;
    .end local v5           #imagePathCol:I
    .end local v6           #modifyDateCol:I
    .end local v8           #sizeCol:I
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static getAllEntities(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 79
    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 78
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 80
    .local v6, c:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/database/MediaImageDatabaseHelper;->cursorToEntityList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCameraEntities(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "c"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/Util$SDPath;->getInternal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/DCIM/%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/huawei/hicloud/photosharesdk/database/MediaImageDatabaseHelper;->getCameraEntities(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, arrayList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/Util$SDPath;->getExternal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    const-string v2, "/DCIM/%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {p0, p1, p2, v1}, Lcom/huawei/hicloud/photosharesdk/database/MediaImageDatabaseHelper;->getCameraEntities(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    return-object v0
.end method

.method public static getCameraEntities(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "c"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/ImageEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 94
    const-string v1, "_data like ?"

    .line 95
    .local v1, cameraSel:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    aput-object p3, v0, v5

    .line 99
    .local v0, args:[Ljava/lang/String;
    if-eqz p2, :cond_1

    array-length v3, p2

    if-lez v3, :cond_1

    .line 100
    move-object v2, v0

    .line 101
    .local v2, tempSelection:[Ljava/lang/String;
    array-length v3, v2

    array-length v4, p2

    add-int/2addr v3, v4

    new-array v0, v3, [Ljava/lang/String;

    .line 102
    array-length v3, v2

    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    array-length v3, v2

    array-length v4, p2

    invoke-static {p2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    .end local v2           #tempSelection:[Ljava/lang/String;
    :cond_1
    const-string v3, "_id ASC"

    invoke-static {p0, v1, v0, v3}, Lcom/huawei/hicloud/photosharesdk/database/MediaImageDatabaseHelper;->getAllEntities(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method
