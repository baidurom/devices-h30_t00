.class public Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "MakeDirRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "=== MakeDirRequest ==="


# instance fields
.field private displayName:Ljava/lang/String;

.field private fileInfo:Ljava/lang/String;

.field shareFolderReq:Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 53
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->fileInfo:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->displayName:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "shareFolderRequest"
    .parameter "interfaceUrl"
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p2}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->fileInfo:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->displayName:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->shareFolderReq:Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;

    .line 62
    iput-object p3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 64
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 6

    .prologue
    .line 73
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 74
    const-string v1, "MakeDirRequest--files"

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->fileInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v0

    .line 77
    .local v0, authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 78
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "files"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->fileInfo:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_sid"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_svc"

    .line 81
    const-string v4, "nsp.vfs.mkfile"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

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

    .line 84
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_key"

    .line 85
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 84
    invoke-virtual {p0, v4, v5}, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->getKeyData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->fileInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMyPhoto()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected parseJSONResponse(Lorg/json/JSONObject;)Z
    .locals 6
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    sget-boolean v2, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v2, :cond_0

    .line 92
    const-string v2, "=== MakeDirRequest ==="

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    const-string v2, "successList"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "successList"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->shareFolderReq:Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;

    if-eqz v2, :cond_2

    .line 98
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->shareFolderReq:Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->createShare()V

    .line 108
    :goto_0
    return v0

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 106
    const-string v5, "Error"

    .line 105
    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    move v0, v1

    .line 108
    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->displayName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setFileInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "fileInfo"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->fileInfo:Ljava/lang/String;

    .line 41
    return-void
.end method
