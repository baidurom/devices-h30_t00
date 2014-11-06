.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;
.super Ljava/lang/Object;
.source "ISyncWorkerManager.java"


# virtual methods
.method public abstract addFaildListener(Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;)V
.end method

.method public abstract addStateChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;)V
.end method

.method public abstract close()V
.end method

.method public abstract getCurrentMedia()Ljava/lang/String;
.end method

.method public abstract getPositionInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
.end method

.method public abstract getTransportInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
.end method

.method public abstract getVolume()Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
.end method

.method public abstract pause()Z
.end method

.method public abstract performFaild(Lcom/huawei/android/multiscreen/dlna/sdk/common/ESyncFailedType;Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFaildMessage;)V
.end method

.method public abstract performMediaChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)V
.end method

.method public abstract performPositionChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;)V
.end method

.method public abstract performTransportStateChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;)V
.end method

.method public abstract performVolumeChanged(Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;)V
.end method

.method public abstract play()Z
.end method

.method public abstract push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;Ljava/lang/String;)Z
.end method

.method public abstract removeFaildListener(Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;)V
.end method

.method public abstract removeStateChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;)V
.end method

.method public abstract seek(Ljava/lang/String;)Z
.end method

.method public abstract setCurrentMedia(Ljava/lang/String;)V
.end method

.method public abstract setLocalNextUri(Ljava/lang/String;)Z
.end method

.method public abstract setNextUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
.end method

.method public abstract setVolume(I)Z
.end method

.method public abstract start()V
.end method

.method public abstract startProcessSync()V
.end method

.method public abstract stop()Z
.end method

.method public abstract stopProcessSync()V
.end method
