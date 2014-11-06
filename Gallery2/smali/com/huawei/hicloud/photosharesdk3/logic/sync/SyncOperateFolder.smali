.class public Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
.super Ljava/lang/Object;
.source "SyncOperateFolder.java"


# instance fields
.field private createTime:Ljava/lang/String;

.field private folderType:Ljava/lang/String;

.field private local:Z

.field private oprateTypes:[Ljava/lang/String;

.field private physicsPath:Ljava/lang/String;

.field private recevierList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;",
            ">;"
        }
    .end annotation
.end field

.field private shareName:Ljava/lang/String;

.field private sharePath:Ljava/lang/String;

.field private sharer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    if-ne p0, p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 175
    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 179
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 181
    check-cast v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;

    .line 182
    .local v0, other:Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->physicsPath:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 184
    iget-object v3, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->physicsPath:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 186
    goto :goto_0

    .line 189
    :cond_4
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->physicsPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->physicsPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 191
    goto :goto_0

    .line 193
    :cond_5
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->sharePath:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 195
    iget-object v3, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->sharePath:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 197
    goto :goto_0

    .line 200
    :cond_6
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->sharePath:Ljava/lang/String;

    iget-object v4, v0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->sharePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 202
    goto :goto_0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->folderType:Ljava/lang/String;

    return-object v0
.end method

.method public getOprateTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->oprateTypes:[Ljava/lang/String;

    .line 119
    .local v0, temp:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 125
    .end local v0           #temp:[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #temp:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhysicsPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->physicsPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRecevierList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->recevierList:Ljava/util/List;

    return-object v0
.end method

.method public getShareName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->shareName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->sharePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSharer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->sharer:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLocal()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->local:Z

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->createTime:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setFolderType(Ljava/lang/String;)V
    .locals 0
    .parameter "folderType"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->folderType:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setLocal(Z)V
    .locals 0
    .parameter "local"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->local:Z

    .line 114
    return-void
.end method

.method public setOprateTypes([Ljava/lang/String;)V
    .locals 1
    .parameter "oprateTypes"

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->oprateTypes:[Ljava/lang/String;

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->oprateTypes:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setPhysicsPath(Ljava/lang/String;)V
    .locals 0
    .parameter "physicsPath"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->physicsPath:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setRecevierList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, recevierList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->recevierList:Ljava/util/List;

    .line 94
    return-void
.end method

.method public setShareName(Ljava/lang/String;)V
    .locals 0
    .parameter "shareName"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->shareName:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->sharePath:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setSharer(Ljava/lang/String;)V
    .locals 0
    .parameter "sharer"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->sharer:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncOperateFolder [sharePath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->sharePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", physicsPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->physicsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", folderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->folderType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->shareName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recevierList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->recevierList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sharer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->sharer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 216
    const-string v1, ", local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->local:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oprateTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->oprateTypes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;->createTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
