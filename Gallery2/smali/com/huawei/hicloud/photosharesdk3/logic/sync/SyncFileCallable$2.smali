.class Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$2;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;
.source "SyncFileCallable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->addCloudFileList(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$2;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;

    .line 936
    invoke-direct {p0, p2}, Lcom/huawei/hicloud/photosharesdk3/logic/call/HandleCallable;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Object;)V
    .locals 6
    .parameter "callResult"

    .prologue
    .line 944
    const/4 v0, 0x0

    .line 945
    .local v0, result:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    instance-of v2, p1, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 947
    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 949
    :cond_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "upload result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .local v1, syncOperateFileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable$2;->this$0:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;

    invoke-virtual {v2, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFileCallable;->sendContentChangeNf(Ljava/util/List;)V

    .line 960
    return-void
.end method
