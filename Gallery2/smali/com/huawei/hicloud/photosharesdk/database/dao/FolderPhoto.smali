.class public final Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;
.super Ljava/lang/Object;
.source "FolderPhoto.java"


# instance fields
.field private createTime:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private isNew:Z

.field private md5:Ljava/lang/String;

.field private photoPathRemote:Ljava/lang/String;

.field private photoSize:Ljava/lang/Long;

.field private photoUrl:Ljava/lang/String;

.field private sharedPath:Ljava/lang/String;


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
    .line 38
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoPathRemote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->photoPathRemote:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->photoSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->sharedPath:Ljava/lang/String;

    return-object v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->isNew:Z

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->createTime:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->fileName:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .parameter "md5"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->md5:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setNew(Z)V
    .locals 0
    .parameter "isNew"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->isNew:Z

    .line 35
    return-void
.end method

.method public setPhotoPathRemote(Ljava/lang/String;)V
    .locals 0
    .parameter "photoPathRemote"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->photoPathRemote:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setPhotoSize(Ljava/lang/Long;)V
    .locals 0
    .parameter "photoSize"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->photoSize:Ljava/lang/Long;

    .line 51
    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "photoUrl"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->photoUrl:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setSharedPath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPath"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->sharedPath:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    const-string v0, "sharedPath %s;photoPathRemote %s;isNew %b;createTime %s;md5 %s;fileName %s;"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 81
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->sharedPath:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->photoPathRemote:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->isNew:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->createTime:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->md5:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderPhoto;->fileName:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 79
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
