.class public Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.source "PhotoDownloadCallable.java"


# static fields
.field private static final DOWN_FAIL:I = 0x1

.field private static final DOWN_SUCCESS:I = 0x0

.field public static final FILE_DATA:Ljava/lang/String; = "FILE_DATA"

.field public static final IS_FROM_SYNC:Ljava/lang/String; = "IS_FROM_SYNC"


# instance fields
.field private dbankPath:Ljava/lang/String;

.field private isCancel:Z

.field private isFromSync:Z

.field private syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;


# direct methods
.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 3
    .parameter "callParam"
    .parameter "timeout"
    .parameter "retry"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;-><init>(Ljava/lang/Object;JI)V

    .line 59
    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isFromSync:Z

    .line 61
    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isCancel:Z

    .line 63
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->dbankPath:Ljava/lang/String;

    .line 80
    instance-of v0, p1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    if-eqz v0, :cond_2

    .line 82
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "download isSync"

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    check-cast p1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .end local p1
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isFromSync:Z

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->dbankPath:Ljava/lang/String;

    .line 97
    :cond_1
    return-void

    .line 86
    .restart local p1
    :cond_2
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    const-string v2, "download is not sync"

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 89
    check-cast v0, Ljava/util/Map;

    const-string v1, "IS_FROM_SYNC"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isFromSync:Z

    .line 90
    check-cast p1, Ljava/util/Map;

    .end local p1
    const-string v0, "FILE_DATA"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    goto :goto_0
.end method

