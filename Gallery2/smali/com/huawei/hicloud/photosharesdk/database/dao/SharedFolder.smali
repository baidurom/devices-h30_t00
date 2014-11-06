.class public final Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;
.super Ljava/lang/Object;
.source "SharedFolder.java"


# instance fields
.field private createTime:Ljava/lang/String;

.field private folderInfo:Ljava/lang/String;

.field private folderName:Ljava/lang/String;

.field private folderPathRemote:Ljava/lang/String;

.field private folderType:I

.field private sharePath:Ljava/lang/String;

.field private sharerAccount:Ljava/lang/String;

.field private sharerName:Ljava/lang/String;


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
    .line 31
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->folderInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderPathRemote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->folderPathRemote:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->folderType:I

    return v0
.end method

.method public getSharePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->sharePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSharerAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->sharerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getSharerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->sharerName:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->createTime:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setFolderInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "folderInfo"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->folderInfo:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .parameter "folderName"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->folderName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setFolderPathRemote(Ljava/lang/String;)V
    .locals 0
    .parameter "folderPathRemote"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->folderPathRemote:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setFolderType(I)V
    .locals 0
    .parameter "folderType"

    .prologue
    .line 67
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->folderType:I

    .line 68
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->sharePath:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setSharerAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "sharerAccount"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->sharerAccount:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSharerName(Ljava/lang/String;)V
    .locals 0
    .parameter "sharerName"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->sharerName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    const-string v0, "folderName %s;folderPathRemote %s;createTime %s;sharerName %s;sharerAccount %s;folderInfo %s;folderType %d;sharePath %s"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 82
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->folderName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->folderPathRemote:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->createTime:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->sharerName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->sharerAccount:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 83
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->folderInfo:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->folderType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/SharedFolder;->sharePath:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 81
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    return-object v0
.end method
