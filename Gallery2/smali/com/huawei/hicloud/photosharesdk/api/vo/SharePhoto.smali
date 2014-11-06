.class public Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;
.super Ljava/lang/Object;
.source "SharePhoto.java"


# instance fields
.field private createTime:J

.field private dbankPath:Ljava/lang/String;

.field private isChecked:Z

.field private isNew:Z

.field private labbrPath:Ljava/lang/String;

.field private lrealPath:Ljava/lang/String;

.field private pName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->createTime:J

    return-wide v0
.end method

.method public getDbankPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->dbankPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLabbrPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->labbrPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLrealPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->lrealPath:Ljava/lang/String;

    return-object v0
.end method

.method public getpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->pName:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->isChecked:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->isNew:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "isChecked"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->isChecked:Z

    .line 71
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 140
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->createTime:J

    .line 141
    return-void
.end method

.method public setDbankPath(Ljava/lang/String;)V
    .locals 0
    .parameter "dbankPath"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->dbankPath:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setLabbrPath(Ljava/lang/String;)V
    .locals 0
    .parameter "labbrPath"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->labbrPath:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setLrealPath(Ljava/lang/String;)V
    .locals 0
    .parameter "lrealPath"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->lrealPath:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setNew(Z)V
    .locals 0
    .parameter "isNew"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->isNew:Z

    .line 155
    return-void
.end method

.method public setpName(Ljava/lang/String;)V
    .locals 0
    .parameter "pName"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->pName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 162
    .local v0, retStr:Ljava/lang/StringBuilder;
    const-string v1, "SharePhoto [pName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->pName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dbankPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->dbankPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    const-string v2, ", labbrPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->labbrPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lrealPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->lrealPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string v2, ", createTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->createTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isNew="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/SharePhoto;->isNew:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
