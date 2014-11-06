.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;
.super Ljava/lang/Object;
.source "DlnaVolumeInfoEventValue.java"


# instance fields
.field private channel:I

.field private currentVol:I

.field private deviceId:I

.field private instanceId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "deviceId"
    .parameter "instanceId"
    .parameter "channel"
    .parameter "currentVol"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->deviceId:I

    .line 22
    iput p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->instanceId:I

    .line 23
    iput p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->channel:I

    .line 24
    iput p4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->currentVol:I

    .line 25
    return-void
.end method


# virtual methods
.method public getChannel()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->channel:I

    return v0
.end method

.method public getCurrentVol()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->currentVol:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->deviceId:I

    return v0
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->instanceId:I

    return v0
.end method

.method public setChannel(I)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 49
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->channel:I

    .line 50
    return-void
.end method

.method public setCurrentVol(I)V
    .locals 0
    .parameter "currentVol"

    .prologue
    .line 57
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->currentVol:I

    .line 58
    return-void
.end method

.method public setDeviceId(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 33
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->deviceId:I

    .line 34
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0
    .parameter "instanceId"

    .prologue
    .line 41
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->instanceId:I

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DlnaVolumeInfoEvent [deviceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->instanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentVol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaVolumeInfoEventValue;->currentVol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
