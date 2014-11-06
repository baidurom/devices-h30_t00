.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;
.source "ClientCreateShareReq.java"


# instance fields
.field private shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    .line 12
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .parameter "agrs"

    .prologue
    .line 25
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;

    invoke-direct {v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;-><init>()V

    .line 26
    .local v3, rs:Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;
    const-string v5, "huangxiaosheng"

    invoke-virtual {v3, v5}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->setAccount(Ljava/lang/String;)V

    .line 27
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->setStatus(I)V

    .line 29
    new-instance v4, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    invoke-direct {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;-><init>()V

    .line 30
    .local v4, shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;
    const-string v5, "ShareName"

    invoke-virtual {v4, v5}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setShareName(Ljava/lang/String;)V

    .line 31
    const-string v5, "http://"

    invoke-virtual {v4, v5}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->setSharePath(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;->getReceiverList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;-><init>()V

    .line 34
    .local v0, ccsr:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;->setCode(I)V

    .line 35
    const-class v5, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;->setInfo(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;->setShareInfo(Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;)V

    .line 38
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 39
    .local v1, gson:Lcom/google/gson/Gson;
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, jsonMsg:Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-class v7, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getShareInfo()Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    return-object v0
.end method

.method public setShareInfo(Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;)V
    .locals 0
    .parameter "shareInfo"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientCreateShareReq;->shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;

    .line 22
    return-void
.end method
