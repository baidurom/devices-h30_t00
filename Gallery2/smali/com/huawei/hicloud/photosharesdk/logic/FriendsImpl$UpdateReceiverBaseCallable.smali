.class Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;
.source "FriendsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateReceiverBaseCallable"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 0
    .parameter "callParam"
    .parameter "timeout"
    .parameter "retry"

    .prologue
    .line 355
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;-><init>(Ljava/lang/Object;JI)V

    .line 357
    return-void
.end method

.method private getSharePath()Ljava/lang/String;
    .locals 12

    .prologue
    .line 519
    const-string v5, ""

    .line 520
    .local v5, sharePath:Ljava/lang/String;
    new-instance v4, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 521
    .local v4, operator:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openSharedFolderOperator(Landroid/content/Context;)V

    .line 527
    :try_start_0
    sget-object v6, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    .line 528
    const-string v7, "FolderType"

    .line 529
    const-string v8, "1"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 530
    const-string v11, "SharePath"

    aput-object v11, v9, v10

    .line 526
    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->query(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 532
    .local v3, localFolders:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 534
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 568
    .end local v3           #localFolders:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    :goto_1
    return-object v5

    .line 539
    .restart local v3       #localFolders:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    :cond_0
    :try_start_2
    sget-object v6, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    .line 540
    const-string v7, "FolderType"

    .line 541
    const-string v8, "2"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 542
    const-string v11, "SharePath"

    aput-object v11, v9, v10

    .line 539
    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->query(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 543
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 545
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    goto :goto_0

    .line 549
    :cond_1
    const-string v5, "myphoto"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 553
    .end local v3           #localFolders:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 555
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "receiverInfoSync DBException:"

    invoke-static {v6, v7, v1}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 561
    :try_start_4
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 563
    :catch_1
    move-exception v2

    .line 565
    .local v2, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "closeSharedFolderOperator DBException:"

    invoke-static {v6, v7, v2}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 558
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 561
    :try_start_5
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 567
    :goto_2
    throw v6

    .line 563
    :catch_2
    move-exception v2

    .line 565
    .restart local v2       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, "closeSharedFolderOperator DBException:"

    invoke-static {v7, v8, v2}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 563
    .end local v2           #e2:Ljava/lang/Exception;
    .restart local v3       #localFolders:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    :catch_3
    move-exception v2

    .line 565
    .restart local v2       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "closeSharedFolderOperator DBException:"

    invoke-static {v6, v7, v2}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private updateLocalFriend(Ljava/lang/Object;)Z
    .locals 22
    .parameter "callParam"

    .prologue
    .line 392
    const/4 v14, 0x1

    .local v14, uiSenderFlag:Z
    move-object/from16 v12, p1

    .line 393
    check-cast v12, [Ljava/lang/String;

    .line 394
    .local v12, params:[Ljava/lang/String;
    new-instance v11, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v11}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 395
    .local v11, operator:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openReceiverInfoOperator(Landroid/content/Context;)V

    .line 396
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openSharedFolderOperator(Landroid/content/Context;)V

    .line 398
    new-instance v5, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;

    const/4 v15, 0x1

    aget-object v15, v12, v15

    const/16 v16, 0x0

    aget-object v16, v12, v16

    move-object/from16 v0, v16

    invoke-direct {v5, v15, v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .local v5, friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;
    :try_start_0
    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 403
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 406
    .local v10, newNick:Ljava/lang/String;
    sget-object v15, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    .line 407
    const-string v16, "SharerAccount"

    .line 408
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->getAccount()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 409
    const-string v20, "FolderPathR"

    aput-object v20, v18, v19

    .line 406
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v11, v15, v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->query(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 411
    .local v7, localFolders:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_0

    .line 422
    new-instance v13, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;

    invoke-direct {v13}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;-><init>()V

    .line 423
    .local v13, receiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;
    const/4 v15, 0x0

    aget-object v15, v12, v15

    invoke-virtual {v13, v15}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->setReceiverAccount(Ljava/lang/String;)V

    .line 424
    const/4 v15, 0x1

    aget-object v15, v12, v15

    invoke-virtual {v13, v15}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->setReceiverName(Ljava/lang/String;)V

    .line 426
    const/4 v15, 0x1

    new-array v8, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ReceiverAccount"

    aput-object v16, v8, v15

    .line 428
    .local v8, matchKeys:[Ljava/lang/String;
    const/4 v15, 0x1

    new-array v9, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v13}, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->getReceiverAccount()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v9, v15

    .line 429
    .local v9, matchValues:[Ljava/lang/String;
    invoke-virtual {v11, v13, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->updateOrInsert(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 431
    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 443
    :try_start_1
    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeReceiverInfoOperator()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 451
    :goto_1
    :try_start_2
    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 459
    .end local v7           #localFolders:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v8           #matchKeys:[Ljava/lang/String;
    .end local v9           #matchValues:[Ljava/lang/String;
    .end local v10           #newNick:Ljava/lang/String;
    .end local v13           #receiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;
    :goto_2
    return v14

    .line 411
    .restart local v7       #localFolders:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .restart local v10       #newNick:Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 414
    .local v6, item:[Ljava/lang/Object;
    sget-object v17, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    .line 415
    const-string v18, "FolderPathR"

    .line 416
    const/4 v15, 0x0

    aget-object v15, v6, v15

    check-cast v15, Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 417
    const-string v21, "SharerName"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    .line 418
    aput-object v10, v19, v20

    .line 413
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v11, v0, v1, v15, v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->update(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 433
    .end local v6           #item:[Ljava/lang/Object;
    .end local v7           #localFolders:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v10           #newNick:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 435
    .local v3, e:Ljava/lang/Exception;
    const/4 v14, 0x0

    .line 436
    :try_start_4
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "receiverInfoSync DBException:"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 440
    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 443
    :try_start_5
    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeReceiverInfoOperator()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 451
    :goto_3
    :try_start_6
    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 453
    :catch_1
    move-exception v4

    .line 455
    .local v4, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "closeSharedFolderOperator DBException:"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 445
    .end local v4           #e2:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 447
    .restart local v4       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "closeReceiverInfoOperator DBException:"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 439
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    .line 440
    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 443
    :try_start_7
    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeReceiverInfoOperator()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 451
    :goto_4
    :try_start_8
    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 457
    :goto_5
    throw v15

    .line 445
    :catch_3
    move-exception v4

    .line 447
    .restart local v4       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v16

    const-string v17, "closeReceiverInfoOperator DBException:"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 453
    .end local v4           #e2:Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 455
    .restart local v4       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v16

    const-string v17, "closeSharedFolderOperator DBException:"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 445
    .end local v4           #e2:Ljava/lang/Exception;
    .restart local v7       #localFolders:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .restart local v8       #matchKeys:[Ljava/lang/String;
    .restart local v9       #matchValues:[Ljava/lang/String;
    .restart local v10       #newNick:Ljava/lang/String;
    .restart local v13       #receiverInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;
    :catch_5
    move-exception v4

    .line 447
    .restart local v4       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "closeReceiverInfoOperator DBException:"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 453
    .end local v4           #e2:Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 455
    .restart local v4       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "closeSharedFolderOperator DBException:"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private updateServerFriend(Ljava/lang/Object;)Z
    .locals 14
    .parameter "callParam"

    .prologue
    const/4 v13, 0x0

    .line 465
    const/4 v8, 0x0

    .local v8, uiSenderFlag:Z
    move-object v7, p1

    .line 466
    check-cast v7, [Ljava/lang/String;

    .line 468
    .local v7, params:[Ljava/lang/String;
    new-instance v3, Lcom/huawei/hicloud/photosharesdk3/request/DeleteFriendRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/huawei/hicloud/photosharesdk3/request/DeleteFriendRequest;-><init>(Landroid/content/Context;)V

    .line 469
    .local v3, deleteFriendRequest:Lcom/huawei/hicloud/photosharesdk3/request/DeleteFriendRequest;
    aget-object v9, v7, v13

    invoke-virtual {v3, v9}, Lcom/huawei/hicloud/photosharesdk3/request/DeleteFriendRequest;->setAccount(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/request/DeleteFriendRequest;->getJSONResponse()V

    .line 471
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "DeleteFriendRequest:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/request/DeleteFriendRequest;->getJsonBodyStr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v6, 0x0

    .line 474
    .local v6, json:Lorg/json/JSONObject;
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/request/DeleteFriendRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v6

    .line 475
    const/4 v0, -0x1

    .line 478
    .local v0, code:I
    :try_start_0
    const-string v9, "code"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 486
    :goto_0
    if-nez v0, :cond_0

    .line 488
    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/request/CreateFriendRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Lcom/huawei/hicloud/photosharesdk3/request/CreateFriendRequest;-><init>(Landroid/content/Context;)V

    .line 489
    .local v2, createFriendRequest:Lcom/huawei/hicloud/photosharesdk3/request/CreateFriendRequest;
    new-instance v5, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;

    const/4 v9, 0x1

    aget-object v9, v7, v9

    aget-object v10, v7, v13

    invoke-direct {v5, v9, v10}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .local v5, friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;
    invoke-virtual {v2, v5}, Lcom/huawei/hicloud/photosharesdk3/request/CreateFriendRequest;->setFriendUser(Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;)V

    .line 491
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/request/CreateFriendRequest;->getJSONResponse()V

    .line 492
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "CreateFriendRequest:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/request/CreateFriendRequest;->getJsonBodyStr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/request/CreateFriendRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v6

    .line 496
    const/4 v1, -0x1

    .line 499
    .local v1, code1:I
    :try_start_1
    const-string v9, "code"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 507
    :goto_1
    if-nez v1, :cond_0

    .line 509
    const/4 v8, 0x1

    .line 513
    .end local v1           #code1:I
    .end local v2           #createFriendRequest:Lcom/huawei/hicloud/photosharesdk3/request/CreateFriendRequest;
    .end local v5           #friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;
    :cond_0
    return v8

    .line 480
    :catch_0
    move-exception v4

    .line 483
    .local v4, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DeleteFriendRequest"

    invoke-static {v9, v10, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 501
    .end local v4           #e:Lorg/json/JSONException;
    .restart local v1       #code1:I
    .restart local v2       #createFriendRequest:Lcom/huawei/hicloud/photosharesdk3/request/CreateFriendRequest;
    .restart local v5       #friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;
    :catch_1
    move-exception v4

    .line 504
    .restart local v4       #e:Lorg/json/JSONException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CreateFriendRequest"

    invoke-static {v9, v10, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public baseEquals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "o"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 575
    const/4 v1, 0x0

    .line 577
    .local v1, flag:Z
    instance-of v5, p1, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;

    if-eqz v5, :cond_0

    move v2, v1

    .line 590
    .end local v1           #flag:Z
    .local v2, flag:I
    :goto_0
    return v2

    .end local v2           #flag:I
    .restart local v1       #flag:Z
    :cond_0
    move-object v0, p1

    .line 581
    check-cast v0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;

    .line 582
    .local v0, callable:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getCallParam()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 583
    .local v3, params:[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getCallParam()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 584
    .local v4, params1:[Ljava/lang/String;
    aget-object v5, v3, v7

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v7

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 585
    aget-object v5, v3, v8

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v8

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 587
    const/4 v1, 0x1

    :cond_1
    move v2, v1

    .line 590
    .restart local v2       #flag:I
    goto :goto_0
.end method

.method public call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v3, 0x0

    .line 365
    .local v3, uiSenderFlag:Z
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getCallParam()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->updateServerFriend(Ljava/lang/Object;)Z

    move-result v3

    .line 367
    if-eqz v3, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getCallParam()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->updateLocalFriend(Ljava/lang/Object;)Z

    move-result v3

    .line 372
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UpdateReceiverBaseCallable,uiSenderFlag:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    if-eqz v3, :cond_1

    .line 376
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$UpdateReceiverBaseCallable;->getSharePath()Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, sharePath:Ljava/lang/String;
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;

    .line 378
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 377
    invoke-direct {v1, v4}, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;-><init>(Landroid/content/Context;)V

    .line 379
    .local v1, requestNf:Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;
    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;->setSharePath(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;->getJSONResponse()V

    .line 384
    .end local v1           #requestNf:Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;
    .end local v2           #sharePath:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$SyncMessageCallableInnerForFindbug;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$SyncMessageCallableInnerForFindbug;-><init>(Ljava/lang/Object;)V

    .line 385
    .local v0, callable:Lcom/huawei/hicloud/photosharesdk/logic/FriendsImpl$SyncMessageCallableInnerForFindbug;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;Z)V

    .line 386
    const/4 v4, 0x0

    return-object v4
.end method
