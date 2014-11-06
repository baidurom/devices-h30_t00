.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;
.super Ljava/lang/Object;
.source "RemoteDmrDeviceClient.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;


# instance fields
.field private deviceInfo:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

.field private dmcTransportController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V
    .locals 2
    .parameter "dlnaService"
    .parameter "deviceInfo"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;->deviceInfo:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    .line 22
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getDeviceId()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;I)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;->dmcTransportController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    .line 23
    return-void
.end method


# virtual methods
.method public getDeviceId()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;->deviceInfo:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getDeviceId()I

    move-result v0

    return v0
.end method

.method public getHuaweiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;->deviceInfo:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;->deviceInfo:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    move-result-object v0

    return-object v0
.end method

.method public getTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;->dmcTransportController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    return-object v0
.end method

.method public getUDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;->deviceInfo:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getUDN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionMatching()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method
