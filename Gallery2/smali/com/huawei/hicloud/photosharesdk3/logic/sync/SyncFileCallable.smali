.class public Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;
.source "SyncFileCallable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$FolderPhotoCompararatorByTimeAndName;,
        Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$OriginalFileDownHandle;,
        Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;,
        Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncOperateFileCompararatorByCreateAndName;
    }
.end annotation


# static fields
.field private static final COMPARE_ADD_CLOUD_KEY:Ljava/lang/String; = "cac"

.field private static final COMPARE_ADD_LOCAL_KEY:Ljava/lang/String; = "cal"

.field private static final COMPARE_DELETE_CLOUD_KEY:Ljava/lang/String; = "cdc"

.field private static final COMPARE_DELETE_LOCAL_KEY:Ljava/lang/String; = "cdl"

.field private static final TIME_ALL_DAY:J = 0x5265c00L

.field private static final TIME_ONE_THOUTHAND:J = 0x3e8L

.field private static mPhotoDeleteCallable:I


# instance fields
.field private delOrAddCloudList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;"
        }
    .end annotation
.end field

.field private mLimitFileCount:I

.field private mLimitFileTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x64

    sput v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mPhotoDeleteCallable:I

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "callParam"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SerialCallable;-><init>(Ljava/lang/Object;)V

    .line 76
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileCount:I

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileTime:J

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->delOrAddCloudList:Ljava/util/ArrayList;

    .line 108
    return-void
.end method

