.class public final Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;
.super Ljava/lang/Object;
.source "FolderReceiver.java"


# instance fields
.field private receiverAccount:Ljava/lang/String;

.field private receiverState:I

.field private sharedPath:Ljava/lang/String;

.field private stateChangedTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReceiverAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->receiverAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverState()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->receiverState:I

    return v0
.end method

.method public getSharedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->sharedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStateChangedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->stateChangedTime:Ljava/lang/String;

    return-object v0
.end method

.method public setReceiverAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "receiverAccount"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->receiverAccount:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setReceiverState(I)V
    .locals 0
    .parameter "receiverState"

    .prologue
    .line 22
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->receiverState:I

    .line 23
    return-void
.end method

.method public setSharedPath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPath"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->sharedPath:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setStateChangedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "stateChangedTime"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->stateChangedTime:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    const-string v0, "sharedPath %s;receiverAccount %s;receiverState %d;stateChangedTime %s;"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 45
    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->sharedPath:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->receiverAccount:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->receiverState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/FolderReceiver;->stateChangedTime:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 43
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
