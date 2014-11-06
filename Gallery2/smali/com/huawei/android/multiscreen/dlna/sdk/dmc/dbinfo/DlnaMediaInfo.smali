.class public abstract Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;
.super Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;
.source "DlnaMediaInfo.java"


# static fields
.field public static final ADD_DATE:Ljava/lang/String; = "date_added"

.field public static final ALBUM_ART_URI:Ljava/lang/String; = "albumart_uri"

.field public static final CREATE_DATE:Ljava/lang/String; = "date_created"

.field public static final DATA:Ljava/lang/String; = "_data"

.field public static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final MOD_DATE:Ljava/lang/String; = "date_modified"

.field public static final NAME:Ljava/lang/String; = "_display_name"

.field public static final PARENT_ID:Ljava/lang/String; = "parent_id"

.field public static final REF_ID:Ljava/lang/String; = "ref_id"

.field public static final SIZE:Ljava/lang/String; = "_size"

.field private static final TAG:Ljava/lang/String; = "DlnaMediaInfo"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "mime_type"

.field public static final UPNP_CLASS:Ljava/lang/String; = "upnp_class"


# instance fields
.field private addDate:Ljava/lang/String;

.field private albumArtUri:Ljava/lang/String;

.field private createdDate:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field protected height:I

.field private isfullscreen:Z

.field private itemId:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private modifyDate:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parentId:Ljava/lang/String;

.field private refId:I

.field private size:I

.field private tempurl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private upnpClass:Ljava/lang/String;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;-><init>()V

    return-void
.end method

