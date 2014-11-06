.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;
.super Ljava/lang/Object;
.source "IDmrTransportController.java"


# virtual methods
.method public abstract notifyTransportStateChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)Z
.end method

.method public abstract notifyVolumeChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;)Z
.end method

.method public abstract onGetPositionInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
.end method

.method public abstract onPause()Z
.end method

.method public abstract onPlay()Z
.end method

.method public abstract onSeek(Ljava/lang/String;)Z
.end method

.method public abstract onSetMute(Ljava/lang/Boolean;)Z
.end method

.method public abstract onSetNextUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
.end method

.method public abstract onSetUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
.end method

.method public abstract onSetVolume(I)Z
.end method

.method public abstract onStop()Z
.end method

.method public abstract setPlayerController(Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IPlayerController;)V
.end method
