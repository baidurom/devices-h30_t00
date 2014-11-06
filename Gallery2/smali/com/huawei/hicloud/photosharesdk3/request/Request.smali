.class public abstract Lcom/huawei/hicloud/photosharesdk3/request/Request;
.super Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;
.source "Request.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "=== Request ==="


# instance fields
.field protected connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

.field protected context:Landroid/content/Context;

.field protected fusionCode:I

.field protected handler:Landroid/os/Handler;

.field protected header:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected httpRequestUrl:Ljava/lang/String;

.field private httpType:I

.field protected jsonBody:Lorg/json/JSONObject;

.field protected jsonBodyStr:Ljava/lang/String;

.field protected jsonData:Ljava/lang/String;

.field protected paramsters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected taskhandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

.field protected toDbank:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2
    .parameter "handler"
    .parameter "interfaceUrl"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 41
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonData:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->httpRequestUrl:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBodyStr:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 52
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    .line 54
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->taskhandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 56
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    .line 58
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    .line 65
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBody:Lorg/json/JSONObject;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->httpType:I

    .line 88
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    .line 89
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->httpRequestUrl:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "interfaceUrl"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 41
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonData:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->httpRequestUrl:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBodyStr:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 52
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    .line 54
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->taskhandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 56
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    .line 58
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    .line 65
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBody:Lorg/json/JSONObject;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->httpType:I

    .line 75
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->httpRequestUrl:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method protected abstract appendMainBody()V
.end method

.method public cancelRequestTask()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->cancelTask()V

    .line 281
    return-void
.end method

.method protected abstract createConnectionTask()Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
.end method

