.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrDeviceClient;
.super Ljava/lang/Object;
.source "DmrDeviceClient.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;


# static fields
.field private static final TAG:Ljava/lang/String; = "AirSharingPublic_DmrDeviceClient"


# instance fields
.field private dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

.field private dmrTransportControllerAgent:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;)V
    .locals 1
    .parameter "dlnaService"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 20
    new-instance v0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrTransportControllerClient;

    .line 21
    invoke-direct {v0, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrTransportControllerClient;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;)V

    .line 20
    iput-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrDeviceClient;->dmrTransportControllerAgent:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;

    .line 22
    return-void
.end method


# virtual methods
.method public getDmrTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrDeviceClient;->dmrTransportControllerAgent:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrTransportController;

    return-object v0
.end method

.method public getHuaweiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getDmrDeviceName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 31
    :goto_0
    return-object v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmrDeviceClient"

    const-string v2, "getName"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getDmrDeviceProductType()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, type:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AirSharingPublic_DmrDeviceClient"

    const-string v3, "getProductType"

    invoke-static {v2, v3, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setHuaweiId(Ljava/lang/String;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->setDmrDeviceName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmrDeviceClient"

    const-string v2, "setName"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V
    .locals 3
    .parameter "productType"

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmr/DmrDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->setDmrDeviceProductType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmrDeviceClient"

    const-string v2, "setProductType"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
