.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;
.source "ClientAccountCheckReq.java"


# instance fields
.field public accList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;->accList:Ljava/util/List;

    .line 34
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 57
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;-><init>()V

    .line 58
    .local v0, req:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;->setCode(I)V

    .line 59
    const-string v1, "ClientAccountCheckReq"

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;->setInfo(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;->getAccList()Ljava/util/List;

    move-result-object v1

    const-string v2, "xiaosheng.huang"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;->getAccList()Ljava/util/List;

    move-result-object v1

    const-string v2, "huawei"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getAccList()Ljava/util/List;
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
    .line 40
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;->accList:Ljava/util/List;

    return-object v0
.end method

.method public setAccList(Ljava/util/List;)V
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
    .line 47
    .local p1, accList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientAccountCheckReq;->accList:Ljava/util/List;

    .line 48
    return-void
.end method
