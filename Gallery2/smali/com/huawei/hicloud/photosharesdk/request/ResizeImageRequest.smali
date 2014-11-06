.class public Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "ResizeImageRequest.java"


# instance fields
.field bitmapReq:Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;

.field private fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

.field private height:I

.field private topPriotity:Z

.field private width:I


# direct methods
.method public constructor <init>(Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;ZZLandroid/content/Context;)V
    .locals 1
    .parameter "request"
    .parameter "topPriotity"
    .parameter "isMyPhoto"
    .parameter "context"

    .prologue
    .line 56
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->topPriotity:Z

    .line 57
    iput-object p4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->bitmapReq:Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 60
    iput-boolean p3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->isMyPhoto:Z

    .line 61
    iput-boolean p2, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->topPriotity:Z

    .line 62
    return-void
.end method

.method private clearRequest()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 184
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->connectTask:Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;

    if-eqz v0, :cond_0

    .line 185
    invoke-super {p0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;->cancelRequestTask()V

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 6

    .prologue
    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 113
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 114
    .local v0, jsonArray:Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v1, v1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 115
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "files"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "height"

    .line 117
    iget v4, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_sid"

    .line 119
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_svc"

    .line 121
    const-string v4, "nsp.vfs.fpe.image.resize"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_ts"

    .line 123
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 122
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 125
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "width"

    iget v4, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_key"

    .line 127
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 126
    invoke-virtual {p0, v4, v5}, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->getKeyData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public getFileInfo()Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    return-object v0
.end method

.method public getIsMyPhoto()Z
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v0, v0, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    const-string v1, "/Photoshare/myphoto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->topPriotity:Z

    return v0
.end method

.method public onConnError(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 153
    const/16 v2, 0x10e

    const/4 v3, 0x1

    .line 154
    const/16 v4, 0x1f9

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 152
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->clearRequest()V

    .line 158
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 165
    const/16 v2, 0x10e

    const/4 v3, 0x1

    .line 166
    const/16 v4, 0x1f9

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 164
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->clearRequest()V

    .line 169
    return-void
.end method

.method public onTimeOut(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 176
    const/16 v2, 0x10e

    const/4 v3, 0x1

    .line 177
    const/16 v4, 0x208

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 175
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->clearRequest()V

    .line 180
    return-void
.end method

.method protected parseJSONResponse(Lorg/json/JSONObject;)Z
    .locals 7
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 72
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "ResizeImageRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ";Response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v1, v1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v1, v1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, downUrl:Ljava/lang/String;
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_1

    .line 82
    const-string v1, "ResizeImageRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downUrl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->bitmapReq:Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;

    if-eqz v1, :cond_3

    .line 84
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_2

    .line 85
    const-string v1, "ResizeImageRequest"

    const-string v2, "startdownload"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_2
    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "|"

    const-string v3, "%7C"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->bitmapReq:Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;

    invoke-virtual {v1, v0}, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->startDownload(Ljava/lang/String;)V

    .line 103
    .end local v0           #downUrl:Ljava/lang/String;
    :goto_0
    return v6

    .line 89
    .restart local v0       #downUrl:Ljava/lang/String;
    :cond_3
    const-string v1, "ResizeImageRequest"

    const-string v2, "bitmapReq=null"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v0           #downUrl:Ljava/lang/String;
    :cond_4
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_5

    .line 93
    const-string v1, "ResizeImageRequest"

    const-string v2, "parseJSONResponse Error!"

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_5
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 96
    const/16 v3, 0x10e

    .line 97
    const/16 v4, 0x1f9

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 95
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setFileInfo(Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;)V
    .locals 0
    .parameter "fileInfo"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->fileInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 50
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 37
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->height:I

    .line 38
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 33
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->width:I

    .line 34
    return-void
.end method
