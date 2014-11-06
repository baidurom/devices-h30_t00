.class public Lcom/huawei/hicloud/photosharesdk/request/UploadInitRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "UploadInitRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadInitRequest"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 1
    .parameter "interfaceUrl"
    .parameter "context"
    .parameter "isMyPhoto"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 36
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public onReceiveData([B)V
    .locals 7
    .parameter "data"

    .prologue
    .line 62
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 63
    .local v1, str:Ljava/lang/String;
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "UploadInitResponse"

    invoke-static {v2, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 66
    const/16 v4, 0x12c

    iget v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    const/4 v6, 0x0

    .line 65
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1           #str:Ljava/lang/String;
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "UploadInitRequest"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseJSONResponse(Lorg/json/JSONObject;)Z
    .locals 1
    .parameter "json"

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public setHeader(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, paramsters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 50
    return-void
.end method
