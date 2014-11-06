.class public final Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;
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
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentStage()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->currentStage:I

    return v0
.end method

.method public getOperationType()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->operationType:I

    return v0
.end method

.method public getPhotoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->photoName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoPathLocal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->photoPathLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoPathRemote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->photoPathRemote:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->createTime:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setCurrentStage(I)V
    .locals 0
    .parameter "currentStageParam"

    .prologue
    .line 34
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->currentStage:I

    .line 35
    return-void
.end method

.method public setOperationType(I)V
    .locals 0
    .parameter "operationType"

    .prologue
    .line 64
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->operationType:I

    .line 65
    return-void
.end method

.method public setPhotoName(Ljava/lang/String;)V
    .locals 0
    .parameter "photoName"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->photoName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setPhotoPathLocal(Ljava/lang/String;)V
    .locals 0
    .parameter "photoPathLocal"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->photoPathLocal:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPhotoPathRemote(Ljava/lang/String;)V
    .locals 0
    .parameter "photoPathRemote"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->photoPathRemote:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    const-string v0, "photoName %s;photoPathLocal %s;photoPathRemote %s;createTime %s;operationType %d;"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 95
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->photoName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->photoPathLocal:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->photoPathRemote:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->createTime:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/TaskInfo;->operationType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 94
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
