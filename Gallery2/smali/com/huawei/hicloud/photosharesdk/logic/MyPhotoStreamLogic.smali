.class public Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;
.super Ljava/lang/Object;
.source "MyPhotoStreamLogic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$SyncMessageCallableInnerForFindbug;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;


# instance fields
.field private final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field myPhotoStreamHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$1;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/CloudHandlerThread;->getInstance()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$1;-><init>(Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->myPhotoStreamHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->afterUploadEntitySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    invoke-direct {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->updateTaskInfo(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private add2TaskInfo(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;

    invoke-direct {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;-><init>()V

    .line 227
    .local v1, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    invoke-virtual {v1, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, addList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 239
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->closeTaskInfoOperator()V

    .line 240
    return-object v0

    .line 229
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    .line 230
    .local v4, taskInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->getPhotoPathLocal()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 231
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->getPhotoPathLocal()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->getPhotoName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 230
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, photoCachePath:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/Photoshare/myphoto"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 233
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, photoDBankPath:Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 236
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {v1, v4}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->addTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z

    goto :goto_0
.end method

.method private addPhoto2CacheAndTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "mContext"
    .parameter "photoDbankPath"
    .parameter "photoLocalPath"

    .prologue
    const/4 v9, 0x0

    .line 388
    const-string v0, "/Photoshare/myphoto"

    .line 389
    .local v0, dbankPath:Ljava/lang/String;
    new-instance v4, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    invoke-direct {v4, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 390
    .local v4, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 394
    .local v5, photoCachePath:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v7, v8}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->copySingleFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    .line 396
    invoke-static {p1, v5}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->generateImage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/FileIncompleteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 406
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;>;"
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;-><init>()V

    .line 408
    .local v2, folderPhoto:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->LT2UTC()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setCreateTime(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v2, v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setSharedPath(Ljava/lang/String;)V

    .line 410
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setNew(Z)V

    .line 411
    invoke-virtual {v2, p2}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {v4, v3}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->addPhoto(Ljava/util/List;)Z

    .line 415
    new-instance v6, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-direct {v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;-><init>()V

    .line 416
    .local v6, shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    const-string v7, "0"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setFolderType(I)V

    .line 417
    const-string v7, "/Photoshare/myphoto"

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setDbankPath(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, v6}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->notifyLocalAdd(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V

    .line 419
    return-void

    .line 397
    .end local v2           #folderPhoto:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;>;"
    .end local v6           #shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    :catch_0
    move-exception v1

    .line 399
    .local v1, e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;

    invoke-static {v7, v9, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 401
    .end local v1           #e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    :catch_1
    move-exception v1

    .line 403
    .local v1, e:Lcom/huawei/hicloud/photosharesdk/exception/FileIncompleteException;
    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;

    invoke-static {v7, v9, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private afterUploadEntitySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "photoLocalPath"
    .parameter "photoDbankPath"
    .parameter "orgPhotoPath"

    .prologue
    .line 368
    const/4 v3, 0x2

    invoke-direct {p0, p2, v3}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->updateTaskInfo(Ljava/lang/String;I)V

    .line 371
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;

    .line 372
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->myPhotoStreamHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->mContext:Landroid/content/Context;

    .line 371
    invoke-direct {v1, v3, v4}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 373
    .local v1, request:Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;
    const-string v3, "myphoto"

    invoke-virtual {v1, v3}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->setSharePath(Ljava/lang/String;)V

    .line 374
    const/16 v3, 0x107

    invoke-virtual {v1, v3}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->setFusionCode(I)V

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;-><init>()V

    .line 377
    .local v2, sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    invoke-virtual {v2, p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->setDbankPath(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {v1, v0}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->setPhotoList(Ljava/util/ArrayList;)V

    .line 380
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 383
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, p2, p3}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->addPhoto2CacheAndTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public static getInstance()Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->instance:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;-><init>()V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->instance:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    .line 63
    :cond_0
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->instance:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;

    return-object v0
.end method

.method private notifyLocalAdd(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V
    .locals 3
    .parameter "shareFolder"

    .prologue
    .line 214
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$SyncMessageCallableInnerForFindbug;

    invoke-direct {v0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$SyncMessageCallableInnerForFindbug;-><init>(Ljava/lang/Object;)V

    .line 215
    .local v0, findbugCallable:Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$SyncMessageCallableInnerForFindbug;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;Z)V

    .line 216
    return-void
.end method

.method private updateTaskInfo(Ljava/lang/String;I)V
    .locals 8
    .parameter "photoDbankPath"
    .parameter "stage"

    .prologue
    const/4 v5, 0x2

    .line 308
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;

    invoke-direct {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;-><init>()V

    .line 310
    .local v1, operator2:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 311
    if-ne p2, v5, :cond_1

    .line 312
    sget-object v3, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->TaskInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 313
    const-string v4, "PhotoPathR"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 314
    const-string v7, "CurrentStage"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "2"

    aput-object v7, v5, v6

    .line 312
    invoke-virtual {v0, v3, v4, p1, v5}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->update(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 322
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->closeTaskInfoOperator()V

    .line 324
    return-void

    .line 317
    :cond_1
    if-nez p2, :cond_0

    .line 318
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;-><init>()V

    .line 319
    .local v2, taskInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;
    invoke-virtual {v2, p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->delTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z

    goto :goto_0
.end method

.method private updateTaskInfo(Ljava/util/ArrayList;I)V
    .locals 13
    .parameter
    .parameter "stage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 364
    :goto_0
    return-void

    .line 340
    :cond_0
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 341
    .local v1, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;-><init>()V

    .line 342
    .local v2, operator2:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 343
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 356
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->closeTaskInfoOperator()V

    .line 358
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, photoDbankPath:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    const/4 v7, 0x0

    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 359
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, dir:Ljava/lang/String;
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    .line 362
    const/4 v8, 0x0

    .line 361
    invoke-static {v6, v0, v7, v8}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendContentChange(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    .line 343
    .end local v0           #dir:Ljava/lang/String;
    .end local v3           #photoDbankPath:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    .line 344
    .local v4, sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    const/4 v7, 0x2

    if-ne p2, v7, :cond_3

    .line 345
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->TaskInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 346
    const-string v8, "PhotoPathR"

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 347
    const-string v12, "CurrentStage"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "2"

    aput-object v12, v10, v11

    .line 345
    invoke-virtual {v1, v7, v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->update(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_1

    .line 350
    :cond_3
    if-nez p2, :cond_1

    .line 351
    new-instance v5, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    invoke-direct {v5}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;-><init>()V

    .line 352
    .local v5, taskInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v2, v5}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->delTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z

    goto :goto_1
.end method

.method private updateTimeLine(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 251
    .local p2, addList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$TimeLineUtil;->readTimeLineFromFile(Landroid/content/Context;)J

    move-result-wide v3

    .line 252
    .local v3, timeLine:J
    sget-boolean v5, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v5, :cond_0

    .line 253
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "timeLine before update: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    const-wide/16 v0, 0x0

    .line 256
    .local v0, createTime:J
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 262
    sget-boolean v5, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v5, :cond_2

    .line 263
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "timeLine after update: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_2
    invoke-static {p1, v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$TimeLineUtil;->writeTimeLineToFile(Landroid/content/Context;J)V

    .line 266
    return-void

    .line 256
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    .line 257
    .local v2, taskInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsDefault(Ljava/lang/String;)J

    move-result-wide v0

    .line 258
    cmp-long v6, v0, v3

    if-lez v6, :cond_1

    .line 259
    const-wide/16 v6, 0x3e8

    add-long v3, v0, v6

    goto :goto_0
.end method


# virtual methods
.method public addTaskInfoFromCamera(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 141
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addTaskInfoFromCamera list.size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->mContext:Landroid/content/Context;

    .line 147
    const-string v3, "isOpenPhoto"

    invoke-static {p1, v3}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->add2TaskInfo(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, addList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;>;"
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addTaskInfoFromCamera addList.size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->updateTimeLine(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 174
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    const/4 v3, 0x0

    invoke-static {v3, v8}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->scanFile(ZLjava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v3

    .line 179
    const-string v4, "/Photoshare/myphoto"

    .line 178
    invoke-virtual {v3, v7, v4, v7}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/text/ParseException;
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->TAG:Ljava/lang/String;

    invoke-static {v3, v8, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 165
    .end local v1           #e:Ljava/text/ParseException;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    .line 167
    .local v2, taskInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addTaskInfoFromCamera name:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->getPhotoName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->getPhotoPathLocal()Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-direct {p0, p1, v4, v5}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;->addPhoto2CacheAndTable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
