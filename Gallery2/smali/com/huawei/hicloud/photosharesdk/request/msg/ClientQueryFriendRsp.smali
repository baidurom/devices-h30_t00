.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;
.source "ClientQueryFriendRsp.java"


# instance fields
.field private friendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;->friendList:Ljava/util/List;

    .line 17
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .parameter "agrs"

    .prologue
    .line 44
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;-><init>()V

    .line 45
    .local v2, jsonObj:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;->setCode(I)V

    .line 46
    const-string v3, "success"

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;->setInfo(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;->getFriendList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;

    const-string v5, "hxs"

    const-string v6, "hxs@qq.com"

    invoke-direct {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;->getFriendList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;

    const-string v5, "hxs2"

    const-string v6, "hxs2@qq.com"

    invoke-direct {v4, v5, v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 52
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, jsonMsg:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-class v5, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getFriendList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;->friendList:Ljava/util/List;

    return-object v0
.end method

.method public setFriendList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, friendList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/FriendUser;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryFriendRsp;->friendList:Ljava/util/List;

    .line 37
    return-void
.end method
