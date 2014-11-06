.class public Lcom/huawei/hicloud/photosharesdk3/request/DeleteFriendRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
.source "DeleteFriendRequest.java"


# instance fields
.field private account:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/DeleteFriendRequest;->account:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 20
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;-><init>()V

    .line 32
    .local v0, cdfr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;->setCode(I)V

    .line 33
    const-class v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;->setInfo(Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/DeleteFriendRequest;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;->setAccount(Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 36
    .local v1, gson:Lcom/google/gson/Gson;
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonData:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "friendAccount"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/DeleteFriendRequest;->account:Ljava/lang/String;

    .line 25
    return-void
.end method
