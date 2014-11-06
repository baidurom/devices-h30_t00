.class public Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;
.source "PushShareInviteResult.java"


# static fields
.field public static final ACCEPT:Ljava/lang/String; = "0"

.field public static final DECLINE:Ljava/lang/String; = "1"


# instance fields
.field private receiver:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private shareName:Ljava/lang/String;

.field private sharePath:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "3"

    const-class v1, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/PushBaseCmd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->receiver:Ljava/lang/String;

    .line 8
    const-string v0, "0"

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->result:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->sharePath:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->shareName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->userID:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getReceiver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->receiver:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getShareName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->shareName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->sharePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setReceiver(Ljava/lang/String;)V
    .locals 0
    .parameter "receiver"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->receiver:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->result:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setShareName(Ljava/lang/String;)V
    .locals 0
    .parameter "shareName"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->shareName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->sharePath:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .parameter "userID"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/PushShareInviteResult;->userID:Ljava/lang/String;

    .line 65
    return-void
.end method
