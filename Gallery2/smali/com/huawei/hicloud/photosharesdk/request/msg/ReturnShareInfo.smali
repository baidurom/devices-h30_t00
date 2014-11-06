.class public Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;
.super Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;
.source "ReturnShareInfo.java"


# instance fields
.field private createTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/huawei/hicloud/photosharesdk/request/msg/ShareInfo;-><init>()V

    .line 5
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->createTime:Ljava/lang/Long;

    .line 3
    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->createTime:Ljava/lang/Long;

    return-object v0
.end method

.method public setCreateTime(J)V
    .locals 1
    .parameter "creTime"

    .prologue
    .line 8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hicloud/photosharesdk/request/msg/ReturnShareInfo;->createTime:Ljava/lang/Long;

    .line 9
    return-void
.end method
