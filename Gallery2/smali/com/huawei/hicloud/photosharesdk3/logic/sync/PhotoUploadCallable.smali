.class public Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.source "PhotoUploadCallable.java"


# instance fields
.field private photoDbankPath:Ljava/lang/String;

.field private syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;


# direct methods
.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 2
    .parameter "callParam"
    .parameter "timeout"
    .parameter "retry"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;-><init>(Ljava/lang/Object;JI)V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->photoDbankPath:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 56
    check-cast p1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .end local p1
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->photoDbankPath:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private checkCloudFile()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 323
    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/request/CheckFileExistRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/huawei/hicloud/photosharesdk3/request/CheckFileExistRequest;-><init>(Landroid/content/Context;)V

    .line 325
    .local v2, request:Lcom/huawei/hicloud/photosharesdk3/request/CheckFileExistRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, file:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/huawei/hicloud/photosharesdk3/request/CheckFileExistRequest;->setFileInfo(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/request/CheckFileExistRequest;->getJSONResponse()V

    .line 328
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "before upload check cloud exist, name:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/request/CheckFileExistRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v1

    .line 331
    .local v1, jObject:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v4, "failList"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "failList"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 332
    const-string v4, "103"

    const-string v5, "failList"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "errCode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    const-string v6, "no need upload file, cloud not exist"

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private checkCloudSpaceIsEnough()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 283
    new-instance v5, Lcom/huawei/hicloud/photosharesdk3/request/GetUserInfoRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/huawei/hicloud/photosharesdk3/request/GetUserInfoRequest;-><init>(Landroid/content/Context;)V

    .line 284
    .local v5, request:Lcom/huawei/hicloud/photosharesdk3/request/GetUserInfoRequest;
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/GetUserInfoRequest;->getJSONResponse()V

    .line 285
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "dbank space data:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/GetUserInfoRequest;->getJsonBodyStr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/GetUserInfoRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/GetUserInfoRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "product.spacecapacity"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 288
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/GetUserInfoRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "profile.spaceextcapacity"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 289
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/GetUserInfoRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "profile.usedspacecapacity"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v8

    .line 294
    :cond_1
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/GetUserInfoRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "product.spacecapacity"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, total:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/GetUserInfoRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "profile.spaceextcapacity"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, extra:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/GetUserInfoRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "profile.usedspacecapacity"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, used:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 300
    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 301
    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 298
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, localPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v3, file:Ljava/io/File;
    const-wide/16 v0, 0x0

    .line 304
    .local v0, currentFileSize:J
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 306
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 309
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "before upload, local file size:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v11, v0

    cmp-long v9, v9, v11

    if-gtz v9, :cond_3

    .line 312
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "cloud space not enough stop upload:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/ErrorSender;->sendServerNoSpaceError(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 317
    :cond_3
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method private checkFolderDataExit(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)Z
    .locals 8
    .parameter "fileForCheck"

    .prologue
    .line 181
    const/4 v4, 0x0

    .line 183
    .local v4, result:Z
    new-instance v3, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 184
    .local v3, operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openSharedFolderOperator(Landroid/content/Context;)V

    .line 187
    :try_start_0
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 189
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 189
    invoke-virtual {v3, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getShareFolderBySharePath(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 191
    .local v2, folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    .line 193
    :goto_0
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 204
    :try_start_1
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 212
    .end local v2           #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :goto_1
    return v4

    .line 191
    .restart local v2       #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 195
    .end local v2           #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checkFolderDataExit db"

    invoke-static {v5, v6, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 204
    :try_start_3
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 206
    :catch_1
    move-exception v1

    .line 208
    .local v1, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checkFolderDataExit db"

    invoke-static {v5, v6, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 200
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 201
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 204
    :try_start_4
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 210
    :goto_2
    throw v5

    .line 206
    :catch_2
    move-exception v1

    .line 208
    .restart local v1       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "checkFolderDataExit db"

    invoke-static {v6, v7, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 206
    .end local v1           #e2:Ljava/lang/Exception;
    .restart local v2       #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :catch_3
    move-exception v1

    .line 208
    .restart local v1       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checkFolderDataExit db"

    invoke-static {v5, v6, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private statisticForBI(Ljava/lang/String;)V
    .locals 5
    .parameter "folderType"

    .prologue
    const/4 v4, 0x1

    .line 166
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Report statistic. folderType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getInstance()Lcom/huawei/hicloud/photosharesdk3/bi/Report;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->addSyncPhotoData(Landroid/content/Context;I)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getInstance()Lcom/huawei/hicloud/photosharesdk3/bi/Report;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->addSyncSharePhotoData(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private uploadFile(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    .locals 13
    .parameter "upSyncOperateFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 64
    const-string v1, "0"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object p1

    .line 69
    :cond_1
    const-string v1, "2"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    const-string v1, "1"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    :cond_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "come into upload original"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v9, 0x0

    .line 80
    .local v9, jsonObject:Lorg/json/JSONObject;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;-><init>()V

    .line 81
    .local v0, uploadUtil:Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 84
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 85
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getCreateTime()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk3/request/UploadUtil;->upload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 90
    if-nez v9, :cond_4

    .line 92
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "upload fail no need insert db"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_4
    const-string v1, "failList"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 98
    .local v11, resultList:Lorg/json/JSONArray;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 100
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "upload fail no need insert db"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_5
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "upload this file im"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 107
    const-string v4, "result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 108
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v10, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 112
    .local v10, operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 113
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openFolderPhoto(Landroid/content/Context;)V

    .line 116
    :try_start_0
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v10, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->deleteTaskInfo(Ljava/lang/String;)Z

    .line 122
    sget-object v1, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    .line 123
    const-string v2, "PhotoPathR"

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 127
    const-string v12, "SharedPath"

    aput-object v12, v4, v5

    const/4 v5, 0x1

    .line 128
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    .line 122
    invoke-virtual {v10, v1, v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->update(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 131
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->statisticForBI(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 144
    :try_start_1
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 153
    :goto_1
    :try_start_2
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 155
    :catch_0
    move-exception v8

    .line 157
    .local v8, e3:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload"

    invoke-static {v1, v2, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 135
    .end local v8           #e3:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 137
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload"

    invoke-static {v1, v2, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 144
    :try_start_4
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 153
    :goto_2
    :try_start_5
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 155
    :catch_2
    move-exception v8

    .line 157
    .restart local v8       #e3:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload"

    invoke-static {v1, v2, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 146
    .end local v8           #e3:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 148
    .local v7, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload"

    invoke-static {v1, v2, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 140
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 141
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 144
    :try_start_6
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 153
    :goto_3
    :try_start_7
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 159
    :goto_4
    throw v1

    .line 146
    :catch_4
    move-exception v7

    .line 148
    .restart local v7       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "upload"

    invoke-static {v2, v3, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 155
    .end local v7           #e2:Ljava/lang/Exception;
    :catch_5
    move-exception v8

    .line 157
    .restart local v8       #e3:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "upload"

    invoke-static {v2, v3, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 146
    .end local v8           #e3:Ljava/lang/Exception;
    :catch_6
    move-exception v7

    .line 148
    .restart local v7       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload"

    invoke-static {v1, v2, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public baseEquals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 344
    instance-of v1, p1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;

    if-nez v1, :cond_0

    .line 346
    const/4 v1, 0x0

    .line 353
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 349
    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;

    .line 353
    .local v0, other:Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->photoDbankPath:Ljava/lang/String;

    iget-object v2, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->photoDbankPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 223
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "come into"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->checkCloudSpaceIsEnough()Z

    move-result v2

    .line 227
    .local v2, isCloudSpaceEnough:Z
    if-nez v2, :cond_0

    .line 229
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "before upload cloud space not enough"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 278
    :goto_0
    return-object v3

    .line 234
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "cloud space enough"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->checkCloudFile()Z

    move-result v1

    .line 240
    .local v1, isCloudExist:Z
    if-eqz v1, :cond_1

    .line 242
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "no need upload file, cloud exist"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    goto :goto_0

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-direct {p0, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->checkFolderDataExit(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 249
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "up checkFolderDataExit db not exit"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    goto :goto_0

    .line 252
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "up checkFolderDataExit db exit"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v3, "0"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v3

    if-nez v3, :cond_3

    .line 258
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    goto :goto_0

    .line 260
    :cond_3
    const-string v3, "2"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 261
    const-string v3, "1"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 263
    :cond_4
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v3

    if-nez v3, :cond_5

    .line 265
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    goto/16 :goto_0

    .line 271
    :cond_5
    :try_start_0
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-direct {p0, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->uploadFile(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_1
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    goto/16 :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
