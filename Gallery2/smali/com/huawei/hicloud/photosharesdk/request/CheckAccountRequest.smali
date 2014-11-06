.class public Lcom/huawei/hicloud/photosharesdk/request/CheckAccountRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "CheckAccountRequest.java"


# instance fields
.field private accountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 23
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CheckAccountRequest;->accountList:Ljava/util/ArrayList;

    .line 24
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;-><init>()V

    .line 62
    .local v0, cacr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/CheckAccountRequest;->accountList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;->setAccList(Ljava/util/List;)V

    .line 63
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;->setCode(I)V

    .line 64
    const-class v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendReq;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;->setInfo(Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 66
    .local v1, gson:Lcom/google/gson/Gson;
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public getIsMyPhoto()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 78
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 35
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 36
    const-string v3, "CheckAccountRequest"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    if-eqz p1, :cond_2

    .line 39
    const-string v3, "code"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 40
    .local v1, code:I
    if-nez v1, :cond_1

    .line 41
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 42
    .local v2, gson:Lcom/google/gson/Gson;
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    const-class v4, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckRsp;

    .line 42
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckRsp;

    .line 44
    .local v0, cacr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckRsp;
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 45
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckRsp;->getAccUidMap()Ljava/util/Map;

    move-result-object v6

    .line 44
    invoke-virtual {v4, v5, v8, v8, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    .end local v0           #cacr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckRsp;
    .end local v1           #code:I
    .end local v2           #gson:Lcom/google/gson/Gson;
    :goto_0
    return v7

    .line 48
    .restart local v1       #code:I
    :cond_1
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 49
    const-string v6, "Error"

    .line 48
    invoke-virtual {v4, v5, v7, v8, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 53
    .end local v1           #code:I
    :cond_2
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 54
    const-string v6, "Error"

    .line 53
    invoke-virtual {v4, v5, v7, v8, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setShareResult(Ljava/util/ArrayList;)V
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
    .line 29
    .local p1, friendAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/CheckAccountRequest;->accountList:Ljava/util/ArrayList;

    .line 30
    return-void
.end method
