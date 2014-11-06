.class public Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;
.super Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
.source "CreateShareReqToJPL.java"


# instance fields
.field private receiverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;",
            ">;"
        }
    .end annotation
.end field

.field private shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;


# direct methods
.method public constructor <init>(Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;)V
    .locals 2
    .parameter "folder"

    .prologue
    const/4 v1, 0x0

    .line 62
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    .line 34
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->receiverList:Ljava/util/List;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 64
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    .line 65
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getShareName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setShareName(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setSharePath(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getSharer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setSharer(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getPhysicsPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setPhysicsPath(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->getRecevierList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setReceiverList(Ljava/util/List;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V
    .locals 2
    .parameter "sharePath"
    .parameter "shareFolder"

    .prologue
    const/4 v1, 0x0

    .line 45
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    .line 34
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->receiverList:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 47
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    .line 48
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setShareName(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-virtual {v0, p1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setSharePath(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getSharedAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setSharer(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-virtual {p2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDbankPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setPhysicsPath(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->receiverList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setReceiverList(Ljava/util/List;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 94
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 95
    .local v1, gson:Lcom/google/gson/Gson;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;-><init>()V

    .line 96
    .local v0, ccsr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;->setCode(I)V

    .line 97
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;->setShareInfo(Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;)V

    .line 98
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonData:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public createShareToJPL(Ljava/lang/String;)V
    .locals 1
    .parameter "sharePath"

    .prologue
    .line 85
    const/16 v0, 0xfd

    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->setFusionCode(I)V

    .line 86
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->getJSONResponse()V

    .line 87
    return-void
.end method

.method public setReceiverList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, receiveList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateShareReqToJPL;->receiverList:Ljava/util/List;

    .line 75
    return-void
.end method
