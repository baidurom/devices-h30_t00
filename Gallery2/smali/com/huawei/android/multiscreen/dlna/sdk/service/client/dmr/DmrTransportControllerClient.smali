.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrTransportControllerClient;
.super Ljava/lang/Object;
.source "DmrTransportControllerClient.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;


# static fields
.field private static final TAG:Ljava/lang/String; = "AirSharingPublic_DmrTransportControllerClient"


# instance fields
.field private aidlPlayerControllerAgent:Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;

.field private dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;)V
    .locals 0
    .parameter "dlnaService"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 25
    return-void
.end method


# virtual methods
.method public notifyTransportStateChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)Z
    .locals 3
    .parameter "transportinfo"

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 41
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->getTransportState()Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->dmrNotifyTransportStateChanged(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 45
    :goto_0
    return v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmrTransportControllerClient"

    const-string v2, "notifyTransportStateChanged"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyVolumeChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;)Z
    .locals 3
    .parameter "volume"

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 53
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;->getCurrentVolume()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->dmrNotifyVolumeChanged(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 57
    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmrTransportControllerClient"

    const-string v2, "notifyVolumeChanged"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onGetPositionInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public onPlay()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public onSeek(Ljava/lang/String;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public onSetMute(Ljava/lang/Boolean;)Z
    .locals 1
    .parameter "isMute"

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public onSetNextUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
    .locals 1
    .parameter "media"

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public onSetUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
    .locals 1
    .parameter "media"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public onSetVolume(I)Z
    .locals 1
    .parameter "volume"

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onStop()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public setPlayerController(Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;)V
    .locals 3
    .parameter "playerController"

    .prologue
    .line 29
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;

    invoke-direct {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;)V

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrTransportControllerClient;->aidlPlayerControllerAgent:Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrTransportControllerClient;->aidlPlayerControllerAgent:Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->setDmrPlayerController(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmrTransportControllerClient"

    const-string v2, "setPlayerController"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
