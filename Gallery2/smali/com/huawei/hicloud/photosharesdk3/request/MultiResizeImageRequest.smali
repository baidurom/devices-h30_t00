.class public Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
.source "MultiResizeImageRequest.java"


# instance fields
.field private fileInfo:Ljava/lang/String;

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->fileInfo:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 5

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "files"

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->fileInfo:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "height"

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "nsp_sid"

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "nsp_svc"

    const-string v3, "nsp.vfs.fpe.image.resize"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "nsp_ts"

    .line 75
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getCurrentTimeMillis()J

    move-result-wide v3

    .line 74
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->USE_HTTPS:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    .line 79
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "options"

    const-string v3, "{\"isSslUrl\":true,\"exif\":true}"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "width"

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "nsp_key"

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v3

    .line 90
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    .line 89
    invoke-virtual {p0, v3, v4}, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->getKeyData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    .line 86
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "options"

    const-string v3, "{\"exif\":true}"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFileInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->fileInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setFileInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "fileInfo"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->fileInfo:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 47
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->height:I

    .line 48
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 42
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/MultiResizeImageRequest;->width:I

    .line 43
    return-void
.end method
