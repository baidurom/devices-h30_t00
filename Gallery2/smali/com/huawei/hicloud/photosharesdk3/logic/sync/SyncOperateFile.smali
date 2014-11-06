.class public Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
.super Ljava/lang/Object;
.source "SyncOperateFile.java"


# instance fields
.field private createTime:Ljava/lang/String;

.field private downOriginalUrl:Ljava/lang/String;

.field private downThumbUrl:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private folderType:Ljava/lang/String;

.field private isNew:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private physicsPath:Ljava/lang/String;

.field private sharePath:Ljava/lang/String;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->downOriginalUrl:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->downThumbUrl:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->sharePath:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->physicsPath:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->isNew:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->fileName:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->createTime:Ljava/lang/String;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->size:J

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->md5:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->folderType:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 151
    if-ne p0, p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v2

    .line 155
    :cond_1
    if-nez p1, :cond_2

    move v2, v3

    .line 157
    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_3

    move v2, v3

    .line 161
    goto :goto_0

    .line 164
    :cond_3
    move-object v1, p0

    .local v1, thisFile:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    move-object v0, p1

    .line 165
    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;

    .line 167
    .local v0, other:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 168
    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->getSharePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move v2, v3

    .line 167
    goto :goto_0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDownOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->downOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->downThumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->folderType:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNew()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->isNew:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPhysicsPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->physicsPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSharePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->sharePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->size:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->createTime:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setDownOriginalUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "downOriginalUrl"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->downOriginalUrl:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setDownThumbUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "downThumbUrl"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->downThumbUrl:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->fileName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setFolderType(Ljava/lang/String;)V
    .locals 0
    .parameter "folderType"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->folderType:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setIsNew(Ljava/lang/String;)V
    .locals 0
    .parameter "isNew"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->isNew:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .parameter "md5"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->md5:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setPhysicsPath(Ljava/lang/String;)V
    .locals 0
    .parameter "physicsPath"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->physicsPath:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->sharePath:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFile;->size:J

    .line 130
    return-void
.end method
