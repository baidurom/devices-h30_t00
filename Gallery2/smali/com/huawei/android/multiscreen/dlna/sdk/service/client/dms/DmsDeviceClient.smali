.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;
.super Ljava/lang/Object;
.source "DmsDeviceClient.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;


# static fields
.field private static final TAG:Ljava/lang/String; = "AirSharingPublic_DmsDeviceClient"


# instance fields
.field private dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;)V
    .locals 0
    .parameter "dlnaService"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 23
    return-void
.end method


# virtual methods
.method public addShareFilePath(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->addShareFilePath(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 82
    :goto_0
    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmsDeviceClient"

    const-string v2, "addShareFilePath"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cleanShareStorage()Z
    .locals 3

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->cleanShareStorage()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmsDeviceClient"

    const-string v2, "cleanShareStorage"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFileShareState(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    .locals 5
    .parameter "filePath"

    .prologue
    const/4 v4, 0x0

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getFileShareState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, state:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;->valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareStateEnum;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1           #state:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AirSharingPublic_DmsDeviceClient"

    const-string v3, "getFileShareState"

    invoke-static {v2, v3, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getDmsDeviceName()Ljava/lang/String;
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
    const-string v1, "AirSharingPublic_DmsDeviceClient"

    const-string v2, "getName"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProductType()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
    .locals 3

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 49
    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getDmsDeviceProductType()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmsDeviceClient"

    const-string v2, "getProductType"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportShareFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->isSupportShareFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 148
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmsDeviceClient"

    const-string v2, "isSupportShareFile"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValidShareFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->isValidShareFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 168
    :goto_0
    return v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmsDeviceClient"

    const-string v2, "isValidShareFile"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeShareFilePath(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->removeShareFilePath(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 92
    :goto_0
    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmsDeviceClient"

    const-string v2, "removeShareFilePath"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->setDmsDeviceName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmsDeviceClient"

    const-string v2, "setName"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setProductType(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;)V
    .locals 3
    .parameter "productType"

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->setDmsDeviceProductType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmsDeviceClient"

    const-string v2, "setProductType"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setShareEnable(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->setShareEnable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmsDeviceClient"

    const-string v2, "setShareEnable"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setShareFileFilterClient(Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;)V
    .locals 3
    .parameter "shareFileFilterClient"

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/IShareFileFilterAgent;

    .line 155
    invoke-direct {v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/IShareFileFilterAgent;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dms/IShareFileFilter;)V

    .line 154
    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->setShareFileFilterClient(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLIShareFileFilter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmsDeviceClient"

    const-string v2, "setShareFileFilterClient"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateShareFilesPath(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, shareFileList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareFileObject;>;"
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->updateShareFilesPath(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 128
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmsDeviceClient"

    const-string v2, "updateShareFilesPath"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateShareFilesPath(Ljava/util/List;Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;)Z
    .locals 3
    .parameter
    .parameter "operationFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, filePathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dms/DmsDeviceClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 114
    invoke-virtual {p2}, Lcom/huawei/android/multiscreen/dlna/sdk/dms/ShareOperationFlagEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-interface {v1, p1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->updateShareFilesPathByFlag(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 118
    :goto_0
    return v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AirSharingPublic_DmsDeviceClient"

    const-string v2, "updateShareFilesPath"

    invoke-static {v1, v2, v0}, Lcom/huawei/android/multiscreen/dlna/sdk/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    const/4 v1, 0x0

    goto :goto_0
.end method
