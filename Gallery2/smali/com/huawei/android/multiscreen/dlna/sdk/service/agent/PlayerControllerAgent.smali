.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;
.super Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub;
.source "PlayerControllerAgent.java"


# instance fields
.field private playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;)V
    .locals 0
    .parameter "playerController"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIPlayerController$Stub;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    .line 19
    return-void
.end method


# virtual methods
.method public onGetPositionInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onGetPositionInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;

    move-result-object v0

    return-object v0
.end method

.method public onPause()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onPause()Z

    move-result v0

    return v0
.end method

.method public onPlay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onPlay()Z

    move-result v0

    return v0
.end method

.method public onSeek(Ljava/lang/String;)Z
    .locals 1
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onSeek(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onSetMute(Z)Z
    .locals 2
    .parameter "isMute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onSetMute(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public onSetNextUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;)Z
    .locals 2
    .parameter "media"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->getMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->getMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onSetNextUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSetUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;)Z
    .locals 2
    .parameter "media"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->getMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->getMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onSetUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSetVolume(I)Z
    .locals 1
    .parameter "volume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onSetVolume(I)Z

    move-result v0

    return v0
.end method

.method public onStop()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerControllerAgent;->playerController:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;

    invoke-interface {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;->onStop()Z

    move-result v0

    return v0
.end method
