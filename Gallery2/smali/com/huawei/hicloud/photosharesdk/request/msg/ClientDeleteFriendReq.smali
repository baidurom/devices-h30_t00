.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;
.source "ClientDeleteFriendReq.java"


# instance fields
.field private account:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;->account:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "agrs"

    .prologue
    .line 35
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;-><init>()V

    .line 36
    .local v2, jsonObj:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;->setCode(I)V

    .line 37
    const-class v3, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;->setInfo(Ljava/lang/String;)V

    .line 39
    const-string v3, "zhangsan@qq.com"

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;->setAccount(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 42
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, jsonMsg:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-class v5, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;

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

    .line 44
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;->account:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientDeleteFriendReq;->account:Ljava/lang/String;

    .line 30
    return-void
.end method
