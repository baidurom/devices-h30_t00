.class public abstract Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;
.super Ljava/lang/Object;
.source "BaseRemoteDevice.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;


# instance fields
.field protected deviceId:I

.field protected ip:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected productType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

.field protected udn:Ljava/lang/String;

.field protected versionMatching:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->deviceId:I

    return v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->productType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    return-object v0
.end method

.method public getUDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->udn:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionMatching()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->versionMatching:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    return-object v0
.end method

.method public setDeviceId(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 90
    iput p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->deviceId:I

    .line 91
    return-void
.end method

.method public setIP(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->ip:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->name:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V
    .locals 0
    .parameter "productType"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->productType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    .line 82
    return-void
.end method

.method public setUDN(Ljava/lang/String;)V
    .locals 0
    .parameter "_udn"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->udn:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setVersionMatching(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;)V
    .locals 0
    .parameter "versionMatching"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->versionMatching:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EVersionMatching;

    .line 118
    return-void
.end method
