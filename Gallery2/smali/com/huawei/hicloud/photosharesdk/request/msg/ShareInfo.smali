.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;
.super Ljava/lang/Object;
.source "ShareInfo.java"


# instance fields
.field private physicsPath:Ljava/lang/String;

.field private receiverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;",
            ">;"
        }
    .end annotation
.end field

.field private shareName:Ljava/lang/String;

.field private sharePath:Ljava/lang/String;

.field private sharer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->sharer:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->shareName:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->sharePath:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->physicsPath:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->receiverList:Ljava/util/List;

    .line 6
    return-void
.end method


# virtual methods
.method public getPhysicsPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->physicsPath:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->receiverList:Ljava/util/List;

    return-object v0
.end method

.method public getShareName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->shareName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->sharePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSharer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->sharer:Ljava/lang/String;

    return-object v0
.end method

.method public setPhysicsPath(Ljava/lang/String;)V
    .locals 0
    .parameter "physicsPath"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->physicsPath:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setReceiverList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, receiverList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->receiverList:Ljava/util/List;

    .line 63
    return-void
.end method

.method public setShareName(Ljava/lang/String;)V
    .locals 0
    .parameter "shareName"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->shareName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->sharePath:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setSharer(Ljava/lang/String;)V
    .locals 0
    .parameter "sharer"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->sharer:Ljava/lang/String;

    .line 17
    return-void
.end method
