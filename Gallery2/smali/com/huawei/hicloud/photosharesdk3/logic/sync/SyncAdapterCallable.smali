.class public Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.source "SyncAdapterCallable.java"


# static fields
.field public static final SCOPE_ALL:I = 0x0

.field public static final SCOPE_RECEIVE:I = 0x3

.field public static final SCOPE_SHARE:I = 0x2

.field public static final SCOPE_SPECIAL:I = 0x1


# instance fields
.field private checkRequest:Z

.field private queryRequest:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;JIZ)V
    .locals 3
    .parameter "callParam"
    .parameter "timeout"
    .parameter "retry"
    .parameter "nextShutDown"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;-><init>(Ljava/lang/Object;JIZ)V

    .line 107
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "come into SyncAdapterCallable construct"

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private addMyPhoto(Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    .local p1, serverSyncOperateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->onPause()V

    .line 200
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/request/CheckFileExistRequest;

    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/huawei/hicloud/photosharesdk3/request/CheckFileExistRequest;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, checkFileReq:Lcom/huawei/hicloud/photosharesdk3/request/CheckFileExistRequest;
    const-string v4, "[\"/Photoshare/myphoto\"]"

    .line 202
    .local v4, file:Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/huawei/hicloud/photosharesdk3/request/CheckFileExistRequest;->setFileInfo(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/request/CheckFileExistRequest;->getJSONResponse()V

    .line 205
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "addMyPhoto result:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/request/CheckFileExistRequest;->getJsonBodyStr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/request/CheckFileExistRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v1

    .line 209
    .local v1, ckFileRes:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 211
    .local v5, flag:Z
    if-nez v1, :cond_0

    .line 213
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->checkRequest:Z

    .line 265
    :goto_0
    return-void

    .line 220
    :cond_0
    :try_start_0
    const-string v9, "successList"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "successList"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    .line 222
    const/4 v5, 0x1

    .line 233
    :cond_1
    if-eqz v5, :cond_2

    .line 235
    new-instance v8, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    invoke-direct {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;-><init>()V

    .line 236
    .local v8, tempFloder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    const-string v9, "MyPhoto"

    invoke-virtual {v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setShareName(Ljava/lang/String;)V

    .line 237
    const-string v9, "0"

    invoke-virtual {v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setFolderType(Ljava/lang/String;)V

    .line 238
    const-string v9, "/Photoshare/myphoto"

    invoke-virtual {v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setPhysicsPath(Ljava/lang/String;)V

    .line 239
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setLocal(Z)V

    .line 240
    const-string v9, "/Photoshare/myphoto"

    invoke-virtual {v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setSharePath(Ljava/lang/String;)V

    .line 241
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "1"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "2"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "3"

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setOprateTypes([Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "addMyPhoto. serverSyncOperateList.size="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v8           #tempFloder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    :catch_0
    move-exception v3

    .line 227
    .local v3, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "addMyPhoto JSONException:"

    invoke-static {v9, v10, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->checkRequest:Z

    goto :goto_0

    .line 249
    .end local v3           #e:Lorg/json/JSONException;
    :cond_2
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->inSureFileInDBExist()Z

    move-result v7

    .line 250
    .local v7, reuslt:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "inSureFileInDBExist:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v9, "/Photoshare/myphoto"

    invoke-direct {p0, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->inSureFileExist(Ljava/lang/String;)Z

    move-result v7

    .line 252
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "inSureFileExist:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 255
    .local v2, collector:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 256
    new-instance v6, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    invoke-direct {v6}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;-><init>()V

    .line 257
    .local v6, info:Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    const-string v9, "MyPhoto"

    invoke-virtual {v6, v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->setPhotoName(Ljava/lang/String;)V

    .line 258
    const-string v9, "/Photoshare/myphoto"

    invoke-virtual {v6, v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->LT2UTC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->setCreateTime(Ljava/lang/String;)V

    .line 260
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->setOperationType(I)V

    .line 261
    invoke-virtual {v2, v6}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->addTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;)Z

    .line 262
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V

    .line 263
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    const-string v11, "addMyPhoto. AddTaskInfo"

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getCloudFolderList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .parameter "folderType"
    .parameter "sharePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "3"

    const-string v13, "Enter getCloudFolderList."

    invoke-static {v11, v12, v13}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v8, serverSyncOperateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->onPause()V

    .line 353
    new-instance v4, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;

    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;-><init>(Landroid/content/Context;)V

    .line 361
    .local v4, request:Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;
    const-string v11, "0"

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 363
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->addMyPhoto(Ljava/util/ArrayList;)V

    .line 365
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "3"

    const-string v13, "Exit getCloudFolderList. SyncPool.FOLDERTYPE_MYPHOTO"

    invoke-static {v11, v12, v13}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :goto_0
    return-object v8

    .line 369
    :cond_0
    const-string v11, "1"

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 371
    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->setScope(I)V

    .line 382
    :cond_1
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->setSharePath(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->getJSONResponse()V

    .line 384
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "3"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "receiverInfoSync result:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->getJsonBodyStr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v5

    .line 388
    .local v5, ret:Lorg/json/JSONObject;
    if-nez v5, :cond_4

    .line 390
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->queryRequest:Z

    goto :goto_0

    .line 373
    .end local v5           #ret:Lorg/json/JSONObject;
    :cond_2
    const-string v11, "2"

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 375
    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->setScope(I)V

    goto :goto_1

    .line 377
    :cond_3
    const-string v11, "4"

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 379
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->setScope(I)V

    goto :goto_1

    .line 394
    .restart local v5       #ret:Lorg/json/JSONObject;
    :cond_4
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 395
    .local v1, gson:Lcom/google/gson/Gson;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;

    invoke-virtual {v1, v11, v12}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;

    .line 397
    .local v6, rsp:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->getCode()I

    move-result v11

    if-eqz v11, :cond_5

    .line 399
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "3"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Exit getCloudFolderList. rsp.getCode()="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->getCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",info="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->getInfo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->queryRequest:Z

    goto/16 :goto_0

    .line 404
    :cond_5
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->getOutShareList()Ljava/util/List;

    move-result-object v3

    .line 405
    .local v3, outList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->getInShareList()Ljava/util/List;

    move-result-object v2

    .line 406
    .local v2, inList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_7

    .line 420
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_8

    .line 448
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "3"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Exit getCloudFolderList. serverSyncOperateList.size="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;

    .line 408
    .local v9, shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;
    new-instance v7, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    invoke-direct {v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;-><init>()V

    .line 409
    .local v7, serverFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    const-string v12, "1"

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setFolderType(Ljava/lang/String;)V

    .line 410
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setLocal(Z)V

    .line 411
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "1"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "2"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "3"

    aput-object v14, v12, v13

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setOprateTypes([Ljava/lang/String;)V

    .line 412
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getPhysicsPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setPhysicsPath(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getReceiverList()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setRecevierList(Ljava/util/List;)V

    .line 414
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getShareName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setShareName(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setSharePath(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setSharer(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getCreateTime()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsGMT(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setCreateTime(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 420
    .end local v7           #serverFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    .end local v9           #shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;
    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;

    .line 422
    .restart local v9       #shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "3"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ShareName="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getShareName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getReceiverList()Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->isReceived(Ljava/util/List;)I

    move-result v10

    .line 425
    .local v10, status:I
    const/4 v12, 0x2

    if-eq v12, v10, :cond_6

    const/4 v12, -0x1

    if-eq v12, v10, :cond_6

    .line 430
    if-nez v10, :cond_9

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharer()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getShareName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharePath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v12 .. v16}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/PushNotifySender;->sendNewInvite(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 435
    :cond_9
    new-instance v7, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    invoke-direct {v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;-><init>()V

    .line 436
    .restart local v7       #serverFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    const-string v12, "2"

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setFolderType(Ljava/lang/String;)V

    .line 437
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setLocal(Z)V

    .line 438
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "1"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "2"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "3"

    aput-object v14, v12, v13

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setOprateTypes([Ljava/lang/String;)V

    .line 439
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getPhysicsPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setPhysicsPath(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getReceiverList()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setRecevierList(Ljava/util/List;)V

    .line 441
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getShareName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setShareName(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setSharePath(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharer()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setSharer(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getCreateTime()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsGMT(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setCreateTime(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getLocalFolderList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .parameter "folderType"
    .parameter "sharePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "3"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Enter getLocalFolderList. folderType="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",sharePath="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v9, localSyncOperateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->onPause()V

    .line 134
    new-instance v10, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 135
    .local v10, operator2:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openSharedFolderOperator(Landroid/content/Context;)V

    .line 136
    const/4 v7, 0x0

    .line 138
    .local v7, localList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    if-eqz p1, :cond_0

    .line 140
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "3"

    const-string v14, "getLocalFolderList query By folderType."

    invoke-static {v12, v13, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getShareFolderInfo(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 149
    :goto_0
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V

    .line 151
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openFolderReceiver(Landroid/content/Context;)V

    .line 152
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 153
    .local v6, itLocalShared:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 185
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderReceiver()V

    .line 186
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "3"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Exit getLocalFolderList. localSyncOperateList.size="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-object v9

    .line 146
    .end local v6           #itLocalShared:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "3"

    const-string v14, "getLocalFolderList query By sharePath."

    invoke-static {v12, v13, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v10, v0, v12}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getShareFolderBySharePath(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    goto :goto_0

    .line 155
    .restart local v6       #itLocalShared:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    .line 156
    .local v8, localSharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;-><init>()V

    .line 157
    .local v2, destLocalFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setShareName(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderPathRemote()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setPhysicsPath(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setSharePath(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharerName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setSharer(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getCreateTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setCreateTime(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setFolderType(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getFriendsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 167
    .local v4, friendList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v1, destFriendList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lt v5, v12, :cond_2

    .line 176
    invoke-virtual {v2, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setRecevierList(Ljava/util/List;)V

    .line 178
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setLocal(Z)V

    .line 179
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "1"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "2"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "3"

    aput-object v14, v12, v13

    invoke-virtual {v2, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setOprateTypes([Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->inSureFileExist(Ljava/lang/String;)Z

    .line 181
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "3"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "getLocalFolderList. PhysicsPath="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 170
    :cond_2
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 171
    .local v3, friendInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    new-instance v11, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;

    invoke-direct {v11}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;-><init>()V

    .line 172
    .local v11, receiver:Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->setAccount(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getState()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->setStatus(I)V

    .line 174
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private inSureFileExist(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    .line 307
    const/4 v2, 0x0

    .line 308
    .local v2, flag:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, localFolder:Ljava/lang/String;
    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    :goto_0
    return v2

    .line 315
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isFileExist(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 321
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->createNewFolder(Landroid/content/Context;Ljava/io/File;)Z

    .line 322
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "inSureFileExist createNewFolder:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inSureFileExist NoEnoughSpaceException:"

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 332
    .end local v0           #e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->createNomeidaFile(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0
.end method

.method private inSureFileInDBExist()Z
    .locals 8

    .prologue
    .line 273
    const/4 v1, 0x0

    .line 274
    .local v1, flag:Z
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 275
    .local v0, collector:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openSharedFolderOperator(Landroid/content/Context;)V

    .line 276
    const-string v4, "/Photoshare/myphoto"

    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getShareFolderBySharePath(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 277
    .local v2, folder:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 279
    const/4 v1, 0x1

    .line 282
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "inSureFileInDBExist before. is Exist In DB:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    if-nez v1, :cond_1

    .line 287
    new-instance v3, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    invoke-direct {v3}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;-><init>()V

    .line 288
    .local v3, sharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    const-string v4, "MyPhoto"

    invoke-virtual {v3, v4}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderName(Ljava/lang/String;)V

    .line 289
    const-string v4, "/Photoshare/myphoto"

    invoke-virtual {v3, v4}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderPathRemote(Ljava/lang/String;)V

    .line 290
    const-string v4, "/Photoshare/myphoto"

    invoke-virtual {v3, v4}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setSharePath(Ljava/lang/String;)V

    .line 291
    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderType(I)V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsGMT(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setCreateTime(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->addShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;)Z

    move-result v1

    .line 295
    .end local v3           #sharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V

    .line 296
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "inSureFileInDBExist aftere. is Exist In DB:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return v1
.end method

.method private isReceived(Ljava/util/List;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, receiver:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    const/4 v2, -0x1

    .line 461
    .local v2, result:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 472
    :goto_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isReceived. result = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return v2

    .line 461
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;

    .line 463
    .local v3, status:Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v0

    .line 464
    .local v0, accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, currentAccount:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getAccount()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 467
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isReceived."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getStatus()I

    move-result v2

    .line 469
    goto :goto_0
.end method

.method private needExecute(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "folderType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 639
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v2

    .line 641
    .local v2, manager:Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;
    const/4 v0, 0x0

    .line 642
    .local v0, canExecuteMyPhoto:Z
    const/4 v1, 0x0

    .line 643
    .local v1, canExecuteShare:Z
    const-string v4, "3"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 646
    invoke-virtual {v2, v6, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v0

    .line 648
    invoke-virtual {v2, v5, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v1

    .line 650
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 652
    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_0
    :goto_0
    return-object v3

    .line 654
    :cond_1
    if-eqz v1, :cond_2

    .line 656
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 659
    :cond_2
    if-eqz v0, :cond_0

    .line 661
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 664
    :cond_3
    const-string v4, "0"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 667
    invoke-virtual {v2, v6, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v0

    .line 668
    if-eqz v0, :cond_0

    .line 670
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 676
    :cond_4
    invoke-virtual {v2, v5, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v1

    .line 677
    if-eqz v1, :cond_0

    .line 679
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private regPush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$PushInfoUtil;->getFlagFromFile(Landroid/content/Context;)Z

    move-result v0

    .line 592
    .local v0, flag:Z
    if-nez v0, :cond_0

    .line 594
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/request/PushRegisterRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/hicloud/photosharesdk3/request/PushRegisterRequest;-><init>(Landroid/content/Context;)V

    .line 595
    .local v1, request:Lcom/huawei/hicloud/photosharesdk3/request/PushRegisterRequest;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$PushInfoUtil;->getTokenFromFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk3/request/PushRegisterRequest;->setSharePath(Ljava/lang/String;)V

    .line 596
    const/16 v2, 0x10b

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk3/request/PushRegisterRequest;->setFusionCode(I)V

    .line 597
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/request/PushRegisterRequest;->getJSONResponse()V

    .line 599
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/request/PushRegisterRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/request/PushRegisterRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/request/PushRegisterRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 602
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$PushInfoUtil;->writeFlagToFile(Landroid/content/Context;Z)V

    .line 606
    .end local v1           #request:Lcom/huawei/hicloud/photosharesdk3/request/PushRegisterRequest;
    :cond_0
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 485
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    const-string v16, "Enter syncAdapter. "

    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->checkRequest:Z

    .line 487
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->queryRequest:Z

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getCallParam()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 490
    .local v8, param:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "0"

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 491
    .local v5, folderType:Ljava/lang/String;
    const-string v14, "2"

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 492
    .local v2, changeType:Ljava/lang/String;
    const-string v14, "1"

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 493
    .local v10, sharePath:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "syncPool.adapter.....folderType:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",changeType:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 494
    const-string v17, ",sharePath:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 493
    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const/4 v6, 0x0

    .line 498
    .local v6, isMyphoto:Z
    const-string v14, "4"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 500
    const-string v14, "0"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v6, 0x1

    .line 506
    :goto_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v7

    .line 507
    .local v7, manager:Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "can Execute isMyphoto:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v7, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(Z)Z

    move-result v14

    if-nez v14, :cond_3

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->shutdown()V

    .line 511
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    const-string v16, "Exit syncAdapter. canNotExecute."

    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v9, 0x0

    .line 585
    :goto_1
    return-object v9

    .line 500
    .end local v7           #manager:Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 504
    :cond_1
    const-string v14, "/Photoshare/myphoto"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v6, 0x1

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 516
    .restart local v7       #manager:Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v1

    .line 517
    .local v1, accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, currentAccount:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "syncAdapter. currentAccount="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v9, resultSyncOperateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->regPush()V

    .line 527
    const-string v14, "4"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 533
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getCloudFolderList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 534
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "getCloudFolderList. resultSyncOperateList.size:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    .line 537
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 541
    .local v11, tempFloder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "1"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "2"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "3"

    aput-object v16, v14, v15

    invoke-virtual {v11, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setOprateTypes([Ljava/lang/String;)V

    .line 544
    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    .line 549
    .end local v11           #tempFloder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->queryRequest:Z

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->checkRequest:Z

    if-eqz v14, :cond_5

    .line 552
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getLocalFolderList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 572
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->shutdown()V

    .line 575
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    const-string v16, "Exit syncAdapter. shutdown"

    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 558
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->needExecute(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 559
    .local v13, typeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_7
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 561
    .local v12, type:Ljava/lang/String;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->checkRequest:Z

    .line 562
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->queryRequest:Z

    .line 563
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getCloudFolderList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 564
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->queryRequest:Z

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->checkRequest:Z

    if-eqz v15, :cond_7

    .line 566
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getLocalFolderList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 579
    .end local v12           #type:Ljava/lang/String;
    .end local v13           #typeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_9

    .line 584
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Exit syncAdapter. resultSyncOperateList.size="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 579
    :cond_9
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 581
    .local v4, folder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "3"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "syncAdapter.SyncOperateFolder="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncAdapterCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
