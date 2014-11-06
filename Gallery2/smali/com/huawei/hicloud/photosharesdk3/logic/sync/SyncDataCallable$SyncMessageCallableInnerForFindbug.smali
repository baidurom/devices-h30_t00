.class Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;
.super Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;
.source "SyncDataCallable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncMessageCallableInnerForFindbug"
.end annotation


# instance fields
.field private broadcastType:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .parameter "callParam"
    .parameter "broadType"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;-><init>(Ljava/lang/Object;)V

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->broadcastType:I

    .line 180
    iput p2, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->broadcastType:I

    .line 181
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    if-eqz v0, :cond_1

    .line 188
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "sendFolderChange:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v1, v2, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getFolderType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->broadcastType:I

    .line 191
    invoke-static {v1, v2, v0, v3}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendFolderChange(Landroid/content/Context;Ljava/lang/String;II)V

    .line 205
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "sendFolderChange:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderPathRemote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v1, v2, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 201
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getSharePath()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->getFolderType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 203
    iget v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncDataCallable$SyncMessageCallableInnerForFindbug;->broadcastType:I

    .line 200
    invoke-static {v1, v2, v0, v3}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendFolderChange(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0
.end method
