.class public Lcom/huawei/hicloud/photosharesdk/request/DelShareFolderRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "DelShareFolderRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DelShareFolderRequest"


# instance fields
.field private sharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 32
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/DelShareFolderRequest;->sharePath:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 35
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 48
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 49
    .local v1, gson:Lcom/google/gson/Gson;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteShareReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteShareReq;-><init>()V

    .line 50
    .local v0, cusr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteShareReq;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteShareReq;->setCode(I)V

    .line 51
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/DelShareFolderRequest;->sharePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteShareReq;->setSharePath(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 75
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

    .line 58
    if-eqz p1, :cond_0

    .line 60
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, code:I
    if-nez v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 63
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/DelShareFolderRequest;->sharePath:Ljava/lang/String;

    .line 62
    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .end local v0           #code:I
    :goto_0
    return v6

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 68
    const-string v4, "Error"

    .line 67
    invoke-virtual {v2, v3, v6, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "shareName"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/DelShareFolderRequest;->sharePath:Ljava/lang/String;

    .line 39
    return-void
.end method
