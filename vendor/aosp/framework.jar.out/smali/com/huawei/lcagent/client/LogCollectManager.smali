.class public Lcom/huawei/lcagent/client/LogCollectManager;
.super Ljava/lang/Object;
.source "LogCollectManager.java"


# static fields
.field public static final ERROR_OTHER:I = -0x2

.field public static final ERROR_SERVICE_NOT_CONNECTED:I = -0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LogCollectManager"


# instance fields
.field protected iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

.field private mContext:Landroid/content/Context;

.field protected scLogCollect:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    .line 280
    iput-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    .line 281
    new-instance v0, Lcom/huawei/lcagent/client/LogCollectManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/lcagent/client/LogCollectManager$1;-><init>(Lcom/huawei/lcagent/client/LogCollectManager;)V

    iput-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->scLogCollect:Landroid/content/ServiceConnection;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    .line 24
    return-void
.end method

.method private unbindToService()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->scLogCollect:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    .line 269
    :cond_0
    const-string v0, "LogCollectManager"

    const-string/jumbo v1, "mContext == null || scLogCollect == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->scLogCollect:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method


# virtual methods
.method public allowUploadAlways(Z)I
    .locals 2
    .parameter "allow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 171
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-nez v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    invoke-interface {v0, p1}, Lcom/huawei/lcagent/client/ILogCollect;->allowUploadAlways(Z)I

    move-result v0

    goto :goto_0
.end method

.method public allowUploadInMobileNetwork(Z)I
    .locals 2
    .parameter "allow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 159
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-nez v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    invoke-interface {v0, p1}, Lcom/huawei/lcagent/client/ILogCollect;->allowUploadInMobileNetwork(Z)I

    move-result v0

    goto :goto_0
.end method

