.class public final Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;
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
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->folderInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderPathRemote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->folderPathRemote:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->folderType:I

    return v0
.end method

.method public getSharePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->sharePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSharerAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->sharerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getSharerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->sharerName:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->createTime:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setFolderInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "folderInfo"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->folderInfo:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .parameter "folderName"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->folderName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setFolderPathRemote(Ljava/lang/String;)V
    .locals 0
    .parameter "folderPathRemote"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->folderPathRemote:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setFolderType(I)V
    .locals 0
    .parameter "folderType"

    .prologue
    .line 95
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->folderType:I

    .line 96
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->sharePath:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setSharerAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "sharerAccount"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->sharerAccount:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setSharerName(Ljava/lang/String;)V
    .locals 0
    .parameter "sharerName"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->sharerName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    const-string v0, "folderName %s;folderPathRemote %s;createTime %s;sharerName %s;sharerAccount %s;folderInfo %s;folderType %d;sharePath %s"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 118
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->folderName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->folderPathRemote:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->createTime:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->sharerName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->sharerAccount:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->folderInfo:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->folderType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 119
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/SharedFolder;->sharePath:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 117
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    return-object v0
.end method
