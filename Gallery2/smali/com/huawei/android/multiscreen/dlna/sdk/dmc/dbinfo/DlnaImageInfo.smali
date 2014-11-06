.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;
.super Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;
.source "DlnaImageInfo.java"


# static fields
.field public static final BUCKET_ID:Ljava/lang/String; = "bucket_id"

.field public static final BUCKET_NAME:Ljava/lang/String; = "bucket_display_name"

.field public static final DATE_TAKEN:Ljava/lang/String; = "datetaken"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final IS_PRIVATE:Ljava/lang/String; = "isprivate"

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGTIGUDE:Ljava/lang/String; = "longitude"

.field public static final MINI_THUMB_MAGIC:Ljava/lang/String; = "mini_thumb_magic"

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final PICASA_ID:Ljava/lang/String; = "picasa_id"


# instance fields
.field private bucketId:Ljava/lang/String;

.field private bucketName:Ljava/lang/String;

.field private canRorate:Z

.field private dateTaken:I

.field private description:Ljava/lang/String;

.field private isDmr:Z

.field private isFromDatabase:Z

.field private isPrivate:I

.field private isQuery:Z

.field private latitude:D

.field private longitude:D

.field private miniThumbMagic:I

.field private orientation:I

.field private picasaId:Ljava/lang/String;

.field private tempPath:Ljava/lang/String;

