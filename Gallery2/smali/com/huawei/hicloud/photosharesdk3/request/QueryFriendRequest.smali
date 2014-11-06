.class public Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
.source "QueryFriendRequest.java"


# instance fields
.field private account:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;->account:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 34
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendReq;-><init>()V

    .line 49
    .local v0, cdfr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendReq;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendReq;->setCode(I)V

    .line 50
    const-class v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendReq;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendReq;->setInfo(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendReq;->setAccount(Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 53
    .local v1, gson:Lcom/google/gson/Gson;
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonData:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "friendAccount"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/QueryFriendRequest;->account:Ljava/lang/String;

    .line 39
    return-void
.end method
