.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;
.super Ljava/lang/Object;
.source "DmcManagerClient.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "AirSharingPublic_DmcManagerAgent"


# instance fields
.field private allDeviceMediaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcMediaManager;

.field private dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;)V
    .locals 1
    .parameter "dlnaService"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 34
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/AllDeviceMediaManagerClient;

    invoke-direct {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/AllDeviceMediaManagerClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->allDeviceMediaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcMediaManager;

    .line 35
    return-void
.end method


# virtual methods
.method public addDeviceListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;

    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-direct {v2, v3, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;)V

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->addDeviceListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addHuaweiIdListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/HuaweiIdChangedListener;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 148
    return-void
.end method

.method public addMediaChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/MediaChangedListenerAgent;

    invoke-direct {v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/MediaChangedListenerAgent;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;)V

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->addMediaChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    .locals 6
    .parameter "deviceId"

    .prologue
    .line 75
    const/4 v2, 0x0

    .line 77
    .local v2, result:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v4, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    move-result-object v1

    .line 78
    .local v1, remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getDeviceId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 79
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getDeviceType()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    move-result-object v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->DMS_DEVICE:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    if-ne v4, v5, :cond_1

    .line 80
    new-instance v3, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-direct {v3, v4, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V

    .end local v2           #result:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    .local v3, result:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    move-object v2, v3

    .line 91
    .end local v1           #remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
    .end local v3           #result:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    .restart local v2       #result:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    :cond_0
    :goto_0
    return-object v2

    .line 81
    .restart local v1       #remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
    :cond_1
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;->getDeviceType()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    move-result-object v4

    sget-object v5, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;->DMR_DEVICE:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/ERemoteDeviceType;

    if-ne v4, v5, :cond_0

    .line 82
    new-instance v3, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-direct {v3, v4, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V

    .end local v2           #result:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    .restart local v3       #result:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    move-object v2, v3

    .end local v3           #result:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    .restart local v2       #result:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    goto :goto_0

    .line 85
    :cond_2
    new-instance v3, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;

    iget-object v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-direct {v3, v4, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #result:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    .restart local v3       #result:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    move-object v2, v3

    .end local v3           #result:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    .restart local v2       #result:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    goto :goto_0

    .line 88
    .end local v1           #remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDmcMediaManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcMediaManager;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->allDeviceMediaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcMediaManager;

    return-object v0
.end method

.method public getRemoteDmrDeviceList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v2, dmrAgentList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;>;"
    :try_start_0
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v6}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getRemoteDmrDeviceList()Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, devList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 52
    .end local v0           #devList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    :cond_0
    :goto_1
    return-object v2

    .line 44
    .restart local v0       #devList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    .restart local v4       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    .line 45
    .local v5, remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;

    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-direct {v1, v6, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmrDeviceClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V

    .line 46
    .local v1, dmrAgent:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v0           #devList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    .end local v1           #dmrAgent:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    .end local v5           #remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
    :catch_0
    move-exception v3

    .line 50
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRemoteDmsDeviceList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v2, dmsAgentList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;>;"
    :try_start_0
    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v6}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getRemoteDmsDeviceList()Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, devList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 70
    .end local v0           #devList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    :cond_0
    :goto_1
    return-object v2

    .line 62
    .restart local v0       #devList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    .restart local v4       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;

    .line 63
    .local v5, remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;

    iget-object v6, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-direct {v1, v6, v5}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/RemoteDmsDeviceClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;)V

    .line 64
    .local v1, dmsAgent:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v0           #devList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    .end local v1           #dmsAgent:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;>;"
    .end local v5           #remoteDevice:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/RemoteDevice;
    :catch_0
    move-exception v3

    .line 68
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public removeDeviceListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;

    iget-object v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-direct {v2, v3, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DeviceChangedListenerAgent;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;)V

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->removeDeviceListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDeviceChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeHuaweiIdListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/HuaweiIdChangedListener;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 153
    return-void
.end method

.method public removeMediaChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/MediaChangedListenerAgent;

    invoke-direct {v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/MediaChangedListenerAgent;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;)V

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->removeMediaChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLMediaChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public searchDevice()V
    .locals 2

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->searchDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
