.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;
.super Ljava/lang/Object;
.source "DmcTransportControllerClient.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/IDmcTransportControllerClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "AirSharingPublic_DmcTransportControllerClient"


# instance fields
.field private dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

.field private mDeviceId:I


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;I)V
    .locals 3
    .parameter "dlnaService"
    .parameter "deviceId"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 29
    iput p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    .line 31
    const-string v0, "AirSharingPublic_DmcTransportControllerClient"

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DmcTransportControllerClient(IDLNAService dlnaService, int deviceId) with deviceId["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method


# virtual methods
.method public getPositionInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    .locals 4

    .prologue
    .line 209
    :try_start_0
    const-string v1, "AirSharingPublic_DmcTransportControllerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPositionInfo() with deviceId["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getPositionInfo(I)Lcom/huawei/android/multiscreen/dlna/sdk/common/PositionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 214
    :goto_0
    return-object v1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 214
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTransportStateInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    .locals 5

    .prologue
    .line 220
    :try_start_0
    const-string v2, "AirSharingPublic_DmcTransportControllerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTransportStateInfo() with deviceId["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;-><init>()V

    .line 222
    .local v1, transportStateInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 223
    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-interface {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getTransportStateInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;->valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;->setTransportState(Lcom/huawei/android/multiscreen/dlna/sdk/common/ETransportState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v1           #transportStateInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/TransportStateInfo;
    :goto_0
    return-object v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 228
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVolume()Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
    .locals 4

    .prologue
    .line 234
    :try_start_0
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;-><init>()V

    .line 235
    .local v1, volumeInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-interface {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;->setCurrentVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v1           #volumeInfo:Lcom/huawei/android/multiscreen/dlna/sdk/common/VolumeInfo;
    :goto_0
    return-object v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 240
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pause()Z
    .locals 4

    .prologue
    .line 128
    :try_start_0
    const-string v1, "AirSharingPublic_DmcTransportControllerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pause() with deviceId["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->pause(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 133
    :goto_0
    return v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 133
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public play()Z
    .locals 4

    .prologue
    .line 117
    :try_start_0
    const-string v1, "AirSharingPublic_DmcTransportControllerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "play() with deviceId["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->play(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 122
    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 122
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
    .locals 5
    .parameter "media"

    .prologue
    .line 62
    :try_start_0
    const-string v3, "AirSharingPublic_DmcTransportControllerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "push(MediaInfo media) with media["

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;-><init>()V

    .line 64
    .local v1, mediaInfoConvert:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    invoke-virtual {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->setMediaInfo(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)V

    .line 65
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-interface {v2, v3, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->pushImage(ILcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;)Z

    move-result v2

    .line 69
    .end local v1           #mediaInfoConvert:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    :goto_1
    return v2

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public push(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;Ljava/lang/String;)Z
    .locals 6
    .parameter "media"
    .parameter "localPositionTime"

    .prologue
    .line 75
    :try_start_0
    const-string v3, "AirSharingPublic_DmcTransportControllerClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "push(MediaInfo media, String localPositionTime) with media["

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v1, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;

    invoke-direct {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;-><init>()V

    .line 79
    .local v1, mediaInfoConvert:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    invoke-virtual {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->setMediaInfo(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)V

    .line 80
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-interface {v2, v3, v1, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->push(ILcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;Ljava/lang/String;)Z

    move-result v2

    .line 84
    .end local v1           #mediaInfoConvert:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    :goto_1
    return v2

    .line 76
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "] localPositionTime["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    const-string v5, "]."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public pushMedia(Ljava/lang/String;Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Ljava/lang/String;)Z
    .locals 4
    .parameter "uri"
    .parameter "type"
    .parameter "name"

    .prologue
    .line 90
    :try_start_0
    const-string v1, "AirSharingPublic_DmcTransportControllerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pushMedia(String uri, EMediaInfoType type, String name) with uri["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],type["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],name["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->pushMedia(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 96
    :goto_0
    return v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pushMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "uri"
    .parameter "type"
    .parameter "name"
    .parameter "localPositionTime"

    .prologue
    .line 104
    :try_start_0
    const-string v0, "AirSharingPublic_DmcTransportControllerClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pushMedia(String uri, String type, String name, String localPositionTime) uri["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    const-string v2, "],type["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],name["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],localpositionTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->pushMediaAtPositionTime(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 108
    :catch_0
    move-exception v6

    .line 109
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seek(Ljava/lang/String;)Z
    .locals 4
    .parameter "target"

    .prologue
    .line 139
    :try_start_0
    const-string v1, "AirSharingPublic_DmcTransportControllerClient"

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "seek(String target) with deviceId["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],target["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 141
    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-interface {v1, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->seek(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 146
    :goto_0
    return v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 146
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNextUri(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
    .locals 4
    .parameter "media"

    .prologue
    .line 176
    :try_start_0
    const-string v2, "AirSharingPublic_DmcTransportControllerClient"

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "setNextUri(MediaInfo media) with media["

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-interface {v1, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->setNextUri(ILcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z

    move-result v1

    .line 183
    :goto_1
    return v1

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 183
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setVolume(I)Z
    .locals 4
    .parameter "volume"

    .prologue
    .line 163
    :try_start_0
    const-string v1, "AirSharingPublic_DmcTransportControllerClient"

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setVolume(int volume) with deviceId["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",volume["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 165
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-interface {v1, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->setVolume(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 170
    :goto_0
    return v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 170
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startProcessSync()V
    .locals 4

    .prologue
    .line 189
    :try_start_0
    const-string v1, "AirSharingPublic_DmcTransportControllerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startProcessSync() with deviceId["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->startProcessSync(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startSync(Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;)V
    .locals 5
    .parameter "listener"
    .parameter "syncFailedListener"

    .prologue
    .line 39
    :try_start_0
    const-string v1, "AirSharingPublic_DmcTransportControllerClient"

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startSync(PlayerStateChangedListener listener, SyncFailedListener syncFailedListener) with listener["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    new-instance v3, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerStateChangedListenerAgent;

    invoke-direct {v3, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/PlayerStateChangedListenerAgent;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/common/PlayerStateChangedListener;)V

    .line 43
    new-instance v4, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/SyncFailedListenerAgent;

    invoke-direct {v4, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/SyncFailedListenerAgent;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/common/SyncFailedListener;)V

    .line 42
    invoke-interface {v1, v2, v3, v4}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->startSync(ILcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLPlayerStateChangedListener;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLSyncFailedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()Z
    .locals 4

    .prologue
    .line 152
    :try_start_0
    const-string v1, "AirSharingPublic_DmcTransportControllerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stop() with deviceId["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->stop(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 157
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 157
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopProcessSync()V
    .locals 4

    .prologue
    .line 199
    :try_start_0
    const-string v1, "AirSharingPublic_DmcTransportControllerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopProcessSync() with deviceId["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->stopProcessSync(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopSync()V
    .locals 3

    .prologue
    .line 52
    :try_start_0
    const-string v1, "AirSharingPublic_DmcTransportControllerClient"

    const-string v2, "stopSync() called."

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/DmcTransportControllerClient;->mDeviceId:I

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->stopSync(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