.method private addCloudFileList(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 916
    .local p1, syncOperateFileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    const-string v6, "come into addCloudFileList"

    invoke-static {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 973
    :cond_0
    return-void

    .line 928
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 930
    .local v3, syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->onPause()V

    .line 933
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;

    .line 934
    const-wide/16 v5, -0x1

    .line 935
    const/4 v7, 0x2

    .line 933
    invoke-direct {v1, v3, v5, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;-><init>(Ljava/lang/Object;JI)V

    .line 936
    .local v1, photoUploadCallable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoUploadCallable;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$2;

    const-string v5, ""

    invoke-direct {v0, p0, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$2;-><init>(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;Ljava/lang/Object;)V

    .line 963
    .local v0, addCloudHandle:Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v5

    .line 964
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->isPriority()Z

    move-result v6

    .line 963
    invoke-virtual {v5, v1, v0, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableParallel(Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;Z)Z

    move-result v2

    .line 966
    .local v2, sumitResult:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sendContentChangeNf sumitResult:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "** name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 967
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " this.isPriority:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->isPriority()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 966
    invoke-static {v5, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    if-nez v2, :cond_2

    .line 970
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->delOrAddCloudList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addLocalFileList(Ljava/util/List;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, syncList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    const/4 v12, 0x0

    .line 630
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    const-string v10, "come into addLocalFileList"

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v5, syncOperateFileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTotalFileNum()I

    move-result v8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileCount:I

    if-le v8, v9, :cond_2

    .line 634
    iget v8, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileCount:I

    if-lez v8, :cond_2

    .line 636
    new-instance v8, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncOperateFileCompararatorByCreateAndName;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncOperateFileCompararatorByCreateAndName;-><init>(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncOperateFileCompararatorByCreateAndName;)V

    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 637
    iget v8, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileCount:I

    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTotalFileNum()I

    move-result v9

    sub-int/2addr v8, v9

    if-lez v8, :cond_1

    .line 640
    iget v8, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileCount:I

    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTotalFileNum()I

    move-result v9

    sub-int/2addr v8, v9

    .line 639
    invoke-interface {p1, v12, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 653
    :goto_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "wait for download size:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 654
    const-string v11, "##real dowmload size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 653
    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/4 v1, 0x0

    .line 657
    .local v1, hasFileAddLocalSuc:Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 658
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 697
    .end local v1           #hasFileAddLocalSuc:Z
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    :goto_2
    return-void

    .line 644
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    const-string v10, "#######over size return#######"

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 650
    :cond_2
    move-object v5, p1

    goto :goto_0

    .line 660
    .restart local v1       #hasFileAddLocalSuc:Z
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 662
    .local v4, syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->onPause()V

    .line 665
    invoke-direct {p0, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getThumbFile(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 667
    const/4 v1, 0x1

    .line 668
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v6, tempList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-direct {p0, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->notifyUiAddLocal(Ljava/util/List;)V

    .line 673
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 674
    const-string v9, "isBigPhotoAutoDownload"

    .line 673
    invoke-static {v8, v9}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcher(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 676
    invoke-direct {p0, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getOriginalFile(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)V

    .line 681
    .end local v6           #tempList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    :cond_4
    if-eqz v1, :cond_0

    const-string v9, "2"

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 682
    invoke-virtual {p0, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->isLastAddLocal(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 684
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    const-string v10, "isLastAddLocal is true"

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v7, tempReceivedList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-direct {p0, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getFolderSharePathsByFolderDbankPaths(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 688
    .local v3, shareFolders:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 691
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 692
    const/4 v9, 0x3

    .line 691
    invoke-direct {v0, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;-><init>(Ljava/lang/Object;I)V

    .line 693
    .local v0, callable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v8

    invoke-virtual {v8, v0, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;Z)V

    goto/16 :goto_1
.end method

.method private checkCloudByLocal(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .parameter "syncOperate"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 254
    .local p2, deleteLocalArrayList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    .local p3, addCloudArrayList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    .local p4, serverFiles:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    .local p5, localFiles:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    .local p6, taskAddInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 302
    return-void

    .line 254
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;

    .line 256
    .local v4, sharePhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getCreateTime()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    const-string v11, "##"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 256
    invoke-static {v7, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->onPause()V

    .line 259
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 260
    .local v1, isExitInServer:Ljava/lang/Boolean;
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 271
    :goto_1
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 272
    .local v2, isInAddInTaskInfo:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    .line 274
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 284
    :goto_2
    new-instance v5, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-direct {v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;-><init>()V

    .line 285
    .local v5, syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setFolderType(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setPhysicsPath(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, name:Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-virtual {v5, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setFileName(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getCreateTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setCreateTime(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setSharePath(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, p3

    .line 294
    :goto_3
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    :cond_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v7

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "local file## name:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 299
    const-string v11, "## isExitInServer:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 300
    const-string v11, "## isInAddInTaskInfo:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 297
    invoke-static {v7, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    .end local v2           #isInAddInTaskInfo:Ljava/lang/Boolean;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 262
    .restart local v5       #syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 262
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, filePhysicsPath:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_1

    .line 274
    .end local v0           #filePhysicsPath:Ljava/lang/String;
    .end local v5           #syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    .restart local v2       #isInAddInTaskInfo:Ljava/lang/Boolean;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    .line 277
    .local v6, taskInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_2

    .end local v6           #taskInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    :cond_6
    move-object v7, p2

    .line 293
    goto/16 :goto_3
.end method

.method private checkIsOverTime(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->onPause()V

    .line 1447
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1449
    .local v2, isOverTime:Ljava/lang/Boolean;
    iget-wide v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    move-object v3, v2

    .line 1468
    .end local v2           #isOverTime:Ljava/lang/Boolean;
    .local v3, isOverTime:Ljava/lang/Boolean;
    :goto_0
    return-object v3

    .line 1456
    .end local v3           #isOverTime:Ljava/lang/Boolean;
    .restart local v2       #isOverTime:Ljava/lang/Boolean;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileTime:J

    sub-long v4, v6, v8

    .line 1457
    .local v4, timeLimit:J
    invoke-static {p1}, Lcom/huawei/hicloud/photosharesdk/helper/Util;->formatTimeAsDefault(Ljava/lang/String;)J

    move-result-wide v0

    .line 1459
    .local v0, fileTime:J
    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    .line 1461
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1464
    :cond_1
    sget-boolean v6, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v6, :cond_2

    .line 1466
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "checkIsOverTime,timeLimit:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",fileTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v3, v2

    .line 1468
    .end local v2           #isOverTime:Ljava/lang/Boolean;
    .restart local v3       #isOverTime:Ljava/lang/Boolean;
    goto :goto_0
.end method

.method private checkLocalByCloud(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 207
    .local p1, deleteCloudArrayList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    .local p2, addLocalArrayList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    .local p3, serverFiles:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    .local p4, localFiles:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    .local p5, taskDelInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 247
    return-void

    .line 207
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 209
    .local v4, syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->onPause()V

    .line 210
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 211
    .local v2, isExitInLocal:Ljava/lang/Boolean;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 211
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, serverFileDbankPath:Ljava/lang/String;
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 222
    :goto_1
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 223
    .local v1, isExitInDeleteTaskInfo:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 225
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 226
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 236
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, p1

    .line 237
    :goto_3
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v8, "3"

    .line 241
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "server file## name:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 243
    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 244
    const-string v10, "## isExitInLocal:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 245
    const-string v10, "## isExitInDeleteTaskInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 241
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 240
    invoke-static {v6, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 213
    .end local v1           #isExitInDeleteTaskInfo:Ljava/lang/Boolean;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;

    .line 215
    .local v0, folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 226
    .end local v0           #folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    .restart local v1       #isExitInDeleteTaskInfo:Ljava/lang/Boolean;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;

    .line 229
    .local v5, taskInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    .end local v5           #taskInfo:Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
    :cond_6
    move-object v6, p2

    .line 236
    goto :goto_3
.end method

.method private checkLocalFileExit(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;)Ljava/lang/Boolean;
    .locals 7
    .parameter "folderPhoto"

    .prologue
    const/4 v6, 0x0

    .line 895
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, basePath:Ljava/lang/String;
    const-string v4, ".."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 898
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 900
    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 910
    :goto_0
    return-object v4

    .line 903
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 905
    .local v1, dotPosi:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 907
    const-string v5, "_thumb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 908
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 905
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 909
    .local v3, thumbPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 910
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method private checkOperateType(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;)Ljava/lang/Boolean;
    .locals 7
    .parameter "syncOperateFolder"

    .prologue
    .line 1422
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1423
    .local v0, doFileSync:Ljava/lang/Boolean;
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getOprateTypes()[Ljava/lang/String;

    move-result-object v4

    .line 1424
    .local v4, stringResult:[Ljava/lang/String;
    array-length v3, v4

    .line 1425
    .local v3, length:I
    if-lez v3, :cond_0

    .line 1427
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_1

    .end local v2           #i:I
    :cond_0
    move-object v1, v0

    .line 1437
    .end local v0           #doFileSync:Ljava/lang/Boolean;
    .local v1, doFileSync:Ljava/lang/Boolean;
    :goto_1
    return-object v1

    .line 1429
    .end local v1           #doFileSync:Ljava/lang/Boolean;
    .restart local v0       #doFileSync:Ljava/lang/Boolean;
    .restart local v2       #i:I
    :cond_1
    const-string v5, "3"

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1430
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v1, v0

    .line 1432
    .end local v0           #doFileSync:Ljava/lang/Boolean;
    .restart local v1       #doFileSync:Ljava/lang/Boolean;
    goto :goto_1

    .line 1427
    .end local v1           #doFileSync:Ljava/lang/Boolean;
    .restart local v0       #doFileSync:Ljava/lang/Boolean;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private deleteCloudFileList(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 514
    .local p1, syncOperateFileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "come into deleteCloudFileList"

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    int-to-double v6, v6

    sget v8, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mPhotoDeleteCallable:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 516
    .local v0, cycleTimes:I
    const/4 v5, 0x0

    .line 517
    .local v5, start:I
    const/4 v6, 0x1

    if-le v0, v6, :cond_0

    sget v2, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mPhotoDeleteCallable:I

    .line 519
    .local v2, end:I
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-lt v3, v0, :cond_1

    .line 552
    return-void

    .line 517
    .end local v2           #end:I
    .end local v3           #i:I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 521
    .restart local v2       #end:I
    .restart local v3       #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->onPause()V

    .line 524
    new-instance v4, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;

    invoke-interface {p1, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 525
    const-wide/16 v7, -0x1

    .line 526
    const/4 v9, 0x2

    .line 524
    invoke-direct {v4, v6, v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;-><init>(Ljava/lang/Object;JI)V

    .line 527
    .local v4, photoDeleteCallable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDeleteCallable;
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$1;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "delete "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " files"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p0, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$1;-><init>(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;Ljava/lang/Object;)V

    .line 544
    .local v1, deleteCloudHandle:Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v6

    .line 545
    const/4 v7, 0x0

    .line 544
    invoke-virtual {v6, v4, v1, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableParallel(Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;Z)Z

    .line 548
    move v5, v2

    .line 550
    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    if-le v0, v6, :cond_2

    sget v6, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mPhotoDeleteCallable:I

    add-int/2addr v2, v6

    .line 519
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 550
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_2
.end method

.method private deleteLocalFileList(Ljava/util/List;)V
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 374
    .local p1, syncOperateFileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    const-string v12, "come into deleteLocalFileList"

    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v4, lstDeletePhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 407
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 410
    new-instance v5, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 411
    .local v5, operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openFolderPhoto(Landroid/content/Context;)V

    .line 414
    :try_start_0
    invoke-virtual {v5, v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->delPhoto(Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :try_start_1
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 433
    .end local v5           #operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    :cond_0
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->notifyUIDelete(Ljava/util/List;)V

    .line 434
    return-void

    .line 376
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 378
    .local v8, syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->onPause()V

    .line 382
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 384
    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 385
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 382
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 386
    .local v6, originalPath:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/io/File;)Z

    .line 389
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 391
    .local v0, dotPosi:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 393
    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 394
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 395
    const-string v12, "_thumb"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 396
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 391
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 397
    .local v9, thumbPath:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/io/File;)Z

    move-result v7

    .line 398
    .local v7, result:Z
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "3"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "FileHelper.deleteFile "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",result:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    new-instance v3, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;

    invoke-direct {v3}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;-><init>()V

    .line 402
    .local v3, folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 402
    invoke-virtual {v3, v11}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 404
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 416
    .end local v0           #dotPosi:I
    .end local v3           #folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    .end local v6           #originalPath:Ljava/lang/String;
    .end local v7           #result:Z
    .end local v8           #syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    .end local v9           #thumbPath:Ljava/lang/String;
    .restart local v5       #operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    :catch_0
    move-exception v1

    .line 418
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "deleteLocalFileList DBException"

    invoke-static {v10, v11, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 424
    :try_start_3
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 426
    :catch_1
    move-exception v2

    .line 428
    .local v2, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "deleteLocalFileList DBException"

    invoke-static {v10, v11, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 421
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 424
    :try_start_4
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 430
    :goto_2
    throw v10

    .line 426
    :catch_2
    move-exception v2

    .line 428
    .restart local v2       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v11

    const-string v12, "deleteLocalFileList DBException"

    invoke-static {v11, v12, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 426
    .end local v2           #e2:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 428
    .restart local v2       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "deleteLocalFileList DBException"

    invoke-static {v10, v11, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private fileCompare(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;)Ljava/util/Map;
    .locals 19
    .parameter "syncOperate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v18, resultMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v3, deleteLocalArrayList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v9, deleteCloudArrayList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v10, addLocalArrayList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v4, addCloudArrayList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    const-string v1, "cdl"

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "cdc"

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "cal"

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "cac"

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "0"

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v8, 0x1

    invoke-virtual {v1, v2, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-object v18

    .line 131
    :cond_1
    const-string v1, "2"

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    const-string v1, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-virtual {v1, v2, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    :cond_3
    new-instance v17, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct/range {v17 .. v17}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 142
    .local v17, operator2:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openFolderPhoto(Landroid/content/Context;)V

    .line 143
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 144
    const/4 v6, 0x0

    .line 145
    .local v6, localFiles:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    const/16 v16, 0x0

    .line 146
    .local v16, mpTaskInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;>;"
    const/4 v13, 0x0

    .line 147
    .local v13, taskDelInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    const/4 v7, 0x0

    .line 150
    .local v7, taskAddInfos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, " ASC"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getPhotoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 151
    invoke-virtual/range {v17 .. v17}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getTaskInfo()Ljava/util/Map;

    move-result-object v16

    .line 152
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v13, v0

    .line 153
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 171
    :goto_1
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 180
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->queryPhotoListOfOneFolder(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;)Ljava/util/List;

    move-result-object v5

    .line 182
    .local v5, serverFiles:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "cloud size:"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "##"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 183
    const-string v11, "local size:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 182
    invoke-static {v1, v2, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 187
    invoke-direct/range {v1 .. v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->checkCloudByLocal(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v8, p0

    move-object v11, v5

    move-object v12, v6

    .line 192
    invoke-direct/range {v8 .. v13}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->checkLocalByCloud(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 194
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getThumbUrl(Ljava/util/List;)V

    .line 197
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v8, "getThumbUrl end."

    invoke-static {v1, v2, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    .end local v5           #serverFiles:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    :catch_0
    move-exception v14

    .line 157
    .local v14, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileCompare DBException:"

    invoke-static {v1, v2, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 171
    :goto_3
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 173
    :catch_1
    move-exception v15

    .line 175
    .local v15, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileCompare DBException:"

    invoke-static {v1, v2, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 165
    .end local v15           #e2:Ljava/lang/Exception;
    :catch_2
    move-exception v15

    .line 167
    .restart local v15       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileCompare DBException:"

    invoke-static {v1, v2, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 160
    .end local v14           #e:Ljava/lang/Exception;
    .end local v15           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 163
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 171
    :goto_4
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 177
    :goto_5
    throw v1

    .line 165
    :catch_3
    move-exception v15

    .line 167
    .restart local v15       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v8, "fileCompare DBException:"

    invoke-static {v2, v8, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 173
    .end local v15           #e2:Ljava/lang/Exception;
    :catch_4
    move-exception v15

    .line 175
    .restart local v15       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v8, "fileCompare DBException:"

    invoke-static {v2, v8, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 165
    .end local v15           #e2:Ljava/lang/Exception;
    :catch_5
    move-exception v15

    .line 167
    .restart local v15       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileCompare DBException:"

    invoke-static {v1, v2, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 173
    .end local v15           #e2:Ljava/lang/Exception;
    :catch_6
    move-exception v15

    .line 175
    .restart local v15       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileCompare DBException:"

    invoke-static {v1, v2, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private filterFilesByCreateTime()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1117
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, "3"

    const-string v21, "come into filterFilesByCreateTime"

    invoke-static/range {v19 .. v21}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const/4 v11, 0x0

    .line 1119
    .local v11, localPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    .local v12, needDeletePhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    new-instance v13, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v13}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 1121
    .local v13, operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openFolderPhoto(Landroid/content/Context;)V

    .line 1122
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openTaskInfoOperator(Landroid/content/Context;)V

    .line 1125
    :try_start_0
    invoke-virtual {v13}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1126
    sget-object v19, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->queryAllData(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)Ljava/util/List;

    move-result-object v11

    .line 1127
    new-instance v19, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$FolderPhotoCompararatorByTimeAndName;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$FolderPhotoCompararatorByTimeAndName;-><init>(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$FolderPhotoCompararatorByTimeAndName;)V

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1129
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->quickCheckOverTime(Ljava/util/List;Ljava/util/List;)V

    .line 1131
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, "3"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "filterFilesByCreateTime localPhotos size:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1132
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ## needDeletePhotos:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1131
    invoke-static/range {v19 .. v21}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-interface {v11, v12}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1134
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    .line 1136
    .local v18, totalSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileCount:I

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 1138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1141
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, "3"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "needDeletePhotos sendContentChange ="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1142
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1141
    invoke-static/range {v19 .. v21}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    .line 1145
    invoke-virtual {v13, v12}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->delPhoto(Ljava/util/List;)Z

    .line 1149
    :cond_1
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_4

    .line 1177
    invoke-virtual {v13}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    invoke-virtual {v13}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1189
    :try_start_1
    invoke-virtual {v13}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1198
    :goto_1
    :try_start_2
    invoke-virtual {v13}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1207
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_3

    .line 1209
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1210
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_5

    .line 1219
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->notifyUIDelete(Ljava/util/List;)V

    .line 1221
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    :cond_3
    return-void

    .line 1149
    :cond_4
    :try_start_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;

    .line 1151
    .local v9, folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->onPause()V

    .line 1153
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->deleteTaskInfo(Ljava/lang/String;)Z

    .line 1156
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v2

    .line 1157
    .local v2, basePath:Ljava/lang/String;
    const-string v20, ".."

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1158
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v20

    const-string v21, ".."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1161
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1161
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1163
    .local v14, originalPath:Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/io/File;)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1166
    .local v4, deleteThumb:Ljava/lang/Boolean;
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 1167
    .local v5, dot:I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "_thumb"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1169
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1167
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1170
    .local v17, thumbPath:Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/huawei/hicloud/photosharesdk/helper/FileHelper;->deleteFile(Ljava/io/File;)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1172
    .local v3, deleteOriginal:Ljava/lang/Boolean;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v20

    const-string v21, "3"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "delete name:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "deleteThumb :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1173
    const-string v23, "###"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "deleteOriginal:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1172
    invoke-static/range {v20 .. v22}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1179
    .end local v2           #basePath:Ljava/lang/String;
    .end local v3           #deleteOriginal:Ljava/lang/Boolean;
    .end local v4           #deleteThumb:Ljava/lang/Boolean;
    .end local v5           #dot:I
    .end local v9           #folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    .end local v14           #originalPath:Ljava/lang/String;
    .end local v17           #thumbPath:Ljava/lang/String;
    .end local v18           #totalSize:I
    :catch_0
    move-exception v6

    .line 1181
    .local v6, e:Ljava/lang/RuntimeException;
    :try_start_4
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, "nothing"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1182
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1185
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v19

    .line 1186
    invoke-virtual {v13}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1189
    :try_start_5
    invoke-virtual {v13}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1198
    :goto_4
    :try_start_6
    invoke-virtual {v13}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeTaskInfoOperator()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1204
    :goto_5
    throw v19

    .line 1191
    :catch_1
    move-exception v7

    .line 1193
    .local v7, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v20

    const-string v21, "syncfile"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 1200
    .end local v7           #e2:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 1202
    .local v8, e3:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v20

    const-string v21, "syncfile"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 1191
    .end local v8           #e3:Ljava/lang/Exception;
    .restart local v18       #totalSize:I
    :catch_3
    move-exception v7

    .line 1193
    .restart local v7       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, "syncfile"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1200
    .end local v7           #e2:Ljava/lang/Exception;
    :catch_4
    move-exception v8

    .line 1202
    .restart local v8       #e3:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v19

    const-string v20, "syncfile"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1210
    .end local v8           #e3:Ljava/lang/Exception;
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;

    .line 1212
    .restart local v9       #folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    new-instance v16, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-direct/range {v16 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;-><init>()V

    .line 1214
    .local v16, syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 1216
    .local v15, point:I
    invoke-virtual {v9}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getPhotoPathRemote()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1215
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setPhysicsPath(Ljava/lang/String;)V

    .line 1217
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method private getFolderSharePathsByFolderDbankPaths(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    .local p1, syncOperateFileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v0, dbankPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 573
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v7, shareFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    new-instance v4, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 575
    .local v4, operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openSharedFolderOperator(Landroid/content/Context;)V

    .line 578
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_2

    .line 616
    :try_start_1
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 624
    :goto_2
    return-object v7

    .line 564
    .end local v4           #operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    .end local v7           #shareFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 566
    .local v8, syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 568
    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 578
    .end local v8           #syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    .restart local v4       #operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    .restart local v7       #shareFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    :cond_2
    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 580
    .local v3, folderDbankPath:Ljava/lang/String;
    new-instance v6, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-direct {v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;-><init>()V

    .line 581
    .local v6, shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    sget-object v9, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->SharedFolder:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    .line 582
    const-string v11, "FolderPathR"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    .line 583
    const-string v14, "SharePath"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 584
    const-string v14, "FolderType"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 585
    const-string v14, "FolderName"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    .line 586
    const-string v14, "FolderPathR"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    .line 587
    const-string v14, "SharerAccount"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    .line 588
    const-string v14, "SharerName"

    aput-object v14, v12, v13

    .line 581
    invoke-virtual {v4, v9, v11, v3, v12}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->query(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 589
    .local v5, result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    array-length v9, v9

    if-eqz v9, :cond_3

    .line 591
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v11, "3"

    .line 592
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "sharePath of "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 591
    invoke-static {v9, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v9, v9, v11

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setSharePath(Ljava/lang/String;)V

    .line 594
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    const/4 v11, 0x1

    aget-object v9, v9, v11

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setFolderType(I)V

    .line 595
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    const/4 v11, 0x2

    aget-object v9, v9, v11

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setDisplayName(Ljava/lang/String;)V

    .line 596
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    const/4 v11, 0x3

    aget-object v9, v9, v11

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setDbankPath(Ljava/lang/String;)V

    .line 597
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    const/4 v11, 0x4

    aget-object v9, v9, v11

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setSharedAccount(Ljava/lang/String;)V

    .line 598
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    const/4 v11, 0x5

    aget-object v9, v9, v11

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setSharedName(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 608
    .end local v3           #folderDbankPath:Ljava/lang/String;
    .end local v5           #result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v6           #shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    :catch_0
    move-exception v1

    .line 610
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "syncfile"

    invoke-static {v9, v10, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 616
    :try_start_4
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 618
    :catch_1
    move-exception v2

    .line 620
    .local v2, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "syncfile"

    invoke-static {v9, v10, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 603
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v2           #e2:Ljava/lang/Exception;
    .restart local v3       #folderDbankPath:Ljava/lang/String;
    .restart local v5       #result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .restart local v6       #shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v11, "3"

    .line 604
    const-string v12, "only save data whose sharePath is not empty"

    .line 603
    invoke-static {v9, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 613
    .end local v3           #folderDbankPath:Ljava/lang/String;
    .end local v5           #result:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v6           #shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    :catchall_0
    move-exception v9

    .line 616
    :try_start_6
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeSharedFolderOperator()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 622
    :goto_3
    throw v9

    .line 618
    :catch_2
    move-exception v2

    .line 620
    .restart local v2       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "syncfile"

    invoke-static {v10, v11, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 618
    .end local v2           #e2:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 620
    .restart local v2       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "syncfile"

    invoke-static {v9, v10, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private getOriginalFile(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)V
    .locals 5
    .parameter "syncOperateFile"

    .prologue
    .line 881
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;

    .line 882
    const-wide/32 v2, 0x493e0

    .line 883
    const/4 v4, 0x2

    .line 881
    invoke-direct {v1, p1, v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;-><init>(Ljava/lang/Object;JI)V

    .line 884
    .local v1, photoDownloadCallable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/PhotoDownloadCallable;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$OriginalFileDownHandle;

    const-string v2, ""

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$OriginalFileDownHandle;-><init>(Ljava/lang/Object;)V

    .line 885
    .local v0, callable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$OriginalFileDownHandle;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v2

    .line 886
    const/4 v3, 0x0

    .line 885
    invoke-virtual {v2, v1, v0, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableParallel(Lcom/huawei/hicloud/photosharesdk3/logic/call/BaseCallable;Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;Z)Z

    .line 887
    return-void
.end method

.method private getThumbFile(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;)Z
    .locals 14
    .parameter "syncOperateFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 789
    const-string v10, "0"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 790
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v10

    invoke-virtual {v10, v9, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v10

    if-nez v10, :cond_1

    .line 861
    :cond_0
    :goto_0
    return v8

    .line 794
    :cond_1
    const-string v10, "2"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 795
    const-string v10, "1"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 797
    :cond_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/ExecuteCheckManager;->canExecute(ZZ)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 803
    :cond_3
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 805
    .local v1, dot:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    const-string v11, "_thumb"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 807
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 805
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 808
    .local v7, thumbName:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "thumbName:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 810
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, bitmapLocalSavePath:Ljava/lang/String;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "thumb url:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getDownThumbUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    new-instance v6, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 821
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getDownThumbUrl()Ljava/lang/String;

    move-result-object v11

    .line 820
    invoke-direct {v6, v10, v11, v0}, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    .local v6, request:Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->getJSONResponse()V

    .line 826
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "thumb finish:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->isDownloadFlag()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->isDownloadFlag()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 830
    new-instance v5, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 831
    .local v5, operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openFolderPhoto(Landroid/content/Context;)V

    .line 834
    :try_start_0
    new-instance v4, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;

    invoke-direct {v4}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;-><init>()V

    .line 835
    .local v4, folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getCreateTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->setCreateTime(Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v10, "3"

    .line 837
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "download create time:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getCreateTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 836
    invoke-static {v8, v10, v11}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->setPhotoPathRemote(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->setSharedPath(Ljava/lang/String;)V

    .line 840
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->setNew(Z)V

    .line 841
    invoke-virtual {v5, v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->addPhoto(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :try_start_1
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .end local v4           #folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    :goto_1
    move v8, v9

    .line 859
    goto/16 :goto_0

    .line 843
    :catch_0
    move-exception v2

    .line 845
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v10, "download thumb"

    invoke-static {v8, v10, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 851
    :try_start_3
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 853
    :catch_1
    move-exception v3

    .line 855
    .local v3, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v10, "download thumb"

    invoke-static {v8, v10, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 848
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 851
    :try_start_4
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 857
    :goto_2
    throw v8

    .line 853
    :catch_2
    move-exception v3

    .line 855
    .restart local v3       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, "download thumb"

    invoke-static {v9, v10, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 853
    .end local v3           #e2:Ljava/lang/Exception;
    .restart local v4       #folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    :catch_3
    move-exception v3

    .line 855
    .restart local v3       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v10, "download thumb"

    invoke-static {v8, v10, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getThumbUrl(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 722
    .local p1, syncOperateFileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    new-instance v5, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;-><init>(Landroid/content/Context;)V

    .line 723
    .local v5, request:Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 724
    .local v4, pathList:Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 729
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->setFileInfo(Ljava/lang/String;)V

    .line 730
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getAbbr_size()Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->getWidth()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->setWidth(I)V

    .line 731
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getAbbr_size()Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->getHeight()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->setHeight(I)V

    .line 732
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->getJSONResponse()V

    .line 734
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->getJsonBodyStr()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-virtual {v5}, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v2

    .line 738
    .local v2, json:Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 739
    .local v3, keyIter:Ljava/util/Iterator;
    const-string v0, ""

    .line 740
    .local v0, dbankPath:Ljava/lang/String;
    const-string v7, ""

    .line 741
    .local v7, thumbUrl:Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 784
    return-void

    .line 724
    .end local v0           #dbankPath:Ljava/lang/String;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #keyIter:Ljava/util/Iterator;
    .end local v7           #thumbUrl:Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 726
    .local v6, syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->onPause()V

    .line 727
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 743
    .end local v6           #syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    .restart local v0       #dbankPath:Ljava/lang/String;
    .restart local v2       #json:Lorg/json/JSONObject;
    .restart local v3       #keyIter:Ljava/util/Iterator;
    .restart local v7       #thumbUrl:Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dbankPath:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 744
    .restart local v0       #dbankPath:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 745
    const-string v8, " "

    const-string v9, "%20"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "|"

    const-string v10, "%7C"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 756
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 757
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->onPause()V

    .line 760
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 761
    .restart local v6       #syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 763
    const-string v8, ""

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 765
    invoke-virtual {v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setDownThumbUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 769
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method private getTotalFileNum()I
    .locals 7

    .prologue
    .line 1393
    const/4 v3, 0x0

    .line 1394
    .local v3, totalSize:I
    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;-><init>()V

    .line 1395
    .local v2, operate:Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->openFolderPhoto(Landroid/content/Context;)V

    .line 1399
    :try_start_0
    sget-object v4, Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;->FolderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;

    invoke-virtual {v2, v4}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->queryTableSize(Lcom/huawei/hicloud/photosharesdk3/database/DBConstants$TableName;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1409
    :try_start_1
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1417
    :goto_0
    return v3

    .line 1401
    :catch_0
    move-exception v0

    .line 1403
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "syncfile"

    invoke-static {v4, v5, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1409
    :try_start_3
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1411
    :catch_1
    move-exception v1

    .line 1413
    .local v1, e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "syncfile"

    invoke-static {v4, v5, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1406
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #e2:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1409
    :try_start_4
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/database/DBFuncCollector2;->closeFolderPhoto()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1415
    :goto_1
    throw v4

    .line 1411
    :catch_2
    move-exception v1

    .line 1413
    .restart local v1       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "syncfile"

    invoke-static {v5, v6, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1411
    .end local v1           #e2:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 1413
    .restart local v1       #e2:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "syncfile"

    invoke-static {v4, v5, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private notifyUIDelete(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, syncOperateFileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getFolderSharePathsByFolderDbankPaths(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 495
    .local v2, shareFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 502
    return-void

    .line 495
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 498
    .local v1, shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;

    .line 499
    const/4 v4, 0x1

    .line 498
    invoke-direct {v0, v1, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;-><init>(Ljava/lang/Object;I)V

    .line 500
    .local v0, callable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;Z)V

    goto :goto_0
.end method

.method private notifyUiAddLocal(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, syncOperateFileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    const/4 v7, 0x0

    .line 704
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getFolderSharePathsByFolderDbankPaths(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 705
    .local v2, shareFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "notify dir"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 705
    invoke-static {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 717
    return-void

    .line 710
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 713
    .local v1, shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;

    invoke-direct {v0, v1, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;-><init>(Ljava/lang/Object;I)V

    .line 715
    .local v0, callable:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$SyncMessageCallableInnerForFindbug;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->getInstance()Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/call/ThreadPoolManager;->submitCallableSerial(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;Z)V

    goto :goto_0
.end method

.method private queryPhotoListOfOneFolder(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;)Ljava/util/List;
    .locals 12
    .parameter "syncOperate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v2, fileParamsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    new-instance v6, Lcom/huawei/hicloud/photosharesdk3/request/GetPhotoListRequest;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/huawei/hicloud/photosharesdk3/request/GetPhotoListRequest;-><init>(Landroid/content/Context;)V

    .line 309
    .local v6, request:Lcom/huawei/hicloud/photosharesdk3/request/GetPhotoListRequest;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "queryPhotoListOfOneFolder"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/huawei/hicloud/photosharesdk3/request/GetPhotoListRequest;->setFolderPath(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/request/GetPhotoListRequest;->getJSONResponse()V

    .line 315
    invoke-virtual {v6}, Lcom/huawei/hicloud/photosharesdk3/request/GetPhotoListRequest;->getJsonBody()Lorg/json/JSONObject;

    move-result-object v4

    .line 316
    .local v4, jsonObject:Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    const-string v8, "error"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 318
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    const-string v10, "not premission no need sync this dir"

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v8, Lorg/json/JSONException;

    const-string v9, "not premission no need sync this dir"

    invoke-direct {v8, v9}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 323
    :cond_1
    const-string v8, "childList"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 324
    .local v0, childList:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 325
    .local v5, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v5, :cond_2

    .line 361
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-object v2

    .line 327
    :cond_2
    new-instance v7, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    invoke-direct {v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;-><init>()V

    .line 328
    .local v7, syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 329
    .local v1, fileInfo:Lorg/json/JSONObject;
    if-eqz v1, :cond_3

    .line 332
    const-string v8, "File"

    const-string v9, "type"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "createTime"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->checkIsOverTime(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_3

    .line 334
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setPhysicsPath(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setFolderType(Ljava/lang/String;)V

    .line 341
    sget-boolean v8, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->USE_HTTPS:Z

    if-eqz v8, :cond_4

    .line 343
    const-string v8, "sslUrl"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setDownOriginalUrl(Ljava/lang/String;)V

    .line 349
    :goto_1
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setSharePath(Ljava/lang/String;)V

    .line 350
    const-string v8, "createTime"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setCreateTime(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "query create time:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "createTime"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 352
    const-string v11, "### modify time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "modifyTime"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 351
    invoke-static {v8, v9, v10}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v8, "name"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setFileName(Ljava/lang/String;)V

    .line 354
    const-string v8, "md5"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setMd5(Ljava/lang/String;)V

    .line 355
    const-string v8, "size"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setSize(J)V

    .line 357
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 347
    :cond_4
    const-string v8, "url"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->setDownOriginalUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private quickCheckOverTime(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1226
    .local p1, localPhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    .local p2, needDeletePhotos:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "come into quickCheckOverTime"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1238
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1252
    :cond_1
    return-void

    .line 1227
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;

    .line 1229
    .local v0, folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->onPause()V

    .line 1231
    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->checkLocalFileExit(Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1233
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    const-string v4, "quickCheckOverTime thumb not exit"

    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1238
    .end local v0           #folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;

    .line 1240
    .restart local v0       #folderPhoto:Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->onPause()V

    .line 1242
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->checkIsOverTime(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1244
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    const-string v4, "quickCheckOverTime overtime"

    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private statisticForBI(II)V
    .locals 4
    .parameter "uploadNum"
    .parameter "downNum"

    .prologue
    .line 1384
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Report statistic. uploadNum="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",downNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getInstance()Lcom/huawei/hicloud/photosharesdk3/bi/Report;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->addSyncUploadData(Landroid/content/Context;I)V

    .line 1386
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getInstance()Lcom/huawei/hicloud/photosharesdk3/bi/Report;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->addSyncDownloadData(Landroid/content/Context;I)V

    .line 1388
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->getInstance()Lcom/huawei/hicloud/photosharesdk3/bi/Report;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/bi/Report;->sendReportData(Landroid/content/Context;)V

    .line 1389
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1263
    .local v11, timeStamp:J
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "SyncFileCallable call start...."

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->readAuthInfoFromFile(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v4

    .line 1268
    .local v4, authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getPhoto_num()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 1270
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getPhoto_num()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileCount:I

    .line 1272
    :cond_0
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getPhoto_exp()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 1274
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getPhoto_exp()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    const-wide/32 v16, 0x5265c00

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileTime:J

    .line 1277
    :cond_1
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "SyncFileCallable mLimitFileCount:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileCount:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "SyncFileCallable mLimitFileTime:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->mLimitFileTime:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->filterFilesByCreateTime()V

    .line 1284
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    .local v6, deleteLocalArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1286
    .local v5, deleteCloudArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    .local v3, addLocalArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    .local v2, addCloudArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    const/4 v10, 0x0

    .line 1298
    .local v10, syncOperateList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getCallParam()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/util/ArrayList;

    if-nez v14, :cond_2

    .line 1300
    const/4 v14, 0x0

    .line 1379
    :goto_0
    return-object v14

    .line 1303
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getCallParam()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #syncOperateList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    check-cast v10, Ljava/util/ArrayList;

    .line 1305
    .restart local v10       #syncOperateList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    .line 1307
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v15

    const-string v16, "3"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v14, "file module name:"

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1308
    const/4 v14, 0x0

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    invoke-virtual {v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1307
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    :cond_3
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "file resultSyncOperateList :"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_8

    .line 1336
    :goto_2
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    .line 1337
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, ";deletelocal"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1338
    const-string v17, ";deletecloud"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1339
    const-string v17, "addlocal:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1340
    const-string v17, ";addcloud"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1337
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1336
    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->delOrAddCloudList:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->delOrAddCloudList:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1346
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->statisticForBI(II)V

    .line 1348
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    .line 1350
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->deleteLocalFileList(Ljava/util/List;)V

    .line 1352
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 1354
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->deleteCloudFileList(Ljava/util/List;)V

    .line 1359
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTotalFileNum()I

    move-result v13

    .line 1362
    .local v13, totalNum:I
    const/4 v14, -0x1

    if-le v13, v14, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 1367
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->addLocalFileList(Ljava/util/List;)V

    .line 1373
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    .line 1375
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->addCloudFileList(Ljava/util/List;)V

    .line 1378
    :cond_7
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "SyncFileCallable call end...."

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1311
    .end local v13           #totalNum:I
    :cond_8
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 1314
    .local v9, syncOperateFolder:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->checkOperateType(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_9

    .line 1316
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v15, "3"

    const-string v16, "checkOperateType exit true!"

    invoke-static/range {v14 .. v16}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1319
    :cond_9
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v16, "3"

    const-string v17, "checkOperateType exit false!"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const/4 v8, 0x0

    .line 1324
    .local v8, resultMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List;>;"
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->fileCompare(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1331
    :goto_3
    const-string v14, "cdl"

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1332
    const-string v14, "cdc"

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1333
    const-string v14, "cal"

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1334
    const-string v14, "cac"

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1326
    :catch_0
    move-exception v7

    .line 1328
    .local v7, e:Lorg/json/JSONException;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v14

    const-string v16, "query cloud file fail"

    move-object/from16 v0, v16

    invoke-static {v14, v0, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public isLastAddLocal(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 7
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 983
    .local p2, addLocalFiles:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 984
    .local v2, isLast:Ljava/lang/Boolean;
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 985
    .local v1, index:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 987
    .local v3, size:I
    add-int/lit8 v5, v3, -0x1

    if-ge v1, v5, :cond_0

    .line 989
    add-int/lit8 v0, v1, 0x1

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 999
    .end local v0           #i:I
    .end local v2           #isLast:Ljava/lang/Boolean;
    :cond_0
    :goto_1
    return-object v2

    .line 991
    .restart local v0       #i:I
    .restart local v2       #isLast:Ljava/lang/Boolean;
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 993
    .local v4, temp:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getPhysicsPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 995
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 989
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public sendContentChangeNf(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1010
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    const-string v7, "come into sendContentChangeNf"

    invoke-static {v5, v6, v7}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1053
    return-void

    .line 1011
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 1013
    .local v4, syncOperateFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sendContentChangeNf current name:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1015
    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1016
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1013
    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "before sendContentChangeNf size = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1018
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->delOrAddCloudList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1017
    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->delOrAddCloudList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1020
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "after sendContentChangeNf size = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1021
    iget-object v9, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->delOrAddCloudList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1020
    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const/4 v1, 0x0

    .line 1024
    .local v1, nextHasInList:Z
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->delOrAddCloudList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1033
    :goto_1
    if-nez v1, :cond_0

    .line 1035
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-direct {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;-><init>()V

    .line 1036
    .local v3, shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFolderType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setFolderType(I)V

    .line 1037
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setSharePath(Ljava/lang/String;)V

    .line 1039
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    const-string v8, "ok sendContentChangeNf"

    invoke-static {v6, v7, v8}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    new-instance v2, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;

    .line 1041
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1040
    invoke-direct {v2, v6}, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;-><init>(Landroid/content/Context;)V

    .line 1042
    .local v2, requestNf:Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v6

    const-string v7, "0"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 1044
    const-string v6, "myphoto"

    invoke-virtual {v2, v6}, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;->setSharePath(Ljava/lang/String;)V

    .line 1050
    :goto_2
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;->getJSONResponse()V

    goto/16 :goto_0

    .line 1024
    .end local v2           #requestNf:Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;
    .end local v3           #shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 1026
    .local v0, addSyncOperateFileOnly:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1028
    const/4 v1, 0x1

    .line 1029
    goto :goto_1

    .line 1048
    .end local v0           #addSyncOperateFileOnly:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    .restart local v2       #requestNf:Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;
    .restart local v3       #shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
    :cond_4
    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getSharePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;->setSharePath(Ljava/lang/String;)V

    goto :goto_2
.end method
