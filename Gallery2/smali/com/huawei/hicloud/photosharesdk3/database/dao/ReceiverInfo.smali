.class public final Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;
.super Ljava/lang/Object;
.source "ReceiverInfo.java"


# instance fields
.field private receiverAccount:Ljava/lang/String;

.field private receiverName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReceiverAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->receiverAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->receiverName:Ljava/lang/String;

    return-object v0
.end method

.method public setReceiverAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "receiverAccount"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->receiverAccount:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setReceiverName(Ljava/lang/String;)V
    .locals 0
    .parameter "receiverName"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->receiverName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receiverName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->receiverName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    const-string v1, "receiverAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hicloud/photosharesdk3/database/dao/ReceiverInfo;->receiverAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
