.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;
.super Ljava/lang/Object;
.source "DLNATransportInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;,
        Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;
    }
.end annotation


# instance fields
.field private returnValue:I

.field private source:Ljava/lang/String;

.field private tranState:I

.field private tranStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getReturnValue()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;->returnValue:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTranState()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
    .locals 2

    .prologue
    .line 73
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;->tranState:I

    packed-switch v1, :pswitch_data_0

    .line 90
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    .line 93
    .local v0, result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
    :goto_0
    return-object v0

    .line 75
    .end local v0           #result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
    :pswitch_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->STOPPED:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    .line 76
    .restart local v0       #result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
    goto :goto_0

    .line 78
    .end local v0           #result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
    :pswitch_1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->PLAYING:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    .line 79
    .restart local v0       #result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
    goto :goto_0

    .line 81
    .end local v0           #result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
    :pswitch_2
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->PAUSED_PLAYBACK:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    .line 82
    .restart local v0       #result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
    goto :goto_0

    .line 84
    .end local v0           #result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
    :pswitch_3
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->PAUSED_RECODING:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    .line 85
    .restart local v0       #result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
    goto :goto_0

    .line 87
    .end local v0           #result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
    :pswitch_4
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;->NO_MEDIA_PRESENT:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    .line 88
    .restart local v0       #result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;
    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getTranStatus()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;
    .locals 2

    .prologue
    .line 103
    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;->tranStatus:I

    packed-switch v1, :pswitch_data_0

    .line 111
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;->INVALID:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    .line 114
    .local v0, result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;
    :goto_0
    return-object v0

    .line 105
    .end local v0           #result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;
    :pswitch_0
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;->OK:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    .line 106
    .restart local v0       #result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;
    goto :goto_0

    .line 108
    .end local v0           #result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;
    :pswitch_1
    sget-object v0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;->ERROR_OCCURRED:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    .line 109
    .restart local v0       #result:Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;
    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setReturnValue(I)V
    .locals 0
    .parameter "returnValue"

    .prologue
    .line 38
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;->returnValue:I

    .line 39
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;->source:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setTranState(I)V
    .locals 0
    .parameter "tranState"

    .prologue
    .line 42
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;->tranState:I

    .line 43
    return-void
.end method

.method public setTranStatus(I)V
    .locals 0
    .parameter "tranStatus"

    .prologue
    .line 46
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;->tranStatus:I

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNATransportInfo [returnValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;->returnValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tranState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;->getTranState()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStateEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tranStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;->getTranStatus()Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo$DlnaTransportStatusEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNATransportInfo;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
