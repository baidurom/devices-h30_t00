.class public Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;
.super Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;
.source "CreateShareReqToJPL.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateShareReqToJPL"


# instance fields
.field private cSharefolderRequest:Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;

.field public dirOrfile:Ljava/lang/String;

.field private receiverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;",
            ">;"
        }
    .end annotation
.end field

.field private shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

.field private shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 47
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/hicloud/photosharesdk/request/JSONRequest;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 23
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 25
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    .line 31
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->dirOrfile:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->receiverList:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->toDbank:Z

    .line 49
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 95
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 96
    .local v1, gson:Lcom/google/gson/Gson;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;-><init>()V

    .line 97
    .local v0, ccsr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;->setCode(I)V

    .line 98
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;->setShareInfo(Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;)V

    .line 99
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->jsonData:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public createShareFolder(Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;Landroid/content/Context;)V
    .locals 6
    .parameter "shareFolder"
    .parameter "context"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 57
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->context:Landroid/content/Context;

    .line 58
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;

    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    .line 59
    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDbankPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, p2, v5}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;-><init>(Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    iput-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->cSharefolderRequest:Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;

    .line 60
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->cSharefolderRequest:Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;

    const/16 v4, 0xfd

    invoke-virtual {v3, v4}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->setFusionCode(I)V

    .line 61
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 62
    .local v0, dirs:Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v2, files:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "type"

    const-string v4, "Directory"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v3, "name"

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDbankPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->cSharefolderRequest:Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;

    .line 73
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;->mkDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Lorg/json/JSONException;
    const-string v3, "CreateShareReqToJPL"

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public createShareFolderFail()V
    .locals 6

    .prologue
    .line 139
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 140
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 139
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void
.end method

.method public createShareToJPL(Ljava/lang/String;)V
    .locals 2
    .parameter "sharePath"

    .prologue
    .line 77
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    .line 78
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setShareName(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-virtual {v0, p1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setSharePath(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getSharedAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setSharer(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->getDbankPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setPhysicsPath(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->receiverList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setReceiverList(Ljava/util/List;)V

    .line 83
    const/16 v0, 0xfd

    invoke-virtual {p0, v0}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->setFusionCode(I)V

    .line 84
    invoke-virtual {p0}, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->getJSONResponse()Lcom/huawei/hicloud/photosharesdk/request/threadpool/TaskHandle;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->cSharefolderRequest:Lcom/huawei/hicloud/photosharesdk/request/CreateShareFolderRequest;

    .line 86
    return-void
.end method

.method public getDirOrfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->dirOrfile:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMyPhoto()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getTopPriority()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 105
    if-eqz p1, :cond_2

    .line 107
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, code:I
    if-nez v0, :cond_1

    .line 109
    sget-boolean v1, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->IS_LOG_OPEN:Z

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "CreateShareReqToJPL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->getSharePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->setSharePath(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 113
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 112
    invoke-virtual {v2, v3, v6, v6, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    .end local v0           #code:I
    :goto_0
    return v5

    .line 116
    .restart local v0       #code:I
    :cond_1
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 117
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 116
    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 121
    .end local v0           #code:I
    :cond_2
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/request/Request;->fusionCode:I

    .line 122
    iget-object v4, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->shareFolder:Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;

    .line 121
    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setDirOrfile(Ljava/lang/String;)V
    .locals 0
    .parameter "dirOrfile"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->dirOrfile:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setReceiverList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, receiveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/CreateShareReqToJPL;->receiverList:Ljava/util/ArrayList;

    .line 53
    return-void
.end method
