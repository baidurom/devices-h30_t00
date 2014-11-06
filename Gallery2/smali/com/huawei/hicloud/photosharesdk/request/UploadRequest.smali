.class public Lcom/huawei/hicloud/photosharesdk/request/UploadRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/Request;
.source "UploadRequest.java"

# interfaces
.implements Lcom/huawei/hicloud/photosharesdk/request/connection/IRequestCallback;


# instance fields
.field protected BOUNDARY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private data:[B

.field private isMyPhoto:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 2
    .parameter "interfaceUrl"
    .parameter "context"
    .parameter "isMyPhoto"

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0, p1}, Lcom/huawei/hicloud/photosharesdk/request/Request;-><init>(Ljava/lang/String;)V

    .line 19
    const-class v0, Lcom/huawei/hicloud/photosharesdk/request/UploadRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/UploadRequest;->TAG:Ljava/lang/String;

    .line 22
    iput-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/UploadRequest;->isMyPhoto:Z

    .line 34
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 35
    iput-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 36
    iput-boolean p3, p0, Lcom/huawei/hicloud/photosharesdk/request/UploadRequest;->isMyPhoto:Z

    .line 37
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method protected createConnectionTask()Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpRequestUrl:Ljava/lang/String;

    .line 74
    const/16 v2, 0x2710

    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk/request/UploadRequest;->isMyPhoto:Z

    .line 73
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;-><init>(Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;Ljava/lang/String;IZ)V

    .line 75
    .local v0, uploadTask:Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/UploadRequest;->data:[B

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->setDataBuf([B)V

    .line 76
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/UploadRequest;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/RequestTask;->setRandomStr(Ljava/lang/String;)V

    .line 77
    return-object v0
.end method

.method public getIsMyPhoto()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/UploadRequest;->isMyPhoto:Z

    return v0
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public onReceiveData([B)V
    .locals 7
    .parameter "data"

    .prologue
    .line 84
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 85
    .local v1, str:Ljava/lang/String;
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 86
    const-string v2, "Response"

    invoke-static {v2, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 88
    const/16 v4, 0x12c

    iget v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    const/4 v6, 0x0

    .line 87
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #str:Ljava/lang/String;
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/UploadRequest;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setContent([B)V
    .locals 1
    .parameter "a"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/UploadRequest;->data:[B

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/UploadRequest;->data:[B

    goto :goto_0
.end method

.method public setFusionCode(I)V
    .locals 0
    .parameter "fusionCode"

    .prologue
    .line 62
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 63
    return-void
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
    .line 46
    .local p1, paramsters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 48
    return-void
.end method

.method public setRandom(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/UploadRequest;->BOUNDARY:Ljava/lang/String;

    .line 41
    return-void
.end method
