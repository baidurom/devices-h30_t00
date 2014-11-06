.class public Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "DelMyReceivedFolderReq.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DelMyReceivedFolderReq"


# instance fields
.field private addReceiverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delReceiverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shareName:Ljava/lang/String;

.field private sharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .parameter "handler"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 42
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 25
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->sharePath:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->shareName:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->addReceiverList:Ljava/util/ArrayList;

    .line 30
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->delReceiverList:Ljava/util/ArrayList;

    .line 43
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 45
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 72
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 73
    .local v1, gson:Lcom/google/gson/Gson;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;-><init>()V

    .line 74
    .local v0, cusr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->setCode(I)V

    .line 75
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->sharePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->setSharePath(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->shareName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->setShareName(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->addReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->setAddReceiverList(Ljava/util/List;)V

    .line 78
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->delReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->setDelReceiverList(Ljava/util/List;)V

    .line 79
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public getIsMyPhoto()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method protected parseJSONResponse(Lorg/json/JSONObject;)Z
    .locals 9
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 85
    if-eqz p1, :cond_0

    .line 87
    const-string v3, "code"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, code:I
    if-nez v0, :cond_0

    .line 89
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 90
    .local v1, listMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v3, "add"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->addReceiverList:Ljava/util/ArrayList;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v3, "del"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->delReceiverList:Ljava/util/ArrayList;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v2, path:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->sharePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v3, "sharepath"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    invoke-virtual {v4, v5, v7, v7, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    .end local v0           #code:I
    .end local v1           #listMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v2           #path:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return v8

    .line 100
    :cond_0
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 101
    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->sharePath:Ljava/lang/String;

    .line 100
    invoke-virtual {v4, v5, v8, v7, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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
    .line 58
    .local p1, receiverList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->addReceiverList:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public setDelReceiverList(Ljava/util/ArrayList;)V
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
    .line 62
    .local p1, receiverList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->delReceiverList:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method public setShareName(Ljava/lang/String;)V
    .locals 3
    .parameter "folderName"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->shareName:Ljava/lang/String;

    .line 53
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "DelMyReceivedFolderReq"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->shareName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/DelMyReceivedFolderReq;->sharePath:Ljava/lang/String;

    .line 49
    return-void
.end method
