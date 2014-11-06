.class public Lcom/huawei/hicloud/photosharesdk/request/UnbindPushRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "UnbindPushRequest.java"


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 23
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 25
    iput-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 26
    iput-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->isMyPhoto:Z

    .line 27
    invoke-virtual {p0, v1}, Lcom/huawei/hicloud/photosharesdk/request/UnbindPushRequest;->setIsCreateShareToDbank(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 6

    .prologue
    .line 60
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v0

    .line 61
    .local v0, authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 62
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pushToken"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/UnbindPushRequest;->token:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pushType"

    const-string v4, "huawei"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "terminalName"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_sid"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_svc"

    .line 67
    const-string v4, "com.dbank.push.unbind"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_ts"

    .line 69
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 68
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_key"

    .line 71
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 70
    invoke-virtual {p0, v4, v5}, Lcom/huawei/hicloud/photosharesdk/request/UnbindPushRequest;->getKeyData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method protected parseJSONResponse(Lorg/json/JSONObject;)Z
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    const-string v1, "success"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const-string v1, "success"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 39
    .local v0, result:Z
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 40
    const-string v1, "unbindpushreq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .end local v0           #result:Z
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 44
    :cond_1
    const-string v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 46
    const-string v1, "unbindpushreq"

    const-string v2, "error"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    const-string v1, "errorCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "unbindpushreq"

    const-string v2, "errorCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/UnbindPushRequest;->token:Ljava/lang/String;

    .line 76
    return-void
.end method
