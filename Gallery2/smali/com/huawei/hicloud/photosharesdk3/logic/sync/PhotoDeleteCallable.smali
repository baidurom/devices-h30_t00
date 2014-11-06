.class public Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.source "PhotoDeleteCallable.java"


# instance fields
.field private syncOperateFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 1
    .parameter "callParam"
    .parameter "timeout"
    .parameter "retry"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;-><init>(Ljava/lang/Object;JI)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->syncOperateFileList:Ljava/util/List;

    .line 47
    check-cast p1, Ljava/util/List;

    .end local p1
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->syncOperateFileList:Ljava/util/List;

    .line 48
    return-void
.end method

.method private deleteCloudFilesList(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    .local p1, deleSyncOperateFileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    const-string v12, "come into delete original"

    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v4, pList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_0

    .line 62
    new-instance v5, Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;-><init>(Landroid/content/Context;)V

    .line 63
    .local v5, request:Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;
    invoke-virtual {v5, v4}, Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;->setFileInfo(Ljava/util/List;)V

    .line 64
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;->getJSONResponse()V

    .line 65
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "delete cloud result:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;->getJsonBodyStr()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 65
    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v2

    .line 69
    .local v2, jsonObject:Lorg/json/JSONObject;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "3"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v10, "delete file of this dir"

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 71
    const-string v13, "result:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 72
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 69
    invoke-static {v11, v12, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-nez v2, :cond_1

    .line 76
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    const-string v12, "upload fail no need insert db"

    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_1
    return-object p1

    .line 55
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v5           #request:Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 57
    .local v8, syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    new-instance v7, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    invoke-direct {v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;-><init>()V

    .line 58
    .local v7, sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->setDbankPath(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 81
    .end local v7           #sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    .end local v8           #syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #request:Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;
    :cond_1
    const-string v10, "failList"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 82
    .local v6, resultList:Lorg/json/JSONArray;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 84
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    const-string v12, "delete cloud fail no need insert db"

    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_2
    new-instance v3, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 92
    .local v3, operator2:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 95
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    if-nez v11, :cond_3

    .line 112
    :try_start_1
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 114
    :catch_0
    move-exception v1

    .line 116
    .local v1, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "deleteCloudFilesList"

    invoke-static {v10, v11, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 95
    .end local v1           #e2:Ljava/lang/Exception;
    :cond_3
    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 98
    .restart local v8       #syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    new-instance v9, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    invoke-direct {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;-><init>()V

    .line 99
    .local v9, taskInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 99
    invoke-virtual {v9, v11}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3, v9}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->delTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 104
    .end local v8           #syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    .end local v9           #taskInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    :catch_1
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "deleteCloudFilesList"

    invoke-static {v10, v11, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    :try_start_4
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 114
    :catch_2
    move-exception v1

    .line 116
    .restart local v1       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "deleteCloudFilesList"

    invoke-static {v10, v11, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 109
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 112
    :try_start_5
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 118
    :goto_3
    throw v10

    .line 114
    :catch_3
    move-exception v1

    .line 116
    .restart local v1       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "deleteCloudFilesList"

    invoke-static {v11, v12, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "come into"

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->syncOperateFileList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;->deleteCloudFilesList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
