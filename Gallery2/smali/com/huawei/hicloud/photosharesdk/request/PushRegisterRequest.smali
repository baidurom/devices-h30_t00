.class public Lcom/huawei/hicloud/photosharesdk/request/PushRegisterRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "PushRegisterRequest.java"


# instance fields
.field private pushToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 23
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 20
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/PushRegisterRequest;->pushToken:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 5

    .prologue
    .line 58
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;-><init>()V

    .line 59
    .local v0, crr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;->setCode(I)V

    .line 60
    const-string v3, "ClientRegisterReq"

    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;->setInfo(Ljava/lang/String;)V

    .line 61
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v2, para:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "fwv"

    const-string v4, "1.0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v3, "hwv"

    const-string v4, "1.0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v3, "swv"

    const-string v4, "1.0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v3, "pushtoken"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/PushRegisterRequest;->pushToken:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;->setParameter(Ljava/util/Map;)V

    .line 67
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 68
    .local v1, gson:Lcom/google/gson/Gson;
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public getIsMyPhoto()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method protected parseJSONResponse(Lorg/json/JSONObject;)Z
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 35
    const-string v1, "PushRegisterRequest"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    if-eqz p1, :cond_0

    .line 37
    const-string v1, "PushRegisterRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, code:I
    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$PushInfoUtil;->writeFlagToFile(Landroid/content/Context;Z)V

    .line 52
    .end local v0           #code:I
    :cond_0
    return v4
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "pushToken"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/PushRegisterRequest;->pushToken:Ljava/lang/String;

    .line 30
    return-void
.end method
