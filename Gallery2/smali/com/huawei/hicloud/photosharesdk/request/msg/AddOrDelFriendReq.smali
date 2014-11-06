.class public Lcom/huawei/hicloud/photosharesdk/request/msg/AddOrDelFriendReq;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;
.source "AddOrDelFriendReq.java"


# instance fields
.field private addReceiverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delReceiverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/AddOrDelFriendReq;->sharePath:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/AddOrDelFriendReq;->addReceiverList:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/AddOrDelFriendReq;->delReceiverList:Ljava/util/List;

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "info"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;-><init>(ILjava/lang/String;)V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/AddOrDelFriendReq;->sharePath:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/AddOrDelFriendReq;->addReceiverList:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/AddOrDelFriendReq;->delReceiverList:Ljava/util/List;

    .line 24
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "agrs"

    .prologue
    .line 57
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;-><init>()V

    .line 58
    .local v2, jsonObj:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;
    const-string v3, "http://"

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->setSharePath(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->getAddReceiverList()Ljava/util/List;

    move-result-object v3

    const-string v4, "user1"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->getAddReceiverList()Ljava/util/List;

    move-result-object v3

    const-string v4, "user2"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->getDelReceiverList()Ljava/util/List;

    move-result-object v3

    const-string v4, "user3"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;->getDelReceiverList()Ljava/util/List;

    move-result-object v3

    const-string v4, "user4"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 64
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, jsonMsg:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-class v5, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientUpdateShareReq;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 66
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getAddReceiverList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/AddOrDelFriendReq;->addReceiverList:Ljava/util/List;

    return-object v0
.end method

.method public getDelReceiverList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/AddOrDelFriendReq;->delReceiverList:Ljava/util/List;

    return-object v0
.end method

.method public getSharePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/AddOrDelFriendReq;->sharePath:Ljava/lang/String;

    return-object v0
.end method

.method public setAddReceiverList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, addReceiverList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/AddOrDelFriendReq;->addReceiverList:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setDelReceiverList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, delReceiverList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/AddOrDelFriendReq;->delReceiverList:Ljava/util/List;

    .line 53
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/AddOrDelFriendReq;->sharePath:Ljava/lang/String;

    .line 34
    return-void
.end method
