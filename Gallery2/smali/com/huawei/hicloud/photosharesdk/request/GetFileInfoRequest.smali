.class public Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "GetFileInfoRequest.java"


# instance fields
.field downReq:Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;

.field private fileInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Z)V
    .locals 1
    .parameter "handler"
    .parameter "context"
    .parameter "isMyPhoto"

    .prologue
    .line 47
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;->fileInfo:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 50
    iput-boolean p3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->isMyPhoto:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 1
    .parameter "request"
    .parameter "httpUrl"
    .parameter "context"
    .parameter "isMyPhoto"

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;->fileInfo:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 57
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;->downReq:Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 59
    iput-boolean p4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->isMyPhoto:Z

    .line 60
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 6

    .prologue
    .line 119
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v0

    .line 120
    .local v0, authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 121
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 122
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 123
    const-string v3, "fields"

    .line 124
    const-string v4, "[\"size\", \"createTime\", \"modifyTime\", \"url\",\"fileCount\", \"dirCount\", \"md5\"]"

    .line 122
    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "files"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;->fileInfo:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_sid"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_svc"

    .line 128
    const-string v4, "nsp.vfs.getattr"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_ts"

    .line 130
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 129
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_key"

    .line 132
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 131
    invoke-virtual {p0, v4, v5}, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;->getKeyData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public getFileInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;->fileInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMyPhoto()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public onConnError(ILjava/lang/String;)V
    .locals 3
    .parameter "code"
    .parameter "message"

    .prologue
    .line 105
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "GetFileInfoRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpRequestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;->downReq:Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;->downReq:Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->onConnError(ILjava/lang/String;)V

    .line 111
    :cond_1
    return-void
.end method

.method protected parseJSONResponse(Lorg/json/JSONObject;)Z
    .locals 8
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    sget-boolean v5, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v5, :cond_0

    .line 74
    const-string v5, "JSON Response: "

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    const-string v5, "successList"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    const-string v5, "successList"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 77
    .local v3, newAppArray:Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 78
    .local v2, length:I
    const/4 v1, 0x0

    .line 79
    .local v1, fileInfo:Lorg/json/JSONObject;
    if-lez v2, :cond_1

    .line 80
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    const-string v5, "url"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, downUrl:Ljava/lang/String;
    const-string v5, "size"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, size:Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;->downReq:Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;

    if-eqz v5, :cond_1

    .line 87
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;->downReq:Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/huawei/hicloud/photosharesdk/request/DownloadFileRequest;->startDownload(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    .end local v0           #downUrl:Ljava/lang/String;
    .end local v1           #fileInfo:Lorg/json/JSONObject;
    .end local v2           #length:I
    .end local v3           #newAppArray:Lorg/json/JSONArray;
    .end local v4           #size:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    return v5
.end method

.method public setFileInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "fileInfo"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/GetFileInfoRequest;->fileInfo:Ljava/lang/String;

    .line 37
    return-void
.end method
