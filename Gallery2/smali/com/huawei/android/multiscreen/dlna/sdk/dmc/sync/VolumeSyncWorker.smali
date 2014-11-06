.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/VolumeSyncWorker;
.super Ljava/lang/Object;
.source "VolumeSyncWorker.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/IVolumeSyncWorker;


# static fields
.field protected static final TAG:Ljava/lang/String; = "VolumeSyncWorker"


# instance fields
.field private deviceId:I

.field private lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/ISyncWorkerManager;I)V
    .locals 1
    .parameter "manager"
    .parameter "deviceId"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/VolumeSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/VolumeSyncWorker;->deviceId:I

    .line 57
    iput p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/VolumeSyncWorker;->deviceId:I

    .line 58
    return-void
.end method


# virtual methods
.method public getLastValue()Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/VolumeSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;

    return-object v0
.end method

.method public bridge synthetic getLastValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/VolumeSyncWorker;->getLastValue()Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeInfo(II)Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
    .locals 4
    .parameter "instanceID"
    .parameter "channel"

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, result:Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v2

    .line 69
    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/VolumeSyncWorker;->deviceId:I

    invoke-virtual {v2, v3, p1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmcGetVolume(III)Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAVolumeInfo;

    move-result-object v1

    .line 70
    .local v1, volume:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAVolumeInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAVolumeInfo;->getReturnValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 71
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;

    .end local v0           #result:Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
    invoke-direct {v0}, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;-><init>()V

    .line 72
    .restart local v0       #result:Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAVolumeInfo;->getCurrentVolume()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;->setCurrentVolume(I)V

    .line 73
    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/VolumeSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;

    .line 75
    :cond_0
    return-object v0
.end method

.method public runSync(I)V
    .locals 0
    .parameter "instanceId"

    .prologue
    .line 97
    return-void
.end method

.method public setVolume(III)Z
    .locals 4
    .parameter "instanceID"
    .parameter "channel"
    .parameter "desiredVolume"

    .prologue
    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/VolumeSyncWorker;->lastSucessValue:Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, result:Z
    invoke-static {}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->getInstance()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;

    move-result-object v1

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/sync/VolumeSyncWorker;->deviceId:I

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaUniswitch;->DlnaApiDmcSetVolume(IIII)I

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 88
    :cond_0
    const-string v1, "VolumeSyncWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "desiredVolume:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",setVolume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v0
.end method
