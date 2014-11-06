.class public Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;
.super Ljava/lang/Object;
.source "ShareFolder.java"


# instance fields
.field private coverPath:Ljava/lang/String;

.field private createTime:J

.field private dbankPath:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private folderInfo:Ljava/lang/String;

.field private folderType:I

.field private isNew:Z

.field private localPath:Ljava/lang/String;

.field private pCount:I

.field private receiver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sharePath:Ljava/lang/String;

.field private sharedAccount:Ljava/lang/String;

.field private sharedName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoverPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->coverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->createTime:J

    return-wide v0
.end method

.method public getDbankPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->dbankPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->folderInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->folderType:I

    return v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiver()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->receiver:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSharePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->sharePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->sharedAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->sharedName:Ljava/lang/String;

    return-object v0
.end method

.method public getpCount()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->pCount:I

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->isNew:Z

    return v0
.end method

.method public setCoverPath(Ljava/lang/String;)V
    .locals 0
    .parameter "coverPath"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->coverPath:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->createTime:J

    .line 142
    return-void
.end method

.method public setDbankPath(Ljava/lang/String;)V
    .locals 0
    .parameter "dbankPath"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->dbankPath:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->desc:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->displayName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setFolderInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "folderInfo"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->folderInfo:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setFolderType(I)V
    .locals 0
    .parameter "folderType"

    .prologue
    .line 183
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->folderType:I

    .line 184
    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0
    .parameter "localPath"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->localPath:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setNew(Z)V
    .locals 0
    .parameter "isNew"

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->isNew:Z

    .line 240
    return-void
.end method

.method public setReceiver(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, receiver:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->receiver:Ljava/util/ArrayList;

    .line 198
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->sharePath:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setSharedAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "sharedAccount"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->sharedAccount:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setSharedName(Ljava/lang/String;)V
    .locals 0
    .parameter "sharedName"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->sharedName:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setpCount(I)V
    .locals 0
    .parameter "pCount"

    .prologue
    .line 155
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->pCount:I

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 281
    .local v1, retStr:Ljava/lang/StringBuilder;
    const-string v2, "ShareFolder [displayName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", localPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 282
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->localPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dbankPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->dbankPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 283
    const-string v3, ", sharePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->sharePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", createTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 284
    iget-wide v3, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->createTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->pCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", desc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", folderType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->folderType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sharedName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->sharedName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sharedAccount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->sharedAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 287
    const-string v3, ", isNew="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->isNew:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' coverPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->coverPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->receiver:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->receiver:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/ShareFolder;->receiver:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 289
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;

    .line 290
    .local v0, fInfo:Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
