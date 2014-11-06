.class public interface abstract Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;
.super Ljava/lang/Object;
.source "IDmcManager.java"


# virtual methods
.method public abstract addDeviceListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;)V
.end method

.method public abstract addHuaweiIdListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/HuaweiIdChangedListener;)V
.end method

.method public abstract addMediaChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;)V
.end method

.method public abstract getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
.end method

.method public abstract getDmcMediaManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcMediaManager;
.end method

.method public abstract getRemoteDmrDeviceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRemoteDmsDeviceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeDeviceListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;)V
.end method

.method public abstract removeHuaweiIdListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/HuaweiIdChangedListener;)V
.end method

.method public abstract removeMediaChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;)V
.end method

.method public abstract searchDevice()V
.end method
