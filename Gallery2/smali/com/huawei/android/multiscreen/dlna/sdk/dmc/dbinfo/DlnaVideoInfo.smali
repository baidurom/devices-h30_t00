.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;
.super Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;
.source "DlnaVideoInfo.java"


# static fields
.field public static final BUCKET_ID:Ljava/lang/String; = "bucket_id"

.field public static final BUCKET_NAME:Ljava/lang/String; = "bucket_display_name"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final DATE_TAKEN:Ljava/lang/String; = "datetaken"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final IS_PRIVATE:Ljava/lang/String; = "isprivate"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGTIGUDE:Ljava/lang/String; = "longitude"

.field public static final MINI_THUMB_DATA:Ljava/lang/String; = "mini_thumb_data"

.field public static final MINI_THUMB_MAGIC:Ljava/lang/String; = "mini_thumb_magic"

.field public static final RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final ROOTID:Ljava/lang/String; = "root_id"

.field private static final TAG:Ljava/lang/String; = "DLNAVideoInfo"

.field public static final TAGS:Ljava/lang/String; = "tags"


# instance fields
.field private bucketId:Ljava/lang/String;

.field private bucketName:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private dateTaken:I

.field private description:Ljava/lang/String;

.field private isQuery:Z

.field private language:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private miniThumbData:Ljava/lang/String;

.field private miniThumbMagic:I

.field private resolution:Ljava/lang/String;

.field private tags:Ljava/lang/String;

.field private thumbnailsdata:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;-><init>()V

    return-void
.end method

.method public static getVideos(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getVideos(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getVideos(Landroid/database/Cursor;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "cursor"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getVideos(Landroid/database/Cursor;ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getVideos(Landroid/database/Cursor;Z)Ljava/util/List;
    .locals 5
    .parameter "cursor"
    .parameter "dlna"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;>;"
    if-eqz p0, :cond_0

    .line 533
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 534
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 547
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 550
    :cond_0
    :goto_1
    return-object v2

    .line 536
    :cond_1
    :try_start_1
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;-><init>()V

    .line 537
    .local v1, info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;
    invoke-virtual {v1, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getInfo(Landroid/database/Cursor;)V

    .line 538
    invoke-virtual {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->setDlna(Z)V

    .line 540
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 543
    .end local v1           #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;
    :catch_0
    move-exception v0

    .line 544
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "DLNAVideoInfo"

    const-string v4, "getVideos happened Exception"

    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 547
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 546
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 547
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 548
    throw v3
.end method

.method public static getVideos(Landroid/database/Cursor;ZLandroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "cursor"
    .parameter "dlna"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Z",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;>;"
    if-eqz p0, :cond_0

    .line 499
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 500
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 516
    :cond_0
    :goto_1
    return-object v2

    .line 502
    :cond_1
    :try_start_1
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;-><init>()V

    .line 503
    .local v1, info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;
    invoke-virtual {v1, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getInfo(Landroid/database/Cursor;)V

    .line 504
    invoke-virtual {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->setDlna(Z)V

    .line 506
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 509
    .end local v1           #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;
    :catch_0
    move-exception v0

    .line 510
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 512
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 513
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 514
    throw v3
.end method


# virtual methods
.method public getBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->bucketId:Ljava/lang/String;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTaken()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->dateTaken:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->height:I

    return v0
.end method

.method public getInfo(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 437
    invoke-super {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAVInfo;->getInfo(Landroid/database/Cursor;)V

    .line 438
    if-nez p1, :cond_0

    .line 453
    :goto_0
    return-void

    .line 441
    :cond_0
    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->description:Ljava/lang/String;

    .line 442
    const-string v0, "bucket_id"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->bucketId:Ljava/lang/String;

    .line 443
    const-string v0, "bucket_display_name"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->bucketName:Ljava/lang/String;

    .line 444
    const-string v0, "datetaken"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->dateTaken:I

    .line 445
    const-string v0, "mini_thumb_magic"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->miniThumbMagic:I

    .line 446
    const-string v0, "resolution"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->resolution:Ljava/lang/String;

    .line 447
    const-string v0, "tags"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->tags:Ljava/lang/String;

    .line 448
    const-string v0, "category"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->category:Ljava/lang/String;

    .line 449
    const-string v0, "language"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->language:Ljava/lang/String;

    .line 450
    const-string v0, "mini_thumb_data"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->miniThumbData:Ljava/lang/String;

    .line 451
    const-string v0, "longitude"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getDoubleColumn(Ljava/lang/String;Landroid/database/Cursor;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->longitude:D

    .line 452
    const-string v0, "latitude"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getDoubleColumn(Ljava/lang/String;Landroid/database/Cursor;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->latitude:D

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 306
    iget-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 325
    iget-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->longitude:D

    return-wide v0
.end method

.method public getMiniThumbData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->miniThumbData:Ljava/lang/String;

    return-object v0
.end method

.method public getMiniThumbMagic()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->miniThumbMagic:I

    return v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailsdata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->thumbnailsdata:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->width:I

    return v0
.end method

.method public isQuery()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->isQuery:Z

    return v0
.end method

.method public setBucketId(Ljava/lang/String;)V
    .locals 0
    .parameter "bucketId"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->bucketId:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .parameter "bucketName"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->bucketName:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->category:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setDateTaken(I)V
    .locals 0
    .parameter "dateTaken"

    .prologue
    .line 354
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->dateTaken:I

    .line 355
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->description:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 415
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->height:I

    .line 416
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->language:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 316
    iput-wide p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->latitude:D

    .line 317
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 335
    iput-wide p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->longitude:D

    .line 336
    return-void
.end method

.method public setMiniThumbData(Ljava/lang/String;)V
    .locals 0
    .parameter "miniThumbData"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->miniThumbData:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setMiniThumbMagic(I)V
    .locals 0
    .parameter "miniThumbMagic"

    .prologue
    .line 373
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->miniThumbMagic:I

    .line 374
    return-void
.end method

.method public setQuery(Z)V
    .locals 0
    .parameter "isQuery"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->isQuery:Z

    .line 176
    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->resolution:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0
    .parameter "tags"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->tags:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setThumbnailsdata(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailsdata"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->thumbnailsdata:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 423
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->width:I

    .line 424
    return-void
.end method
