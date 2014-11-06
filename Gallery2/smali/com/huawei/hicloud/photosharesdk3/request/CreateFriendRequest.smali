.class public Lcom/huawei/hicloud/photosharesdk3/request/CreateFriendRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
.source "CreateFriendRequest.java"


# instance fields
.field private friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateFriendRequest;->friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;

    .line 18
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateFriendReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateFriendReq;-><init>()V

    .line 33
    .local v0, ccfr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateFriendReq;
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateFriendReq;->setCode(I)V

    .line 34
    const-class v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateFriendReq;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateFriendReq;->setInfo(Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateFriendRequest;->friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateFriendReq;->setFriendUser(Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;)V

    .line 36
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 37
    .local v1, gson:Lcom/google/gson/Gson;
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonData:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setFriendUser(Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;)V
    .locals 0
    .parameter "friendUser"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/CreateFriendRequest;->friendUser:Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;

    .line 26
    return-void
.end method
