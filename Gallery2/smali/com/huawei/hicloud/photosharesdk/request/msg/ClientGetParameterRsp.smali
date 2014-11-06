.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;
.source "ClientGetParameterRsp.java"


# instance fields
.field private parasValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->parasValue:Ljava/util/Map;

    .line 14
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 28
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;-><init>()V

    .line 29
    .local v0, jsonObj:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->setCode(I)V

    .line 30
    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->setInfo(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v1

    const-string v2, "dbank_sid"

    const-string v3, "SSSSSSSSSSSS"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v1

    const-string v2, "dbank_secret"

    const-string v3, "AAAAAAAAAA"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v1

    const-string v2, "photo_num"

    const-string v3, "1000"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->getParasValue()Ljava/util/Map;

    move-result-object v1

    const-string v2, "photo_exp"

    const-string v3, "30"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-class v3, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getParasValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->parasValue:Ljava/util/Map;

    return-object v0
.end method

.method public setParasValue(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, parasValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterRsp;->parasValue:Ljava/util/Map;

    .line 24
    return-void
.end method
