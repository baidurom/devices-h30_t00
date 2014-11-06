.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DBManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllAudios()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    const-string v1, "select * from audio"

    .line 242
    .local v1, sql:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 243
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getAudios(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getAllImages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    const-string v1, "select * from image"

    .line 232
    .local v1, sql:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 233
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getImages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getAllImagesAndVideos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    const-string v2, "DBManager"

    const-string v3, "getAllImagesAndVideos"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 263
    .local v1, sql:Ljava/lang/StringBuffer;
    const-string v2, "select item_id, _data, _size, _display_name, mime_type, title, date_created,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    const-string v2, "date_added, date_modified, description,parent_id,device_id,ref_id,albumart_uri,upnp_class,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    const-string v2, "isprivate,latitude,longitude,datetaken,bucket_id,bucket_display_name,mini_thumb_magic,duration,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    const-string v2, "artist,album,resolution,tags,category,language,mini_thumb_data,bookmark,NULL as picasa_id, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    const-string v2, "NULL as orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    const-string v2, "from video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    const-string v2, "union "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    const-string v2, "select item_id, _data, _size, _display_name, mime_type, title, date_created,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    const-string v2, "date_added, date_modified, description,parent_id,device_id,ref_id,albumart_uri,upnp_class,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    const-string v2, "isprivate,latitude,longitude,datetaken,bucket_id,bucket_display_name,mini_thumb_magic,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    const-string v2, "NULL as duration,NULL as artist,NULL as album,NULL as resolution,NULL as tags,NULL as category,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    const-string v2, "NULL as language,NULL as mini_thumb_data,NULL as bookmark, picasa_id,orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    const-string v2, "from image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    const-string v2, "order by date_created desc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    const-string v2, "DBManager"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 303
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getImagesAndVideos(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getAllVideos()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    const-string v1, "select * from video"

    .line 252
    .local v1, sql:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 253
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getVideos(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getAudioByDeviceId(I)Ljava/util/List;
    .locals 5
    .parameter "deviceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    const-string v1, "select * from audio where device_id=? order by date_created desc"

    .line 149
    .local v1, sql:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 150
    .local v2, sqlArgs:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 151
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getAudios(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static getAudioByDeviceIdWithPagination(III)Ljava/util/List;
    .locals 5
    .parameter "deviceId"
    .parameter "start"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select * from audio where device_id=? order by _id asc LIMIT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 343
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, sql:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 346
    .local v2, sqlArgs:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 347
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getAudios(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static getAudioBySearchQuery(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "deviceID"
    .parameter "mQuery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1070
    .line 1071
    const-string v0, "Audio"

    .line 1070
    invoke-static {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getMediasBySearchQuery(ILjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getAudios(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioBySearchQuery(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "mQuery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1107
    const-string v0, "Audio"

    invoke-static {v0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getMediasBySearchQuery(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getAudios(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioChildrenByDeviceIdAndFolderId(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "deviceId"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 871
    const-string v3, "select * from audio where device_id=? and parent_id=?"

    .line 873
    .local v3, sql_audio:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p1, v2, v4

    .line 875
    .local v2, sqlArgs:[Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 876
    .local v1, cursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getAudios(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 878
    .local v0, audioList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;>;"
    return-object v0
.end method

.method public static getAudioInfoById(II)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;
    .locals 8
    .parameter "deviceId"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;
    const-string v3, "select * from audio where device_id=? and _id=?"

    .line 90
    .local v3, sql:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 93
    .local v4, sqlArgs:[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 95
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getAudios(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 96
    .local v2, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 97
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;
    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;

    .line 99
    .restart local v1       #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;
    :cond_0
    return-object v1
.end method

.method public static getAudioWithPagination(II)Ljava/util/List;
    .locals 4
    .parameter "start"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select * from audio order by _id asc LIMIT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 448
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, sql:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 450
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaAudioInfo;->getAudios(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getFolderChildrenByDeviceIdAndFolderId(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "deviceId"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 831
    const-string v3, "select * from folder where device_id=? and parent_id=?"

    .line 833
    .local v3, sql_folder:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p1, v2, v4

    .line 835
    .local v2, sqlArgs:[Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 836
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->getFolders(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 838
    .local v1, folderList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;>;"
    return-object v1
.end method

.method public static getFolderInfoByFolderId(ILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;
    .locals 7
    .parameter "deviceId"
    .parameter "folderId"

    .prologue
    const/4 v6, 0x0

    .line 805
    const/4 v1, 0x0

    .line 806
    .local v1, info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;
    const-string v3, "select * from folder where device_id=? and folder_id=?"

    .line 807
    .local v3, sql:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    .line 809
    .local v4, sqlArgs:[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 811
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->getFolders(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 812
    .local v2, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 813
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;
    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;

    .line 815
    .restart local v1       #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;
    :cond_0
    return-object v1
.end method

.method public static getFolderInfoById(II)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;
    .locals 8
    .parameter "deviceId"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;
    const-string v3, "select * from folder where device_id=? and _id=?"

    .line 112
    .local v3, sql:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    .line 113
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 115
    .local v4, sqlArgs:[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 117
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;->getFolders(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 118
    .local v2, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 119
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;
    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;

    .line 121
    .restart local v1       #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaFolderInfo;
    :cond_0
    return-object v1
.end method

.method public static getImageAndVideoByDeviceId(I)Ljava/util/List;
    .locals 5
    .parameter "deviceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    .local v1, sql:Ljava/lang/StringBuffer;
    const-string v3, "select item_id, _data, _size, _display_name, mime_type, title, date_created,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v3, "date_added, date_modified, description,parent_id,device_id,ref_id,albumart_uri,upnp_class,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    const-string v3, "isprivate,latitude,longitude,datetaken,bucket_id,bucket_display_name,mini_thumb_magic,duration,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v3, "artist,album,resolution,tags,category,language,mini_thumb_data,bookmark,NULL as picasa_id, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    const-string v3, "NULL as orientation "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const-string v3, "from video "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    const-string v3, "where device_id=? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    const-string v3, "union "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v3, "select item_id, _data, _size, _display_name, mime_type, title, date_created,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string v3, "date_added, date_modified, description,parent_id,device_id,ref_id,albumart_uri,upnp_class,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    const-string v3, "isprivate,latitude,longitude,datetaken,bucket_id,bucket_display_name,mini_thumb_magic,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v3, "NULL as duration,NULL as artist,NULL as album,NULL as resolution,NULL as tags,NULL as category,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string v3, "NULL as language,NULL as mini_thumb_data,NULL as bookmark, picasa_id,orientation "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string v3, "from image "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    const-string v3, "where device_id=? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string v3, "order by date_created desc"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 221
    .local v2, sqlArgs:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 222
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getImagesAndVideos(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static getImageAndVideoByDeviceIdWithPagination(III)Ljava/util/List;
    .locals 5
    .parameter "deviceId"
    .parameter "start"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 385
    .local v1, sql:Ljava/lang/StringBuffer;
    const-string v3, "select _id, item_id, _data, _size, _display_name, mime_type, title, date_created,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    const-string v3, "date_added, date_modified, description,parent_id,device_id,ref_id,albumart_uri,upnp_class,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    const-string v3, "isprivate,latitude,longitude,datetaken,bucket_id,bucket_display_name,mini_thumb_magic,duration,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    const-string v3, "artist,album,resolution,tags,category,language,mini_thumb_data,bookmark,NULL as picasa_id, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    const-string v3, "NULL as orientation "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    const-string v3, "from video "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const-string v3, "where device_id=? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    const-string v3, "union "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const-string v3, "select _id, item_id, _data, _size, _display_name, mime_type, title, date_created,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    const-string v3, "date_added, date_modified, description,parent_id,device_id,ref_id,albumart_uri,upnp_class,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const-string v3, "isprivate,latitude,longitude,datetaken,bucket_id,bucket_display_name,mini_thumb_magic,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const-string v3, "NULL as duration,NULL as artist,NULL as album,NULL as resolution,NULL as tags,NULL as category,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const-string v3, "NULL as language,NULL as mini_thumb_data,NULL as bookmark, picasa_id,orientation "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    const-string v3, "from image "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    const-string v3, "where device_id=? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    const-string v3, "order by date_created desc LIMIT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 430
    .local v2, sqlArgs:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 431
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getImagesAndVideos(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static getImageAndVideoWithPagination(II)Ljava/util/List;
    .locals 4
    .parameter "start"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 506
    .local v1, sql:Ljava/lang/StringBuffer;
    const-string v2, "select _id, item_id, _data, _size, _display_name, mime_type, title, date_created,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    const-string v2, "date_added, date_modified, description,parent_id,device_id,ref_id,albumart_uri,upnp_class,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    const-string v2, "isprivate,latitude,longitude,datetaken,bucket_id,bucket_display_name,mini_thumb_magic,duration,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 509
    const-string v2, "artist,album,resolution,tags,category,language,mini_thumb_data,bookmark,NULL as picasa_id, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    const-string v2, "NULL as orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    const-string v2, "from video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    const-string v2, "union "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    const-string v2, "select _id, item_id, _data, _size, _display_name, mime_type, title, date_created,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    const-string v2, "date_added, date_modified, description,parent_id,device_id,ref_id,albumart_uri,upnp_class,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    const-string v2, "isprivate,latitude,longitude,datetaken,bucket_id,bucket_display_name,mini_thumb_magic,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    const-string v2, "NULL as duration,NULL as artist,NULL as album,NULL as resolution,NULL as tags,NULL as category,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    const-string v2, "NULL as language,NULL as mini_thumb_data,NULL as bookmark, picasa_id,orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    const-string v2, "from image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    const-string v2, "order by date_created desc LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 547
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaMediaInfo;->getImagesAndVideos(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getImageBySearchQuery(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "deviceID"
    .parameter "mQuery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1083
    .line 1084
    const-string v0, "Image"

    .line 1083
    invoke-static {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getMediasBySearchQuery(ILjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getImages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getImageBySearchQuery(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "mQuery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1118
    const-string v0, "Image"

    invoke-static {v0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getMediasBySearchQuery(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getImages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getImageChildrenByDeviceIdAndFolderId(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "deviceId"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 851
    const-string v3, "select * from image where device_id=? and parent_id=?"

    .line 853
    .local v3, sql_image:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p1, v2, v4

    .line 855
    .local v2, sqlArgs:[Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 856
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getImages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 858
    .local v1, imageList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;>;"
    return-object v1
.end method

.method public static getImageInfoById(II)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;
    .locals 8
    .parameter "deviceId"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;
    const-string v3, "select * from image where device_id=? and _id=?"

    .line 46
    .local v3, sql:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    .line 47
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 49
    .local v4, sqlArgs:[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 51
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getImages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 52
    .local v2, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 53
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;
    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;

    .line 55
    .restart local v1       #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;
    :cond_0
    return-object v1
.end method

.method public static getImagesByDeviceId(I)Ljava/util/List;
    .locals 5
    .parameter "deviceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    const-string v1, "select * from image where device_id=? order by date_created desc"

    .line 163
    .local v1, sql:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 164
    .local v2, sqlArgs:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 165
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getImages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static getImagesByDeviceIdWithPagination(III)Ljava/util/List;
    .locals 5
    .parameter "deviceId"
    .parameter "start"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select * from image where device_id=? order by _id asc LIMIT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 364
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, sql:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 367
    .local v2, sqlArgs:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 368
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getImages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static getImagesWithPagination(II)Ljava/util/List;
    .locals 4
    .parameter "start"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select * from image order by _id asc LIMIT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 486
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 485
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, sql:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 488
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaImageInfo;->getImages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getMediasBySearchQuery(ILjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "deviceID"
    .parameter "mType"
    .parameter "mQuery"

    .prologue
    .line 987
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 988
    .local v0, sql:Ljava/lang/StringBuffer;
    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 990
    const/4 v1, -0x1

    if-eq v1, p0, :cond_0

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "device_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 993
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "title like \'%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 994
    const-string v1, " escape \'/\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 996
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static getMediasBySearchQuery(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "mType"
    .parameter "mQuery"

    .prologue
    .line 1010
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1011
    .local v0, sql:Ljava/lang/StringBuffer;
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "title like \'%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1014
    const-string v1, " escape \'/\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1016
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static getTotalAudio()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, count:I
    const-string v3, "select count(_id) from audio "

    .line 731
    .local v3, sql:Ljava/lang/String;
    const/4 v1, 0x0

    .line 734
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v3, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 735
    if-nez v1, :cond_2

    .line 743
    if-eqz v1, :cond_0

    .line 744
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v4

    .line 748
    .end local v0           #count:I
    :cond_1
    :goto_0
    return v0

    .line 738
    .restart local v0       #count:I
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 739
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 743
    if-eqz v1, :cond_1

    .line 744
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 740
    :catch_0
    move-exception v2

    .line 741
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "DBManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 743
    if-eqz v1, :cond_1

    .line 744
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 742
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 743
    if-eqz v1, :cond_3

    .line 744
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 746
    :cond_3
    throw v4
.end method

.method public static getTotalAudioByDeviceId(I)I
    .locals 7
    .parameter "deviceId"

    .prologue
    const/4 v5, 0x0

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, count:I
    const-string v3, "select count(_id) from audio where device_id=?"

    .line 604
    .local v3, sql:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 611
    .local v4, sqlArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 614
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 615
    if-nez v1, :cond_1

    .line 623
    if-eqz v1, :cond_0

    .line 624
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 628
    :cond_0
    :goto_0
    return v5

    .line 618
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 619
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 623
    if-eqz v1, :cond_2

    .line 624
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v5, v0

    .line 628
    goto :goto_0

    .line 620
    :catch_0
    move-exception v2

    .line 621
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "DBManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    if-eqz v1, :cond_2

    .line 624
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 622
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 623
    if-eqz v1, :cond_3

    .line 624
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 626
    :cond_3
    throw v5
.end method

.method public static getTotalFolderByDeviceIdAndFolderId(ILjava/lang/String;)I
    .locals 10
    .parameter "deviceId"
    .parameter "folderId"

    .prologue
    const/4 v9, 0x0

    .line 911
    const-string v5, "select count(_id) from folder where device_id=? and parent_id=?"

    .line 912
    .local v5, sql_folder:Ljava/lang/String;
    const-string v6, "select count(_id) from image where device_id=? and parent_id=?"

    .line 913
    .local v6, sql_image:Ljava/lang/String;
    const-string v4, "select count(_id) from audio where device_id=? and parent_id=?"

    .line 914
    .local v4, sql_audio:Ljava/lang/String;
    const-string v7, "select count(_id) from video where device_id=? and parent_id=?"

    .line 916
    .local v7, sql_video:Ljava/lang/String;
    const/4 v8, 0x2

    new-array v3, v8, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v9

    const/4 v8, 0x1

    aput-object p1, v3, v8

    .line 917
    .local v3, sqlArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 939
    .local v0, count:I
    const/4 v1, 0x0

    .line 942
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {v5, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 943
    if-eqz v1, :cond_0

    .line 944
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 945
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/2addr v0, v8

    .line 947
    :cond_0
    invoke-static {v6, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 948
    if-eqz v1, :cond_1

    .line 949
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 950
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/2addr v0, v8

    .line 952
    :cond_1
    invoke-static {v4, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 953
    if-eqz v1, :cond_2

    .line 954
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 955
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/2addr v0, v8

    .line 957
    :cond_2
    invoke-static {v7, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 958
    if-eqz v1, :cond_3

    .line 959
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 960
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    add-int/2addr v0, v8

    .line 965
    :cond_3
    if-eqz v1, :cond_4

    .line 966
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 970
    :cond_4
    :goto_0
    return v0

    .line 962
    :catch_0
    move-exception v2

    .line 963
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v8, "DBManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    if-eqz v1, :cond_4

    .line 966
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 964
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 965
    if-eqz v1, :cond_5

    .line 966
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 968
    :cond_5
    throw v8
.end method

.method public static getTotalImage()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 756
    const/4 v2, 0x0

    .line 757
    .local v2, ret:I
    const-string v3, "select count(_id) from image"

    .line 759
    .local v3, sql:Ljava/lang/String;
    const/4 v0, 0x0

    .line 761
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v3, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 762
    if-nez v0, :cond_2

    .line 770
    if-eqz v0, :cond_0

    .line 771
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move v2, v4

    .line 774
    .end local v2           #ret:I
    :cond_1
    :goto_0
    return v2

    .line 765
    .restart local v2       #ret:I
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 766
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 770
    if-eqz v0, :cond_1

    .line 771
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 767
    :catch_0
    move-exception v1

    .line 768
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "DBManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 770
    if-eqz v0, :cond_1

    .line 771
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 769
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 770
    if-eqz v0, :cond_3

    .line 771
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 773
    :cond_3
    throw v4
.end method

.method public static getTotalImageAndVideo()I
    .locals 2

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 785
    .local v0, ret:I
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getTotalImage()I

    move-result v0

    .line 786
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getTotalVideo()I

    move-result v1

    add-int/2addr v0, v1

    .line 788
    return v0
.end method

.method public static getTotalImageAndVideoByDeviceId(I)I
    .locals 2
    .parameter "deviceId"

    .prologue
    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, ret:I
    invoke-static {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getTotalImageByDeviceId(I)I

    move-result v0

    .line 671
    invoke-static {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getTotalVideoByDeviceId(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 672
    return v0
.end method

.method public static getTotalImageByDeviceId(I)I
    .locals 7
    .parameter "deviceId"

    .prologue
    const/4 v5, 0x0

    .line 640
    const/4 v2, 0x0

    .line 641
    .local v2, ret:I
    const/4 v0, 0x0

    .line 642
    .local v0, cursor:Landroid/database/Cursor;
    const-string v3, "select count(_id) from image where device_id=?"

    .line 643
    .local v3, sql:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 645
    .local v4, sqlArgs:[Ljava/lang/String;
    :try_start_0
    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 646
    if-nez v0, :cond_1

    .line 654
    if-eqz v0, :cond_0

    .line 655
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 657
    :cond_0
    :goto_0
    return v5

    .line 649
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 650
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 654
    if-eqz v0, :cond_2

    .line 655
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v5, v2

    .line 657
    goto :goto_0

    .line 651
    :catch_0
    move-exception v1

    .line 652
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "DBManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 654
    if-eqz v0, :cond_2

    .line 655
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 653
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 654
    if-eqz v0, :cond_3

    .line 655
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 656
    :cond_3
    throw v5
.end method

.method public static getTotalVideo()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, count:I
    const-string v3, "select count(_id) from video "

    .line 695
    .local v3, sql:Ljava/lang/String;
    const/4 v1, 0x0

    .line 698
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v3, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 699
    if-nez v1, :cond_2

    .line 707
    if-eqz v1, :cond_0

    .line 708
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v4

    .line 712
    .end local v0           #count:I
    :cond_1
    :goto_0
    return v0

    .line 702
    .restart local v0       #count:I
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 703
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 707
    if-eqz v1, :cond_1

    .line 708
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 704
    :catch_0
    move-exception v2

    .line 705
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "DBManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 707
    if-eqz v1, :cond_1

    .line 708
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 706
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 707
    if-eqz v1, :cond_3

    .line 708
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 710
    :cond_3
    throw v4
.end method

.method public static getTotalVideoByDeviceId(I)I
    .locals 7
    .parameter "deviceId"

    .prologue
    const/4 v5, 0x0

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, count:I
    const-string v3, "select count(_id) from video where device_id=?"

    .line 564
    .local v3, sql:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 574
    .local v4, sqlArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 577
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 578
    if-nez v1, :cond_1

    .line 586
    if-eqz v1, :cond_0

    .line 587
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 590
    :cond_0
    :goto_0
    return v5

    .line 581
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 582
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 586
    if-eqz v1, :cond_2

    .line 587
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v5, v0

    .line 590
    goto :goto_0

    .line 583
    :catch_0
    move-exception v2

    .line 584
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "DBManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    if-eqz v1, :cond_2

    .line 587
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 585
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 586
    if-eqz v1, :cond_3

    .line 587
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_3
    throw v5
.end method

.method public static getVideoByDeviceId(I)Ljava/util/List;
    .locals 5
    .parameter "deviceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    const-string v1, "select * from video where device_id=? order by date_created desc"

    .line 135
    .local v1, sql:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 136
    .local v2, sqlArgs:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 137
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getVideos(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static getVideoByDeviceIdWithPagination(III)Ljava/util/List;
    .locals 5
    .parameter "deviceId"
    .parameter "start"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select * from video where device_id=? order by _id asc LIMIT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 322
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, sql:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 325
    .local v2, sqlArgs:[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 326
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getVideos(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static getVideoBySearchQuery(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "deviceID"
    .parameter "mQuery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1057
    .line 1058
    const-string v0, "Video"

    .line 1057
    invoke-static {p0, v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getMediasBySearchQuery(ILjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getVideos(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoBySearchQuery(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "mQuery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1096
    const-string v0, "Video"

    invoke-static {v0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/DBManager;->getMediasBySearchQuery(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getVideos(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoChildrenByDeviceIdAndFolderId(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "deviceId"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 891
    const-string v2, "select * from video where device_id=? and parent_id=?"

    .line 893
    .local v2, sql_video:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p1, v1, v4

    .line 895
    .local v1, sqlArgs:[Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 896
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getVideos(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    .line 898
    .local v3, videoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;>;"
    return-object v3
.end method

.method public static getVideoInfoById(II)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;
    .locals 8
    .parameter "deviceId"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;
    const-string v3, "select * from video where device_id=? and _id=?"

    .line 68
    .local v3, sql:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    .line 69
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 71
    .local v4, sqlArgs:[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 73
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getVideos(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 74
    .local v2, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 75
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;
    check-cast v1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;

    .line 77
    .restart local v1       #info:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;
    :cond_0
    return-object v1
.end method

.method public static getVideoWithPagination(II)Ljava/util/List;
    .locals 4
    .parameter "start"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select * from video order by _id asc LIMIT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 467
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 466
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, sql:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/db/SqliteDao;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 469
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/dbinfo/DlnaVideoInfo;->getVideos(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
