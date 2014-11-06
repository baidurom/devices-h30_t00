.class public final Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;
.super Ljava/lang/Object;
.source "ReceiverInfo.java"


# instance fields
.field private receiverAccount:Ljava/lang/String;

.field private receiverName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReceiverAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;->receiverAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;->receiverName:Ljava/lang/String;

    return-object v0
.end method

.method public setReceiverAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "receiverAccount"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;->receiverAccount:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setReceiverName(Ljava/lang/String;)V
    .locals 0
    .parameter "receiverName"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;->receiverName:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;->receiverName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/huawei/hicloud/photosharesdk/database/dao/ReceiverInfo;->receiverAccount:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 27
    .local v0, strings:[Ljava/lang/Object;
    const-string v1, "receiverName %s;receiverAccount $s;"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
