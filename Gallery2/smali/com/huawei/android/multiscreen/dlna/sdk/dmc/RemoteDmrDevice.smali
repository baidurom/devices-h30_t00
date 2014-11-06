.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmrDevice;
.super Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;
.source "RemoteDmrDevice.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;


# instance fields
.field private transportController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public getHuaweiId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v1

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->deviceId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmcGetHuaweiId(II)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAHuaweiIdInfo;

    move-result-object v0

    .line 44
    .local v0, huaweiIdInfo:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAHuaweiIdInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAHuaweiIdInfo;->getReturnValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAHuaweiIdInfo;->getHuaweiId()Ljava/lang/String;

    move-result-object v1

    .line 47
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmrDevice;->transportController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;

    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmrDevice;->getDeviceId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DmcTransportController;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmrDevice;->transportController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmrDevice;->transportController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteDmrDevice [name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->productType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", udn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->udn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
