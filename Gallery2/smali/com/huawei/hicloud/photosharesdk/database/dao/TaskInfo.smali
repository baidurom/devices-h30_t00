.class public final Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;
.super Ljava/lang/Object;
.source "TaskInfo.java"


# instance fields
.field private createTime:Ljava/lang/String;

.field private currentStage:I

.field private operationType:I

.field private photoName:Ljava/lang/String;

.field private photoPathLocal:Ljava/lang/String;

.field private photoPathRemote:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentStage()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->currentStage:I

    return v0
.end method

.method public getOperationType()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->operationType:I

    return v0
.end method

.method public getPhotoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->photoName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoPathLocal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->photoPathLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoPathRemote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->photoPathRemote:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->createTime:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setCurrentStage(I)V
    .locals 0
    .parameter "currentStage"

    .prologue
    .line 22
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->currentStage:I

    .line 23
    return-void
.end method

.method public setOperationType(I)V
    .locals 0
    .parameter "operationType"

    .prologue
    .line 50
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->operationType:I

    .line 51
    return-void
.end method

.method public setPhotoName(Ljava/lang/String;)V
    .locals 0
    .parameter "photoName"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->photoName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPhotoPathLocal(Ljava/lang/String;)V
    .locals 0
    .parameter "photoPathLocal"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->photoPathLocal:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPhotoPathRemote(Ljava/lang/String;)V
    .locals 0
    .parameter "photoPathRemote"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->photoPathRemote:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    const-string v0, "photoName %s;photoPathLocal %s;photoPathRemote %s;createTime %s;operationType %d;"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 73
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->photoName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->photoPathLocal:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->photoPathRemote:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->createTime:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/TaskInfo;->operationType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 72
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    return-object v0
.end method
