.class public Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.source "SyncFolderCallable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;
    }
.end annotation


# static fields
.field private static final LIMIT_FOLDER_COUNT:I = 0x270f

.field private static ascComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;"
        }
    .end annotation
.end field

.field private static descComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private resultSyncOperateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;"
        }
    .end annotation
.end field

.field private syncOperateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$1;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$1;-><init>()V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->descComparator:Ljava/util/Comparator;

    .line 109
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$2;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$2;-><init>()V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->ascComparator:Ljava/util/Comparator;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JIZ)V
    .locals 3
    .parameter "callParam"
    .parameter "timeout"
    .parameter "retry"
    .parameter "nextShutDown"

    .prologue
    .line 140
    invoke-direct/range {p0 .. p5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;-><init>(Ljava/lang/Object;JIZ)V

    .line 141
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "come into SyncFolderCallable construct"

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private addCloudFolder(Ljava/util/ArrayList;)V
    .locals 19
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
    .line 379
    .local p1, folderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "3"

    const-string v14, "Enter addCloudFolder."

    invoke-static {v12, v13, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_0

    .line 555
    :goto_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "3"

    const-string v14, "Exit addCloudFolder."

    invoke-static {v12, v13, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    return-void

    .line 381
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 383
    .local v4, folder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->onPause()V

    .line 384
    const/4 v6, 0x1

    .line 385
    .local v6, need:Z
    const-string v13, "0"

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 387
    const/4 v6, 0x0

    .line 390
    :cond_1
    const/4 v5, 0x0

    .line 393
    .local v5, mkDirRes:Lorg/json/JSONArray;
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->makeDirRequest(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 413
    if-nez v5, :cond_2

    .line 415
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "6"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "addCloudFolder makeDir Error FolderName:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 395
    :catch_0
    move-exception v3

    .line 397
    .local v3, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "addCloudFolder JSONException:"

    invoke-static {v12, v13, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 430
    .end local v3           #e:Lorg/json/JSONException;
    :cond_2
    if-eqz v6, :cond_4

    .line 436
    :try_start_1
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getShareName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->createShareFolderRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 455
    .local v8, sharePath:Ljava/lang/String;
    if-nez v8, :cond_3

    .line 457
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "6"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "addCloudFolder createShareFolderRequest Error FolderName:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 438
    .end local v8           #sharePath:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 440
    .restart local v3       #e:Lorg/json/JSONException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "addCloudFolder JSONException:"

    invoke-static {v12, v13, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 472
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v8       #sharePath:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->setSharePath(Ljava/lang/String;)V

    .line 474
    const/4 v1, 0x0

    .line 477
    .local v1, createToJPLFlag:Z
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->createShareToJPL(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v1

    .line 512
    if-nez v1, :cond_4

    .line 514
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "6"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "addCloudFolder createShareToJPL Error FolderName:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 479
    :catch_2
    move-exception v3

    .line 481
    .local v3, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "addCloudFolder NumberFormatException:"

    invoke-static {v12, v13, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 495
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v3

    .line 497
    .local v3, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, "addCloudFolder JSONException:"

    invoke-static {v12, v13, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 521
    .end local v1           #createToJPLFlag:Z
    .end local v3           #e:Lorg/json/JSONException;
    .end local v8           #sharePath:Ljava/lang/String;
    :cond_4
    new-instance v7, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v7}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 522
    .local v7, operator2:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openSharedFolderOperator(Landroid/content/Context;)V

    .line 523
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 524
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 526
    new-instance v9, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    invoke-direct {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;-><init>()V

    .line 527
    .local v9, sharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderPathRemote(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setSharePath(Ljava/lang/String;)V

    .line 530
    new-instance v10, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    invoke-direct {v10}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;-><init>()V

    .line 531
    .local v10, taskInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 533
    sget-object v13, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    .line 534
    const-string v14, "FolderPathR"

    .line 535
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "SharePath"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    .line 533
    move-object/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->update(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    .line 537
    .local v11, updateShareFolder:Z
    const/4 v2, 0x0

    .line 538
    .local v2, delTaskInfo:Z
    if-eqz v11, :cond_5

    .line 540
    invoke-virtual {v7, v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->delTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;)Z

    move-result v2

    .line 543
    :cond_5
    if-eqz v2, :cond_6

    .line 545
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 546
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->resultSyncOperateList:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_6
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 549
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V

    .line 550
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V

    .line 552
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "addCloudFolder."

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "success="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private addLocalFolder(Ljava/util/ArrayList;I)V
    .locals 23
    .parameter
    .parameter "limitNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 763
    .local p1, folderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, "3"

    const-string v21, "Enter addLocalFolder."

    invoke-static/range {v19 .. v21}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getServerFriends()Ljava/util/List;

    move-result-object v13

    .line 767
    .local v13, friends:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;>;"
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v14, v0, :cond_0

    move/from16 v0, p2

    if-lt v14, v0, :cond_1

    .line 859
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, "3"

    const-string v21, "Exit addLocalFolder."

    invoke-static/range {v19 .. v21}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    return-void

    .line 769
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->onPause()V

    .line 770
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 772
    .local v9, folder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getShareName()Ljava/lang/String;

    move-result-object v7

    .line 773
    .local v7, displayName:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v17

    .line 774
    .local v17, sharePath:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v6

    .line 775
    .local v6, dbankPath:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v10

    .line 776
    .local v10, folderType:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getCreateTime()Ljava/lang/String;

    move-result-object v5

    .line 777
    .local v5, createTime:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 780
    .local v15, localPath:Ljava/lang/String;
    const/4 v4, 0x0

    .line 783
    .local v4, createFolderFlag:Z
    :try_start_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v19

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v20}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->createNewFolder(Landroid/content/Context;Ljava/io/File;)Z

    move-result v4

    .line 784
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, "3"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "addLocalFolder. createNewFolder="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    if-nez v4, :cond_3

    .line 795
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, "3"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "addLocalFolder.createNewFolder Failed. createNewFolder="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_2
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 786
    :catch_0
    move-exception v8

    .line 788
    .local v8, e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "addLocalFolder."

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",NoEnoughSpaceException:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 801
    .end local v8           #e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    :cond_3
    new-instance v16, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct/range {v16 .. v16}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 803
    .local v16, operator2:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openSharedFolderOperator(Landroid/content/Context;)V

    .line 817
    new-instance v18, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    invoke-direct/range {v18 .. v18}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;-><init>()V

    .line 818
    .local v18, sharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setCreateTime(Ljava/lang/String;)V

    .line 819
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderName(Ljava/lang/String;)V

    .line 820
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderPathRemote(Ljava/lang/String;)V

    .line 821
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderType(I)V

    .line 822
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setSharePath(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharer()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setSharerAccount(Ljava/lang/String;)V

    .line 827
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharer()Ljava/lang/String;

    move-result-object v11

    .line 828
    .local v11, friendName:Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_4
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_5

    .line 835
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setSharerName(Ljava/lang/String;)V

    .line 836
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->addShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;)Z

    move-result v2

    .line 844
    .local v2, addFolderflag:Z
    invoke-virtual/range {v16 .. v16}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V

    .line 847
    if-eqz v2, :cond_2

    .line 849
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, "3"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "addLocalFolder."

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->resultSyncOperateList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    new-instance v3, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;

    .line 854
    const/16 v19, 0x0

    .line 853
    move/from16 v0, v19

    invoke-direct {v3, v9, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;-><init>(Ljava/lang/Object;I)V

    .line 855
    .local v3, callable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;Z)V

    goto/16 :goto_1

    .line 828
    .end local v2           #addFolderflag:Z
    .end local v3           #callable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;

    .line 830
    .local v12, friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharer()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v12}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getAccount()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 832
    invoke-virtual {v12}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_2
.end method

.method private checkOprateType([Ljava/lang/String;)Z
    .locals 6
    .parameter "oprateTypes"

    .prologue
    .line 1120
    const/4 v1, 0x0

    .line 1121
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 1129
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkOprateType result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    return v1

    .line 1123
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkOprateType oprateType:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    aget-object v2, p1, v0

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1126
    const/4 v1, 0x1

    .line 1121
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private compareFolder(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 24
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;",
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
    .line 225
    .local p1, localFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    .local p2, serverFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v20

    const-string v21, "3"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Enter compareFolder.  localFolderList.size="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 226
    const-string v23, ",serverFolderList.size="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 227
    const-string v23, ",resultSyncOperateList.size="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->resultSyncOperateList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 225
    invoke-static/range {v20 .. v22}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v5, deleteLocalArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v4, deleteCloudArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v3, addLocalArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v2, addCloudArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    const/4 v10, 0x0

    .line 237
    .local v10, mpTaskInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v16, taskDelInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    const/4 v15, 0x0

    .line 239
    .local v15, taskAddInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    new-instance v12, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v12}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 240
    .local v12, operator2:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 243
    :try_start_0
    invoke-virtual {v12}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getTaskInfo()Ljava/util/Map;

    move-result-object v10

    .line 244
    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/util/List;

    move-object/from16 v16, v0

    .line 245
    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/util/List;

    move-object v15, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    invoke-virtual {v12}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V

    .line 254
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v20

    const-string v21, "3"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "compareFolder. taskDelInfos.size="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 255
    const-string v23, ",compareFolder. taskAddInfos.size="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 254
    invoke-static/range {v20 .. v22}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v18, tempLocalFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 264
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 266
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 269
    :cond_0
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-lt v8, v0, :cond_2

    .line 292
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v19, tempServerFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 294
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 297
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 299
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    :cond_1
    const/4 v8, 0x0

    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-lt v8, v0, :cond_5

    .line 324
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->deleteCloudFolder(Ljava/util/ArrayList;)V

    .line 325
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->deleteLocalFolder(Ljava/util/ArrayList;)V

    .line 328
    sget-object v20, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->ascComparator:Ljava/util/Comparator;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 329
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->addCloudFolder(Ljava/util/ArrayList;)V

    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTotlaFolderNum()I

    move-result v20

    move/from16 v0, v20

    rsub-int v11, v0, 0x270f

    .line 335
    .local v11, num:I
    sget-object v20, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->descComparator:Ljava/util/Comparator;

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 336
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->addLocalFolder(Ljava/util/ArrayList;I)V

    .line 338
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v20

    const-string v21, "3"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "compareFolder. addCloudArrayList.size="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 339
    const-string v23, ",compareFolder. addLocalArrayList.size="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 340
    const-string v23, ",compareFolder. deleteCloudArrayList.size="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 341
    const-string v23, ",compareFolder. deleteLocalArrayList.size="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 342
    const-string v23, ",compareFolder. resultSyncOperateList.size="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->resultSyncOperateList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 338
    invoke-static/range {v20 .. v22}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v17, tempFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 347
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->resultSyncOperateList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->resultSyncOperateList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    sget-object v21, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->ascComparator:Ljava/util/Comparator;

    invoke-static/range {v20 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 354
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v20

    const-string v21, "3"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Exit compareFolder. resultSyncOperateList.size="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->resultSyncOperateList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void

    .line 247
    .end local v8           #j:I
    .end local v11           #num:I
    .end local v17           #tempFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    .end local v18           #tempLocalFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    .end local v19           #tempServerFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    :catch_0
    move-exception v6

    .line 249
    .local v6, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v20

    const-string v21, "compareFolder DBException:"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 271
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v8       #j:I
    .restart local v18       #tempLocalFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    :cond_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 274
    .local v9, localFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-lt v7, v0, :cond_3

    .line 269
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 276
    :cond_3
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    .line 278
    .local v14, task:Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v14}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 280
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 285
    :cond_4
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 304
    .end local v7           #i:I
    .end local v9           #localFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    .end local v14           #task:Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    .restart local v19       #tempServerFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    :cond_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 305
    .local v13, serverFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-lt v7, v0, :cond_6

    .line 302
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 307
    :cond_6
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    .line 309
    .restart local v14       #task:Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    invoke-virtual {v13}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v14}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 311
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 316
    :cond_7
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private createShareFolderRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "displayName"
    .parameter "physicsPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 605
    const/4 v2, 0x0

    .line 606
    .local v2, sharePath:Ljava/lang/String;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareFolderRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p1, p2}, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareFolderRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .local v0, createShareFolderRequest:Lcom/huawei/hicloud/photosharesdk3/request/CreateShareFolderRequest;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareFolderRequest;->getJSONResponse()V

    .line 609
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareFolderRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v1

    .line 610
    .local v1, ret:Lorg/json/JSONObject;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CreateShareFolderRequest result:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    if-eqz v1, :cond_0

    const-string v3, "sharepath"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 614
    const-string v3, "sharepath"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 617
    :cond_0
    return-object v2
.end method

.method private createShareToJPL(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;)Z
    .locals 8
    .parameter "folder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 629
    const/4 v2, 0x0

    .line 630
    .local v2, result:Z
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;

    invoke-direct {v1, p1}, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;-><init>(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;)V

    .line 631
    .local v1, createShareReqToJPL:Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;
    const/16 v4, 0xfd

    invoke-virtual {v1, v4}, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->setFusionCode(I)V

    .line 632
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->getJSONResponse()V

    .line 634
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v3

    .line 635
    .local v3, ret:Lorg/json/JSONObject;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CreateShareReqToJPL result:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    if-eqz v3, :cond_0

    .line 639
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 640
    .local v0, code:I
    if-nez v0, :cond_0

    .line 642
    const/4 v2, 0x1

    .line 646
    .end local v0           #code:I
    :cond_0
    return v2
.end method

.method private deleteCloudFolder(Ljava/util/ArrayList;)V
    .locals 12
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
    .line 869
    .local p1, folderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3"

    const-string v9, "Enter deleteCloudFolder."

    invoke-static {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 909
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3"

    const-string v9, "Exit deleteCloudFolder."

    invoke-static {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return-void

    .line 871
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 873
    .local v3, folder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->onPause()V

    .line 874
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/request/DelShareFolderRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/request/DelShareFolderRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 875
    .local v1, delShareFolderRequest:Lcom/huawei/hicloud/photosharesdk3/request/DelShareFolderRequest;
    const/16 v8, 0xfe

    invoke-virtual {v1, v8}, Lcom/huawei/hicloud/photosharesdk3/request/DelShareFolderRequest;->setFusionCode(I)V

    .line 876
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/request/DelShareFolderRequest;->getJSONResponse()V

    .line 877
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/request/DelShareFolderRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v5

    .line 878
    .local v5, ret:Lorg/json/JSONObject;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "deleteCloudFolder result:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    if-eqz v5, :cond_0

    .line 882
    const/4 v0, -0x1

    .line 885
    .local v0, code:I
    :try_start_0
    const-string v8, "code"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 895
    :goto_1
    if-nez v0, :cond_0

    .line 898
    new-instance v4, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 899
    .local v4, operator2:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 900
    new-instance v6, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    invoke-direct {v6}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;-><init>()V

    .line 901
    .local v6, taskInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v4, v6}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->delTaskInfo(Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;)Z

    .line 904
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V

    .line 905
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "deleteCloudFolder success:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 887
    .end local v4           #operator2:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    .end local v6           #taskInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    :catch_0
    move-exception v2

    .line 889
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "deleteCloudFolder NumberFormatException:"

    invoke-static {v8, v9, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 891
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 893
    .local v2, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "deleteCloudFolder JSONException:"

    invoke-static {v8, v9, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private deleteLocalFolder(Ljava/util/ArrayList;)V
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
    .line 1010
    .local p1, folderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    const-string v10, "Enter deleteLocalFolder."

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1059
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    const-string v10, "Exit deleteLocalFolder."

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    return-void

    .line 1011
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 1013
    .local v4, folder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->onPause()V

    .line 1015
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

    .line 1016
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1015
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1018
    .local v5, localPath:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "deleteLocalFolder. "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    new-instance v7, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    invoke-direct {v7}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;-><init>()V

    .line 1021
    .local v7, sharefolder:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setSharePath(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderType(I)V

    .line 1023
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderPathRemote(Ljava/lang/String;)V

    .line 1025
    const/4 v2, 0x0

    .line 1026
    .local v2, delSharedFolderFlag:Z
    const/4 v1, 0x0

    .line 1027
    .local v1, delFileFlag:Z
    new-instance v6, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v6}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 1028
    .local v6, operator2:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openSharedFolderOperator(Landroid/content/Context;)V

    .line 1029
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1031
    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->delShareFolder(Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;)Z

    move-result v2

    .line 1034
    if-eqz v2, :cond_1

    .line 1036
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "deleteLocalFolder. delSharedFolderFlag:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "deleteLocalFolder. delSharedFolder localPath:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v3, file:Ljava/io/File;
    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/io/File;)Z

    move-result v1

    .line 1041
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "deleteLocalFolder. delFileFlag:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    .end local v3           #file:Ljava/io/File;
    :cond_1
    if-eqz v2, :cond_2

    .line 1047
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "deleteLocalFolder. delFileFlag:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;

    .line 1051
    const/4 v9, 0x1

    .line 1050
    invoke-direct {v0, v4, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;-><init>(Ljava/lang/Object;I)V

    .line 1052
    .local v0, callable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;Z)V

    .line 1054
    .end local v0           #callable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;
    :cond_2
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1055
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1056
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V

    goto/16 :goto_0
.end method

.method private getPartition(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, syncOperateListParam:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;>;"
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;

    invoke-direct {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;-><init>()V

    .line 153
    .local v1, myFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;
    new-instance v4, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;

    invoke-direct {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;-><init>()V

    .line 154
    .local v4, shareFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;
    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;-><init>()V

    .line 156
    .local v2, receiveFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 172
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->getSize()I

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    const-string v5, "0"

    invoke-virtual {v1, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->setFolderType(Ljava/lang/String;)V

    .line 175
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_1
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->getSize()I

    move-result v5

    if-eqz v5, :cond_2

    .line 179
    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->setFolderType(Ljava/lang/String;)V

    .line 180
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_2
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->getSize()I

    move-result v5

    if-eqz v5, :cond_3

    .line 184
    const-string v5, "2"

    invoke-virtual {v2, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->setFolderType(Ljava/lang/String;)V

    .line 185
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    const-string v7, "Exit getPartition."

    invoke-static {v5, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-object v3

    .line 156
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 158
    .local v0, folder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getPartition.SyncOperateFolder="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v6, "0"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 161
    invoke-direct {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->partitionLocal(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;)V

    goto :goto_0

    .line 163
    :cond_5
    const-string v6, "1"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 165
    invoke-direct {p0, v0, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->partitionLocal(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;)V

    goto :goto_0

    .line 167
    :cond_6
    const-string v6, "2"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 169
    invoke-direct {p0, v0, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->partitionLocal(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;)V

    goto/16 :goto_0
.end method

.method private getServerFriends()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;-><init>(Landroid/content/Context;)V

    .line 657
    .local v2, request:Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;->getJSONResponse()V

    .line 658
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getServerFriends result:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 661
    .local v1, gson:Lcom/google/gson/Gson;
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    .line 663
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 669
    :goto_0
    return-object v3

    .line 666
    :cond_0
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;

    .line 667
    .local v0, cqsr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;->getFriendList()Ljava/util/List;

    move-result-object v3

    .line 669
    .local v3, serverLists:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;>;"
    goto :goto_0
.end method

.method private getTotlaFolderNum()I
    .locals 7

    .prologue
    .line 363
    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 364
    .local v2, operator2:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openSharedFolderOperator(Landroid/content/Context;)V

    .line 365
    const-string v3, "3"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getShareFolderInfo(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 366
    .local v1, localList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 367
    .local v0, count:I
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V

    .line 368
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getTotlaFolderNum="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return v0
.end method

.method private makeDirRequest(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;)Lorg/json/JSONArray;
    .locals 10
    .parameter "folder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 566
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 567
    .local v0, dirs:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 570
    .local v5, result:Lorg/json/JSONArray;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 571
    .local v2, files:Lorg/json/JSONObject;
    const-string v6, "type"

    const-string v7, "Directory"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    const-string v6, "name"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v2           #files:Lorg/json/JSONObject;
    :goto_0
    new-instance v3, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;-><init>(Landroid/content/Context;)V

    .line 581
    .local v3, mkDirRequest:Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;->setFileInfo(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;->getJSONResponse()V

    .line 584
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v4

    .line 585
    .local v4, mkDirRes:Lorg/json/JSONObject;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mkDirRequest result:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    if-eqz v4, :cond_0

    const-string v6, "successList"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "successList"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 590
    const-string v6, "successList"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 593
    :cond_0
    return-object v5

    .line 575
    .end local v3           #mkDirRequest:Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;
    .end local v4           #mkDirRes:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 577
    .local v1, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "makeDirRequest JSONException:"

    invoke-static {v6, v7, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private partitionLocal(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;)V
    .locals 3
    .parameter "folder"
    .parameter "folderList"

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->getLocalList()Ljava/util/ArrayList;

    move-result-object v1

    .line 202
    .local v1, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p2, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->setLocalList(Ljava/util/ArrayList;)V

    .line 204
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->getSize()I

    move-result v0

    .line 205
    .local v0, size:I
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->setSize(I)V

    .line 215
    :goto_0
    return-void

    .line 209
    .end local v0           #size:I
    .end local v1           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    :cond_0
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->getCloudList()Ljava/util/ArrayList;

    move-result-object v1

    .line 210
    .restart local v1       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {p2, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->setCloudList(Ljava/util/ArrayList;)V

    .line 212
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->getSize()I

    move-result v0

    .line 213
    .restart local v0       #size:I
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->setSize(I)V

    goto :goto_0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1071
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    const-string v6, "Enter syncFolder. "

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getPreCallResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->syncOperateList:Ljava/util/ArrayList;

    .line 1075
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->resultSyncOperateList:Ljava/util/ArrayList;

    .line 1078
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->syncOperateList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->syncOperateList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1080
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->syncOperateList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getOprateTypes()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->checkOprateType([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1082
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    const-string v6, " syncFolder. not execute folder"

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->syncOperateList:Ljava/util/ArrayList;

    .line 1114
    :goto_0
    return-object v4

    .line 1088
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->shutdown()V

    .line 1089
    const/4 v4, 0x0

    goto :goto_0

    .line 1103
    :cond_1
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->syncOperateList:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getPartition(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    .line 1104
    .local v2, partitionList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1112
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    const-string v6, "Exit syncFolder. "

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->resultSyncOperateList:Ljava/util/ArrayList;

    goto :goto_0

    .line 1104
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;

    .line 1106
    .local v1, partition:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->getLocalList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1107
    .local v0, localFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->getCloudList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1108
    .local v3, serverFolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-direct {p0, v0, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;->compareFolder(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1
.end method
