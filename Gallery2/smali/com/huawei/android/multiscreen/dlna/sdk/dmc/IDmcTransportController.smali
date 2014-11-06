.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;
.super Ljava/lang/Object;
.source "IDmcTransportController.java"


# virtual methods
.method public abstract getPositionInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
.end method

.method public abstract getTransportStateInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
.end method

.method public abstract getVolume()Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
.end method

.method public abstract pause()Z
.end method

.method public abstract play()Z
.end method

.method public abstract push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
.end method

.method public abstract push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;Ljava/lang/String;)Z
.end method

.method public abstract seek(Ljava/lang/String;)Z
.end method

.method public abstract setNextUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
.end method

.method public abstract setVolume(I)Z
.end method

.method public abstract startProcessSync()V
.end method

.method public abstract startSync(Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;)V
.end method

.method public abstract stop()Z
.end method

.method public abstract stopProcessSync()V
.end method

.method public abstract stopSync()V
.end method
