.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;
.source "ClientQueryShareRsp.java"


# instance fields
.field private inShareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private outShareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->outShareList:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->inShareList:Ljava/util/List;

    .line 18
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .parameter "agrs"

    .prologue
    const/4 v6, 0x0

    .line 42
    new-instance v3, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;

    invoke-direct {v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;-><init>()V

    .line 43
    .local v3, rs:Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;
    const-string v5, "huangxiaosheng"

    invoke-virtual {v3, v5}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->setAccount(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3, v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReceiveStatus;->setStatus(I)V

    .line 46
    new-instance v4, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;

    invoke-direct {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;-><init>()V

    .line 47
    .local v4, shareInfo:Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;
    const-string v5, "ShareName"

    invoke-virtual {v4, v5}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->setShareName(Ljava/lang/String;)V

    .line 48
    const-string v5, "http://"

    invoke-virtual {v4, v5}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->setSharePath(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->getReceiverList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;-><init>()V

    .line 52
    .local v2, jsonObj:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;
    invoke-virtual {v2, v6}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->setCode(I)V

    .line 53
    const-class v5, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->setInfo(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->getOutShareList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->getInShareList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 59
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, jsonMsg:Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-class v7, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 61
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getInShareList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->inShareList:Ljava/util/List;

    return-object v0
.end method

.method public getOutShareList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->outShareList:Ljava/util/List;

    return-object v0
.end method

.method public setInShareList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, inShareList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->inShareList:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setOutShareList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, outShareList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareRsp;->outShareList:Ljava/util/List;

    .line 28
    return-void
.end method
