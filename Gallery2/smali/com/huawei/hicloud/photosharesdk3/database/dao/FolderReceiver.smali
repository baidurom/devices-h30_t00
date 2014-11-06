.class public final Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;
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
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReceiverAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->receiverAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverState()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->receiverState:I

    return v0
.end method

.method public getSharedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->sharedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStateChangedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->stateChangedTime:Ljava/lang/String;

    return-object v0
.end method

.method public setReceiverAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "receiverAccount"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->receiverAccount:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setReceiverState(I)V
    .locals 0
    .parameter "receiverState"

    .prologue
    .line 35
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->receiverState:I

    .line 36
    return-void
.end method

.method public setSharedPath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharedPath"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->sharedPath:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setStateChangedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "stateChangedTime"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->stateChangedTime:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sharedPath:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->sharedPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    const-string v1, "receiverAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->receiverAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    const-string v1, "receiverState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->receiverState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    const-string v1, "stateChangedTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/FolderReceiver;->stateChangedTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
