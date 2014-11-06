.class public Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmsDevice;
.super Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;
.source "RemoteDmsDevice.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;


# instance fields
.field private mediaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;-><init>()V

    .line 35
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmsDevice;->getDeviceId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmsDevice;->mediaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    .line 19
    return-void
.end method


# virtual methods
.method public canUpload()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmsDevice;->mediaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    return-object v0
.end method

.method public setDeviceId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->setDeviceId(I)V

    .line 28
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/RemoteDmsDevice;->mediaManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;

    invoke-virtual {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaManager;->setDeviceId(I)V

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteDmsDevice [name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->productType:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", udn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/BaseRemoteDevice;->udn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
