.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;
.source "ClientShareResultReport.java"


# instance fields
.field private receiver:Ljava/lang/String;

.field private result:I

.field private shareName:Ljava/lang/String;

.field private sharePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;-><init>()V

    .line 8
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->receiver:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->result:I

    .line 12
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->sharePath:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->shareName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "receiver"
    .parameter "result"
    .parameter "sharePath"
    .parameter "shareName"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseReq;-><init>()V

    .line 8
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->receiver:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->result:I

    .line 12
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->sharePath:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->shareName:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->receiver:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->result:I

    .line 26
    iput-object p3, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->sharePath:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->shareName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "args"

    .prologue
    .line 70
    new-instance v2, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;

    invoke-direct {v2}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;-><init>()V

    .line 71
    .local v2, jsonObj:Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->setCode(I)V

    .line 72
    const-string v3, "ClientShareResultReport"

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->setInfo(Ljava/lang/String;)V

    .line 74
    const-string v3, "hxs@qq.com"

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->setReceiver(Ljava/lang/String;)V

    .line 75
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->setResult(I)V

    .line 76
    const-string v3, "http://"

    invoke-virtual {v2, v3}, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->setSharePath(Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 79
    .local v0, gson:Lcom/google/gson/Gson;
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, jsonMsg:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-class v5, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 81
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getReceiver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->receiver:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->result:I

    return v0
.end method

.method public getShareName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->shareName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->sharePath:Ljava/lang/String;

    return-object v0
.end method

.method public setReceiver(Ljava/lang/String;)V
    .locals 0
    .parameter "receiver"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->receiver:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 47
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->result:I

    .line 48
    return-void
.end method

.method public setShareName(Ljava/lang/String;)V
    .locals 0
    .parameter "shareName"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->shareName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0
    .parameter "sharePath"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientShareResultReport;->sharePath:Ljava/lang/String;

    .line 58
    return-void
.end method
