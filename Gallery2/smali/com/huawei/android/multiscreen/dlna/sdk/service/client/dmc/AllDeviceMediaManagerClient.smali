.class public Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/AllDeviceMediaManagerClient;
.super Ljava/lang/Object;
.source "AllDeviceMediaManagerClient.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcMediaManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "AirSharingPublic_AllDeviceMediaManagerAgent"


# instance fields
.field private dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;


# direct methods
.method public constructor <init>(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;)V
    .locals 0
    .parameter "dlnaService"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/AllDeviceMediaManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 20
    return-void
.end method


# virtual methods
.method public getMediaInfo(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)Ljava/util/List;
    .locals 3
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
    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/AllDeviceMediaManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getAllDeviceMediaInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 29
    :goto_0
    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 29
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaInfoWithPagination(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;II)Ljava/util/List;
    .locals 3
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
    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/AllDeviceMediaManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 37
    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-interface {v1, v2, p2, p3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getAllDeviceMediaInfoWithPagination(Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 41
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTotalMedia(Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;)I
    .locals 3
    .parameter "type"

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/AllDeviceMediaManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/EMediaInfoType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getAllDeviceTotalMedia(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 51
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public searchMediaInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "query"
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
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/dlna/sdk/service/client/dmc/AllDeviceMediaManagerClient;->dlnaService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->searchAllDeviceMediaInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 61
    const/4 v1, 0x0

    goto :goto_0
.end method
