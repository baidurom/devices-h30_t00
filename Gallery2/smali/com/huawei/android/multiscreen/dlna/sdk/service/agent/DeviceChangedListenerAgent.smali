.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;
.super Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener$Stub;
.source "DeviceChangedListenerAgent.java"


# instance fields
.field private dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

.field private listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;)V
    .locals 0
    .parameter "dlnaService"
    .parameter "listener"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener$Stub;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 24
    iput-object p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;->listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;

    .line 25
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;->listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onDeviceDown(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V
    .locals 4
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getDeviceType()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->DMR_DEVICE:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    if-ne v2, v3, :cond_2

    .line 49
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;

    .line 50
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 49
    invoke-direct {v0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V

    .line 51
    .local v0, dmrAgent:Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;->listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;

    invoke-interface {v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;->onDeviceDown(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    goto :goto_0

    .line 52
    .end local v0           #dmrAgent:Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getDeviceType()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->DMS_DEVICE:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    if-ne v2, v3, :cond_0

    .line 53
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;

    .line 54
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 53
    invoke-direct {v1, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V

    .line 55
    .local v1, dmsAgent:Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;->listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;

    invoke-interface {v2, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;->onDeviceDown(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    goto :goto_0
.end method

.method public onDeviceUp(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V
    .locals 4
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    if-nez p1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getDeviceType()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->DMR_DEVICE:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    if-ne v2, v3, :cond_2

    .line 33
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;

    .line 34
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 33
    invoke-direct {v0, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V

    .line 35
    .local v0, dmrAgent:Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;->listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;

    invoke-interface {v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;->onDeviceUp(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    goto :goto_0

    .line 36
    .end local v0           #dmrAgent:Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getDeviceType()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    move-result-object v2

    sget-object v3, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->DMS_DEVICE:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    if-ne v2, v3, :cond_0

    .line 37
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;

    .line 38
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 37
    invoke-direct {v1, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V

    .line 39
    .local v1, dmsAgent:Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;->listener:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;

    invoke-interface {v2, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;->onDeviceUp(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V

    goto :goto_0
.end method
