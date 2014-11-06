.class public Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.source "SyncDataCallable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;
    }
.end annotation


# static fields
.field public static final FOLDER_DATA_CHANGE_TYPE_ALL:I = 0x2

.field public static final FOLDER_DATA_CHANGE_TYPE_FRIEND:I = 0x1

.field public static final FOLDER_DATA_CHANGE_TYPE_NAME:I


# instance fields
.field private resultSyncOperateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;JIZ)V
    .locals 1
    .parameter "callParam"
    .parameter "timeout"
    .parameter "retry"
    .parameter "nextShutDown"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;-><init>(Ljava/lang/Object;JIZ)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->resultSyncOperateList:Ljava/util/List;

    .line 81
    return-void
.end method

.method private checkFriendSameStatus(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;)Z
    .locals 7
    .parameter
    .parameter "cloudStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, local:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 169
    :goto_0
    return v1

    .line 160
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 163
    .local v0, objects:[Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getAccount()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getStatus()I

    move-result v5

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v5, v1, :cond_0

    move v1, v2

    .line 166
    goto :goto_0
.end method

.method private checkNameChangeOrFriendChange(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;Ljava/util/List;Ljava/util/List;)I
    .locals 5
    .parameter "temSyncOperateFolder"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    .local p3, receivers:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 369
    const/4 v1, -0x1

    .line 370
    .local v1, result:I
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 372
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    .line 373
    .local v0, folder:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getShareName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 374
    const/4 v1, -0x1

    .line 376
    .end local v0           #folder:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    :cond_0
    :goto_0
    const-string v2, "1"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 379
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getRecevierList()Ljava/util/List;

    move-result-object v2

    .line 378
    invoke-direct {p0, p3, v2, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->checkReceiversChange(Ljava/util/List;Ljava/util/List;I)I

    move-result v1

    .line 387
    :cond_1
    :goto_1
    return v1

    .restart local v0       #folder:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    :cond_2
    move v1, v2

    .line 374
    goto :goto_0

    .line 382
    .end local v0           #folder:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    :cond_3
    const-string v2, "2"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    if-nez v1, :cond_4

    const/4 v1, 0x2

    :goto_2
    goto :goto_1

    .line 385
    :cond_4
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private checkOperateType(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p1, syncOperateFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    const/4 v6, 0x0

    .line 567
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 568
    .local v0, doDataSync:Ljava/lang/Boolean;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 570
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getOprateTypes()[Ljava/lang/String;

    move-result-object v4

    .line 571
    .local v4, stringResult:[Ljava/lang/String;
    array-length v3, v4

    .line 572
    .local v3, length:I
    if-lez v3, :cond_0

    .line 574
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_1

    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #stringResult:[Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 585
    .end local v0           #doDataSync:Ljava/lang/Boolean;
    .local v1, doDataSync:Ljava/lang/Boolean;
    :goto_1
    return-object v1

    .line 576
    .end local v1           #doDataSync:Ljava/lang/Boolean;
    .restart local v0       #doDataSync:Ljava/lang/Boolean;
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v4       #stringResult:[Ljava/lang/String;
    :cond_1
    const-string v5, "2"

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v1, v0

    .line 579
    .end local v0           #doDataSync:Ljava/lang/Boolean;
    .restart local v1       #doDataSync:Ljava/lang/Boolean;
    goto :goto_1

    .line 574
    .end local v1           #doDataSync:Ljava/lang/Boolean;
    .restart local v0       #doDataSync:Ljava/lang/Boolean;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private checkReceiversChange(Ljava/util/List;Ljava/util/List;I)I
    .locals 8
    .parameter
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, local:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .local p2, server:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 125
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v3, p3

    .line 154
    .end local p3
    .local v3, result:I
    :goto_0
    return v3

    .line 130
    .end local v3           #result:I
    .restart local p3
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-eq v4, v7, :cond_3

    .line 132
    if-nez p3, :cond_2

    move p3, v5

    :goto_1
    move v3, p3

    .line 134
    .end local p3
    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    .restart local p3
    :cond_2
    move p3, v6

    .line 133
    goto :goto_1

    .line 137
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, localData:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 144
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    move v3, p3

    .line 154
    .end local p3
    .restart local v3       #result:I
    goto :goto_0

    .line 138
    .end local v3           #result:I
    .restart local p3
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 140
    .local v1, one:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 144
    .end local v1           #one:[Ljava/lang/Object;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;

    .line 146
    .local v2, receiveStatus:Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getAccount()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, p1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->checkFriendSameStatus(Ljava/util/List;Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 148
    :cond_7
    if-nez p3, :cond_8

    move p3, v5

    :goto_3
    move v3, p3

    .line 150
    .end local p3
    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    .restart local p3
    :cond_8
    move p3, v6

    .line 149
    goto :goto_3
.end method

.method private closeDB(Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;)V
    .locals 4
    .parameter "operator"

    .prologue
    .line 529
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeReceiverInfoOperator()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 545
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderReceiver()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 551
    :goto_2
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 533
    .local v0, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "receiverInfoSync DBException:"

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 539
    .end local v0           #e2:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 541
    .local v1, e3:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "receiverInfoSync DBException:"

    invoke-static {v2, v3, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 547
    .end local v1           #e3:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 549
    .restart local v1       #e3:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "receiverInfoSync DBException:"

    invoke-static {v2, v3, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private closeDatabase(Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;)V
    .locals 5
    .parameter "operator2"

    .prologue
    .line 341
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeReceiverInfoOperator()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 363
    :goto_2
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 345
    .local v0, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "syncData"

    invoke-static {v3, v4, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    .end local v0           #e2:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 353
    .local v1, e3:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "syncData"

    invoke-static {v3, v4, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 359
    .end local v1           #e3:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 361
    .local v2, e4:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "syncData"

    invoke-static {v3, v4, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private sendReceiverNickChangeBroad(ILjava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "sharePath"

    .prologue
    .line 555
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    invoke-direct {v1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;-><init>()V

    .line 556
    .local v1, sharedFolder2:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    invoke-virtual {v1, p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setFolderType(I)V

    .line 557
    invoke-virtual {v1, p2}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->setSharePath(Ljava/lang/String;)V

    .line 560
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;

    .line 561
    const/4 v2, 0x5

    .line 560
    invoke-direct {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;-><init>(Ljava/lang/Object;I)V

    .line 562
    .local v0, callable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;Z)V

    .line 563
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 596
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "come into SyncDataCallable call"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getPreCallResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->resultSyncOperateList:Ljava/util/List;

    .line 599
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->resultSyncOperateList:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->checkOperateType(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 601
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "no need sync data"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->resultSyncOperateList:Ljava/util/List;

    .line 656
    :goto_0
    return-object v3

    .line 605
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "data resultSyncOperateList :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->resultSyncOperateList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->resultSyncOperateList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 614
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->resultSyncOperateList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 615
    .local v0, iterator:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 644
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->resultSyncOperateList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 646
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->resultSyncOperateList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->folderDataSync(Ljava/util/List;)V

    .line 649
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->receiverInfoSync()V

    .line 651
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->resultSyncOperateList:Ljava/util/List;

    invoke-direct {v1, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;-><init>(Ljava/lang/Object;)V

    .line 652
    .local v1, syncFileCallable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->isPriority()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->setPriority(Z)V

    .line 653
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;)V

    .line 656
    const/4 v3, 0x0

    goto :goto_0

    .line 606
    .end local v0           #iterator:Ljava/util/Iterator;
    .end local v1           #syncFileCallable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 608
    .local v2, syncOperateFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "data module name :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getShareName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 608
    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 617
    .end local v2           #syncOperateFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    .restart local v0       #iterator:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 618
    .restart local v2       #syncOperateFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    const-string v3, "0"

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 619
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v3

    if-nez v3, :cond_6

    .line 621
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "remove kaiguan"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 636
    :cond_5
    :goto_3
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 638
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "remove isLocal no need sync data"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 625
    :cond_6
    const-string v3, "2"

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 626
    const-string v3, "1"

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 628
    :cond_7
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v3

    if-nez v3, :cond_5

    .line 630
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    const-string v5, "remove kaiguan"

    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3
.end method

.method public folderDataSync(Ljava/util/List;)V
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
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
    .line 218
    .local p1, syncOperateList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v17

    const-string v18, "3"

    const-string v19, " folderDataSync start..."

    invoke-static/range {v17 .. v19}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v10, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 220
    .local v10, operator2:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openSharedFolderOperator(Landroid/content/Context;)V

    .line 221
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openFolderReceiver(Landroid/content/Context;)V

    .line 222
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openReceiverInfoOperator(Landroid/content/Context;)V

    .line 227
    :try_start_0
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 229
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_1

    .line 319
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 329
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->closeDatabase(Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;)V

    .line 334
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v17

    const-string v18, "3"

    const-string v19, "end..."

    invoke-static/range {v17 .. v19}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void

    .line 229
    :cond_1
    :try_start_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 231
    .local v15, temSyncOperateFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v17

    .line 232
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v19

    .line 231
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getShareFolderBySharePath(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 233
    .local v7, folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    sget-object v17, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->FolderReceiver:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    .line 234
    const-string v19, "SharedPath"

    .line 235
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 236
    const-string v23, "ReceiverAccount"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 237
    const-string v23, "ReceiverState"

    aput-object v23, v21, v22

    .line 233
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->query(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 239
    .local v13, receivers:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7, v13}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->checkNameChangeOrFriendChange(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;Ljava/util/List;Ljava/util/List;)I

    move-result v14

    .line 242
    .local v14, result:I
    if-eqz v14, :cond_2

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_3

    .line 244
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v17

    const-string v19, "3"

    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getShareName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v17, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    .line 246
    const-string v19, "FolderPathR"

    .line 247
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 248
    const-string v23, "FolderName"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 249
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getShareName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    .line 245
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->update(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 252
    new-instance v4, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;

    .line 253
    const/16 v17, 0x2

    .line 252
    move/from16 v0, v17

    invoke-direct {v4, v15, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;-><init>(Ljava/lang/Object;I)V

    .line 254
    .local v4, callable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v17

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;Z)V

    .line 258
    .end local v4           #callable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;
    :cond_3
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_4

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_0

    .line 260
    :cond_4
    sget-object v17, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->FolderReceiver:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    const-string v19, "SharedPath"

    .line 261
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v20

    .line 260
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->delete(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 263
    .local v5, delResult:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v17

    const-string v19, "3"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " delResult:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getRecevierList()Ljava/util/List;

    move-result-object v9

    .line 266
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, "3"

    .line 267
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v17, " folderDataSync list.size..."

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v9, :cond_7

    const-string v17, "no data"

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 266
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 270
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_5
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_8

    .line 307
    :cond_6
    const-string v17, "1"

    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 310
    new-instance v4, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;

    .line 311
    const/16 v17, 0x3

    .line 310
    move/from16 v0, v17

    invoke-direct {v4, v15, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;-><init>(Ljava/lang/Object;I)V

    .line 312
    .restart local v4       #callable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v17

    .line 313
    const/16 v19, 0x0

    .line 312
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 321
    .end local v4           #callable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;
    .end local v5           #delResult:Z
    .end local v7           #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    .end local v13           #receivers:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v14           #result:I
    .end local v15           #temSyncOperateFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    :catch_0
    move-exception v6

    .line 323
    .local v6, e:Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v17

    const-string v18, "folderDataSync DBException:"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 327
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v17

    .line 328
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 329
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->closeDatabase(Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;)V

    .line 332
    throw v17

    .line 267
    .restart local v5       #delResult:Z
    .restart local v7       #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    .restart local v9       #list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    .restart local v13       #receivers:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .restart local v14       #result:I
    .restart local v15       #temSyncOperateFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    :cond_7
    :try_start_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_1

    .line 270
    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;

    .line 273
    .local v8, info:Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;
    new-instance v11, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;

    invoke-direct {v11}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;-><init>()V

    .line 274
    .local v11, receiver:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getAccount()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->setReceiverAccount(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getStatus()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->setReceiverState(I)V

    .line 276
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->setSharedPath(Ljava/lang/String;)V

    .line 278
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "ReceiverAccount"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "SharedPath"

    aput-object v21, v19, v20

    .line 279
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getAccount()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    .line 277
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v11, v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->updateOrInsert(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 282
    new-instance v12, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;

    invoke-direct {v12}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;-><init>()V

    .line 283
    .local v12, receiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v16, tempReceiverInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;>;"
    const-string v19, "1"

    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 286
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getAccount()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->setReceiverAccount(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getAccount()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->setReceiverName(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, "3"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, " folderDataSync FOLDERTYPE_SHARE updateOrInsert..."

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getAccount()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 288
    invoke-static/range {v19 .. v21}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->addReceiver(Ljava/util/List;)Z

    goto/16 :goto_2

    .line 293
    :cond_9
    const-string v19, "2"

    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 295
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharer()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->setReceiverAccount(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharer()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->setReceiverName(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    .line 298
    const-string v20, "3"

    .line 299
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, " folderDataSync FOLDERTYPE_RECEIVE updateOrInsert..."

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharer()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 299
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 297
    invoke-static/range {v19 .. v21}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->addReceiver(Ljava/util/List;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method

.method public receiverInfoSync()V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v21

    const-string v22, "3"

    const-string v23, "come into receiverInfoSync"

    invoke-static/range {v21 .. v23}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance v18, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;-><init>(Landroid/content/Context;)V

    .line 401
    .local v18, request:Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;
    invoke-virtual/range {v18 .. v18}, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;->getJSONResponse()V

    .line 402
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v21

    const-string v22, "3"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "receiverInfoSync result:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 405
    .local v8, gson:Lcom/google/gson/Gson;
    invoke-virtual/range {v18 .. v18}, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v21

    if-nez v21, :cond_0

    .line 523
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    const-class v22, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;

    .line 411
    .local v4, cqsr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;->getFriendList()Ljava/util/List;

    move-result-object v19

    .line 422
    .local v19, serverLists:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;>;"
    new-instance v15, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v15}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 423
    .local v15, operator:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openReceiverInfoOperator(Landroid/content/Context;)V

    .line 424
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openSharedFolderOperator(Landroid/content/Context;)V

    .line 425
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openFolderReceiver(Landroid/content/Context;)V

    .line 428
    :try_start_0
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 431
    const-string v21, "2"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 432
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v22

    .line 431
    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getShareFolderInfo(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 435
    .local v11, localReceiverFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_3

    .line 457
    const-string v21, "1"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 458
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v22

    .line 457
    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getShareFolderInfo(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v13

    .line 461
    .local v13, localShareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_5

    .line 502
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_8

    .line 512
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 521
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->closeDB(Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;)V

    goto/16 :goto_0

    .line 435
    .end local v13           #localShareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :cond_3
    :try_start_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    .line 438
    .local v9, localFolder:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_4
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;

    .line 440
    .local v6, friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharerAccount()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v23

    .line 441
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getAccount()Ljava/lang/String;

    move-result-object v24

    sget-object v25, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 442
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharerName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 444
    sget-object v23, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    .line 445
    const-string v24, "FolderPathR"

    .line 446
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderPathRemote()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    .line 447
    const-string v28, "SharerName"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    .line 448
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getName()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 444
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->update(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 450
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderType()I

    move-result v23

    .line 451
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v24

    .line 450
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->sendReceiverNickChangeBroad(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 514
    .end local v6           #friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;
    .end local v9           #localFolder:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    .end local v11           #localReceiverFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :catch_0
    move-exception v5

    .line 516
    .local v5, e:Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v21

    const-string v22, "receiverInfoSync DBException:"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 520
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 521
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->closeDB(Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;)V

    goto/16 :goto_0

    .line 461
    .end local v5           #e:Ljava/lang/RuntimeException;
    .restart local v11       #localReceiverFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    .restart local v13       #localShareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :cond_5
    :try_start_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    .line 464
    .local v10, localFolder2:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getFriendsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 466
    .local v17, receivers:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 469
    .local v7, friendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    sget-object v21, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ReceiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    .line 470
    const-string v24, "ReceiverAccount"

    .line 471
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    .line 472
    const-string v28, "ReceiverName"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    .line 473
    const-string v28, "ReceiverAccount"

    aput-object v28, v26, v27

    .line 468
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->query(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 475
    .local v12, localReceivers:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_7
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;

    .line 477
    .restart local v6       #friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getAccount()Ljava/lang/String;

    move-result-object v21

    sget-object v25, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    .line 478
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v25

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 479
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getName()Ljava/lang/String;

    move-result-object v21

    sget-object v25, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    .line 480
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/Object;

    const/16 v26, 0x0

    aget-object v21, v21, v26

    check-cast v21, Ljava/lang/String;

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 482
    sget-object v21, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->ReceiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    .line 483
    const-string v25, "ReceiverAccount"

    .line 484
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getAccount()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    .line 485
    const-string v29, "ReceiverName"

    aput-object v29, v27, v28

    const/16 v28, 0x1

    .line 486
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getName()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    .line 482
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->update(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 488
    sget-object v21, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->FolderReceiver:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    .line 489
    const-string v25, "ReceiverAccount"

    .line 490
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    .line 491
    const-string v29, "SharedPath"

    aput-object v29, v27, v28

    .line 488
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->query(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 492
    .local v20, sharePaths:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    .line 494
    .local v14, objects:[Ljava/lang/Object;
    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderType()I

    move-result v26

    .line 495
    const/16 v21, 0x0

    aget-object v21, v14, v21

    check-cast v21, Ljava/lang/String;

    .line 494
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->sendReceiverNickChangeBroad(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 519
    .end local v6           #friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;
    .end local v7           #friendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    .end local v10           #localFolder2:Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
    .end local v11           #localReceiverFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    .end local v12           #localReceivers:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v13           #localShareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    .end local v14           #objects:[Ljava/lang/Object;
    .end local v17           #receivers:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    .end local v20           #sharePaths:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    :catchall_0
    move-exception v21

    .line 520
    invoke-virtual {v15}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 521
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;->closeDB(Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;)V

    .line 522
    throw v21

    .line 502
    .restart local v11       #localReceiverFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    .restart local v13       #localShareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;>;"
    :cond_8
    :try_start_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;

    .line 504
    .restart local v6       #friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;
    new-instance v16, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;

    invoke-direct/range {v16 .. v16}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;-><init>()V

    .line 505
    .local v16, receiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getAccount()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->setReceiverAccount(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->setReceiverName(Ljava/lang/String;)V

    .line 508
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "ReceiverAccount"

    aput-object v24, v22, v23

    .line 509
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getAccount()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 507
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v15, v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->updateOrInsert(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1
.end method
