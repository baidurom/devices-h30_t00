.class public Lcom/huawei/hicloud/photosharesdk3/request/DelShareFolderRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
.source "DelShareFolderRequest.java"


# instance fields
.field private sharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "sharePath"

    .prologue
    .line 38
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/DelShareFolderRequest;->sharePath:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk3/request/DelShareFolderRequest;->sharePath:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 50
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 51
    .local v1, gson:Lcom/google/gson/Gson;
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteShareReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteShareReq;-><init>()V

    .line 52
    .local v0, cusr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteShareReq;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteShareReq;->setCode(I)V

    .line 53
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/DelShareFolderRequest;->sharePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteShareReq;->setSharePath(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonData:Ljava/lang/String;

    .line 55
    return-void
.end method
