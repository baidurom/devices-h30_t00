.class public Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
.source "ResizeImageRequest.java"


# instance fields
.field private fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 40
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 43
    return-void
.end method

.method private clearRequest()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 149
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;

    if-eqz v0, :cond_0

    .line 151
    invoke-super {p0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;->cancelRequestTask()V

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 6

    .prologue
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    .line 76
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 77
    .local v0, jsonArray:Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v1, v1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "files"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "height"

    iget v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_sid"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_svc"

    const-string v4, "nsp.vfs.fpe.image.resize"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

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
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->USE_HTTPS:Z

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "options"

    const-string v4, "{\"isSslUrl\":true}"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "width"

    iget v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_key"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    .line 90
    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    .line 89
    invoke-virtual {p0, v4, v5}, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->getKeyData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public getFileInfo()Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    return-object v0
.end method

.method public onConnError(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    const/16 v2, 0x10e

    const/4 v3, 0x1

    .line 106
    const/16 v4, 0x1f9

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 105
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->clearRequest()V

    .line 110
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    const/16 v2, 0x10e

    const/4 v3, 0x1

    .line 124
    const/16 v4, 0x1f9

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 123
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->clearRequest()V

    .line 127
    return-void
.end method

.method public onTimeOut(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->handler:Landroid/os/Handler;

    const/16 v2, 0x10e

    const/4 v3, 0x1

    .line 141
    const/16 v4, 0x208

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 140
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->clearRequest()V

    .line 144
    return-void
.end method

.method public setFileInfo(Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;)V
    .locals 0
    .parameter "fileInfo"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 64
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 52
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->height:I

    .line 53
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 47
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/ResizeImageRequest;->width:I

    .line 48
    return-void
.end method
