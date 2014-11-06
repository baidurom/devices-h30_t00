.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;
.super Ljava/lang/Object;
.source "DlnaMuteInfoEventValue.java"


# instance fields
.field private channel:I

.field private currentMute:I

.field private deviceId:I

.field private instanceId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "deviceId"
    .parameter "instanceId"
    .parameter "channel"
    .parameter "currentMute"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->deviceId:I

    .line 21
    iput p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->instanceId:I

    .line 22
    iput p3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->channel:I

    .line 23
    iput p4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->currentMute:I

    .line 24
    return-void
.end method


# virtual methods
.method public getChannel()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->channel:I

    return v0
.end method

.method public getCurrentMute()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->currentMute:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->deviceId:I

    return v0
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->instanceId:I

    return v0
.end method

.method public setChannel(I)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 48
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->channel:I

    .line 49
    return-void
.end method

.method public setCurrentMute(I)V
    .locals 0
    .parameter "currentMute"

    .prologue
    .line 56
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->currentMute:I

    .line 57
    return-void
.end method

.method public setDeviceId(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 32
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->deviceId:I

    .line 33
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0
    .parameter "instanceId"

    .prologue
    .line 40
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->instanceId:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DlnaMuteInfoEventValue [deviceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->instanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DlnaMuteInfoEventValue;->currentMute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
