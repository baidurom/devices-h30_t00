.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;
.super Ljava/lang/Object;
.source "ClientBaseRsp.java"


# instance fields
.field private code:I

.field private info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;->code:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;->info:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "info"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;->code:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;->info:Ljava/lang/String;

    .line 28
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;->code:I

    .line 29
    iput-object p2, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;->info:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;->code:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;->info:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 45
    iput p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;->code:I

    .line 46
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ClientBaseRsp;->info:Ljava/lang/String;

    .line 62
    return-void
.end method
