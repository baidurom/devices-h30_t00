.class public Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "CreateShareFolderRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateShareFolderRequest"


# instance fields
.field private cShareReq:Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;

.field public dirOrfile:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field private mkDirRequest:Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;

.field private sharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "cShareReqToJPL"
    .parameter "handler"
    .parameter "context"
    .parameter "sharePath"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 25
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->dirOrfile:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->sharePath:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->displayName:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->cShareReq:Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;

    .line 47
    iput-object p3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 48
    iput-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 49
    iput-object p4, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->sharePath:Ljava/lang/String;

    .line 50
    invoke-virtual {p0, v2}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->setIsCreateShareToDbank(Z)V

    .line 51
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 6

    .prologue
    .line 75
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAuthInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;

    move-result-object v0

    .line 76
    .local v0, authInfo:Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 77
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "name"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->displayName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "path"

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->sharePath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_sid"

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_svc"

    .line 100
    const-string v4, "nsp.vfs.share.mk"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_ts"

    .line 102
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/request/connection/Util;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 101
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nsp_key"

    .line 104
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->paramsters:Ljava/util/List;

    .line 103
    invoke-virtual {p0, v4, v5}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->getKeyData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public createShare()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->mkDirRequest:Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;

    .line 68
    return-void
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public mkDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "fileInfo"
    .parameter "displayName"

    .prologue
    .line 54
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;

    sget-object v1, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;-><init>(Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;Ljava/lang/String;Landroid/content/Context;)V

    .line 54
    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->mkDirRequest:Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;

    .line 56
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->dirOrfile:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->displayName:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->mkDirRequest:Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->dirOrfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->setFileInfo(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->mkDirRequest:Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;

    invoke-virtual {v0, p2}, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->setDisplayName(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->mkDirRequest:Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->setHandler(Landroid/os/Handler;)V

    .line 61
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->mkDirRequest:Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 62
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->mkDirRequest:Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;

    const/16 v1, 0xfd

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/MakeDirRequest;->setFusionCode(I)V

    .line 63
    return-void
.end method

.method protected parseJSONResponse(Lorg/json/JSONObject;)Z
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "CreateShareFolderRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    const-string v1, "sharepath"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->cShareReq:Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;

    if-eqz v1, :cond_1

    .line 114
    const-string v1, "sharepath"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, sharePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->cShareReq:Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;

    invoke-virtual {v1, v0}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->createShareToJPL(Ljava/lang/String;)V

    .line 122
    .end local v0           #sharePath:Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->cShareReq:Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->cShareReq:Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->createShareFolderFail()V

    goto :goto_0
.end method
