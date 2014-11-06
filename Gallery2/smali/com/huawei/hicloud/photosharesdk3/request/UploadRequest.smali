.class public Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/Request;
.source "UploadRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected boundary:Ljava/lang/String;

.field private data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "interfaceUrl"

    .prologue
    .line 47
    invoke-direct {p0, p2}, Lcom/huawei/hicloud/photosharesdk3/request/Request;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 50
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected createConnectionTask()Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/RequestTask;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->httpRequestUrl:Ljava/lang/String;

    const/16 v2, 0x2710

    invoke-direct {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/request/connection/RequestTask;-><init>(Ljava/lang/String;I)V

    .line 99
    .local v0, uploadTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/RequestTask;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->data:[B

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/RequestTask;->setDataBuf([B)V

    .line 100
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/connection/RequestTask;->setRandomStr(Ljava/lang/String;)V

    .line 101
    return-object v0
.end method

.method public onReceiveData([B)V
    .locals 4
    .parameter "receiveData"

    .prologue
    const/4 v3, 0x0

    .line 114
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 115
    .local v1, str:Ljava/lang/String;
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 117
    const-string v2, "Response"

    invoke-static {v2, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBodyStr:Ljava/lang/String;

    .line 122
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBody:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    .end local v1           #str:Ljava/lang/String;
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->TAG:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 133
    .local v0, e:Lorg/json/JSONException;
    sget-object v2, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->TAG:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
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
    .line 66
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->data:[B

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->data:[B

    goto :goto_0
.end method

.method public setFusionCode(I)V
    .locals 0
    .parameter "fusionCode"

    .prologue
    .line 78
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->fusionCode:I

    .line 79
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
    .line 60
    .local p1, paramsters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    .line 62
    return-void
.end method

.method public setRandom(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/UploadRequest;->boundary:Ljava/lang/String;

    .line 55
    return-void
.end method
