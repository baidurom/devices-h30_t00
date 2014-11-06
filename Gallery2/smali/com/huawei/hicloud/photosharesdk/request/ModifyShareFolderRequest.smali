.class public Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "ModifyShareFolderRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModifyShareFolderRequest"


# instance fields
.field private addReceiverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delReceiverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .parameter "handler"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 24
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 26
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;->addReceiverList:Ljava/util/List;

    .line 28
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;->delReceiverList:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 42
    iput-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 43
    iput-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->isMyPhoto:Z

    .line 44
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 65
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 66
    .local v1, gson:Lcom/google/gson/Gson;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;-><init>()V

    .line 67
    .local v0, cusr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->setCode(I)V

    .line 68
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->setShareName(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getSharePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->setSharePath(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;->addReceiverList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->setAddReceiverList(Ljava/util/List;)V

    .line 71
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;->delReceiverList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->setDelReceiverList(Ljava/util/List;)V

    .line 72
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method protected parseJSONResponse(Lorg/json/JSONObject;)Z
    .locals 7
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    if-eqz p1, :cond_0

    .line 80
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, code:I
    if-nez v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 83
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 82
    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .end local v0           #code:I
    :goto_0
    return v6

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 88
    const-string v4, "Error"

    .line 87
    invoke-virtual {v2, v3, v6, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setAddReceiverList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, receiverList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;->addReceiverList:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setDelReceiverList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, receiverList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;->delReceiverList:Ljava/util/List;

    .line 56
    return-void
.end method

.method public setShareFolder(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;)V
    .locals 0
    .parameter "shareFolder"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/ModifyShareFolderRequest;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 48
    return-void
.end method
