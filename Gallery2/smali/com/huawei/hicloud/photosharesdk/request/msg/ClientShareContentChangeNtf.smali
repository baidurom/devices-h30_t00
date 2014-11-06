.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;
.source "ClientShareContentChangeNtf.java"


# instance fields
.field private sharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;->sharePath:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "agrs"

    .prologue
    .line 30
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;-><init>()V

    .line 31
    .local v2, jsonObj:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;->setCode(I)V

    .line 32
    const-class v3, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;->setInfo(Ljava/lang/String;)V

    .line 33
    const-string v3, "http://"

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;->setSharePath(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 36
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, jsonMsg:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-class v5, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;

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

    .line 38
    return-void
.end method


# virtual methods
.method public getSharePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;->sharePath:Ljava/lang/String;

    return-object v0
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareContentChangeNtf;->sharePath:Ljava/lang/String;

    .line 25
    return-void
.end method
