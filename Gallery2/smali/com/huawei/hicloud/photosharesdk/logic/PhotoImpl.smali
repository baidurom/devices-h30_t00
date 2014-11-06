.class public Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;
.super Ljava/lang/Object;
.source "PhotoImpl.java"

# interfaces
.implements Lcom/huawei/hicloud/photosharesdk/logic/PhotoInterface;


# static fields
.field private static originalHandle:Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field photoHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 619
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$2;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$2;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->originalHandle:Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-class v0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/CloudHandlerThread;->getInstance()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl$1;-><init>(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->photoHandler:Landroid/os/Handler;

    .line 79
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 692
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->afterUploadEntitySuccess([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->afterRemoveFilesSuccess(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3(Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    invoke-direct {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->updateTaskInfo(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private add2TaskInfo(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, pList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    const/4 v5, 0x1

    .line 428
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;-><init>()V

    .line 429
    .local v0, collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    invoke-virtual {v0, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 430
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->closeTaskInfoOperator()V

    .line 443
    return-void

    .line 430
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    .line 431
    .local v2, sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    invoke-direct {v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;-><init>()V

    .line 434
    .local v1, info:Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->LT2UTC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setCreateTime(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1, v5}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setCurrentStage(I)V

    .line 437
    invoke-virtual {v1, v5}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setOperationType(I)V

    .line 438
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setPhotoName(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->addTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z

    goto :goto_0
.end method

.method private afterRemoveFilesSuccess(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    const/4 v9, 0x0

    .line 724
    const/4 v5, 0x2

    invoke-direct {p0, p1, v5}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->updateTaskInfo(Ljava/util/ArrayList;I)V

    .line 726
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v6

    .line 727
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, folderDbankPath:Ljava/lang/String;
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->photoHandler:Landroid/os/Handler;

    .line 731
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    .line 730
    invoke-direct {v2, v5, v6}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 733
    .local v2, request:Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;
    const-string v5, "/Photoshare/myphoto"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 734
    invoke-virtual {v2, v0}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->setSharePath(Ljava/lang/String;)V

    .line 751
    :goto_0
    const/16 v5, 0x107

    invoke-virtual {v2, v5}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->setFusionCode(I)V

    .line 752
    invoke-virtual {v2, p1}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->setPhotoList(Ljava/util/ArrayList;)V

    .line 753
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 755
    :cond_0
    return-void

    .line 738
    :cond_1
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 739
    .local v1, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    sget-object v5, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 740
    const-string v6, "FolderPathR"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    .line 741
    const-string v8, "SharePath"

    aput-object v8, v7, v9

    .line 739
    invoke-virtual {v1, v5, v6, v0, v7}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 742
    .local v3, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    const-string v4, ""

    .line 743
    .local v4, sharePath:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 744
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    aget-object v4, v5, v9

    .end local v4           #sharePath:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 748
    .restart local v4       #sharePath:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->setSharePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private afterUploadEntitySuccess([Ljava/lang/String;)V
    .locals 13
    .parameter "str"

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 694
    aget-object v3, p1, v10

    .line 695
    .local v3, photoDbankPath:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-direct {p0, v3, v8}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->updateTaskInfo(Ljava/lang/String;I)V

    .line 697
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, folderDbankPath:Ljava/lang/String;
    new-instance v4, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;

    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->photoHandler:Landroid/os/Handler;

    .line 701
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    .line 700
    invoke-direct {v4, v8, v9}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 702
    .local v4, request:Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 703
    .local v2, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    sget-object v8, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 704
    const-string v9, "FolderPathR"

    new-array v10, v10, [Ljava/lang/String;

    .line 705
    const-string v11, "SharePath"

    aput-object v11, v10, v12

    .line 703
    invoke-virtual {v2, v8, v9, v0, v10}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 706
    .local v5, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    const-string v6, ""

    .line 707
    .local v6, sharePath:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    array-length v8, v8

    if-eqz v8, :cond_0

    .line 708
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    aget-object v6, v8, v12

    .end local v6           #sharePath:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 712
    .restart local v6       #sharePath:Ljava/lang/String;
    invoke-virtual {v4, v6}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->setSharePath(Ljava/lang/String;)V

    .line 713
    const/16 v8, 0x107

    invoke-virtual {v4, v8}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->setFusionCode(I)V

    .line 714
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    new-instance v7, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    invoke-direct {v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;-><init>()V

    .line 716
    .local v7, sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    invoke-virtual {v7, v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->setDbankPath(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-virtual {v4, v1}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->setPhotoList(Ljava/util/ArrayList;)V

    .line 719
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 721
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    .end local v7           #sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    :cond_0
    return-void
.end method

.method private getOriginalFile(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;Z)Z
    .locals 5
    .parameter "syncOperateFile"
    .parameter "isPriority"

    .prologue
    .line 630
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 631
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "IS_FROM_SYNC"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v2, "FILE_DATA"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;

    .line 636
    const-wide/32 v2, 0x493e0

    .line 637
    const/4 v4, 0x2

    .line 635
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;-><init>(Ljava/lang/Object;JI)V

    .line 638
    .local v1, photoDownloadCallable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v2

    .line 639
    sget-object v3, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->originalHandle:Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;

    .line 638
    invoke-virtual {v2, v1, v3, p2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableParallel(Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;Z)Z

    move-result v2

    return v2
.end method

.method private updateTaskInfo(Ljava/lang/String;I)V
    .locals 8
    .parameter "photoDbankPath"
    .parameter "stage"

    .prologue
    const/4 v5, 0x2

    .line 674
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 675
    .local v0, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;

    invoke-direct {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;-><init>()V

    .line 676
    .local v1, operator2:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 677
    if-ne p2, v5, :cond_1

    .line 678
    sget-object v3, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->TaskInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 679
    const-string v4, "PhotoPathR"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 680
    const-string v7, "CurrentStage"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "2"

    aput-object v7, v5, v6

    .line 678
    invoke-virtual {v0, v3, v4, p1, v5}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->update(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 688
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->closeTaskInfoOperator()V

    .line 690
    return-void

    .line 683
    :cond_1
    if-nez p2, :cond_0

    .line 684
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;-><init>()V

    .line 685
    .local v2, taskInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;
    invoke-virtual {v2, p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->delTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z

    goto :goto_0
.end method

.method private updateTaskInfo(Ljava/util/ArrayList;I)V
    .locals 12
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
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    const/4 v11, 0x2

    .line 652
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 653
    .local v0, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;

    invoke-direct {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;-><init>()V

    .line 654
    .local v1, operator2:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 655
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 668
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->closeTaskInfoOperator()V

    .line 670
    return-void

    .line 655
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    .line 656
    .local v2, sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    if-ne p2, v11, :cond_2

    .line 657
    sget-object v5, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->TaskInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 658
    const-string v6, "PhotoPathR"

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 659
    const-string v10, "CurrentStage"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "2"

    aput-object v10, v8, v9

    .line 657
    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->update(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0

    .line 662
    :cond_2
    if-nez p2, :cond_0

    .line 663
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;

    invoke-direct {v3}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;-><init>()V

    .line 664
    .local v3, taskInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v1, v3}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->delTaskInfo(Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;)Z

    goto :goto_0
.end method


# virtual methods
.method public addPhotoToShared(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "localPath"
    .parameter "orgPhotoPath"

    .prologue
    const/4 v5, 0x0

    .line 401
    if-eqz p3, :cond_0

    array-length v2, p3

    if-gtz v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v5

    .line 405
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 406
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "context"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v2, "localPath"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v2, "orgPhotoPath"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;

    invoke-direct {v0, v1}, Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;-><init>(Ljava/lang/Object;)V

    .line 412
    .local v0, addShareCallable:Lcom/huawei/hicloud/photosharesdk/logic/AddShareCallable;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;J)V

    goto :goto_0
.end method

.method public delPhotoFromMyPhoto(Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, pList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    const/4 v3, 0x0

    .line 368
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;->start()V

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->add2TaskInfo(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 374
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->photoHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v3}, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;-><init>(Landroid/os/Handler;Landroid/content/Context;Z)V

    .line 375
    .local v0, request:Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;
    const/16 v1, 0x106

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;->setFusionCode(I)V

    .line 376
    invoke-virtual {v0, p2}, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;->setFileInfo(Ljava/util/ArrayList;)V

    .line 377
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 382
    return v3
.end method

.method public delPhotoFromShared(Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 13
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, pList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    const/16 v12, 0x106

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 311
    new-instance v4, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;

    invoke-direct {v4, p1, p2, v10}, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/logic/DelPhotoThread;->start()V

    .line 318
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 352
    return v10

    .line 318
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    .line 319
    .local v3, sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    invoke-direct {v1, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 320
    .local v1, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->TaskInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 321
    const-string v6, "PhotoPathR"

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/String;

    .line 322
    const-string v9, "CurrentStage"

    aput-object v9, v8, v10

    .line 320
    invoke-virtual {v1, v4, v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 324
    .local v0, list:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->add2TaskInfo(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 328
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->photoHandler:Landroid/os/Handler;

    invoke-direct {v2, v4, p1, v10}, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;-><init>(Landroid/os/Handler;Landroid/content/Context;Z)V

    .line 329
    .local v2, request:Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;
    invoke-virtual {v2, v12}, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;->setFusionCode(I)V

    .line 330
    invoke-virtual {v2, p2}, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;->setFileInfo(Ljava/util/ArrayList;)V

    .line 331
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    goto :goto_0

    .line 334
    .end local v2           #request:Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;
    :cond_2
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    aget-object v4, v4, v10

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v11, :cond_3

    .line 336
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_0

    .line 337
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->TAG:Ljava/lang/String;

    const-string v6, "\u7167\u7247\u5220\u9664\u6210\u529f"

    invoke-static {v4, v6}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_3
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    aget-object v4, v4, v10

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->add2TaskInfo(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 345
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->photoHandler:Landroid/os/Handler;

    invoke-direct {v2, v4, p1, v10}, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;-><init>(Landroid/os/Handler;Landroid/content/Context;Z)V

    .line 346
    .restart local v2       #request:Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;
    invoke-virtual {v2, v12}, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;->setFusionCode(I)V

    .line 347
    invoke-virtual {v2, p2}, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;->setFileInfo(Ljava/util/ArrayList;)V

    .line 348
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/RemoveFilesRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    goto :goto_0
.end method

.method public getSharePhoto(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 19
    .parameter "context"
    .parameter "localPath"
    .parameter "orderby"
    .parameter "isUpstate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-static/range {p2 .. p2}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->localPath2DbankPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, folderDbankPath:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v6, list4Return:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    const-string v14, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 295
    .end local v6           #list4Return:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    :cond_0
    :goto_0
    return-object v6

    .line 224
    .restart local v6       #list4Return:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    :cond_1
    new-instance v8, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 225
    .local v8, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    const-string v11, ""

    .line 226
    .local v11, sharePath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 227
    .local v3, isMyPhoto:Z
    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isMyPhotoStreamPath(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 228
    move-object v11, v2

    .line 229
    const/4 v3, 0x1

    .line 240
    :goto_1
    if-nez p3, :cond_7

    const-string v14, "ASC"

    :goto_2
    invoke-virtual {v8, v11, v14}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->getPhotoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 242
    .local v13, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    instance-of v14, v13, Ljava/util/ArrayList;

    if-eqz v14, :cond_2

    move-object v5, v13

    .line 244
    check-cast v5, Ljava/util/ArrayList;

    .line 247
    :cond_2
    if-eqz p4, :cond_3

    .line 248
    sget-object v14, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 249
    const-string v15, "SharedPath"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 250
    const-string v18, "IsNew"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "0"

    aput-object v18, v16, v17

    .line 248
    move-object/from16 v0, v16

    invoke-virtual {v8, v14, v15, v11, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->update(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 252
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, dirPath:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    .line 255
    .local v12, sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    invoke-virtual {v12}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, photoDbankpath:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->generateThumbLocalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, labbrPath:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, lrealPath:Ljava/lang/String;
    invoke-virtual {v12, v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->setLabbrPath(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v12, v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->setLrealPath(Ljava/lang/String;)V

    .line 277
    const-string v15, "/"

    invoke-virtual {v9, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->setpName(Ljava/lang/String;)V

    .line 279
    const-string v15, ".."

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 280
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 281
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 231
    .end local v1           #dirPath:Ljava/lang/String;
    .end local v4           #labbrPath:Ljava/lang/String;
    .end local v7           #lrealPath:Ljava/lang/String;
    .end local v9           #photoDbankpath:Ljava/lang/String;
    .end local v12           #sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    .end local v13           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    :cond_5
    sget-object v14, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 232
    const-string v15, "FolderPathR"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 233
    const-string v18, "SharePath"

    aput-object v18, v16, v17

    .line 231
    move-object/from16 v0, v16

    invoke-virtual {v8, v14, v15, v2, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 234
    .local v10, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_6

    const/4 v14, 0x0

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    array-length v14, v14

    if-eqz v14, :cond_6

    .line 235
    const/4 v14, 0x0

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v11, v14, v15

    .end local v11           #sharePath:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .restart local v11       #sharePath:Ljava/lang/String;
    goto/16 :goto_1

    .line 237
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 241
    .end local v10           #result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    :cond_7
    const-string v14, "DESC"

    goto/16 :goto_2
.end method

.method public photoDownload(Landroid/content/Context;[Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;IZ)I
    .locals 13
    .parameter "context"
    .parameter "photoList"
    .parameter "folderType"
    .parameter "isPriority"

    .prologue
    .line 583
    const/4 v7, 0x0

    aget-object v5, p2, v7

    .line 585
    .local v5, sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    if-nez v5, :cond_0

    .line 587
    const/4 v7, 0x1

    .line 616
    :goto_0
    return v7

    .line 591
    :cond_0
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    invoke-direct {v1, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 592
    .local v1, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    sget-object v7, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 593
    const-string v8, "PhotoPathR"

    .line 594
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 595
    const-string v12, "SharedPath"

    aput-object v12, v10, v11

    .line 592
    invoke-interface {v1, v7, v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;->query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 596
    .local v3, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, sharePath:Ljava/lang/String;
    new-instance v6, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-direct {v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;-><init>()V

    .line 599
    .local v6, syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 600
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 599
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setPhysicsPath(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v7

    .line 602
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    .line 601
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setFileName(Ljava/lang/String;)V

    .line 603
    if-nez p3, :cond_1

    .line 605
    const-string v7, "/Photoshare/myphoto"

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setSharePath(Ljava/lang/String;)V

    .line 611
    :goto_1
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setFolderType(Ljava/lang/String;)V

    .line 614
    move/from16 v0, p4

    invoke-direct {p0, v6, v0}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->getOriginalFile(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;Z)Z

    move-result v2

    .line 615
    .local v2, res:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "3"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "photoDownload sumit result:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    if-eqz v2, :cond_2

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 609
    .end local v2           #res:Z
    :cond_1
    invoke-virtual {v6, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setSharePath(Ljava/lang/String;)V

    goto :goto_1

    .line 616
    .restart local v2       #res:Z
    :cond_2
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public photoDownload(Landroid/content/Context;[Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;Z)I
    .locals 13
    .parameter "context"
    .parameter "photoList"
    .parameter "isReceived"

    .prologue
    .line 531
    if-nez p2, :cond_0

    .line 532
    const/4 v0, 0x0

    .line 567
    :goto_0
    return v0

    .line 534
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v1, downList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;>;"
    if-eqz p3, :cond_2

    .line 538
    new-instance v7, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    invoke-direct {v7, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 539
    .local v7, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 540
    const-string v2, "PhotoPathR"

    .line 541
    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "SharedPath"

    aput-object v12, v5, v11

    .line 539
    invoke-interface {v7, v0, v2, v3, v5}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;->query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 542
    .local v8, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 543
    .local v9, sharePathPre:Ljava/lang/String;
    array-length v2, p2

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_1

    .line 551
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;

    move-result-object v0

    .line 552
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->photoHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->downloadFile(Ljava/util/ArrayList;Landroid/os/Handler;ZZLandroid/content/Context;)V

    .line 567
    .end local v7           #operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    .end local v8           #result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v9           #sharePathPre:Ljava/lang/String;
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 543
    .restart local v7       #operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    .restart local v8       #result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .restart local v9       #sharePathPre:Ljava/lang/String;
    :cond_1
    aget-object v10, p2, v0

    .line 544
    .local v10, sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    new-instance v6, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    invoke-direct {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;-><init>()V

    .line 545
    .local v6, downItem:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v5

    .line 548
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 547
    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 546
    iput-object v3, v6, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    .line 549
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 554
    .end local v6           #downItem:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;
    .end local v7           #operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    .end local v8           #result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v9           #sharePathPre:Ljava/lang/String;
    .end local v10           #sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    :cond_2
    const/4 v4, 0x0

    .line 555
    .local v4, isMyPhoto:Z
    array-length v2, p2

    const/4 v0, 0x0

    :goto_3
    if-lt v0, v2, :cond_3

    .line 564
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoImpl;->photoHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk/logic/DownloadManager;->downloadFile(Ljava/util/ArrayList;Landroid/os/Handler;ZZLandroid/content/Context;)V

    goto :goto_2

    .line 555
    :cond_3
    aget-object v10, p2, v0

    .line 556
    .restart local v10       #sharePhoto:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    new-instance v6, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    invoke-direct {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;-><init>()V

    .line 557
    .restart local v6       #downItem:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v6, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    .line 559
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v3, v6, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    const-string v5, "/Photoshare/myphoto/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 561
    const/4 v4, 0x1

    .line 555
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public photoDownloadCancel(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;)V
    .locals 14
    .parameter "context"
    .parameter "sharePhoto"

    .prologue
    .line 773
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    const-string v12, "come into photoDownloadCancel"

    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getParallelCallableList()Ljava/util/Vector;

    move-result-object v7

    .line 778
    .local v7, waitList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v7}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Vector;

    .line 779
    .local v9, waitTemp:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "photoDownloadCancel start waitList:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 794
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "photoDownloadCancel end waitList:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getParallelCallableExecList()Ljava/util/Vector;

    move-result-object v1

    .line 799
    .local v1, execList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 800
    .local v2, execTemp:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "photoDownloadCancel start execList:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 814
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "photoDownloadCancel end execList:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    return-void

    .line 782
    .end local v1           #execList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v2           #execTemp:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 784
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "FIXED_BASECALLABLE_KEY"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;

    .line 787
    .local v6, waitDownload:Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getDbankPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 789
    invoke-virtual {v7, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 790
    .local v8, waitRemoveResult:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "photoDownloadCancel remove wait result:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 791
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 790
    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 803
    .end local v4           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #waitDownload:Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;
    .end local v8           #waitRemoveResult:Z
    .restart local v1       #execList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v2       #execTemp:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 805
    .restart local v4       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "FIXED_BASECALLABLE_KEY"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;

    .line 808
    .local v0, execDownload:Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;
    invoke-virtual/range {p2 .. p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->getDbankPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 810
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;->cancel()Z

    move-result v5

    .line 811
    .local v5, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "photoDownloadCancel remove ex result:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public startPhotoStreamUI(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 767
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoStreamController;->startPhotoStreamUI(Landroid/content/Context;)V

    .line 768
    const/4 v0, 0x0

    return v0
.end method
