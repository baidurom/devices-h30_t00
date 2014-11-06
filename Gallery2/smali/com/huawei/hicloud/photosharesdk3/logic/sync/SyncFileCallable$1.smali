.class Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$1;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;
.source "SyncFileCallable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->deleteCloudFileList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;


# direct methods
.method constructor <init>(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$1;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;

    .line 527
    invoke-direct {p0, p2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Object;)V
    .locals 4
    .parameter "callResult"

    .prologue
    .line 532
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    const-string v3, "deleteCloudFileList callback"

    invoke-static {v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 538
    check-cast v0, Ljava/util/List;

    .line 539
    .local v0, syncOperateFileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$1;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;

    invoke-virtual {v1, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->sendContentChangeNf(Ljava/util/List;)V

    .line 541
    .end local v0           #syncOperateFileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    :cond_0
    return-void
.end method
