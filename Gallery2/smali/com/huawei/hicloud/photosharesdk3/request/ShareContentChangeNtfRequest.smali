.class public Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;
.source "ShareContentChangeNtfRequest.java"


# instance fields
.field private cscc:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

.field private sharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 30
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->ZPLServer:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/JSONRequest;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;->cscc:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    .line 22
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;->sharePath:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 33
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;->cscc:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;->setCode(I)V

    .line 54
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;->cscc:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;->sharePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;->setSharePath(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;->cscc:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    const-class v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;->setInfo(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 57
    .local v0, gson:Lcom/google/gson/Gson;
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;->cscc:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->jsonData:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 1
    .parameter "sharePath"

    .prologue
    .line 42
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;->cscc:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    .line 43
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/ShareContentChangeNtfRequest;->sharePath:Ljava/lang/String;

    .line 44
    return-void
.end method
