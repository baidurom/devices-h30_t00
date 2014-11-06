.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;
.super Ljava/lang/Object;
.source "SingleDeviceMediaManagerClient.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IMediaManager;


# instance fields
.field private deviceId:I

.field private dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;I)V
    .locals 0
    .parameter "dlnaService"
    .parameter "deviceId"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 22
    iput p2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->deviceId:I

    .line 23
    return-void
.end method


# virtual methods
.method public cacheAllMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)V
    .locals 4
    .parameter "type"

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->deviceId:I

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->cacheAllMedia(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getChildren(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->deviceId:I

    invoke-interface {v1, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getChildren(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 101
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFolderInfoByFolderId(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    .locals 3
    .parameter "folderId"

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->deviceId:I

    invoke-interface {v1, v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getFolderInfoByFolderId(ILjava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 81
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaInfo(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Ljava/util/List;
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->deviceId:I

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getMediaInfo(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 32
    :goto_0
    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 32
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaInfoWithPagination(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)Ljava/util/List;
    .locals 4
    .parameter "type"
    .parameter "start"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->deviceId:I

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getMediaInfoWithPagination(ILjava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 42
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaTotalCount(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;I)I
    .locals 4
    .parameter "type"
    .parameter "cacheSize"

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->deviceId:I

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getTotalMedia(ILjava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 52
    :goto_0
    return v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRootFolderId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->deviceId:I

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getRootFolderId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public searchMediaInfo(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "type"
    .parameter "query"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/common/DmsMediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    iget v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/SingleDeviceMediaManagerClient;->deviceId:I

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->searchMediaInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 71
    const/4 v1, 0x0

    goto :goto_0
.end method
