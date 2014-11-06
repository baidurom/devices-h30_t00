.class public Lcom/huawei/hicloud/photosharesdk/request/AuthToGetParamsRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "AuthToGetParamsRequest.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 24
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 25
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 28
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;-><init>()V

    .line 97
    .local v0, cgpr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;->setCode(I)V

    .line 98
    const-string v3, "ClientGetParameterReq"

    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;->setInfo(Ljava/lang/String;)V

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v2, parasName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "dbank_sid"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v3, "dbank_secret"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v3, "photo_num"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v3, "photo_exp"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;->setParasName(Ljava/util/List;)V

    .line 105
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 106
    .local v1, gson:Lcom/google/gson/Gson;
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public getIsMyPhoto()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public onConnError(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "message"

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;->onConnError(ILjava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->start()V

    .line 127
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "message"

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;->onError(ILjava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->start()V

    .line 135
    return-void
.end method

.method public onTimeOut(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "message"

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;->onTimeOut(ILjava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->start()V

    .line 143
    return-void
.end method

.method protected parseJSONResponse(Lorg/json/JSONObject;)Z
    .locals 9
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 33
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 34
    const-string v3, "AuthToGetParamsRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 42
    .local v2, gson:Lcom/google/gson/Gson;
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;

    .line 43
    .local v1, cgpr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getCode()I

    move-result v3

    if-nez v3, :cond_7

    .line 45
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_1

    .line 46
    const-string v4, "AuthToGetParamsRequest"

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "secret:"

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v3

    const-string v6, "dbank_secret"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {v4, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v4, "AuthToGetParamsRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "secret:"

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v3

    const-string v6, "dbank_sid"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v4, "AuthToGetParamsRequest"

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "photo_num:"

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v3

    const-string v6, "photo_num"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v4, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v4, "AuthToGetParamsRequest"

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "photo_exp:"

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v3

    const-string v6, "photo_exp"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v4, v3}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;-><init>()V

    .line 56
    .local v0, authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v3

    const-string v4, "dbank_sid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setSid(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v3

    const-string v4, "dbank_secret"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setSecret(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v3

    const-string v4, "photo_num"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setPhoto_num(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v3

    const-string v4, "photo_exp"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->setPhoto_exp(Ljava/lang/String;)V

    .line 60
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->updateAuthInfo(Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;Landroid/content/Context;)V

    .line 63
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->getSwitchInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getPhotoStreamSwitch()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_2

    .line 67
    const-string v3, "AuthToGetParamsRequest"

    const-string v4, "AuthToGetParamsRequest start myphoto"

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    const/16 v5, 0x114

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    :cond_3
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->getSwitchInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getSharePhotoSwitch()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_4

    .line 75
    const-string v3, "AuthToGetParamsRequest"

    const-string v4, "AuthToGetParamsRequest start sharephoto"

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_4
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    const/16 v5, 0x115

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    :cond_5
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_6

    .line 80
    const-string v3, "AuthToGetParamsRequest"

    const-string v4, "auth success!"

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v0           #authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    :cond_6
    :goto_0
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->getInstance()Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/logic/sync/LocalCloudSync;->start()V

    .line 90
    return v8

    .line 84
    :cond_7
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    const/16 v5, 0xfa

    .line 85
    const/4 v6, 0x0

    const-string v7, "Error"

    .line 84
    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
