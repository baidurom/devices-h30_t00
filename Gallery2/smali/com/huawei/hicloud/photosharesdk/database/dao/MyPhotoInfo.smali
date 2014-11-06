.class public final Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;
.super Ljava/lang/Object;
.source "MyPhotoInfo.java"


# instance fields
.field private createTime:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private isNew:Z

.field private photomd5:Ljava/lang/String;

.field private photopathRemote:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoPathRemote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->photopathRemote:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotomd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->photomd5:Ljava/lang/String;

    return-object v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->isNew:Z

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->createTime:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->fileName:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public setNew(Z)V
    .locals 0
    .parameter "isNew"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->isNew:Z

    .line 48
    return-void
.end method

.method public setPhotoPathRemote(Ljava/lang/String;)V
    .locals 0
    .parameter "photopathRemote"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->photopathRemote:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setPhotomd5(Ljava/lang/String;)V
    .locals 0
    .parameter "photomd5"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->photomd5:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    const-string v0, "photomd5 %s;photopathRemote %s;createTime %s;fileName %s;"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->photomd5:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 53
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->photopathRemote:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->createTime:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/MyPhotoInfo;->fileName:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 52
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
