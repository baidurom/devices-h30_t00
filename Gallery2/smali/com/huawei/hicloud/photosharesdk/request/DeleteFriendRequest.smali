.class public Lcom/huawei/hicloud/photosharesdk/request/DeleteFriendRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "DeleteFriendRequest.java"


# instance fields
.field private account:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 18
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DeleteFriendRequest;->account:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 22
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;-><init>()V

    .line 49
    .local v0, cdfr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;->setCode(I)V

    .line 50
    const-class v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;->setInfo(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/DeleteFriendRequest;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;->setAccount(Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 53
    .local v1, gson:Lcom/google/gson/Gson;
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public getIsMyPhoto()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 65
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

    .line 31
    if-eqz p1, :cond_0

    .line 33
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 34
    .local v0, code:I
    if-nez v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 36
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/DeleteFriendRequest;->account:Ljava/lang/String;

    .line 35
    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    .end local v0           #code:I
    :goto_0
    return v6

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 41
    const-string v4, "Error"

    .line 40
    invoke-virtual {v2, v3, v6, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "friendAccount"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/DeleteFriendRequest;->account:Ljava/lang/String;

    .line 26
    return-void
.end method
