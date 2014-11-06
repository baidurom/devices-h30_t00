.class public Lcom/huawei/hicloud/photosharesdk3/request/UploadInitRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
.source "UploadInitRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadInitRequest"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "interfaceUrl"

    .prologue
    .line 40
    invoke-direct {p0, p2}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 43
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onReceiveData([B)V
    .locals 4
    .parameter "data"

    .prologue
    .line 70
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 71
    .local v1, str:Ljava/lang/String;
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBodyStr:Ljava/lang/String;

    .line 72
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBody:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1           #str:Ljava/lang/String;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "UploadInitRequest"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
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
    .line 56
    .local p1, paramsters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    .line 58
    return-void
.end method
