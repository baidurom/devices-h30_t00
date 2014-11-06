.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerStateChangedListenerAgent;
.super Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLPlayerStateChangedListener$Stub;
.source "PlayerStateChangedListenerAgent.java"


# instance fields
.field private playerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;)V
    .locals 0
    .parameter "playerStateChangedListener"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLPlayerStateChangedListener$Stub;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerStateChangedListenerAgent;->playerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    .line 24
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
    .line 57
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerStateChangedListenerAgent;->playerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onMediaChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;)V
    .locals 2
    .parameter "media"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->getMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerStateChangedListenerAgent;->playerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->getMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;->onMediaChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)V

    goto :goto_0
.end method

.method public onPositionChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;)V
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerStateChangedListenerAgent;->playerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    invoke-interface {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;->onPositionChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;)V

    .line 29
    return-void
.end method

.method public onTransportStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "transportinfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;-><init>()V

    .line 36
    .local v0, transportStateInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    invoke-static {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->setTransportState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;)V

    .line 37
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerStateChangedListenerAgent;->playerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    invoke-interface {v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;->onTransportStateChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)V

    .line 38
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 2
    .parameter "volume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;-><init>()V

    .line 51
    .local v0, volumeInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;->setCurrentVolume(I)V

    .line 52
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerStateChangedListenerAgent;->playerStateChangedListener:Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;

    invoke-interface {v1, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;->onVolumeChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;)V

    .line 53
    return-void
.end method
