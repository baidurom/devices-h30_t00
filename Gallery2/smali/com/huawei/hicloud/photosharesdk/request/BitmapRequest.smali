.class public Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/Request;
.source "BitmapRequest.java"

# interfaces
.implements Lcom/huawei/hicloud/photosharesdk/request/connection/IBitmapCallback;


# instance fields
.field bitmapTask:Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;

.field public cancel:Z

.field getImgDownUrlReq:Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;

.field getUrlTaskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

.field private originalDownItem:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

.field private topPriotity:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;ZZLandroid/content/Context;)V
    .locals 3
    .parameter "handler"
    .parameter "topPriotity"
    .parameter "isMyPhoto"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/request/Request;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 24
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->getUrlTaskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 31
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->originalDownItem:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->topPriotity:Z

    .line 44
    iput-boolean p2, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->topPriotity:Z

    .line 45
    iput-boolean p3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->isMyPhoto:Z

    .line 46
    iput-object p4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 47
    iput-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 48
    invoke-virtual {p0, v1}, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->setHttpType(I)V

    .line 49
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 4

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 119
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getServiceToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cname"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public cancelDownBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->cancel:Z

    .line 71
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->getUrlTaskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->getUrlTaskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    invoke-interface {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;->cancel(Ljava/util/Iterator;)Z

    .line 75
    :cond_0
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->getImgDownUrlReq:Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;

    .line 76
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->bitmapTask:Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->bitmapTask:Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;->cancelTask()V

    .line 79
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->bitmapTask:Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;

    .line 81
    :cond_1
    return-void
.end method

.method protected createConnectionTask()Lcom/huawei/hicloud/photosharesdk/request/connection/ConnectionTask;
    .locals 6

    .prologue
    .line 92
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpRequestUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->originalDownItem:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    iget-object v4, v1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->savePath:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->isMyPhoto:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;-><init>(Lcom/huawei/hicloud/photosharesdk/request/connection/IHttpCallback;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->bitmapTask:Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;

    .line 93
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->bitmapTask:Lcom/huawei/hicloud/photosharesdk/request/connection/BitmapTask;

    return-object v0
.end method

.method public getIsMyPhoto()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->isMyPhoto:Z

    return v0
.end method

.method public getPriority()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->topPriotity:Z

    return v0
.end method

.method public initDownBitmap(Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;)V
    .locals 4
    .parameter "downItem"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->originalDownItem:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 54
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->mBitmapUrlCache:Lcom/huawei/hicloud/photosharesdk/configure/BitmapUrlCache;

    iget-object v1, p1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/configure/BitmapUrlCache;->isCached(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->mBitmapUrlCache:Lcom/huawei/hicloud/photosharesdk/configure/BitmapUrlCache;

    iget-object v1, p1, Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;->dbankPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/configure/BitmapUrlCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->startDownload(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;

    iget-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->topPriotity:Z

    iget-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->isMyPhoto:Z

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;-><init>(Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;ZZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->getImgDownUrlReq:Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;

    .line 61
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->getImgDownUrlReq:Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;

    invoke-virtual {v0, p1}, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->setFileInfo(Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;)V

    .line 62
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->getImgDownUrlReq:Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getAbbr_size()Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->setWidth(I)V

    .line 63
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->getImgDownUrlReq:Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/api/DirSetting;->getDir(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/DirInfo;->getAbbr_size()Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/PhotoSize;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->setHeight(I)V

    .line 64
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->getImgDownUrlReq:Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->getUrlTaskHandle:Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    goto :goto_0
.end method

.method public onConnError(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    const/16 v2, 0x10e

    const/4 v3, 0x1

    .line 153
    const/16 v4, 0x1f9

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->originalDownItem:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 152
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    const/16 v2, 0x10e

    const/4 v3, 0x1

    .line 165
    const/16 v4, 0x1f9

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->originalDownItem:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 164
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    :cond_0
    return-void
.end method

.method public onReceiveData(Ljava/lang/String;)V
    .locals 5
    .parameter "filePath"

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->originalDownItem:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    const/16 v2, 0x10e

    .line 109
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->originalDownItem:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 108
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    :cond_0
    return-void
.end method

.method public onTimeOut(ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "message"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    const/16 v2, 0x10e

    const/4 v3, 0x1

    .line 176
    const/16 v4, 0x208

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->originalDownItem:Lcom/huawei/hicloud/photosharesdk/request/msg/DownloadItem;

    .line 175
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    :cond_0
    return-void
.end method

.method public startDownload(Ljava/lang/String;)V
    .locals 1
    .parameter "downUrl"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->cancel:Z

    if-nez v0, :cond_0

    .line 127
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->httpRequestUrl:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/BitmapRequest;->getImgDownUrlReq:Lcom/huawei/hicloud/photosharesdk/request/ResizeImageRequest;

    .line 132
    :cond_0
    return-void
.end method
