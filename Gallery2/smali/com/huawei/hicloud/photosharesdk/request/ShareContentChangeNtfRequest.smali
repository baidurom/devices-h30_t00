.class public Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "ShareContentChangeNtfRequest.java"


# instance fields
.field private cscc:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

.field private photoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;"
        }
    .end annotation
.end field

.field private sharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .parameter "handler"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 25
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 18
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->cscc:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    .line 20
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->sharePath:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->photoList:Ljava/util/ArrayList;

    .line 26
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 28
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->cscc:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;->setCode(I)V

    .line 64
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->cscc:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->sharePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;->setSharePath(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->cscc:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    const-class v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;->setInfo(Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 67
    .local v0, gson:Lcom/google/gson/Gson;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->cscc:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public getIsMyPhoto()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 79
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 42
    if-eqz p1, :cond_1

    .line 44
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, code:I
    if-nez v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 47
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->photoList:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v2, v3, v6, v6, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 57
    .end local v0           #code:I
    :goto_0
    return v5

    .line 50
    .restart local v0       #code:I
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 51
    const-string v4, "Error"

    .line 50
    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 55
    .end local v0           #code:I
    :cond_1
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 56
    const-string v4, "Error"

    .line 55
    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setPhotoList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, photoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->photoList:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 1
    .parameter "sharePath"

    .prologue
    .line 31
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->cscc:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    .line 32
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/ShareContentChangeNtfRequest;->sharePath:Ljava/lang/String;

    .line 33
    return-void
.end method