.class public Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;
.super Ljava/lang/Object;
.source "SyncFolderPartition.java"


# instance fields
.field private cloudList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;"
        }
    .end annotation
.end field

.field private folderType:Ljava/lang/String;

.field private localList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->folderType:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->size:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->localList:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->cloudList:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public getCloudList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->cloudList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->folderType:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->localList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->size:I

    return v0
.end method

.method public setCloudList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, cloudList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->cloudList:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public setFolderType(Ljava/lang/String;)V
    .locals 0
    .parameter "folderType"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->folderType:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setLocalList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, localList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncOperateFolder;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->localList:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 75
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/logic/sync/SyncFolderPartition;->size:I

    .line 76
    return-void
.end method
