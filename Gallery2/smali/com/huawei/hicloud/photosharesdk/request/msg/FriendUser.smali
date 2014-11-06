.class public Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;
.super Ljava/lang/Object;
.source "FriendUser.java"


# instance fields
.field private account:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "account"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->name:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->account:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->name:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->account:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->account:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;->name:Ljava/lang/String;

    .line 22
    return-void
.end method
