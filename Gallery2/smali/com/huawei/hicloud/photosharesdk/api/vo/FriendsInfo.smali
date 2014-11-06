.class public Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;
.super Ljava/lang/Object;
.source "FriendsInfo.java"


# instance fields
.field private account:Ljava/lang/String;

.field private dispName:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getDispName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->dispName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->state:I

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->account:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setDispName(Ljava/lang/String;)V
    .locals 0
    .parameter "dispName"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->dispName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 74
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->state:I

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 82
    .local v0, retStr:Ljava/lang/StringBuilder;
    const-string v1, "FriendsInfo [dispName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->dispName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/hicloud/photosharesdk/api/vo/FriendsInfo;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    return-object v1
.end method
