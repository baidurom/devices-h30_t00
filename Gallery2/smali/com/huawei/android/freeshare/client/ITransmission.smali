.class public interface abstract Lcom/huawei/android/freeshare/client/ITransmission;
.super Ljava/lang/Object;
.source "ITransmission.java"


# virtual methods
.method public abstract addDeviceListener(Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;)V
.end method

.method public abstract addFileTransferListener(Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;)V
.end method

.method public abstract cancelDiscover()Z
.end method

.method public abstract cancelRestMission()Z
.end method

.method public abstract close()Z
.end method

.method public abstract connect(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)Z
.end method

.method public abstract createSendMission(Lcom/huawei/android/freeshare/client/device/DeviceInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/android/freeshare/client/transfer/Mission;
.end method

.method public abstract createSendMission(Lcom/huawei/android/freeshare/client/device/DeviceInfo;Ljava/util/List;Ljava/lang/String;)Lcom/huawei/android/freeshare/client/transfer/Mission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/freeshare/client/device/DeviceInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/android/freeshare/client/transfer/Mission;"
        }
    .end annotation
.end method

.method public abstract destroy()Z
.end method

.method public abstract discover()Z
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDeviceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/freeshare/client/device/DeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocalName()Ljava/lang/String;
.end method

.method public abstract getRestMissionNum()I
.end method

.method public abstract init()Z
.end method

.method public abstract isDiscovering()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isOpened()Z
.end method

.method public abstract open()Z
.end method

.method public abstract removeDeviceListener(Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;)V
.end method

.method public abstract removeFileTransferListener(Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;)V
.end method

.method public abstract setActionListener(Lcom/huawei/android/freeshare/client/transfer/ActionListener;)V
.end method

.method public abstract setEnabled(Z)Z
.end method

.method public abstract setTimeout(J)V
.end method

.method public abstract startMission(Lcom/huawei/android/freeshare/client/transfer/Mission;)Z
.end method