.method public static getImagesAndVideos(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v3, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;>;"
    if-eqz p0, :cond_0

    .line 435
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 436
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 456
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_0
    :goto_1
    return-object v3

    .line 438
    :cond_1
    :try_start_1
    const-string v5, "mime_type"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 439
    .local v1, index:I
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, value:Ljava/lang/String;
    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 442
    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;

    invoke-direct {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;-><init>()V

    .line 443
    .local v2, mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;
    invoke-virtual {v2, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getInfo(Landroid/database/Cursor;)V

    .line 444
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    .end local v2           #mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 453
    .end local v1           #index:I
    .end local v4           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 454
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "DlnaMediaInfo"

    const-string v6, "getImagesAndVideos happened Exception"

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 456
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 447
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #index:I
    .restart local v4       #value:Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;

    invoke-direct {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;-><init>()V

    .line 448
    .local v2, mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;
    invoke-virtual {v2, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getInfo(Landroid/database/Cursor;)V

    .line 449
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 455
    .end local v1           #index:I
    .end local v2           #mediaInfo:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;
    .end local v4           #value:Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 456
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 457
    throw v5
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;
    .locals 2
    .parameter "mediaType"

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, ret:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    const-string v1, "image"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;

    .end local v0           #ret:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;
    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;-><init>()V

    .line 159
    .restart local v0       #ret:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    const-string v1, "video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;

    .end local v0           #ret:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;
    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;-><init>()V

    .restart local v0       #ret:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;
    goto :goto_0

    .line 155
    :cond_2
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;

    .end local v0           #ret:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;
    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;-><init>()V

    .restart local v0       #ret:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;
    goto :goto_0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 381
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAddDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->addDate:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArtUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->albumArtUri:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->createdDate:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 370
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 371
    .local v1, pos:I
    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 372
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 377
    .end local v1           #pos:I
    :cond_0
    :goto_0
    return-object v0

    .line 375
    :cond_1
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->height:I

    return v0
.end method

.method public getInfo(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 325
    invoke-super {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->getInfo(Landroid/database/Cursor;)V

    .line 326
    if-nez p1, :cond_0

    .line 360
    :goto_0
    return-void

    .line 329
    :cond_0
    const-string v2, "ref_id"

    invoke-virtual {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    iput v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->refId:I

    .line 330
    const-string v2, "parent_id"

    invoke-virtual {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->parentId:Ljava/lang/String;

    .line 331
    const-string v2, "item_id"

    invoke-virtual {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->itemId:Ljava/lang/String;

    .line 332
    const-string v2, "_size"

    invoke-virtual {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v2

    iput v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->size:I

    .line 334
    const-string v2, "_data"

    invoke-virtual {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->data:Ljava/lang/String;

    .line 335
    const-string v2, "_display_name"

    invoke-virtual {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->name:Ljava/lang/String;

    .line 336
    const-string v2, "title"

    invoke-virtual {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->title:Ljava/lang/String;

    .line 337
    const-string v2, "mime_type"

    invoke-virtual {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->type:Ljava/lang/String;

    .line 338
    const-string v2, "date_added"

    invoke-virtual {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->addDate:Ljava/lang/String;

    .line 339
    const-string v2, "date_modified"

    invoke-virtual {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->modifyDate:Ljava/lang/String;

    .line 340
    const-string v2, "date_created"

    invoke-virtual {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->createdDate:Ljava/lang/String;

    .line 341
    const-string v2, "albumart_uri"

    invoke-virtual {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->albumArtUri:Ljava/lang/String;

    .line 342
    const-string v2, "upnp_class"

    invoke-virtual {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->upnpClass:Ljava/lang/String;

    .line 343
    const-string v2, "mime_type"

    invoke-virtual {p0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->mimeType:Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->title:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->title:Ljava/lang/String;

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->name:Ljava/lang/String;

    .line 349
    :cond_1
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->data:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 350
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->data:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 351
    .local v1, pos:I
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 352
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->data:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->name:Ljava/lang/String;

    .line 356
    .end local v1           #pos:I
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->name:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "DlnaMediaInfo"

    const-string v3, "getInfo happened UnsupportedEncodingException"

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaData()Ljava/lang/String;
    .locals 11

    .prologue
    .line 389
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;

    move-result-object v9

    .line 390
    iget v10, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->deviceId:I

    invoke-virtual {v9, v10}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DIDLiteHeaderManager;->getDeviceDIDLLiteHeader(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, didliteHeader:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 394
    const/4 v9, 0x0

    .line 419
    :goto_0
    return-object v9

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getItemId()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getParentId()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, parentId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 401
    .local v6, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getUpnpClass()Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, upnpClass:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getSize()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, size:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, protocolInfo:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getData()Ljava/lang/String;

    move-result-object v8

    .line 408
    .local v8, uri:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 409
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v9, "<item id=\""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\" parentID=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\" restricted=\"1\"><dc:title>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "</dc:title><upnp:class>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "</upnp:class><res size=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\" protocolInfo=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "</res></item>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    const-string v9, "</DIDL-Lite>"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->modifyDate:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefId()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->refId:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->size:I

    return v0
.end method

.method public getTempurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->tempurl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpnpClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->upnpClass:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->width:I

    return v0
.end method

.method public isIsfullscreen()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->isfullscreen:Z

    return v0
.end method

.method public setAddDate(Ljava/lang/String;)V
    .locals 0
    .parameter "addDate"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->addDate:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setAlbumArtUri(Ljava/lang/String;)V
    .locals 0
    .parameter "albumArtUri"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->albumArtUri:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0
    .parameter "createdDate"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->createdDate:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->data:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 226
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->height:I

    .line 227
    return-void
.end method

.method public setIsfullscreen(Z)V
    .locals 0
    .parameter "isfullscreen"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->isfullscreen:Z

    .line 168
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .parameter "itemId"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->itemId:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "mimeType"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->mimeType:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setModifyDate(Ljava/lang/String;)V
    .locals 0
    .parameter "modifyDate"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->modifyDate:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->name:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0
    .parameter "parentId"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->parentId:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public final setRefId(I)V
    .locals 0
    .parameter "refId"

    .prologue
    .line 194
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->refId:I

    .line 195
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 258
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->size:I

    .line 259
    return-void
.end method

.method public setTempurl(Ljava/lang/String;)V
    .locals 0
    .parameter "tempurl"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->tempurl:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->title:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->type:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setUpnpClass(Ljava/lang/String;)V
    .locals 0
    .parameter "upnpClass"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->upnpClass:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 234
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->width:I

    .line 235
    return-void
.end method
