.class public Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "MultiResizeImageRequest.java"


# instance fields
.field private fileInfo:Ljava/lang/String;

.field private height:I

.field private topPriotity:Z

.field private width:I


# direct methods
.method public constructor <init>(ZLandroid/content/Context;)V
    .locals 2
    .parameter "isMyPhoto"
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 44
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->fileInfo:Ljava/lang/String;

    .line 21
    iput-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->topPriotity:Z

    .line 45
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 46
    iput-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 47
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->isMyPhoto:Z

    .line 48
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 5

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "files"

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->fileInfo:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "height"

    .line 89
    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "nsp_sid"

    .line 91
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "nsp_svc"

    .line 93
    const-string v3, "nsp.vfs.fpe.image.resize"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "nsp_ts"

    .line 95
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getCurrentTimeMillis()J

    move-result-wide v3

    .line 94
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 97
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "width"

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "nsp_key"

    .line 99
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 98
    invoke-virtual {p0, v3, v4}, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->getKeyData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public getFileInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->fileInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMyPhoto()Z
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->fileInfo:Ljava/lang/String;

    const-string v1, "/Photoshare/myphoto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->topPriotity:Z

    return v0
.end method

.method protected parseJSONResponse(Lorg/json/JSONObject;)Z
    .locals 6
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 59
    sget-boolean v3, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v3, :cond_0

    .line 60
    const-string v3, "MultiResizeImageRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 67
    .local v1, keyIter:Ljava/util/Iterator;
    const-string v0, ""

    .line 68
    .local v0, key:Ljava/lang/String;
    const-string v2, ""

    .line 69
    .local v2, value:Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    const/4 v3, 0x1

    return v3

    .line 70
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #key:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 71
    .restart local v0       #key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "|"

    const-string v5, "%7C"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 73
    sget-object v3, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->mBitmapUrlCache:Lcom/huawei/hicloud/photosharesdk/configure/BitmapUrlCache;

    invoke-virtual {v3, v0, v2}, Lcom/huawei/hicloud/photosharesdk/configure/BitmapUrlCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFileInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "fileInfo"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->fileInfo:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 28
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->height:I

    .line 29
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 24
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/MultiResizeImageRequest;->width:I

    .line 25
    return-void
.end method