.method public bindToService(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 252
    const-string v3, "LogCollectManager"

    const-string/jumbo v4, "start to bind to Log Collect service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v3, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 254
    const-string v3, "LogCollectManager"

    const-string/jumbo v4, "mContext == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    .line 258
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.huawei.lcagent.service.ILogCollect"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 261
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.lcagent.service.ILogCollect"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, tent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/huawei/lcagent/client/LogCollectManager;->scLogCollect:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 264
    .local v0, bRet:Z
    goto :goto_0
.end method

.method public captureLogMetric(I)Lcom/huawei/lcagent/client/LogMetricInfo;
    .locals 2
    .parameter "metricID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-nez v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-object v0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    invoke-interface {v0, p1}, Lcom/huawei/lcagent/client/ILogCollect;->captureLogMetric(I)Lcom/huawei/lcagent/client/LogMetricInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public clearLogMetric(J)V
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    invoke-interface {v0, p1, p2}, Lcom/huawei/lcagent/client/ILogCollect;->clearLogMetric(J)V

    goto :goto_0
.end method

.method public configure(Ljava/lang/String;)I
    .locals 2
    .parameter "strCommand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 225
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-nez v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    invoke-interface {v0, p1}, Lcom/huawei/lcagent/client/ILogCollect;->configure(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public configureUserType(I)I
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 183
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-nez v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    invoke-interface {v0, p1}, Lcom/huawei/lcagent/client/ILogCollect;->configureUserType(I)I

    move-result v0

    goto :goto_0
.end method

.method public feedbackUploadResult(JI)I
    .locals 2
    .parameter "hashId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 211
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-nez v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/lcagent/client/ILogCollect;->feedbackUploadResult(JI)I

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/huawei/lcagent/client/LogCollectManager;->unbindToService()V

    .line 278
    return-void
.end method

.method public forceUpload()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 195
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-nez v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    invoke-interface {v0}, Lcom/huawei/lcagent/client/ILogCollect;->forceUpload()I

    move-result v0

    goto :goto_0
.end method

.method public getUserType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 240
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-nez v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    invoke-interface {v0}, Lcom/huawei/lcagent/client/ILogCollect;->getUserType()I

    move-result v0

    goto :goto_0
.end method

.method public setMetricCommonHeader(I[B)I
    .locals 1
    .parameter "metricID"
    .parameter "payloadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/huawei/lcagent/client/LogCollectManager;->setMetricCommonHeader(I[BI)I

    move-result v0

    return v0
.end method

.method public setMetricCommonHeader(I[BI)I
    .locals 2
    .parameter "metricID"
    .parameter "payloadBytes"
    .parameter "payloadLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 74
    if-eqz p2, :cond_0

    array-length v1, p2

    if-ge v1, p3, :cond_2

    .line 75
    :cond_0
    const/4 v0, -0x2

    .line 86
    :cond_1
    :goto_0
    return v0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-nez v1, :cond_3

    .line 79
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/lcagent/client/ILogCollect;->setMetricCommonHeader(I[BI)I

    move-result v0

    goto :goto_0
.end method

.method public setMetricStoargeHeader(I[B)I
    .locals 1
    .parameter "metricID"
    .parameter "payloadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/huawei/lcagent/client/LogCollectManager;->setMetricStoargeHeader(I[BI)I

    move-result v0

    return v0
.end method

.method public setMetricStoargeHeader(I[BI)I
    .locals 2
    .parameter "metricID"
    .parameter "payloadBytes"
    .parameter "payloadLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 32
    if-eqz p2, :cond_0

    array-length v1, p2

    if-ge v1, p3, :cond_2

    .line 33
    :cond_0
    const/4 v0, -0x2

    .line 46
    :cond_1
    :goto_0
    return v0

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-nez v1, :cond_3

    .line 37
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    :cond_3
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/lcagent/client/ILogCollect;->setMetricStoargeHeader(I[BI)I

    move-result v0

    goto :goto_0
.end method

.method public setMetricStoargeTail(I[B)I
    .locals 1
    .parameter "metricID"
    .parameter "payloadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/huawei/lcagent/client/LogCollectManager;->setMetricStoargeTail(I[BI)I

    move-result v0

    return v0
.end method

.method public setMetricStoargeTail(I[BI)I
    .locals 2
    .parameter "metricID"
    .parameter "payloadBytes"
    .parameter "payloadLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 54
    if-eqz p2, :cond_0

    array-length v1, p2

    if-ge v1, p3, :cond_2

    .line 55
    :cond_0
    const/4 v0, -0x2

    .line 66
    :cond_1
    :goto_0
    return v0

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-nez v1, :cond_3

    .line 59
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/lcagent/client/ILogCollect;->setMetricStoargeTail(I[BI)I

    move-result v0

    goto :goto_0
.end method

.method public shouldSubmitMetric(II)Z
    .locals 2
    .parameter "metricID"
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 115
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-nez v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    invoke-interface {v0, p1, p2}, Lcom/huawei/lcagent/client/ILogCollect;->shouldSubmitMetric(II)Z

    move-result v0

    goto :goto_0
.end method

.method public submitMetric(II[B)I
    .locals 1
    .parameter "metricID"
    .parameter "level"
    .parameter "payloadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    array-length v0, p3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/huawei/lcagent/client/LogCollectManager;->submitMetric(II[BI)I

    move-result v0

    return v0
.end method

.method public submitMetric(II[BI)I
    .locals 2
    .parameter "metricID"
    .parameter "level"
    .parameter "payloadBytes"
    .parameter "payloadLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 95
    if-eqz p3, :cond_0

    array-length v1, p3

    if-ge v1, p4, :cond_2

    .line 96
    :cond_0
    const/4 v0, -0x2

    .line 107
    :cond_1
    :goto_0
    return v0

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-nez v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/lcagent/client/LogCollectManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    if-eqz v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/huawei/lcagent/client/LogCollectManager;->iLogCollect:Lcom/huawei/lcagent/client/ILogCollect;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/huawei/lcagent/client/ILogCollect;->submitMetric(II[BI)I

    move-result v0

    goto :goto_0
.end method
