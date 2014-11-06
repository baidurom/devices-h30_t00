.class public final Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;
.super Ljava/lang/Object;
.source "FolderPhoto.java"


# instance fields
.field private createTime:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private newFlag:Z

.field private photoPathRemote:Ljava/lang/String;

.field private photoSize:Ljava/lang/Long;

.field private photoUrl:Ljava/lang/String;

.field private sharedPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoPathRemote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->photoPathRemote:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->photoSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->sharedPath:Ljava/lang/String;

    return-object v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->newFlag:Z

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->createTime:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->fileName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .parameter "md5"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->md5:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setNew(Z)V
    .locals 0
    .parameter "isNewParam"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->newFlag:Z

    .line 54
    return-void
.end method

.method public setPhotoPathRemote(Ljava/lang/String;)V
    .locals 0
    .parameter "photoPathRemote"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->photoPathRemote:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPhotoSize(Ljava/lang/Long;)V
    .locals 0
    .parameter "photoSize"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->photoSize:Ljava/lang/Long;

    .line 74
    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "photoUrl"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->photoUrl:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setSharedPath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPath"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->sharedPath:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    const-string v0, "sharedPath %s;photoPathRemote %s;isNew %b;createTime %s;md5 %s;fileName %s;"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->sharedPath:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 114
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->photoPathRemote:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->newFlag:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->createTime:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->md5:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderPhoto;->fileName:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 113
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
