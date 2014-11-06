.class public Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;
.super Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponent;
.source "MRSource.java"


# instance fields
.field private mNativeObject:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->nativeConnect(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;)I

    move-result v0

    return v0
.end method

.method public disconnect()I
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->nativeDisconnect()I

    move-result v0

    return v0
.end method

.method public getConnectedDevice()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->nativeGetConnectedDevice()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->nativeGetDescription()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;

    move-result-object v0

    return-object v0
.end method

.method public getMirrorStatus()Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;->values()[Lcom/huawei/android/multiscreen/mirror/sdk/api/EMirrorStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->nativeGetMirrorStatus()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProperty()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->nativeGetProperty()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;->values()[Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->nativeGetStatus()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getmNativeObject()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->mNativeObject:J

    return-wide v0
.end method

.method public mute()I
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->nativeMute()I

    move-result v0

    return v0
.end method

.method protected native nativeConnect(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;)I
.end method

.method protected native nativeDisconnect()I
.end method

.method protected native nativeFinalize()I
.end method

.method protected native nativeGetAudioStatus()I
.end method

.method protected native nativeGetConnectedDevice()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDeviceDescription;
.end method

.method protected native nativeGetDescription()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;
.end method

.method protected native nativeGetMirrorStatus()I
.end method

.method protected native nativeGetProperty()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;
.end method

.method protected native nativeGetStatus()I
.end method

.method protected native nativeMute()I
.end method

.method protected native nativePause()I
.end method

.method protected native nativeRemoveCallBack()I
.end method

.method protected native nativeResume()I
.end method

.method protected native nativeSetCallBack(Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSourceCallback;)I
.end method

.method protected native nativeSetProperty(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;)I
.end method

.method protected native nativeStart()I
.end method

.method protected native nativeStop()I
.end method

.method public removeCallBack()I
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->nativeRemoveCallBack()I

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSourceCallback;)I
    .locals 1
    .parameter "sourceCallBack"

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->nativeSetCallBack(Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRSourceCallback;)I

    move-result v0

    return v0
.end method

.method public setProperty(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;)I
    .locals 1
    .parameter "sSourceProperty"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->nativeSetProperty(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SSourceProperty;)I

    move-result v0

    return v0
.end method

.method protected setmNativeObject(J)V
    .locals 0
    .parameter "mNativeObject"

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->mNativeObject:J

    .line 23
    return-void
.end method

.method public start()I
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->nativeStart()I

    move-result v0

    return v0
.end method

.method public stop()I
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRSource;->nativeStop()I

    move-result v0

    return v0
.end method