.method public getConnectTask()Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getJSONResponse()V
    .locals 7

    .prologue
    .line 203
    :try_start_0
    instance-of v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/AuthToGetParamsRequest;

    if-nez v4, :cond_2

    .line 205
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v0

    .line 206
    .local v0, authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
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

    .line 207
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 209
    :cond_0
    new-instance v1, Lcom/huawei/hicloud/photosharesdk3/request/AuthToGetParamsRequest;

    .line 210
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 209
    invoke-direct {v1, v4}, Lcom/huawei/hicloud/photosharesdk3/request/AuthToGetParamsRequest;-><init>(Landroid/content/Context;)V

    .line 211
    .local v1, authToGetParamsRequest:Lcom/huawei/hicloud/photosharesdk3/request/AuthToGetParamsRequest;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/request/AuthToGetParamsRequest;->getJSONResponse()V

    .line 212
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/request/AuthToGetParamsRequest;->setAuthInfo()Z

    move-result v3

    .line 213
    .local v3, result:Z
    if-nez v3, :cond_2

    .line 215
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBodyStr:Ljava/lang/String;

    .line 216
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBody:Lorg/json/JSONObject;

    .line 272
    .end local v0           #authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    .end local v1           #authToGetParamsRequest:Lcom/huawei/hicloud/photosharesdk3/request/AuthToGetParamsRequest;
    .end local v3           #result:Z
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/Request;->appendMainBody()V

    .line 222
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/Request;->setHeader()V

    .line 226
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_3

    .line 228
    const-string v4, "HTTP header: "

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_3
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk3/request/Request;->createConnectionTask()Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    .line 233
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    if-eqz v4, :cond_1

    .line 240
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setParamsters(Ljava/util/List;)V

    .line 241
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setJsondata(Ljava/lang/String;)V

    .line 242
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    iget-boolean v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    invoke-virtual {v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setToDbank(Z)V

    .line 243
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    iget v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->httpType:I

    invoke-virtual {v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setRequestType(I)V

    .line 244
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    sget-object v5, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->timer:Ljava/util/Timer;

    invoke-virtual {v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setTimer(Ljava/util/Timer;)V

    .line 245
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    invoke-virtual {v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setHeader(Ljava/util/Hashtable;)V

    .line 247
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 249
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_4

    .line 251
    const-string v4, "Request"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getJSONResponse-->connectTask.paramsters = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_4
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_5

    .line 256
    const-string v4, "Request"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getJSONResponse-->connectTask.Jsondata = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_5
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_6

    .line 261
    const-string v4, "Request"

    const-string v5, "getJSONResponse-->connectTask.runTask ... "

    invoke-static {v4, v5}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_6
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    invoke-virtual {v4, p0}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->setRequestInfo(Lcom/huawei/hicloud/photosharesdk3/request/Request;)V

    .line 264
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;->runTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 266
    :catch_0
    move-exception v2

    .line 269
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/Request;->getTagInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/huawei/hicloud/photosharesdk3/request/Request;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getJsonBody()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getJsonBodyStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonBodyStr:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskhandle()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->taskhandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    return-object v0
.end method

.method public onConnError(ILjava/lang/String;)V
    .locals 5
    .parameter "code"
    .parameter "message"

    .prologue
    .line 333
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "=== Request ==="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->httpRequestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->fusionCode:I

    const/4 v3, 0x1

    .line 340
    const/16 v4, 0x1f9

    .line 339
    invoke-virtual {v1, v2, v3, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    :cond_1
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 5
    .parameter "code"
    .parameter "message"

    .prologue
    .line 354
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "=== Request ==="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->httpRequestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->fusionCode:I

    const/4 v3, 0x1

    .line 361
    const/16 v4, 0x1f9

    .line 360
    invoke-virtual {v1, v2, v3, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 371
    :cond_1
    :goto_0
    return-void

    .line 366
    :cond_2
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_1

    .line 368
    const-string v0, "=== Request ==="

    const-string v1, "handler is null "

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTimeOut(ILjava/lang/String;)V
    .locals 5
    .parameter "code"
    .parameter "message"

    .prologue
    .line 310
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "=== Request ==="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTimeOut "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->httpRequestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->fusionCode:I

    const/4 v3, 0x1

    .line 317
    const/16 v4, 0x208

    .line 316
    invoke-virtual {v1, v2, v3, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    :cond_1
    return-void
.end method

.method public setConnectTask(Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;)V
    .locals 0
    .parameter "connectTask"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    .line 406
    return-void
.end method

.method public setFusionCode(I)V
    .locals 0
    .parameter "fusionCode"

    .prologue
    .line 375
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->fusionCode:I

    .line 376
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    .line 292
    return-void
.end method

.method public setHeader()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 114
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    if-nez v4, :cond_0

    .line 116
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    .line 118
    :cond_0
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    if-eqz v4, :cond_4

    .line 120
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_1

    .line 122
    const-string v4, "=== Request ==="

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "context == null---"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    if-nez v6, :cond_3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    const-string v3, "Accept"

    const-string v4, "*/*"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    const-string v3, "NetType"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    const-string v3, "IMEI"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    const-string v3, "Token"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getServiceToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    const-string v3, "TerminalType"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcherForUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, userAgent:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 133
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    const-string v3, "User-Agent"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .end local v1           #userAgent:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v2, v3

    .line 122
    goto :goto_0

    .line 138
    :cond_4
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_5

    .line 140
    const-string v5, "=== Request ==="

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "context==null---"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 141
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->generateMsgHead(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-static {v5, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_5
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->generateMsgHead(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, arrStr:[Ljava/lang/String;
    array-length v4, v0

    if-lez v4, :cond_2

    .line 148
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    const-string v5, "Authorization"

    aget-object v3, v0, v3

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    aget-object v3, v0, v2

    if-eqz v3, :cond_6

    .line 151
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    const-string v4, "AuthType"

    aget-object v2, v0, v2

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_6
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    const-string v3, "SiteId"

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0           #arrStr:[Ljava/lang/String;
    :cond_7
    move v4, v3

    .line 140
    goto :goto_2

    :cond_8
    move v4, v3

    .line 141
    goto :goto_3
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->header:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public setHttpType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 106
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->httpType:I

    .line 107
    return-void
.end method

.method public setTaskhandle(Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;)V
    .locals 0
    .parameter "taskhandle"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->taskhandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 396
    return-void
.end method
