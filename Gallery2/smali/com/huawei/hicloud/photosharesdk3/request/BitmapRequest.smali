.class public Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;
.super Lcom/huawei/hicloud/photosharesdk3/request/Request;
.source "BitmapRequest.java"


# instance fields
.field private bitmapDownloadURL:Ljava/lang/String;

.field private bitmapLocalSavePath:Ljava/lang/String;

.field bitmapTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;

.field private downloadFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "bitmapDownloadUrl"
    .parameter "bitmapLocalSavePath"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 52
    sget-object v0, Lcom/huawei/hicloud/photosharesdk/configure/CommonConstants;->NSP_URL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/hicloud/photosharesdk3/request/Request;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->downloadFlag:Z

    .line 37
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->bitmapDownloadURL:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->bitmapLocalSavePath:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    .line 54
    iput-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->toDbank:Z

    .line 55
    invoke-virtual {p0, v1}, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->setHttpType(I)V

    .line 56
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    const-string v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->bitmapDownloadURL:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->bitmapLocalSavePath:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method protected appendMainBody()V
    .locals 4

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hicloud/photosharesdk/settings/AccountHelper;->getAccountInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/api/vo/AccountInfo;->getServiceToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->paramsters:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cname"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method protected createConnectionTask()Lcom/huawei/hicloud/photosharesdk3/request/connection/ConnectionTask;
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk3/logic/call/SDKObject;->getTagInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...createConnectionTask:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->bitmapDownloadURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->bitmapDownloadURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk3/request/Request;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->bitmapLocalSavePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->bitmapTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;

    .line 69
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->bitmapTask:Lcom/huawei/hicloud/photosharesdk3/request/connection/BitmapTask;

    return-object v0
.end method

.method public isDownloadFlag()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->downloadFlag:Z

    return v0
.end method

.method public setDownloadFlag(Z)V
    .locals 0
    .parameter "downloadFlag"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk3/request/BitmapRequest;->downloadFlag:Z

    .line 91
    return-void
.end method
