.class public Lcom/huawei/hicloud/photosharesdk/request/ShareResultChangeRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "ShareResultChangeRequest.java"


# instance fields
.field private csrr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 19
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareResultChangeRequest;->csrr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;

    .line 20
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 22
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareResultChangeRequest;->csrr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->setCode(I)V

    .line 55
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareResultChangeRequest;->csrr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;

    const-class v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->setInfo(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 57
    .local v0, gson:Lcom/google/gson/Gson;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareResultChangeRequest;->csrr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public getIsMyPhoto()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 33
    if-eqz p1, :cond_1

    .line 35
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 36
    .local v0, code:I
    if-nez v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 38
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareResultChangeRequest;->csrr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;

    .line 37
    invoke-virtual {v2, v3, v6, v6, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    .end local v0           #code:I
    :goto_0
    return v5

    .line 41
    .restart local v0       #code:I
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 42
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareResultChangeRequest;->csrr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;

    .line 41
    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 46
    .end local v0           #code:I
    :cond_1
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    const-string v4, "Error"

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setShareResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "friendAccount"
    .parameter "result"
    .parameter "sharePath"
    .parameter "shareName"

    .prologue
    .line 26
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;

    .line 27
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareResultChangeRequest;->csrr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;

    .line 28
    return-void
.end method
