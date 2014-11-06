.class public abstract Lcom/huawei/hicloud/photosharesdk/request/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "=== Request ==="


# instance fields
.field protected connectTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

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

.field public httpRequestUrl:Ljava/lang/String;

.field private httpType:I

.field protected isMyPhoto:Z

.field public jsonData:Ljava/lang/String;

.field public paramsters:Ljava/util/List;
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
    .locals 3
    .parameter "handler"
    .parameter "interfaceUrl"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpRequestUrl:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 44
    iput-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->isMyPhoto:Z

    .line 46
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

    .line 48
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    .line 55
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 57
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpType:I

    .line 171
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->taskhandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 84
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 85
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpRequestUrl:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "interfaceUrl"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpRequestUrl:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 44
    iput-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->isMyPhoto:Z

    .line 46
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

    .line 48
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    .line 55
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 57
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpType:I

    .line 171
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->taskhandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 70
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpRequestUrl:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method protected abstract appendMainBody()V
.end method

.method public cancelRequestTask()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->cancelTask()V

    .line 216
    return-void
.end method

.method protected abstract createConnectionTask()Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHttpType()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpType:I

    return v0
.end method

.method public getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
    .locals 4

    .prologue
    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/Request;->appendMainBody()V

    .line 181
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/Request;->setHeader()V

    .line 185
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "HTTP header: "

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/Request;->createConnectionTask()Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

    .line 190
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    iput-object v2, v1, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->paramsters:Ljava/util/List;

    .line 191
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    iput-object v2, v1, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->jsondata:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

    iget-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    iput-boolean v2, v1, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->toDbank:Z

    .line 193
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpType:I

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->setRequestType(I)V

    .line 194
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

    sget-object v2, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->timer:Ljava/util/Timer;

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->setTimer(Ljava/util/Timer;)V

    .line 195
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->setHeader(Ljava/util/Hashtable;)V

    .line 197
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 198
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_1

    .line 199
    const-string v1, "Request"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getJSONResponse-->connectTask.paramsters = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_1
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_2

    .line 203
    const-string v1, "Request"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getJSONResponse-->connectTask.Jsondata = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;->sendTaskReq()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->taskhandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->taskhandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "=== Request ==="

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onConnError(ILjava/lang/String;)V
    .locals 5
    .parameter "code"
    .parameter "message"

    .prologue
    .line 262
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 263
    const-string v0, "=== Request ==="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpRequestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    const/4 v3, 0x1

    .line 266
    const/16 v4, 0x1f9

    .line 265
    invoke-virtual {v1, v2, v3, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    :cond_1
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 5
    .parameter "code"
    .parameter "message"

    .prologue
    .line 279
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "=== Request ==="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpRequestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    const/4 v3, 0x1

    .line 283
    const/16 v4, 0x1f9

    .line 282
    invoke-virtual {v1, v2, v3, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    :cond_1
    :goto_0
    return-void

    .line 286
    :cond_2
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_1

    .line 287
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
    .line 242
    sget-boolean v0, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "=== Request ==="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTimeOut "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpRequestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    const/4 v3, 0x1

    .line 246
    const/16 v4, 0x208

    .line 245
    invoke-virtual {v1, v2, v3, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    :cond_1
    return-void
.end method

.method public setFusionCode(I)V
    .locals 0
    .parameter "fusionCode"

    .prologue
    .line 292
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 293
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 226
    return-void
.end method

.method public setHeader()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 105
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    if-nez v4, :cond_0

    .line 106
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    .line 108
    :cond_0
    iget-boolean v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    if-eqz v4, :cond_4

    .line 109
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_1

    .line 110
    const-string v4, "=== Request ==="

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "context == null---"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    if-nez v6, :cond_3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    const-string v3, "Accept"

    const-string v4, "*/*"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    const-string v3, "NetType"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    const-string v3, "IMEI"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v4

    .line 115
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    const-string v3, "Token"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v4

    .line 117
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getServiceToken()Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    const-string v3, "TerminalType"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hicloud/photosharesdk/api/SwitcherSetting;->getSwitcherForUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, userAgent:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 123
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    const-string v3, "User-Agent"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v1           #userAgent:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v2, v3

    .line 110
    goto :goto_0

    .line 127
    :cond_4
    sget-boolean v4, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v4, :cond_5

    .line 128
    const-string v5, "=== Request ==="

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "context==null---"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 129
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->generateMsgHead(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-static {v5, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_5
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->generateMsgHead(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, arrStr:[Ljava/lang/String;
    array-length v4, v0

    if-lez v4, :cond_2

    .line 133
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    const-string v5, "Authorization"

    aget-object v3, v0, v3

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    aget-object v3, v0, v2

    if-eqz v3, :cond_6

    .line 135
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    const-string v4, "AuthType"

    aget-object v2, v0, v2

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_6
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    const-string v3, "SiteId"

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0           #arrStr:[Ljava/lang/String;
    :cond_7
    move v4, v3

    .line 128
    goto :goto_2

    :cond_8
    move v4, v3

    .line 129
    goto :goto_3
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->header:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public setHttpType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 96
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpType:I

    .line 97
    return-void
.end method
