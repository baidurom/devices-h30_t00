.class public Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "QueryShareFolderRequest.java"


# instance fields
.field private scope:I

.field private sharePath:Ljava/lang/String;

.field private taskId:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .parameter "handler"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 28
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 17
    iput v1, p0, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->scope:I

    .line 23
    iput v1, p0, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->taskId:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->sharePath:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 30
    iput-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 32
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 71
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 72
    .local v1, gson:Lcom/google/gson/Gson;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;-><init>()V

    .line 73
    .local v0, cusr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->setCode(I)V

    .line 74
    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->scope:I

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->setScope(I)V

    .line 75
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->sharePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->setSharePath(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 82
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

    .line 49
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 50
    const-string v3, "QueryShareFolderRequest"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    if-eqz p1, :cond_1

    .line 53
    const-string v3, "code"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, code:I
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 55
    .local v2, gson:Lcom/google/gson/Gson;
    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    const-class v4, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;

    .line 56
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;

    .line 58
    .local v1, cqsr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 59
    const/4 v6, 0x0

    iget v7, p0, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->taskId:I

    .line 58
    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    .end local v0           #code:I
    .end local v1           #cqsr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;
    .end local v2           #gson:Lcom/google/gson/Gson;
    :goto_0
    return v8

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 64
    iget v6, p0, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->taskId:I

    iget-object v7, p0, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->sharePath:Ljava/lang/String;

    .line 63
    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setScope(I)V
    .locals 0
    .parameter "scope"

    .prologue
    .line 35
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->scope:I

    .line 36
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->sharePath:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTaskId(I)V
    .locals 0
    .parameter "taskId"

    .prologue
    .line 43
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/QueryShareFolderRequest;->taskId:I

    .line 44
    return-void
.end method
