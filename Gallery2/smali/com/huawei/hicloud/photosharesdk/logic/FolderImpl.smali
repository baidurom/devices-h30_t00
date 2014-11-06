.class public Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;
.super Ljava/lang/Object;
.source "FolderImpl.java"

# interfaces
.implements Lcom/huawei/hicloud/photosharesdk/logic/FolderInterface;


# instance fields
.field private final TAG:Ljava/lang/String;

.field folderHandler:Landroid/os/Handler;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-class v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/CloudHandlerThread;->getInstance()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl$1;-><init>(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->folderHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1139
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->afterDelShareFolderSuc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 700
    invoke-direct {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->afterCreateShareFolderSuccess(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 761
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->afterModifyShareFolderName(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V

    return-void
.end method

.method static synthetic access$4(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Ljava/util/TreeMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 774
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->afterModifyShareFolderRec(Ljava/util/TreeMap;)V

    return-void
.end method

.method static synthetic access$5(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 855
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->afterDelMyReceiveFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1021
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->aftershareFolderCreatedFromPush(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$7(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1046
    invoke-direct {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->aftershareFolderModifiedFromPush(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->afterQueryShareFolder(Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;)V

    return-void
.end method

.method private afterCreateShareFolderSuccess(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;Z)V
    .locals 20
    .parameter "shareFolder"
    .parameter "fromPush"

    .prologue
    .line 701
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getReceiver()Ljava/util/ArrayList;

    move-result-object v9

    .line 702
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 703
    .local v5, displayName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getSharePath()Ljava/lang/String;

    move-result-object v15

    .line 704
    .local v15, sharePath:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDbankPath()Ljava/lang/String;

    move-result-object v4

    .line 705
    .local v4, dbankPath:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 709
    .local v10, localPath:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v18}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->createNewFolder(Landroid/content/Context;Ljava/io/File;)Z
    :try_end_0
    .catch Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :goto_0
    new-instance v12, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;

    invoke-direct {v12}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;-><init>()V

    .line 719
    .local v12, operator2:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->openFolderReceiver(Landroid/content/Context;)V

    .line 720
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 721
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1

    .line 729
    :cond_0
    invoke-virtual {v12}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->closeFolderReceiver()V

    .line 732
    new-instance v16, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;

    invoke-direct/range {v16 .. v16}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;-><init>()V

    .line 733
    .local v16, sharedFolder:Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsGMT(J)Ljava/lang/String;

    move-result-object v14

    .line 734
    .local v14, sDateTime:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setCreateTime(Ljava/lang/String;)V

    .line 735
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setFolderName(Ljava/lang/String;)V

    .line 736
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setFolderPathRemote(Ljava/lang/String;)V

    .line 737
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setFolderType(I)V

    .line 738
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setSharePath(Ljava/lang/String;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v3

    .line 740
    .local v3, accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setSharerAccount(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getNickName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setSharerName(Ljava/lang/String;)V

    .line 742
    new-instance v11, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 743
    .local v11, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;->addShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)Z

    move-result v7

    .line 746
    .local v7, flag:Z
    if-eqz v7, :cond_2

    if-nez p2, :cond_2

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendCreateShareSuc(Landroid/content/Context;Ljava/lang/String;)V

    .line 758
    :goto_2
    return-void

    .line 710
    .end local v3           #accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    .end local v7           #flag:Z
    .end local v11           #operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    .end local v12           #operator2:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    .end local v14           #sDateTime:Ljava/lang/String;
    .end local v16           #sharedFolder:Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;
    :catch_0
    move-exception v6

    .line 712
    .local v6, e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 721
    .end local v6           #e:Lcom/huawei/hicloud/photosharesdk/exception/NoEnoughSpaceException;
    .restart local v12       #operator2:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 722
    .local v8, info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    new-instance v13, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;

    invoke-direct {v13}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;-><init>()V

    .line 723
    .local v13, receiver:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setReceiverAccount(Ljava/lang/String;)V

    .line 724
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setReceiverState(I)V

    .line 725
    invoke-virtual {v13, v15}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setSharedPath(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v12, v13}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->bindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z

    goto/16 :goto_1

    .line 751
    .end local v8           #info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    .end local v13           #receiver:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;
    .restart local v3       #accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    .restart local v7       #flag:Z
    .restart local v11       #operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    .restart local v14       #sDateTime:Ljava/lang/String;
    .restart local v16       #sharedFolder:Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;
    :cond_2
    if-eqz v7, :cond_3

    if-eqz p2, :cond_3

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendFolderChange(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_2

    .line 755
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendCreateShareFail(Landroid/content/Context;)V

    goto :goto_2
.end method

.method private afterDelMyReceiveFolder(Ljava/lang/String;)V
    .locals 14
    .parameter "sharePath"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 858
    new-instance v4, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 859
    .local v4, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    sget-object v8, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 860
    const-string v9, "SharePath"

    new-array v10, v13, [Ljava/lang/String;

    .line 861
    const-string v11, "FolderPathR"

    aput-object v11, v10, v12

    .line 859
    invoke-interface {v4, v8, v9, p1, v10}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;->query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 862
    .local v5, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    const-string v3, ""

    .line 863
    .local v3, folderLocalPath:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    array-length v8, v8

    if-eqz v8, :cond_0

    .line 864
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    aget-object v2, v8, v12

    check-cast v2, Ljava/lang/String;

    .line 865
    .local v2, folderDbankPath:Ljava/lang/String;
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->dbankPath2LocalPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 867
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/io/File;)Z

    .line 875
    new-instance v7, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;

    invoke-direct {v7}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;-><init>()V

    .line 876
    .local v7, sharedFolder:Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;
    invoke-virtual {v7, p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setSharePath(Ljava/lang/String;)V

    .line 877
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 878
    .local v0, collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    invoke-interface {v0, v7}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;->delShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)Z

    move-result v1

    .line 880
    .local v1, flag:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "afterDelMyReceiveFolder delShareFolder:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    sget-object v8, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 882
    const-string v9, "SharePath"

    new-array v10, v13, [Ljava/lang/String;

    .line 883
    const-string v11, "FolderPathR"

    aput-object v11, v10, v12

    .line 881
    invoke-interface {v4, v8, v9, p1, v10}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;->query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 885
    .local v6, result1:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 887
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, v12}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDeleteFoler(Landroid/content/Context;Ljava/lang/String;I)V

    .line 892
    .end local v0           #collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    .end local v1           #flag:Z
    .end local v2           #folderDbankPath:Ljava/lang/String;
    .end local v6           #result1:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v7           #sharedFolder:Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;
    :goto_0
    return-void

    .line 870
    :cond_0
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, v12}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDeleteFoler(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 890
    .restart local v0       #collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    .restart local v1       #flag:Z
    .restart local v2       #folderDbankPath:Ljava/lang/String;
    .restart local v6       #result1:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .restart local v7       #sharedFolder:Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;
    :cond_1
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, v13}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDeleteFoler(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private afterDelShareFolderSuc(Ljava/lang/String;)V
    .locals 14
    .parameter "sharePath"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1141
    new-instance v4, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 1142
    .local v4, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    sget-object v8, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 1143
    const-string v9, "SharePath"

    new-array v10, v13, [Ljava/lang/String;

    .line 1144
    const-string v11, "FolderPathR"

    aput-object v11, v10, v12

    .line 1142
    invoke-interface {v4, v8, v9, p1, v10}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;->query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1145
    .local v5, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    const-string v3, ""

    .line 1146
    .local v3, folderLocalPath:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    array-length v8, v8

    if-eqz v8, :cond_0

    .line 1147
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    aget-object v2, v8, v12

    check-cast v2, Ljava/lang/String;

    .line 1148
    .local v2, folderDbankPath:Ljava/lang/String;
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->dbankPath2LocalPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1150
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/io/File;)Z

    .line 1157
    new-instance v7, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;

    invoke-direct {v7}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;-><init>()V

    .line 1158
    .local v7, sharedFolder:Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;
    invoke-virtual {v7, p1}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setSharePath(Ljava/lang/String;)V

    .line 1159
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 1160
    .local v0, collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    invoke-interface {v0, v7}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;->delShareFolder(Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;)Z

    move-result v1

    .line 1161
    .local v1, flag:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "afterDelShareFolderSuc delShareFolder:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    sget-object v8, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 1164
    const-string v9, "SharePath"

    new-array v10, v13, [Ljava/lang/String;

    .line 1165
    const-string v11, "FolderPathR"

    aput-object v11, v10, v12

    .line 1163
    invoke-interface {v4, v8, v9, p1, v10}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;->query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1166
    .local v6, result1:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1168
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, v12}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDeleteFoler(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1173
    .end local v0           #collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    .end local v1           #flag:Z
    .end local v2           #folderDbankPath:Ljava/lang/String;
    .end local v6           #result1:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v7           #sharedFolder:Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;
    :goto_0
    return-void

    .line 1152
    :cond_0
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, v12}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDeleteFoler(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1171
    .restart local v0       #collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    .restart local v1       #flag:Z
    .restart local v2       #folderDbankPath:Ljava/lang/String;
    .restart local v6       #result1:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .restart local v7       #sharedFolder:Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;
    :cond_1
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, v13}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendDeleteFoler(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private afterModifyShareFolderName(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V
    .locals 8
    .parameter "shareFolder"

    .prologue
    .line 762
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 763
    .local v1, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    sget-object v2, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 764
    const-string v3, "SharePath"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getSharePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 765
    const-string v7, "FolderName"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 763
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->update(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 766
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 767
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendModifyFolerSuc(Landroid/content/Context;)V

    .line 771
    :goto_0
    return-void

    .line 769
    :cond_0
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendModifyFolerFail(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private afterModifyShareFolderRec(Ljava/util/TreeMap;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 778
    const/4 v3, 0x0

    .line 779
    .local v3, isNeedNotifyUI:Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 780
    const-string v9, "sharepath"

    invoke-virtual {p1, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 781
    .local v7, sharePath:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 782
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    new-instance v6, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;

    invoke-direct {v6}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;-><init>()V

    .line 783
    .local v6, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->openFolderReceiver(Landroid/content/Context;)V

    .line 784
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 823
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->closeFolderReceiver()V

    .line 825
    if-eqz v3, :cond_8

    .line 826
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendFriendNotify(Landroid/content/Context;I)V

    .line 832
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v6           #operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    .end local v7           #sharePath:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 786
    .restart local v4       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .restart local v6       #operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;
    .restart local v7       #sharePath:Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 787
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 788
    .local v5, key:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 789
    .local v8, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 790
    const-string v9, "add"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 791
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 792
    .local v0, account:Ljava/lang/String;
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;-><init>()V

    .line 793
    .local v2, folderReceiver:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;
    invoke-virtual {v2, v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setReceiverAccount(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v2, v7}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setSharedPath(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v2, v10}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setReceiverState(I)V

    .line 797
    invoke-virtual {v6, v2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->bindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 798
    const/4 v3, 0x1

    goto :goto_1

    .line 800
    :cond_4
    invoke-virtual {v6, v2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->updateFolderReceiver(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 801
    const/4 v3, 0x1

    goto :goto_1

    .line 805
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #folderReceiver:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;
    :cond_5
    const-string v9, "del"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 806
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 807
    .restart local v0       #account:Ljava/lang/String;
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;-><init>()V

    .line 808
    .restart local v2       #folderReceiver:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;
    invoke-virtual {v2, v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setReceiverAccount(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v2, v7}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setSharedPath(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v6, v2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->unbindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 811
    const/4 v3, 0x1

    goto :goto_2

    .line 817
    :cond_6
    invoke-direct {p0, v7, v6, v0}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->checkDelExist(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    move v3, v10

    :goto_3
    goto :goto_2

    :cond_7
    move v3, v11

    goto :goto_3

    .line 828
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v2           #folderReceiver:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;
    .end local v5           #key:Ljava/lang/String;
    .end local v8           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendFriendNotify(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method private afterQueryShareFolder(Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;)V
    .locals 15
    .parameter "reponse"

    .prologue
    .line 943
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->getOutShareList()Ljava/util/List;

    move-result-object v6

    .line 945
    .local v6, outList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    const/4 v4, 0x0

    .line 951
    .local v4, isNeedNotifyUi:Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .local v2, folderReceivers:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;>;"
    new-instance v5, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v12, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v12}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 953
    .local v5, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    const-string v10, ""

    .line 954
    .local v10, sharePath:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 996
    if-eqz v4, :cond_0

    .line 997
    iget-object v12, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendQueryFolderSuc(Landroid/content/Context;)V

    goto :goto_0

    .line 954
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;

    .line 955
    .local v3, info:Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharePath()Ljava/lang/String;

    move-result-object v10

    .line 956
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getReceiverList()Ljava/util/List;

    move-result-object v8

    .line 957
    .local v8, receiverList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_2

    .line 961
    sget-object v13, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderReceiver:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 962
    const-string v14, "SharedPath"

    .line 961
    invoke-virtual {v5, v13, v14, v10}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->delete(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;)Z

    .line 964
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_5

    .line 993
    invoke-virtual {v5, v2}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->addReceiver(Ljava/util/List;)Z

    goto :goto_1

    .line 964
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;

    .line 965
    .local v7, receiver:Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getStatus()I

    move-result v11

    .line 969
    .local v11, status:I
    new-instance v9, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;

    invoke-direct {v9}, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;-><init>()V

    .line 970
    .local v9, reciverInfo:Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;
    invoke-virtual {v9, v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;->setReceiverAccount(Ljava/lang/String;)V

    .line 971
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;

    invoke-direct {v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;-><init>()V

    .line 975
    .local v1, folderReceiver:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;
    invoke-virtual {v1, v0}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setReceiverAccount(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v1, v11}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setReceiverState(I)V

    .line 977
    invoke-virtual {v1, v10}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setSharedPath(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v5, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->bindReciver2Folder(Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 979
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private aftershareFolderCreatedFromPush(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1022
    .local p1, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1023
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1044
    :cond_0
    return-void

    .line 1023
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;

    .line 1024
    .local v4, rsi:Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;
    new-instance v5, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-direct {v5}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;-><init>()V

    .line 1025
    .local v5, shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getPhysicsPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setDbankPath(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getCreateTime()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setCreateTime(J)V

    .line 1027
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setSharePath(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharer()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setSharedAccount(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getShareName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setDisplayName(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getReceiverList()Ljava/util/List;

    move-result-object v2

    .line 1031
    .local v2, receiverList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    .local v0, friendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1033
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1039
    invoke-virtual {v5, v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setReceiver(Ljava/util/ArrayList;)V

    .line 1041
    :cond_2
    const/4 v7, 0x1

    invoke-direct {p0, v5, v7}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->afterCreateShareFolderSuccess(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;Z)V

    goto :goto_0

    .line 1033
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;

    .line 1034
    .local v3, rs:Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    invoke-direct {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;-><init>()V

    .line 1035
    .local v1, info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->setAccount(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getStatus()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->setState(I)V

    .line 1037
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private aftershareFolderDeletedFromPush(Ljava/lang/String;)V
    .locals 10
    .parameter "sharePath"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1113
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 1114
    .local v1, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderReceiver:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 1115
    const-string v5, "SharedPath"

    .line 1114
    invoke-virtual {v1, v4, v5, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->delete(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1116
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 1117
    const-string v5, "SharedPath"

    .line 1116
    invoke-virtual {v1, v4, v5, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->delete(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1118
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 1119
    const-string v5, "SharePath"

    new-array v6, v9, [Ljava/lang/String;

    .line 1120
    const-string v7, "FolderPathR"

    aput-object v7, v6, v8

    .line 1118
    invoke-virtual {v1, v4, v5, p1, v6}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1121
    .local v3, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    sget-object v4, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 1122
    const-string v5, "SharePath"

    .line 1121
    invoke-virtual {v1, v4, v5, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->delete(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1123
    const/4 v0, 0x0

    .line 1124
    .local v0, dbankPath:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    array-length v4, v4

    if-eqz v4, :cond_0

    .line 1125
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    aget-object v0, v4, v8

    .end local v0           #dbankPath:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1127
    .restart local v0       #dbankPath:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 1128
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 1129
    .local v2, operator2:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    invoke-virtual {v2, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->deleteTaskInfo(Ljava/lang/String;)Z

    .line 1131
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/io/File;)Z

    .line 1133
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1133
    invoke-static {v4, v5, v9, v9}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendContentChange(Landroid/content/Context;Ljava/lang/String;II)V

    .line 1137
    .end local v2           #operator2:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    :cond_1
    return-void
.end method

.method private aftershareFolderModifiedFromPush(Ljava/util/ArrayList;Z)V
    .locals 14
    .parameter
    .parameter "isMyShared"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1048
    .local p1, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 1050
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1109
    :cond_0
    :goto_1
    return-void

    .line 1050
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;

    .line 1052
    .local v6, rsi:Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getReceiverList()Ljava/util/List;

    move-result-object v4

    .line 1053
    .local v4, receiverList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    if-nez p2, :cond_2

    invoke-direct {p0, v4}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->isExistInReceiverList(Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1054
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->aftershareFolderDeletedFromPush(Ljava/lang/String;)V

    goto :goto_1

    .line 1057
    :cond_2
    new-instance v7, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;

    invoke-direct {v7}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;-><init>()V

    .line 1058
    .local v7, shareFolder:Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getCreateTime()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsGMT(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setCreateTime(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getPhysicsPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setFolderPathRemote(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getShareName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setFolderName(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharer()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 1062
    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1064
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setFolderType(I)V

    .line 1070
    :goto_2
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setSharePath(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setSharerAccount(Ljava/lang/String;)V

    .line 1072
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 1074
    .local v3, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "SharePath"

    aput-object v11, v8, v10

    .line 1075
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1073
    invoke-virtual {v3, v7, v8, v10}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->updateOrInsert(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 1076
    sget-object v8, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->FolderReceiver:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 1077
    const-string v10, "SharedPath"

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharePath()Ljava/lang/String;

    move-result-object v11

    .line 1076
    invoke-virtual {v3, v8, v10, v11}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->delete(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1078
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 1079
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1093
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1095
    .local v2, localPath:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v12

    .line 1096
    invoke-virtual {v12}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1095
    invoke-static {v8, v10}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->createNewFolder(Landroid/content/Context;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    :goto_4
    iget-object v10, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_6

    const/4 v8, 0x1

    .line 1102
    :goto_5
    const/4 v11, 0x4

    .line 1101
    invoke-static {v10, v2, v8, v11}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendFolderChange(Landroid/content/Context;Ljava/lang/String;II)V

    .line 1103
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharePath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 1104
    const/4 v13, 0x3

    .line 1103
    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 1068
    .end local v2           #localPath:Ljava/lang/String;
    .end local v3           #operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    :cond_4
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->setFolderType(I)V

    goto/16 :goto_2

    .line 1079
    .restart local v3       #operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;

    .line 1080
    .local v5, rs:Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;

    invoke-direct {v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;-><init>()V

    .line 1081
    .local v1, folderReceiver:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getAccount()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setReceiverAccount(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getStatus()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setReceiverState(I)V

    .line 1083
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getSharePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->setSharedPath(Ljava/lang/String;)V

    .line 1086
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ReceiverAccount"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 1087
    const-string v12, "SharedPath"

    aput-object v12, v10, v11

    .line 1088
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->getReceiverAccount()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 1089
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->getSharedPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 1084
    invoke-virtual {v3, v1, v10, v11}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->updateOrInsert(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3

    .line 1097
    .end local v1           #folderReceiver:Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;
    .end local v5           #rs:Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;
    .restart local v2       #localPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1099
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v10, "aftershareFolderModifiedFromPush"

    invoke-static {v8, v10, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 1101
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    const/4 v8, 0x2

    goto :goto_5
.end method

.method private checkDelExist(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;Ljava/lang/String;)Z
    .locals 6
    .parameter "sharePath"
    .parameter "operator"
    .parameter "account"

    .prologue
    .line 836
    const/4 v2, 0x0

    .line 837
    .local v2, isExist:Z
    invoke-virtual {p2, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector2;->getFriendsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 838
    .local v1, friendsInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    .line 852
    .end local v2           #isExist:Z
    .local v3, isExist:I
    :goto_0
    return v3

    .line 843
    .end local v3           #isExist:I
    .restart local v2       #isExist:Z
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    move v3, v2

    .line 852
    .restart local v3       #isExist:I
    goto :goto_0

    .line 843
    .end local v3           #isExist:I
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 845
    .local v0, friendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 847
    const/4 v2, 0x1

    .line 848
    goto :goto_1
.end method

.method private clearOneSdcard(Ljava/lang/String;)Z
    .locals 9
    .parameter "path"

    .prologue
    .line 908
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "come into clear clearOneSdcard:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const/4 v2, 0x1

    .line 911
    .local v2, flag:Z
    if-nez p1, :cond_0

    .line 913
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    const-string v7, "sdcard/photoshare path is null no need clear"

    invoke-static {v5, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 938
    .end local v2           #flag:Z
    .local v3, flag:I
    :goto_0
    return v3

    .line 917
    .end local v3           #flag:I
    .restart local v2       #flag:Z
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/Photoshare"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 919
    .local v4, rootFile:Ljava/io/File;
    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->isFileExist(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 921
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sdcard/photoshare path not exist"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 922
    .restart local v3       #flag:I
    goto :goto_0

    .line 925
    .end local v3           #flag:I
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 926
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 928
    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v6, :cond_3

    .line 937
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "exit clear clearOneSdcard:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 938
    .restart local v3       #flag:I
    goto :goto_0

    .line 928
    .end local v3           #flag:I
    :cond_3
    aget-object v0, v1, v5

    .line 930
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 932
    const/4 v2, 0x0

    .line 928
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private isExistInReceiverList(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, receiverList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    const/4 v1, 0x0

    .line 1176
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1187
    :cond_0
    :goto_0
    return v1

    .line 1179
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;

    .line 1181
    .local v0, rs:Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getAccount()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 1182
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1184
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancelReceiverFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I
    .locals 3
    .parameter "context"
    .parameter "folderInfo"

    .prologue
    .line 654
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->folderHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p1}, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 655
    .local v1, request:Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;
    const/16 v2, 0x113

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->setFusionCode(I)V

    .line 656
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->setAddReceiverList(Ljava/util/ArrayList;)V

    .line 657
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getSharePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->setSharePath(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->setShareName(Ljava/lang/String;)V

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v0, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-virtual {v1, v0}, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->setDelReceiverList(Ljava/util/ArrayList;)V

    .line 662
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 664
    const/4 v2, 0x0

    return v2
.end method

.method public clearAllLocalFiles()Z
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->clearOneSdcard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir_old()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->clearOneSdcard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 902
    goto :goto_0
.end method

.method public confirmReceiverFolder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "SharePath"
    .parameter "confirmType"
    .parameter "accoutnName"
    .parameter "displayName"

    .prologue
    .line 686
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/ShareResultChangeRequest;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->folderHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/huawei/hicloud/photosharesdk/request/ShareResultChangeRequest;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 687
    .local v0, srcr:Lcom/huawei/hicloud/photosharesdk/request/ShareResultChangeRequest;
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p2, p5}, Lcom/huawei/hicloud/photosharesdk/request/ShareResultChangeRequest;->setShareResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 689
    const/16 v1, 0x10d

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/ShareResultChangeRequest;->setFusionCode(I)V

    .line 690
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/ShareResultChangeRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 691
    const/4 v1, 0x0

    return v1
.end method

.method public createAsynShareFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I
    .locals 9
    .parameter "context"
    .parameter "folderInfo"

    .prologue
    const/4 v8, 0x0

    .line 520
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->getUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 521
    .local v5, uniqName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/Photoshare/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, dbankPath:Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setDbankPath(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getReceiver()Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_0

    .line 526
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setReceiver(Ljava/util/ArrayList;)V

    .line 529
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v3, receiveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getReceiver()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 536
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->folderHandler:Landroid/os/Handler;

    invoke-direct {v0, v6}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;-><init>(Landroid/os/Handler;)V

    .line 537
    .local v0, csrj:Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;
    const/16 v6, 0xfd

    invoke-virtual {v0, v6}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->setFusionCode(I)V

    .line 538
    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->setReceiverList(Ljava/util/ArrayList;)V

    .line 539
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->createShareFolder(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;Landroid/content/Context;)V

    .line 544
    return v8

    .line 530
    .end local v0           #csrj:Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 531
    .local v2, info:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    new-instance v4, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v8}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;-><init>(Ljava/lang/String;I)V

    .line 532
    .local v4, status:Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createShareFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    .locals 1
    .parameter "context"
    .parameter "folderInfo"

    .prologue
    .line 561
    const/4 v0, 0x0

    return-object v0
.end method

.method public delShareFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "localPath"
    .parameter "cloudPath"
    .parameter "sharePath"

    .prologue
    .line 498
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/DelShareFolderRequest;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->folderHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/huawei/hicloud/photosharesdk/request/DelShareFolderRequest;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 500
    .local v0, delShareFolderRequest:Lcom/huawei/hicloud/photosharesdk/request/DelShareFolderRequest;
    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/DelShareFolderRequest;->setFusionCode(I)V

    .line 501
    invoke-virtual {v0, p4}, Lcom/huawei/hicloud/photosharesdk/request/DelShareFolderRequest;->setSharePath(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/DelShareFolderRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 504
    const/4 v1, 0x0

    return v1
.end method

.method public getFolderInfo(Landroid/content/Context;II)Ljava/util/HashMap;
    .locals 13
    .parameter "context"
    .parameter "queryType"
    .parameter "queryFrom"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 306
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 309
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;>;"
    :try_start_0
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    invoke-direct {v3, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 310
    .local v3, collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    packed-switch p2, :pswitch_data_0

    .line 396
    .end local v3           #collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    :cond_0
    :goto_0
    return-object v5

    .line 315
    .restart local v3       #collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    :pswitch_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->getShareFolderInfo(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 316
    .local v6, myphotoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    instance-of v9, v6, Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    .line 318
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 319
    check-cast v6, Ljava/util/ArrayList;

    .line 318
    .end local v6           #myphotoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_1
    if-nez p3, :cond_0

    .line 322
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v9

    const/4 v10, 0x4

    .line 323
    const-string v11, "/Photoshare/myphoto"

    const/4 v12, 0x4

    .line 322
    invoke-virtual {v9, v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    .end local v3           #collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    :catch_0
    move-exception v4

    .line 391
    .local v4, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getFolderInfo"

    invoke-static {v9, v10, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 331
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #collector:Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;
    :pswitch_1
    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v3, v9, v10, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->getShareFolderInfo(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 332
    .local v8, shareList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    instance-of v9, v8, Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    .line 334
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 335
    check-cast v8, Ljava/util/ArrayList;

    .line 334
    .end local v8           #shareList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_2
    if-nez p3, :cond_0

    .line 338
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v9

    const/4 v10, 0x3

    .line 339
    const-string v11, "/PhotoshareShared"

    const/4 v12, 0x4

    .line 338
    invoke-virtual {v9, v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    goto :goto_0

    .line 347
    :pswitch_2
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->getShareFolderInfo(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 348
    .local v7, receiverList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    instance-of v9, v7, Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 350
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 351
    check-cast v7, Ljava/util/ArrayList;

    .line 350
    .end local v7           #receiverList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-virtual {v5, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_3
    if-nez p3, :cond_0

    .line 354
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v9

    const/4 v10, 0x2

    .line 355
    const-string v11, "/PhotoshareReceived"

    const/4 v12, 0x4

    .line 354
    invoke-virtual {v9, v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->startSync(ILjava/lang/String;I)V

    goto :goto_0

    .line 361
    :pswitch_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->getShareFolderInfo(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, allMyphotoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    instance-of v9, v0, Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    .line 364
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 365
    check-cast v0, Ljava/util/ArrayList;

    .line 364
    .end local v0           #allMyphotoList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-virtual {v5, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_4
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->getShareFolderInfo(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 369
    .local v2, allShareList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    instance-of v9, v2, Ljava/util/ArrayList;

    if-eqz v9, :cond_5

    .line 371
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 372
    check-cast v2, Ljava/util/ArrayList;

    .line 371
    .end local v2           #allShareList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-virtual {v5, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_5
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, p1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;->getShareFolderInfo(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 376
    .local v1, allReceiverList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    instance-of v9, v1, Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    .line 378
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 379
    check-cast v1, Ljava/util/ArrayList;

    .line 378
    .end local v1           #allReceiverList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-virtual {v5, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getFolderInfoByPath(Landroid/content/Context;Ljava/lang/String;I)Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    .locals 16
    .parameter "context"
    .parameter "sharePath"
    .parameter "queryFrom"

    .prologue
    .line 413
    new-instance v9, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-direct {v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;-><init>()V

    .line 414
    .local v9, shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    new-instance v7, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncCollector;-><init>(Landroid/content/Context;)V

    .line 415
    .local v7, operator:Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;
    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;->getFriendsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 417
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 459
    const/4 v10, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v7, v10, v0, v1}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;->getShareFolderInfo(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 460
    .local v3, folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 462
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    check-cast v9, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 465
    .restart local v9       #shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    :cond_1
    instance-of v10, v6, Ljava/util/ArrayList;

    if-eqz v10, :cond_3

    .line 466
    check-cast v6, Ljava/util/ArrayList;

    .line 464
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    :goto_1
    invoke-virtual {v9, v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setReceiver(Ljava/util/ArrayList;)V

    .line 468
    return-object v9

    .line 419
    .end local v3           #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    .restart local v6       #list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 420
    .local v4, friendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    sget-object v10, Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;->ReceiverInfo:Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;

    .line 421
    const-string v11, "ReceiverAccount"

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->getAccount()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 422
    const-string v15, "ReceiverName"

    aput-object v15, v13, v14

    .line 420
    invoke-interface {v7, v10, v11, v12, v13}, Lcom/huawei/hicloud/photosharesdk/database/DBFuncInterface;->query(Lcom/huawei/hicloud/photosharesdk/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 423
    .local v8, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_0

    .line 425
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v2, v10, v11

    check-cast v2, Ljava/lang/String;

    .line 426
    .local v2, dispName:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->setDispName(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    .end local v2           #dispName:Ljava/lang/String;
    .end local v4           #friendsInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    .end local v8           #result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .restart local v3       #folders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method

.method public modifyShareFolder(Landroid/content/Context;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)I
    .locals 4
    .parameter "context"
    .parameter "shareFolder"

    .prologue
    const/4 v3, 0x0

    .line 578
    if-nez p2, :cond_1

    .line 596
    :cond_0
    :goto_0
    return v3

    .line 583
    :cond_1
    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, displayName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 588
    new-instance v1, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->folderHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p1}, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 589
    .local v1, request:Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;
    invoke-virtual {v1, p2}, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;->setShareFolder(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V

    .line 590
    const/16 v2, 0x104

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;->setFusionCode(I)V

    .line 591
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    goto :goto_0
.end method

.method public modifyShareFolderRec(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 2
    .parameter "context"
    .parameter "sharepath"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 619
    .local p3, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/AddOrDelFriendRequest;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->folderHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/huawei/hicloud/photosharesdk/request/AddOrDelFriendRequest;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 620
    .local v0, request:Lcom/huawei/hicloud/photosharesdk/request/AddOrDelFriendRequest;
    invoke-virtual {v0, p2}, Lcom/huawei/hicloud/photosharesdk/request/AddOrDelFriendRequest;->setSharePath(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0, p3}, Lcom/huawei/hicloud/photosharesdk/request/AddOrDelFriendRequest;->setAddReceiverList(Ljava/util/ArrayList;)V

    .line 622
    invoke-virtual {v0, p4}, Lcom/huawei/hicloud/photosharesdk/request/AddOrDelFriendRequest;->setDelReceiverList(Ljava/util/ArrayList;)V

    .line 623
    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/AddOrDelFriendRequest;->setFusionCode(I)V

    .line 624
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/AddOrDelFriendRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 628
    const/4 v1, 0x0

    return v1
.end method

.method public shareFolderchangedFromPush(Ljava/lang/String;I)V
    .locals 4
    .parameter "sharePath"
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 1005
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 1006
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->aftershareFolderDeletedFromPush(Ljava/lang/String;)V

    .line 1019
    :goto_0
    return-void

    .line 1009
    :cond_0
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->folderHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/logic/FolderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 1010
    .local v0, qsfr:Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;
    invoke-virtual {v0, p1}, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->setSharePath(Ljava/lang/String;)V

    .line 1011
    const/16 v1, 0x105

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->setFusionCode(I)V

    .line 1012
    if-ne p2, v3, :cond_2

    .line 1013
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->setTaskId(I)V

    .line 1017
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->setScope(I)V

    .line 1018
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    goto :goto_0

    .line 1014
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 1015
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->setTaskId(I)V

    goto :goto_1
.end method
