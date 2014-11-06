.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;
.source "ClientQueryShareReq.java"


# instance fields
.field private scope:I

.field private sharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->scope:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->sharePath:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "agrs"

    .prologue
    .line 45
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;-><init>()V

    .line 46
    .local v2, jsonObj:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->setCode(I)V

    .line 47
    const-class v3, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->setInfo(Ljava/lang/String;)V

    .line 49
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->setScope(I)V

    .line 50
    const-string v3, "http://"

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->setSharePath(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 53
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, jsonMsg:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-class v5, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;

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

    .line 55
    return-void
.end method


# virtual methods
.method public getScope()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->scope:I

    return v0
.end method

.method public getSharePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->sharePath:Ljava/lang/String;

    return-object v0
.end method

.method public setScope(I)V
    .locals 0
    .parameter "scope"

    .prologue
    .line 27
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->scope:I

    .line 28
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientQueryShareReq;->sharePath:Ljava/lang/String;

    .line 40
    return-void
.end method
