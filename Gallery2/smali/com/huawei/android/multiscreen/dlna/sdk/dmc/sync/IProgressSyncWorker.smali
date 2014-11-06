.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IProgressSyncWorker;
.super Ljava/lang/Object;
.source "IProgressSyncWorker.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncTaskWorker;


# virtual methods
.method public abstract getPositionInfo(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
.end method

.method public abstract lockProcess()Z
.end method

.method public abstract notifyPlay(Ljava/lang/String;)V
.end method

.method public abstract notifySeek(I)V
.end method

.method public abstract seek(IIILjava/lang/String;)Z
.end method

.method public abstract startProcessSync()V
.end method

.method public abstract stopProcessSync()V
.end method

.method public abstract unlockProcess()V
.end method
