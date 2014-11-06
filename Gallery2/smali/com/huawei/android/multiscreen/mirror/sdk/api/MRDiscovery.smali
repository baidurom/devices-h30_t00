.class public Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;
.super Lcom/huawei/android/multiscreen/mirror/sdk/api/MRComponent;
.source "MRDiscovery.java"


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
.method public getDescription()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;->nativeGetDescription()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;

    move-result-object v0

    return-object v0
.end method

.method public getProperty()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDiscoveryProperty;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;->nativeGetProperty()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDiscoveryProperty;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;->values()[Lcom/huawei/android/multiscreen/mirror/sdk/api/EStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;->nativeGetStatus()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getmNativeObject()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;->mNativeObject:J

    return-wide v0
.end method

.method protected native nativeFinalize()I
.end method

.method protected native nativeGetDescription()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SMRDescription;
.end method

.method protected native nativeGetProperty()Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDiscoveryProperty;
.end method

.method protected native nativeGetStatus()I
.end method

.method protected native nativeRefresh()I
.end method

.method protected native nativeRemoveCallBack()I
.end method

.method protected native nativeSetCallBack(Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRDiscoveryCallback;)I
.end method

.method protected native nativeSetProperty(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDiscoveryProperty;)I
.end method

.method protected native nativeStart()I
.end method

.method protected native nativeStop()I
.end method

.method public refresh()I
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;->nativeRefresh()I

    move-result v0

    return v0
.end method

.method public removeCallBack()I
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;->nativeRemoveCallBack()I

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRDiscoveryCallback;)I
    .locals 1
    .parameter "callback"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;->nativeSetCallBack(Lcom/huawei/android/multiscreen/mirror/sdk/api/IMRDiscoveryCallback;)I

    move-result v0

    return v0
.end method

.method public setProperty(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDiscoveryProperty;)I
    .locals 1
    .parameter "sDisCoveryProperty"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;->nativeSetProperty(Lcom/huawei/android/multiscreen/mirror/sdk/structs/SDiscoveryProperty;)I

    move-result v0

    return v0
.end method

.method protected setmNativeObject(J)V
    .locals 4
    .parameter "mNativeObject"

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;->mNativeObject:J

    .line 22
    const-string v0, "MRDiscoveryJNI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mNativeObject is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;->mNativeObject:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public start()I
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;->nativeStart()I

    move-result v0

    return v0
.end method

.method public stop()I
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/mirror/sdk/api/MRDiscovery;->nativeStop()I

    move-result v0

    return v0
.end method
