.class public Lcom/huawei/hicloud/photosharesdk3/request/AuthToGetParamsRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
.source "AuthToGetParamsRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;-><init>()V

    .line 78
    .local v0, cgpr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;->setCode(I)V

    .line 79
    const-string v3, "ClientGetParameterReq"

    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;->setInfo(Ljava/lang/String;)V

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v2, parasName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "dbank_sid"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v3, "dbank_secret"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v3, "photo_num"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v3, "photo_exp"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;->setParasName(Ljava/util/List;)V

    .line 86
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 87
    .local v1, gson:Lcom/google/gson/Gson;
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonData:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setAuthInfo()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v3, 0x1

    .line 50
    .local v3, result:Z
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 51
    .local v2, gson:Lcom/google/gson/Gson;
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBodyStr:Ljava/lang/String;

    const-class v5, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;

    .line 53
    .local v1, cgpr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;-><init>()V

    .line 54
    .local v0, authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v4

    const-string v5, "dbank_sid"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setSid(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v4

    const-string v5, "dbank_secret"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setSecret(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v4

    const-string v5, "photo_num"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setPhoto_num(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v4

    const-string v5, "photo_exp"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setPhoto_exp(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    :cond_0
    const/4 v3, 0x0

    .line 67
    :goto_0
    return v3

    .line 65
    :cond_1
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->updateAuthInfo(Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;Landroid/content/Context;)V

    goto :goto_0
.end method
