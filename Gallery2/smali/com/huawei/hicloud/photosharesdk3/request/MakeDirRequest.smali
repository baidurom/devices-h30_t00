.class public Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
.source "MakeDirRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "=== MakeDirRequest ==="


# instance fields
.field private fileInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;->fileInfo:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 45
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 6

    .prologue
    .line 63
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "MakeDirRequest--files"

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;->fileInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v0

    .line 68
    .local v0, authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_1

    .line 70
    const-string v1, "=== MakeDirRequest ==="

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "=== MakeDirRequest ==="

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "secret:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    .line 74
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "files"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;->fileInfo:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_sid"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_svc"

    const-string v4, "nsp.vfs.mkfile"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_ts"

    .line 78
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 77
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_key"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    invoke-virtual {p0, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;->getKeyData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public getFileInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;->fileInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setFileInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "fileInfo"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/MakeDirRequest;->fileInfo:Ljava/lang/String;

    .line 55
    return-void
.end method