.field private thumbnailsdata:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;-><init>()V

    .line 113
    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isFromDatabase:Z

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->canRorate:Z

    .line 172
    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isDmr:Z

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->thumbnailsdata:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;-><init>()V

    .line 113
    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isFromDatabase:Z

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->canRorate:Z

    .line 172
    iput-boolean v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isDmr:Z

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->thumbnailsdata:Ljava/lang/String;

    .line 242
    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->bucketId:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->bucketName:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->dateTaken:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->description:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isPrivate:I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->latitude:D

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->longitude:D

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->miniThumbMagic:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->orientation:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->picasaId:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->setData(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->setName(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->setModifyDate(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->setTempPath(Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method

.method public static getImages(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getImages(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getImages(Landroid/database/Cursor;Landroid/content/Context;)Ljava/util/List;
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
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getImages(Landroid/database/Cursor;ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getImages(Landroid/database/Cursor;Z)Ljava/util/List;
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
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;>;"
    if-eqz p0, :cond_0

    .line 276
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 277
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_0
    :goto_1
    return-object v2

    .line 279
    :cond_1
    :try_start_1
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;-><init>()V

    .line 280
    .local v1, info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;
    invoke-virtual {v1, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getInfo(Landroid/database/Cursor;)V

    .line 281
    invoke-virtual {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->setDlna(Z)V

    .line 282
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 285
    .end local v1           #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "DlnaImageInfo"

    const-string v4, "getImages happened Exception"

    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 287
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 288
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 289
    throw v3
.end method

.method public static getImages(Landroid/database/Cursor;ZLandroid/content/Context;)Ljava/util/List;
    .locals 3
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
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;>;"
    if-eqz p0, :cond_0

    .line 309
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 310
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_0
    return-object v1

    .line 312
    :cond_1
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;-><init>()V

    .line 314
    .local v0, info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;
    invoke-virtual {v0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getInfo(Landroid/database/Cursor;)V

    .line 315
    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->setDlna(Z)V

    .line 323
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->bucketId:Ljava/lang/String;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCanRorate()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->canRorate:Z

    return v0
.end method

.method public getDateTaken()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->dateTaken:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->height:I

    return v0
.end method

.method public getInfo(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 714
    invoke-super {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getInfo(Landroid/database/Cursor;)V

    .line 715
    if-nez p1, :cond_0

    .line 730
    :goto_0
    return-void

    .line 718
    :cond_0
    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->description:Ljava/lang/String;

    .line 719
    const-string v0, "picasa_id"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->picasaId:Ljava/lang/String;

    .line 720
    const-string v0, "bucket_id"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->bucketId:Ljava/lang/String;

    .line 721
    const-string v0, "bucket_display_name"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getStringColumn(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->bucketName:Ljava/lang/String;

    .line 723
    const-string v0, "isprivate"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isPrivate:I

    .line 724
    const-string v0, "datetaken"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->dateTaken:I

    .line 725
    const-string v0, "orientation"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->orientation:I

    .line 726
    const-string v0, "longitude"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getDoubleColumn(Ljava/lang/String;Landroid/database/Cursor;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->longitude:D

    .line 727
    const-string v0, "latitude"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getDoubleColumn(Ljava/lang/String;Landroid/database/Cursor;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->latitude:D

    .line 729
    const-string v0, "device_id"

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getIntColumn(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaBaseInfo;->deviceId:I

    goto :goto_0
.end method

.method public getIsPrivate()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isPrivate:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 526
    iget-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 545
    iget-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->longitude:D

    return-wide v0
.end method

.method public getMiniThumbMagic()I
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->miniThumbMagic:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->orientation:I

    return v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->picasaId:Ljava/lang/String;

    return-object v0
.end method

.method public getTempPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->tempPath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailsdata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->thumbnailsdata:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->width:I

    return v0
.end method

.method public isDmr()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isDmr:Z

    return v0
.end method

.method public isFromDatabase()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isFromDatabase:Z

    return v0
.end method

.method public isQuery()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isQuery:Z

    return v0
.end method

.method public rorate(I)V
    .locals 2
    .parameter "next"

    .prologue
    .line 556
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->orientation:I

    mul-int/lit8 v1, p1, 0x5a

    add-int/2addr v0, v1

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->orientation:I

    .line 557
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->orientation:I

    if-gez v0, :cond_0

    .line 558
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->orientation:I

    add-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->orientation:I

    .line 561
    :cond_0
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->orientation:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_1

    .line 562
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->orientation:I

    add-int/lit16 v0, v0, -0x168

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->orientation:I

    .line 564
    :cond_1
    return-void
.end method

.method public setBucketId(Ljava/lang/String;)V
    .locals 0
    .parameter "bucketId"

    .prologue
    .line 684
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->bucketId:Ljava/lang/String;

    .line 685
    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .parameter "bucketName"

    .prologue
    .line 703
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->bucketName:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public setCanRorate(Z)V
    .locals 0
    .parameter "mcanRorate"

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->canRorate:Z

    .line 574
    return-void
.end method

.method public setDateTaken(I)V
    .locals 0
    .parameter "dateTaken"

    .prologue
    .line 613
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->dateTaken:I

    .line 614
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->description:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public setDmr(Z)V
    .locals 0
    .parameter "isDmr"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isDmr:Z

    .line 190
    return-void
.end method

.method public setFromDatabase(Z)V
    .locals 0
    .parameter "isFromDatabase"

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isFromDatabase:Z

    .line 423
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 214
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->height:I

    .line 215
    return-void
.end method

.method public setIsPrivate(I)V
    .locals 0
    .parameter "isPrivate"

    .prologue
    .line 517
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isPrivate:I

    .line 518
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 536
    iput-wide p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->latitude:D

    .line 537
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 594
    iput-wide p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->longitude:D

    .line 595
    return-void
.end method

.method public setMiniThumbMagic(I)V
    .locals 0
    .parameter "miniThumbMagic"

    .prologue
    .line 665
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->miniThumbMagic:I

    .line 666
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 646
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->orientation:I

    .line 647
    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0
    .parameter "picasaId"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->picasaId:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setQuery(Z)V
    .locals 0
    .parameter "isQuery"

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isQuery:Z

    .line 198
    return-void
.end method

.method public setTempPath(Ljava/lang/String;)V
    .locals 0
    .parameter "tempPath"

    .prologue
    .line 629
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->tempPath:Ljava/lang/String;

    .line 630
    return-void
.end method

.method public setThumbnailsdata(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailsdata"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->thumbnailsdata:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 222
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->width:I

    .line 223
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 444
    if-nez p1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->bucketId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->bucketName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->dateTaken:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->isPrivate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 453
    iget-wide v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 454
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->miniThumbMagic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->picasaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getModifyDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
