.class Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$SyncMessageCallableInnerForFindbug;
.super Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;
.source "MyPhotoStreamLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncMessageCallableInnerForFindbug"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "callParam"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncMessageCallable;-><init>(Ljava/lang/Object;)V

    .line 193
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
    .line 198
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$SyncMessageCallableInnerForFindbug;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "addLocalFileList sendContentChange"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v1, v2, v0}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$SyncMessageCallableInnerForFindbug;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hicloud/photosharesdk/settings/DirHelper;->getDirInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getBaseDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDbankPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/logic/MyPhotoStreamLogic$SyncMessageCallableInnerForFindbug;->getCallParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getFolderType()I

    move-result v0

    .line 205
    const/4 v3, 0x0

    .line 201
    invoke-static {v1, v2, v0, v3}, Lcom/huawei/hicloud/photosharesdk/broadcast/sender/UIRefreshSender;->sendContentChange(Landroid/content/Context;Ljava/lang/String;II)V

    .line 206
    const/4 v0, 0x0

    return-object v0
.end method
