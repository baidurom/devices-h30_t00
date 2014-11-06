.class public Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAMuteInfo;
.super Ljava/lang/Object;
.source "DLNAMuteInfo.java"


# instance fields
.field private currentMute:I

.field private returnValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentMute()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAMuteInfo;->currentMute:I

    return v0
.end method

.method public getReturnValue()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAMuteInfo;->returnValue:I

    return v0
.end method

.method public setCurrentMute(I)V
    .locals 0
    .parameter "currentMute"

    .prologue
    .line 48
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAMuteInfo;->currentMute:I

    .line 49
    return-void
.end method

.method public setReturnValue(I)V
    .locals 0
    .parameter "returnValue"

    .prologue
    .line 40
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/jni/DLNAMuteInfo;->returnValue:I

    .line 41
    return-void
.end method
