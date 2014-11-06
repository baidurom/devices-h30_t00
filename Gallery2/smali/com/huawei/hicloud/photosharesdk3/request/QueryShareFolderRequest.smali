.class public Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
.source "QueryShareFolderRequest.java"


# instance fields
.field private scope:I

.field private sharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 31
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 21
    iput v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->scope:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->sharePath:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 33
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 54
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 55
    .local v1, gson:Lcom/google/gson/Gson;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;-><init>()V

    .line 56
    .local v0, cusr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->setCode(I)V

    .line 57
    iget v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->scope:I

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->setScope(I)V

    .line 58
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->sharePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->setSharePath(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonData:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setScope(I)V
    .locals 0
    .parameter "scope"

    .prologue
    .line 39
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->scope:I

    .line 40
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/QueryShareFolderRequest;->sharePath:Ljava/lang/String;

    .line 45
    return-void
.end method
