.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;
.super Ljava/lang/Object;
.source "RemoteDmsDeviceClient.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;


# static fields
.field private static final TAG:Ljava/lang/String; = "AirSharingPublic_RemoteDmsDeviceClient"


# instance fields
.field private deviceInfo:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

.field private dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V
    .locals 0
    .parameter "dlnaService"
    .parameter "deviceInfo"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 21
    iput-object p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;->deviceInfo:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    .line 22
    return-void
.end method


# virtual methods
.method public canUpload()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;->deviceInfo:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getDeviceId()I

    move-result v0

    return v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 47
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;->deviceInfo:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getDeviceId()I

    move-result v2

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;I)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;->deviceInfo:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;->deviceInfo:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    move-result-object v0

    return-object v0
.end method

.method public getUDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;->deviceInfo:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getUDN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionMatching()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method
