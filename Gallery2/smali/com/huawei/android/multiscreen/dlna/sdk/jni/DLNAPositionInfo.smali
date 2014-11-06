.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;
.super Ljava/lang/Object;
.source "DLNAPositionInfo.java"


# instance fields
.field private absCount:I

.field private absTime:Ljava/lang/String;

.field private currentTrack:I

.field private relCount:I

.field private relTime:Ljava/lang/String;

.field private returnValue:I

.field private trackDur:Ljava/lang/String;

.field private trackMetaData:Ljava/lang/String;

.field private trackURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbsCount()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->absCount:I

    return v0
.end method

.method public getAbsTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->absTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTrack()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->currentTrack:I

    return v0
.end method

.method public getRelCount()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->relCount:I

    return v0
.end method

.method public getRelTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->relTime:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnValue()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->returnValue:I

    return v0
.end method

.method public getTrackDur()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->trackDur:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackMetaData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->trackMetaData:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->trackURI:Ljava/lang/String;

    return-object v0
.end method

.method public setAbsCount(I)V
    .locals 0
    .parameter "absCount"

    .prologue
    .line 118
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->absCount:I

    .line 119
    return-void
.end method

.method public setAbsTime(Ljava/lang/String;)V
    .locals 0
    .parameter "absTime"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->absTime:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setCurrentTrack(I)V
    .locals 0
    .parameter "currentTrack"

    .prologue
    .line 62
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->currentTrack:I

    .line 63
    return-void
.end method

.method public setRelCount(I)V
    .locals 0
    .parameter "relCount"

    .prologue
    .line 110
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->relCount:I

    .line 111
    return-void
.end method

.method public setRelTime(Ljava/lang/String;)V
    .locals 0
    .parameter "relTime"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->relTime:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setReturnValue(I)V
    .locals 0
    .parameter "returnValue"

    .prologue
    .line 54
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->returnValue:I

    .line 55
    return-void
.end method

.method public setTrackDur(Ljava/lang/String;)V
    .locals 0
    .parameter "trackDur"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->trackDur:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setTrackMetaData(Ljava/lang/String;)V
    .locals 0
    .parameter "trackMetaData"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->trackMetaData:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setTrackURI(Ljava/lang/String;)V
    .locals 0
    .parameter "trackURI"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->trackURI:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNAPositionInfo [returnValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->returnValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    const-string v1, ", currentTrack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->currentTrack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackDur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->trackDur:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    const-string v1, ", trackURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->trackURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->relTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    const-string v1, ", absCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAPositionInfo;->absCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
