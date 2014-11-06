.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;
.source "ClientRegisterReq.java"


# instance fields
.field private parameter:Ljava/util/Map;
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
    .line 34
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;->parameter:Ljava/util/Map;

    .line 36
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .parameter "args"

    .prologue
    .line 59
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;-><init>()V

    .line 60
    .local v2, jsonObj:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;->setCode(I)V

    .line 61
    const-string v4, "ClientRegisterReq"

    invoke-virtual {v2, v4}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;->setInfo(Ljava/lang/String;)V

    .line 62
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v3, para:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "fwv"

    const-string v5, "1.0"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v4, "hwv"

    const-string v5, "1.0"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v4, "swv"

    const-string v5, "1.0"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v4, "pushtoken"

    const-string v5, "AAAAAAAAAAAAAAAAAAAAAA"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;->setParameter(Ljava/util/Map;)V

    .line 70
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 71
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, jsonMsg:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-class v6, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getParameter()Ljava/util/Map;
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
    .line 42
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;->parameter:Ljava/util/Map;

    return-object v0
.end method

.method public setParameter(Ljava/util/Map;)V
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
    .line 49
    .local p1, parameter:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientRegisterReq;->parameter:Ljava/util/Map;

    .line 50
    return-void
.end method
