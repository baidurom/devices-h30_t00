.class public Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;
.source "PushShareInvite.java"


# instance fields
.field private shareName:Ljava/lang/String;

.field private sharePath:Ljava/lang/String;

.field private sharer:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    const-string v0, "2"

    const-string v1, "PushShareInvite"

    invoke-direct {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->sharer:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->shareName:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->sharePath:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->userID:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getShareName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->shareName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->sharePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSharer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->sharer:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setShareName(Ljava/lang/String;)V
    .locals 0
    .parameter "shareName"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->shareName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->sharePath:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setSharer(Ljava/lang/String;)V
    .locals 0
    .parameter "sharer"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->sharer:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .parameter "userID"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInvite;->userID:Ljava/lang/String;

    .line 49
    return-void
.end method
