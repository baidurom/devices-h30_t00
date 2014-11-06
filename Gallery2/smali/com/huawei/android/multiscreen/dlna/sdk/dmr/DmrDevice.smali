.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrDevice;
.super Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/BaseDevice;
.source "DmrDevice.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;


# instance fields
.field private dmrTransportController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;

.field private huaweiId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/BaseDevice;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrDevice;->huaweiId:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrTransportController;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrDevice;->dmrTransportController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;

    .line 32
    return-void
.end method


# virtual methods
.method public getDmrTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrDevice;->dmrTransportController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;

    return-object v0
.end method

.method public getHuaweiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrDevice;->huaweiId:Ljava/lang/String;

    return-object v0
.end method

.method public setHuaweiId(Ljava/lang/String;)Z
    .locals 2
    .parameter "huaweiId"

    .prologue
    .line 51
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmrSetHuaweiId(Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, ret:I
    if-nez v0, :cond_0

    .line 54
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/DmrDevice;->huaweiId:Ljava/lang/String;

    .line 55
    const/4 v1, 0x1

    .line 57
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
