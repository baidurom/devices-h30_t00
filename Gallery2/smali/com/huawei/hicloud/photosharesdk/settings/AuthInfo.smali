.class public Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# instance fields
.field private clientId:Ljava/lang/String;

.field private photo_exp:Ljava/lang/String;

.field private photo_num:Ljava/lang/String;

.field private secret:Ljava/lang/String;

.field private sid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto_exp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->photo_exp:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto_num()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->photo_num:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .parameter "clientId"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->clientId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setPhoto_exp(Ljava/lang/String;)V
    .locals 0
    .parameter "photo_exp"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->photo_exp:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setPhoto_num(Ljava/lang/String;)V
    .locals 0
    .parameter "photo_num"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->photo_num:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "secret"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->secret:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .parameter "sid"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->sid:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "AuthInfo [sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->sid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", secret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",clientId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->secret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", photo_num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->photo_num:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", photo_exp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/settings/AuthInfo;->photo_exp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
