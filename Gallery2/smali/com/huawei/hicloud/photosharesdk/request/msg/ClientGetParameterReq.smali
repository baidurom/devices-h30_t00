.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;
.source "ClientGetParameterReq.java"


# instance fields
.field private parasName:Ljava/util/List;
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
    .line 15
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;->parasName:Ljava/util/List;

    .line 16
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 39
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 44
    .local v0, gson:Lcom/google/gson/Gson;
    const-string v2, "{\"test\":\"test\",\"parasName\":[\"dbank_sid\",\"dbank_secret\",\"photo_num\",\"photo_exp\"],\"info\":\"ClientGetParameterReq\"}"

    .line 46
    .local v2, test:Ljava/lang/String;
    const-class v3, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;

    .line 45
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;

    .line 48
    .local v1, req:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getParasName()Ljava/util/List;
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
    .line 20
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;->parasName:Ljava/util/List;

    return-object v0
.end method

.method public setParasName(Ljava/util/List;)V
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
    .line 25
    .local p1, parasName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientGetParameterReq;->parasName:Ljava/util/List;

    .line 26
    return-void
.end method
