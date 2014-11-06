.class public Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
.source "RemoveFilesRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "=== RemoveFilesRequest ==="


# instance fields
.field private fileInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;->fileInfo:Ljava/lang/String;

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
    .locals 6

    .prologue
    .line 77
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v0

    .line 78
    .local v0, authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    .line 79
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "files"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;->fileInfo:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_sid"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_svc"

    const-string v4, "nsp.vfs.rmfile"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_ts"

    .line 83
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 82
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_key"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    invoke-virtual {p0, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;->getKeyData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public getFileInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;->fileInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setFileInfo(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, photoInfo:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 58
    .local v0, fileNames:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 59
    .local v1, i:I
    const-string v3, "=== RemoveFilesRequest ==="

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "i:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",photoInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;->fileInfo:Ljava/lang/String;

    .line 66
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "=== RemoveFilesRequest ==="

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/RemoveFilesRequest;->fileInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void

    .line 60
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;

    .line 62
    .local v2, photo:Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
    const-string v4, "=== RemoveFilesRequest ==="

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "i:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",getDbankPath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->getDbankPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method
