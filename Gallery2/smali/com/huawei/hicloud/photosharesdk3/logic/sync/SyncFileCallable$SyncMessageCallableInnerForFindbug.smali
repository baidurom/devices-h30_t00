.class Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;
.super Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;
.source "SyncFileCallable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;
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
    .line 442
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;-><init>(Ljava/lang/Object;)V

    .line 438
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->broadType:I

    .line 443
    iput p2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->broadType:I

    .line 444
    return-void
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
    .line 449
    iget v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->broadType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 451
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "deleteLocalFileList sendContentChange"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDbankPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 453
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v1

    .line 456
    iget v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->broadType:I

    .line 452
    invoke-static {v2, v3, v1, v4}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendContentChange(Landroid/content/Context;Ljava/lang/String;II)V

    .line 481
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 458
    :cond_1
    iget v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->broadType:I

    if-nez v1, :cond_2

    .line 460
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "addLocalFileList sendContentChange"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDbankPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v1

    .line 465
    iget v4, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->broadType:I

    .line 461
    invoke-static {v2, v3, v1, v4}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendContentChange(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    .line 467
    :cond_2
    iget v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->broadType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 469
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "add received sendContentChange"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 471
    .local v0, shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addLocalFileList sendContentChange"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 471
    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 474
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getSharedAccount()Ljava/lang/String;

    move-result-object v3

    .line 475
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getSharedName()Ljava/lang/String;

    move-result-object v4

    .line 476
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDbankPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-static {v2, v3, v4, v5, v1}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/PushNotifySender;->sendShareFolderChange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
