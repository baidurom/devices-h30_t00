.class public abstract Lcom/huawei/android/freeshare/client/Transmission;
.super Ljava/lang/Object;
.source "Transmission.java"

# interfaces
.implements Lcom/huawei/android/freeshare/client/ITransmission;


# static fields
.field private static final DEFAULT_DELAY_TIME:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "Transmission"

.field private static mBluetoothTransmission:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;


# instance fields
.field protected mActionListener:Lcom/huawei/android/freeshare/client/transfer/ActionListener;

.field protected mContext:Landroid/content/Context;

.field protected mDelayTime:J

.field protected mDeviceManager:Lcom/huawei/android/freeshare/client/device/DeviceManager;

.field private mIsInit:Z

.field protected mMissionManger:Lcom/huawei/android/freeshare/client/transfer/MissionManger;

.field protected mTransfer:Lcom/huawei/android/freeshare/client/transfer/FileTransfer;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mDelayTime:J

    .line 47
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/Transmission;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/huawei/android/freeshare/client/device/DeviceManager;

    invoke-direct {v0}, Lcom/huawei/android/freeshare/client/device/DeviceManager;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mDeviceManager:Lcom/huawei/android/freeshare/client/device/DeviceManager;

    .line 49
    new-instance v0, Lcom/huawei/android/freeshare/client/transfer/MissionManger;

    invoke-direct {v0}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mMissionManger:Lcom/huawei/android/freeshare/client/transfer/MissionManger;

    .line 50
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/Transmission;->getFileTransfer()Lcom/huawei/android/freeshare/client/transfer/FileTransfer;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mTransfer:Lcom/huawei/android/freeshare/client/transfer/FileTransfer;

    .line 51
    return-void
.end method

.method public static declared-synchronized getTransmissionInstance(Landroid/content/Context;)Lcom/huawei/android/freeshare/client/Transmission;
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    const-class v1, Lcom/huawei/android/freeshare/client/Transmission;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/android/freeshare/client/Transmission;->mBluetoothTransmission:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;

    invoke-direct {v0, p0}, Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/android/freeshare/client/Transmission;->mBluetoothTransmission:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;

    .line 43
    :cond_0
    sget-object v0, Lcom/huawei/android/freeshare/client/Transmission;->mBluetoothTransmission:Lcom/huawei/android/freeshare/client/bluetooth/BluetoothTransmission;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addDeviceListener(Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mDeviceManager:Lcom/huawei/android/freeshare/client/device/DeviceManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/freeshare/client/device/DeviceManager;->addDeviceChangeListener(Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;)V

    .line 151
    return-void
.end method

.method public addFileTransferListener(Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mMissionManger:Lcom/huawei/android/freeshare/client/transfer/MissionManger;

    invoke-virtual {v0, p1}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->addMissionListener(Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;)V

    .line 166
    return-void
.end method

.method public cancelDiscover()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public cancelRestMission()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mMissionManger:Lcom/huawei/android/freeshare/client/transfer/MissionManger;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->cancelRestMission()Z

    move-result v0

    return v0
.end method

.method public abstract close()Z
.end method

.method public connect(Lcom/huawei/android/freeshare/client/device/DeviceInfo;)Z
    .locals 1
    .parameter "deviceInfo"

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public createSendMission(Lcom/huawei/android/freeshare/client/device/DeviceInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/android/freeshare/client/transfer/Mission;
    .locals 1
    .parameter "target"
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 121
    new-instance v0, Lcom/huawei/android/freeshare/client/transfer/Mission;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/android/freeshare/client/transfer/Mission;-><init>(Lcom/huawei/android/freeshare/client/Transmission;Lcom/huawei/android/freeshare/client/device/DeviceInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v0, mission:Lcom/huawei/android/freeshare/client/transfer/Mission;
    return-object v0
.end method

.method public createSendMission(Lcom/huawei/android/freeshare/client/device/DeviceInfo;Ljava/util/List;Ljava/lang/String;)Lcom/huawei/android/freeshare/client/transfer/Mission;
    .locals 1
    .parameter "target"
    .parameter
    .parameter "mimeType"
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

    .prologue
    .line 128
    .local p2, uris:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/huawei/android/freeshare/client/transfer/Mission;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/android/freeshare/client/transfer/Mission;-><init>(Lcom/huawei/android/freeshare/client/Transmission;Lcom/huawei/android/freeshare/client/device/DeviceInfo;Ljava/util/List;Ljava/lang/String;)V

    .line 129
    .local v0, mission:Lcom/huawei/android/freeshare/client/transfer/Mission;
    return-object v0
.end method

.method public destroy()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huawei/android/freeshare/client/Transmission;->setInit(Z)V

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public discover()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/freeshare/client/device/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mDeviceManager:Lcom/huawei/android/freeshare/client/device/DeviceManager;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/device/DeviceManager;->getDeviceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getFileTransfer()Lcom/huawei/android/freeshare/client/transfer/FileTransfer;
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, ""

    return-object v0
.end method

.method public getRestMissionNum()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mMissionManger:Lcom/huawei/android/freeshare/client/transfer/MissionManger;

    invoke-virtual {v0}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->getRestMissionNum()I

    move-result v0

    return v0
.end method

.method public init()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/huawei/android/freeshare/client/Transmission;->setInit(Z)V

    .line 71
    return v0
.end method

.method public isDiscovering()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isEnabled()Z
.end method

.method protected declared-synchronized isInit()Z
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mIsInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract isOpened()Z
.end method

.method public abstract open()Z
.end method

.method public removeDeviceListener(Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mDeviceManager:Lcom/huawei/android/freeshare/client/device/DeviceManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/freeshare/client/device/DeviceManager;->removeDeviceChangeListener(Lcom/huawei/android/freeshare/client/device/DeviceChangeListener;)V

    .line 156
    return-void
.end method

.method public removeFileTransferListener(Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mMissionManger:Lcom/huawei/android/freeshare/client/transfer/MissionManger;

    invoke-virtual {v0, p1}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->removeMissionListener(Lcom/huawei/android/freeshare/client/transfer/FileTransferListener;)V

    .line 171
    return-void
.end method

.method public setActionListener(Lcom/huawei/android/freeshare/client/transfer/ActionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/huawei/android/freeshare/client/Transmission;->mActionListener:Lcom/huawei/android/freeshare/client/transfer/ActionListener;

    .line 146
    return-void
.end method

.method public abstract setEnabled(Z)Z
.end method

.method protected declared-synchronized setInit(Z)V
    .locals 1
    .parameter "init"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/huawei/android/freeshare/client/Transmission;->mIsInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTimeout(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/huawei/android/freeshare/client/Transmission;->mDelayTime:J

    .line 98
    return-void
.end method

.method public startMission(Lcom/huawei/android/freeshare/client/transfer/Mission;)Z
    .locals 1
    .parameter "mission"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/huawei/android/freeshare/client/Transmission;->cancelDiscover()Z

    .line 135
    iget-object v0, p0, Lcom/huawei/android/freeshare/client/Transmission;->mMissionManger:Lcom/huawei/android/freeshare/client/transfer/MissionManger;

    invoke-virtual {v0, p1}, Lcom/huawei/android/freeshare/client/transfer/MissionManger;->offer(Lcom/huawei/android/freeshare/client/transfer/Mission;)Z

    move-result v0

    return v0
.end method
