.class Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;
.super Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;
.source "SyncFolderCallable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncMessageCallableInnerForFindbug"
.end annotation


# instance fields
.field private broadType:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .parameter "callParam"
    .parameter "broadType"

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;-><init>(Ljava/lang/Object;)V

    .line 674
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->broadType:I

    .line 679
    iput p2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->broadType:I

    .line 680
    return-void
.end method

.method private isRject(Ljava/lang/String;)Z
    .locals 17
    .parameter "sharePath"

    .prologue
    .line 719
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v1

    .line 720
    .local v1, accountInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, currentAccount:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->getTagInfo()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "isRject. currentAccount="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const/4 v10, 0x0

    .line 724
    .local v10, result:Z
    new-instance v7, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;

    .line 725
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 724
    invoke-direct {v7, v13}, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;-><init>(Landroid/content/Context;)V

    .line 726
    .local v7, queryShareFolderRequest:Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->setScope(I)V

    .line 727
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->setSharePath(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->getJSONResponse()V

    .line 729
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->getJsonBodyStr()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 731
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 732
    .local v3, gson:Lcom/google/gson/Gson;
    invoke-virtual {v7}, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->getJsonBodyStr()Ljava/lang/String;

    move-result-object v13

    .line 733
    const-class v14, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;

    .line 732
    invoke-virtual {v3, v13, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;

    .line 734
    .local v12, rsp:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;
    invoke-virtual {v12}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->getInShareList()Ljava/util/List;

    move-result-object v4

    .line 735
    .local v4, infos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 751
    .end local v3           #gson:Lcom/google/gson/Gson;
    .end local v4           #infos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    .end local v5           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    .end local v12           #rsp:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;
    :cond_1
    return v10

    .line 737
    .restart local v3       #gson:Lcom/google/gson/Gson;
    .restart local v4       #infos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    .restart local v5       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    .restart local v12       #rsp:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;

    .line 738
    .local v11, returnShareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;
    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getReceiverList()Ljava/util/List;

    move-result-object v9

    .line 739
    .local v9, receiveStatusList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, iterator2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 741
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;

    .line 742
    .local v8, receiveStatus:Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getAccount()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 743
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 744
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->getStatus()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 746
    const/4 v10, 0x1

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
    .line 685
    iget v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->broadType:I

    if-nez v2, :cond_1

    .line 687
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sync folder create"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 687
    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 707
    .local v1, folderParam:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 708
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v3

    .line 709
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 710
    iget v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->broadType:I

    .line 706
    invoke-static {v2, v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendFolderChange(Landroid/content/Context;Ljava/lang/String;II)V

    .line 712
    const/4 v2, 0x0

    return-object v2

    .line 690
    .end local v1           #folderParam:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    :cond_1
    iget v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->broadType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 692
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sync folder delete"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 692
    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 696
    .local v0, folder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    const-string v2, "2"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderCallable$SyncMessageCallableInnerForFindbug;->isRject(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 699
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 700
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getShareName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v6

    .line 699
    invoke-static {v2, v3, v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/PushNotifySender;->sendSharerCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
