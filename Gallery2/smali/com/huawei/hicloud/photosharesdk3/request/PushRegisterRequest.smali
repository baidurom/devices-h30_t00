.class public Lcom/huawei/hicloud/photosharesdk3/request/PushRegisterRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
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

    invoke-direct {p0, v1, v0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 20
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/PushRegisterRequest;->pushToken:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 5

    .prologue
    .line 35
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;-><init>()V

    .line 36
    .local v0, crr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;->setCode(I)V

    .line 37
    const-string v3, "ClientRegisterReq"

    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;->setInfo(Ljava/lang/String;)V

    .line 38
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v2, para:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "fwv"

    const-string v4, "1.0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v3, "hwv"

    const-string v4, "1.0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v3, "swv"

    const-string v4, "1.0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v3, "pushtoken"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/PushRegisterRequest;->pushToken:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;->setParameter(Ljava/util/Map;)V

    .line 44
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 45
    .local v1, gson:Lcom/google/gson/Gson;
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonData:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "pushToken"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/PushRegisterRequest;->pushToken:Ljava/lang/String;

    .line 30
    return-void
.end method