.method private checkFolderDataExit(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)Z
    .locals 8
    .parameter "fileForCheck"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 370
    iget-boolean v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isCancel:Z

    if-eqz v5, :cond_0

    .line 372
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    const-string v7, "downloadFile isCancel"

    invoke-static {v5, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 376
    :cond_0
    const/4 v4, 0x0

    .line 378
    .local v4, result:Z
    new-instance v3, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 379
    .local v3, operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openSharedFolderOperator(Landroid/content/Context;)V

    .line 382
    :try_start_0
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 384
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v5

    .line 385
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 384
    invoke-virtual {v3, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getShareFolderBySharePath(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 386
    .local v2, folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    .line 388
    :goto_0
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 399
    :try_start_1
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 407
    .end local v2           #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :goto_1
    return v4

    .line 386
    .restart local v2       #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 390
    .end local v2           #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checkFolderDataExit db"

    invoke-static {v5, v6, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 399
    :try_start_3
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 401
    :catch_1
    move-exception v1

    .line 403
    .local v1, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checkFolderDataExit db"

    invoke-static {v5, v6, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 395
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 396
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 399
    :try_start_4
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 405
    :goto_2
    throw v5

    .line 401
    :catch_2
    move-exception v1

    .line 403
    .restart local v1       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "checkFolderDataExit db"

    invoke-static {v6, v7, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 401
    .end local v1           #e2:Ljava/lang/Exception;
    .restart local v2       #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :catch_3
    move-exception v1

    .line 403
    .restart local v1       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "checkFolderDataExit db"

    invoke-static {v5, v6, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private checkMd5Same(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "localPath"
    .parameter "cloudMd5"

    .prologue
    .line 215
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, file:Ljava/io/File;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "local file exit result:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ### path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, localFileStringMd5:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "local file md5:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ### cloud md5 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "checkMd5Same cloud and local same md5"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v3, 0x1

    .line 236
    .end local v2           #localFileStringMd5:Ljava/lang/String;
    :goto_0
    return v3

    .line 231
    .restart local v2       #localFileStringMd5:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/io/File;)Z

    move-result v0

    .line 232
    .local v0, delete:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "md5 not same delete result:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v0           #delete:Z
    .end local v2           #localFileStringMd5:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private downloadFile(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)V
    .locals 9
    .parameter "operateFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v6, "3"

    const-string v7, "come into downloadFile original"

    invoke-static {v3, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;-><init>()V

    .line 117
    .local v0, downloadItem:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSize()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->fileSize:J

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 122
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 123
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    iput-object v3, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    .line 125
    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isCancel:Z

    if-eqz v3, :cond_0

    .line 127
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "downloadFile isCancel"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 131
    :cond_0
    iget-object v3, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getMd5()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->checkMd5Same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v5, "3"

    const-string v6, "downloadFile cloud and local same md5"

    invoke-static {v3, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 136
    iget-object v5, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 139
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-static {v3, v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDownloadNotify(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isFromSync:Z

    if-eqz v3, :cond_5

    .line 145
    const-string v3, "0"

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v3

    if-nez v3, :cond_3

    .line 148
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "download myphoto canExecute is false"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_3
    const-string v3, "2"

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 152
    const-string v3, "1"

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 154
    :cond_4
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v3

    if-nez v3, :cond_5

    .line 156
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "download share canExecute is false"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_5
    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isCancel:Z

    if-eqz v3, :cond_6

    .line 164
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "downloadFile isCancel"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 168
    :cond_6
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v6, "3"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "download start , "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v6, "3"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "downloadFile url:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getDownOriginalUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 172
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getDownOriginalUrl()Ljava/lang/String;

    move-result-object v6

    .line 171
    invoke-direct {v2, v3, v0, v6}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;-><init>(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;Ljava/lang/String;)V

    .line 173
    .local v2, request:Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;
    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isFromSync:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->setDownloadType(I)V

    .line 175
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/request/DownloadFileRequest;->getJSONResponse()V

    .line 177
    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isCancel:Z

    if-eqz v3, :cond_8

    .line 179
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "downloadFile isCancel"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    :cond_7
    move v3, v5

    .line 174
    goto :goto_1

    .line 183
    :cond_8
    iget-object v3, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getMd5()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->checkMd5Same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 185
    .local v1, flag:Z
    iget-object v3, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->scanFile(ZLjava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v6, "3"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "download end flag:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz v1, :cond_9

    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isFromSync:Z

    if-nez v3, :cond_9

    .line 192
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "downloadFile success over ui:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 195
    iget-object v5, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 198
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 196
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 193
    invoke-static {v3, v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDownloadNotify(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    :cond_9
    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isFromSync:Z

    if-nez v3, :cond_1

    .line 202
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "downloadFile fail over ui:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 205
    iget-object v4, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 208
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 206
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-static {v3, v5, v4, v6}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDownloadNotify(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private queryPhotoInfo(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)Z
    .locals 10
    .parameter "downloadFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 241
    iget-boolean v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isCancel:Z

    if-eqz v6, :cond_0

    .line 243
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    const-string v7, "downloadFile isCancel"

    invoke-static {v5, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 247
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    .line 248
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "down load file path:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 247
    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v3, Lcom/huawei/hicloud/photosharesdk3/request/GetFileInfoRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/huawei/hicloud/photosharesdk3/request/GetFileInfoRequest;-><init>(Landroid/content/Context;)V

    .line 251
    .local v3, request:Lcom/huawei/hicloud/photosharesdk3/request/GetFileInfoRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 253
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 254
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 255
    const-string v7, "\"]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-virtual {v3, v6}, Lcom/huawei/hicloud/photosharesdk3/request/GetFileInfoRequest;->setFileInfo(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/request/GetFileInfoRequest;->getJSONResponse()V

    .line 258
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/request/GetFileInfoRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v2

    .line 259
    .local v2, jsonObject:Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    const-string v6, "error"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 261
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "not premission no need sync this dir"

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_2
    :goto_0
    return v5

    .line 266
    :cond_3
    const-string v6, "successList"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 267
    .local v0, childList:Lorg/json/JSONArray;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 271
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 272
    .local v1, fileInfo:Lorg/json/JSONObject;
    if-eqz v1, :cond_5

    .line 274
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, serverName:Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 280
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setPhysicsPath(Ljava/lang/String;)V

    .line 281
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setFolderType(Ljava/lang/String;)V

    .line 282
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setSharePath(Ljava/lang/String;)V

    .line 283
    sget-boolean v5, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->USE_HTTPS:Z

    if-eqz v5, :cond_4

    .line 285
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    const-string v6, "sslUrl"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setDownOriginalUrl(Ljava/lang/String;)V

    .line 291
    :goto_1
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    const-string v6, "createTime"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setCreateTime(Ljava/lang/String;)V

    .line 292
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v5, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setFileName(Ljava/lang/String;)V

    .line 293
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    const-string v6, "md5"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setMd5(Ljava/lang/String;)V

    .line 294
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    const-string v6, "size"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setSize(J)V

    .line 296
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 289
    :cond_4
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    const-string v6, "url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setDownOriginalUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 300
    .end local v4           #serverName:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "cloud no file match"

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private queryReceivedPhotoInfo(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)Z
    .locals 11
    .parameter "downloadFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 306
    iget-boolean v7, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isCancel:Z

    if-eqz v7, :cond_0

    .line 308
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "downloadFile isCancel"

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 312
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3"

    .line 313
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "down load file path:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 312
    invoke-static {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v5, Lcom/huawei/hicloud/photosharesdk3/request/GetPhotoListRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/huawei/hicloud/photosharesdk3/request/GetPhotoListRequest;-><init>(Landroid/content/Context;)V

    .line 316
    .local v5, request:Lcom/huawei/hicloud/photosharesdk3/request/GetPhotoListRequest;
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/huawei/hicloud/photosharesdk3/request/GetPhotoListRequest;->setFolderPath(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/GetPhotoListRequest;->getJSONResponse()V

    .line 319
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/GetPhotoListRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v3

    .line 320
    .local v3, jsonObject:Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    const-string v7, "error"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 322
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3"

    const-string v9, "not premission no need sync this dir"

    invoke-static {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_0
    return v6

    .line 326
    :cond_2
    const-string v7, "childList"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 327
    .local v0, childList:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 328
    .local v4, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v4, :cond_3

    .line 364
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3"

    const-string v9, "cloud no file match"

    invoke-static {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_3
    iget-boolean v7, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isCancel:Z

    if-eqz v7, :cond_4

    .line 332
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "downloadFile isCancel"

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 336
    :cond_4
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 337
    .local v1, fileInfo:Lorg/json/JSONObject;
    if-eqz v1, :cond_6

    .line 339
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v7, "name"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string v7, "name"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 343
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setPhysicsPath(Ljava/lang/String;)V

    .line 344
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setFolderType(Ljava/lang/String;)V

    .line 345
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setSharePath(Ljava/lang/String;)V

    .line 346
    sget-boolean v6, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->USE_HTTPS:Z

    if-eqz v6, :cond_5

    .line 348
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    const-string v7, "sslUrl"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setDownOriginalUrl(Ljava/lang/String;)V

    .line 354
    :goto_2
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    const-string v7, "createTime"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setCreateTime(Ljava/lang/String;)V

    .line 355
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    const-string v7, "name"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setFileName(Ljava/lang/String;)V

    .line 356
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    const-string v7, "md5"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setMd5(Ljava/lang/String;)V

    .line 357
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    const-string v7, "size"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setSize(J)V

    .line 359
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 352
    :cond_5
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    const-string v7, "url"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setDownOriginalUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 328
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public baseEquals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "downloadCallable"

    .prologue
    .line 477
    instance-of v4, p1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;

    if-nez v4, :cond_1

    .line 479
    const/4 v0, 0x0

    .line 519
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v1, p1

    .line 481
    check-cast v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;

    .line 482
    .local v1, other:Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, thisPath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, otherPath:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 486
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isPriority()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isPriority()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 490
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isExecuted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 492
    const/4 v0, 0x1

    .line 514
    :cond_2
    :goto_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ".....flag:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".....baseEquals:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 515
    const-string v7, ", this.isPriority:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isPriority()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",other.isPriority():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isPriority()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 516
    const-string v7, ",other.isExecuted:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isExecuted()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 514
    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    :cond_3
    invoke-virtual {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->removeFromPoolList(Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;)V

    .line 497
    const/4 v0, 0x0

    goto :goto_1

    .line 500
    :cond_4
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isPriority()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isPriority()Z

    move-result v4

    if-nez v4, :cond_5

    .line 502
    const/4 v0, 0x0

    .line 503
    invoke-virtual {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->removeFromPoolList(Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;)V

    goto :goto_1

    .line 505
    :cond_5
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isPriority()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isPriority()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 507
    const/4 v0, 0x1

    goto :goto_1

    .line 509
    :cond_6
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isPriority()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isPriority()Z

    move-result v4

    if-nez v4, :cond_2

    .line 511
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 420
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "come into"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->checkFolderDataExit(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "down checkFolderDataExit db not exit"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_0
    return-object v5

    .line 427
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "down checkFolderDataExit db exit"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 432
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 433
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, savePath:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isFromSync:Z

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->downloadFile(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)V

    .line 465
    :goto_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "download file finish over ok"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_1
    const-string v1, "2"

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->queryReceivedPhotoInfo(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->downloadFile(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)V

    goto :goto_1

    .line 447
    :cond_2
    const-string v1, "0"

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 448
    const-string v1, "1"

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 449
    :cond_3
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->queryPhotoInfo(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 451
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-direct {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->downloadFile(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)V

    goto :goto_1

    .line 455
    :cond_4
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "download queryPhotoInfo is null"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 457
    const/4 v2, 0x1

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 461
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 459
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-static {v1, v2, v0, v3}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDownloadNotify(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public cancel()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->isCancel:Z

    .line 106
    invoke-super {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;->cancel()Z

    move-result v0

    return v0
.end method

.method public getDbankPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->dbankPath:Ljava/lang/String;

    return-object v0
.end method

.method public setDbankPath(Ljava/lang/String;)V
    .locals 0
    .parameter "dbankPath"

    .prologue
    .line 529
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->dbankPath:Ljava/lang/String;

    .line 530
    return-void
.end method
