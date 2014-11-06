.class public Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;
.super Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponent;
.source "MRSink.java"


# instance fields
.field private mNativeObject:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnect()I
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->nativeDisonnect()I

    move-result v0

    return v0
.end method

.method public getDescription()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->nativeGetDescription()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;

    move-result-object v0

    return-object v0
.end method

.method public getMirrorStatus()Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->values()[Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->nativeGetMirrorStatus()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProperty()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->nativeGetProperty()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;->values()[Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->nativeGetStatus()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getmNativeObject()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->mNativeObject:J

    return-wide v0
.end method

.method protected native nativeDisonnect()I
.end method

.method protected native nativeFinalize()I
.end method

.method protected native nativeGetDescription()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;
.end method

.method protected native nativeGetMirrorStatus()I
.end method

.method protected native nativeGetProperty()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;
.end method

.method protected native nativeGetStatus()I
.end method

.method protected native nativePause()I
.end method

.method protected native nativeRemoveCallBack()I
.end method

.method protected native nativeResume()I
.end method

.method protected native nativeSetCallBack(Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;)I
.end method

.method protected native nativeSetProperty(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;)I
.end method

.method protected native nativeStart()I
.end method

.method protected native nativeStop()I
.end method

.method public pause()I
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->nativePause()I

    move-result v0

    return v0
.end method

.method public removeCallBack()I
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->nativeRemoveCallBack()I

    move-result v0

    return v0
.end method

.method public resume()I
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->nativeResume()I

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;)I
    .locals 1
    .parameter "sinkCallBack"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->nativeSetCallBack(Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSinkCallback;)I

    move-result v0

    return v0
.end method

.method public setProperty(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;)I
    .locals 1
    .parameter "sSinkProperty"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->nativeSetProperty(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSinkProperty;)I

    move-result v0

    return v0
.end method

.method protected setmNativeObject(J)V
    .locals 0
    .parameter "mNativeObject"

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->mNativeObject:J

    .line 22
    return-void
.end method

.method public start()I
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->nativeStart()I

    move-result v0

    return v0
.end method

.method public stop()I
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSink;->nativeStop()I

    move-result v0

    return v0
.end method
