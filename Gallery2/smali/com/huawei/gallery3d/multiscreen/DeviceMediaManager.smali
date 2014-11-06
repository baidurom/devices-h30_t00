.class public Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;
.super Ljava/lang/Object;
.source "DeviceMediaManager.java"

# interfaces
.implements Lcom/huawei/android/multiscreen/mirror/sdk/common/WifiDisplayDeviceChangedListener;
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;
.implements Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;
    }
.end annotation


# static fields
.field public static final DEVICE_DEFAULT_ID:I = -0x5

.field private static final MSG_DEVICE_CHANGE:I = 0x4

.field private static final MSG_DEVICE_DOWN:I = 0x2

.field private static final MSG_DEVICE_UP:I = 0x1

.field private static final MSG_MEDIA_CHANGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AirSharing_MultiScreenManager"

.field public static final TYPE_BOTH:I = 0x3

.field public static final TYPE_DMR:I = 0x1

.field public static final TYPE_MIRROR:I = 0x2

.field public static final TYPE_UNKNOW:I = 0x4


# instance fields
.field private currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

.field private currDmrID:I

.field private currDmrName:Ljava/lang/String;

.field private currDmrUDN:Ljava/lang/String;

.field private currDmsID:I

.field private currDmsName:Ljava/lang/String;

.field private isSupportDLNA:Z

.field private isSupportMirror:Z

.field private mCallback:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;

.field private mDmrController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mHasDmrDeivces:Z

.field private mHasDmsDeivces:Z

.field private mHasWdDevices:Z

.field private preDmrID:I

.field private preDmsID:I

.field private remoteDmrDevicesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;",
            ">;"
        }
    .end annotation
.end field

.field private remoteDmsDevicesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->remoteDmsDevicesList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->remoteDmrDevicesList:Ljava/util/List;

    .line 48
    iput-boolean v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->isSupportDLNA:Z

    .line 49
    iput-boolean v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->isSupportMirror:Z

    .line 51
    new-instance v0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$1;-><init>(Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;)V

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mHandler:Landroid/os/Handler;

    .line 91
    const/4 v0, -0x5

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    .line 92
    iget v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->preDmsID:I

    .line 93
    iget v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->preDmsID:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->preDmsID:I

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    .line 94
    iget v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->preDmrID:I

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrUDN:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->addDeviceListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;)V

    .line 98
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->addMediaChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;)V

    .line 99
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getMultiscreenHelper()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->addWifiDisplayChangedListener(Lcom/huawei/android/multiscreen/mirror/sdk/common/WifiDisplayDeviceChangedListener;)V

    .line 101
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->DeviceCountChanged()V

    .line 103
    return-void
.end method

.method private DeviceCountChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->getDmsDevicesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 168
    .local v1, dms_size:I
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->getDmrDevicesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 169
    .local v0, dmr_size:I
    const-string v2, "AirSharing_MultiScreenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dms size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v2, "AirSharing_MultiScreenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dmr size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-lez v1, :cond_0

    .line 172
    iput-boolean v6, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mHasDmsDeivces:Z

    .line 176
    :goto_0
    if-lez v0, :cond_1

    .line 177
    iput-boolean v6, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mHasDmrDeivces:Z

    .line 181
    :goto_1
    return-void

    .line 174
    :cond_0
    iput-boolean v5, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mHasDmsDeivces:Z

    goto :goto_0

    .line 179
    :cond_1
    iput-boolean v5, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mHasDmrDeivces:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;)Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mCallback:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->DeviceCountChanged()V

    return-void
.end method


# virtual methods
.method public clearCallback()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mCallback:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;

    .line 163
    invoke-virtual {p0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->onDestroy()V

    .line 164
    return-void
.end method

.method public getController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;
    .locals 4

    .prologue
    .line 275
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mDmrController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    if-nez v2, :cond_1

    .line 277
    :try_start_0
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mDmrController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    .line 279
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrName:Ljava/lang/String;

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mDmrController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    if-nez v2, :cond_1

    .line 282
    const-string v2, "AirSharing_MultiScreenManager"

    const-string v3, "User neaver Selected Device, set Automatically!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getCurrentDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    move-result-object v0

    .line 284
    .local v0, device:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->setCurrentDmrDevice(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0           #device:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mDmrController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    return-object v2

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AirSharing_MultiScreenManager"

    const-string v3, "getController : occur ERROR, Service may be unstable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;
    .locals 2

    .prologue
    .line 328
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v0

    iget v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    invoke-interface {v0, v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    return-object v0
.end method

.method public getCurrentDmrDeviceID()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    return v0
.end method

.method public getCurrentDmrDeviceUDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrUDN:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDmsDeviceID()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmsID:I

    return v0
.end method

.method public declared-synchronized getDmrDevicesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->remoteDmrDevicesList:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 342
    :try_start_1
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->remoteDmrDevicesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 343
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->remoteDmrDevicesList:Ljava/util/List;

    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getRemoteDmrDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->remoteDmrDevicesList:Ljava/util/List;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 346
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 341
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDmrName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDmsDevicesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->remoteDmsDevicesList:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 333
    :try_start_1
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->remoteDmsDevicesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->remoteDmsDevicesList:Ljava/util/List;

    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getRemoteDmsDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 336
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->remoteDmsDevicesList:Ljava/util/List;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 337
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 332
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDmsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmsName:Ljava/lang/String;

    return-object v0
.end method

.method public hasDmrDevices()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mHasDmrDeivces:Z

    return v0
.end method

.method public hasDmsDevices()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mHasDmsDeivces:Z

    return v0
.end method

.method public hasWdDevices()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mHasWdDevices:Z

    return v0
.end method

.method public isDlnaSP()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->isSupportDLNA:Z

    return v0
.end method

.method public isDmrDeviceChanged()Z
    .locals 2

    .prologue
    .line 303
    iget v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->preDmrID:I

    iget v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    const/4 v1, -0x5

    if-eq v0, v1, :cond_0

    .line 305
    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDmsDeviceChanged()Z
    .locals 2

    .prologue
    .line 312
    iget v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->preDmsID:I

    iget v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmsID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMirrorSP()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->isSupportMirror:Z

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 350
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v0

    .line 351
    .local v0, dmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;
    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->removeDeviceListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/DeviceChangedListener;)V

    .line 353
    invoke-interface {v0, p0}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->removeMediaChangedListener(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/MediaChangedListener;)V

    .line 355
    :cond_0
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getMultiscreenHelper()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->removeWifiDisplayChangedListener(Lcom/huawei/android/multiscreen/mirror/sdk/common/WifiDisplayDeviceChangedListener;)V

    .line 357
    return-void
.end method

.method public onDeviceDown(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 115
    instance-of v1, p1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "AirSharing_MultiScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old DMS Down :["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 124
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 125
    return-void

    .line 120
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const-string v1, "AirSharing_MultiScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old DMR Down :["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDeviceUp(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 129
    instance-of v1, p1, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;

    if-eqz v1, :cond_0

    .line 130
    const-string v1, "AirSharing_MultiScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new DMS on :["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    return-void

    .line 133
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const-string v1, "AirSharing_MultiScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new DMR on :["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMediaChanged(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 142
    const-string v1, "AirSharing_MultiScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMediaChanged Deviece ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 144
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 145
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void
.end method

.method public onWifiDeviceChanged()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "AirSharing_MultiScreenManager"

    const-string v1, "onWifiDeviceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    return-void
.end method

.method public rendererExist()Z
    .locals 4

    .prologue
    .line 184
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getMultiscreenHelper()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->hasMultiscreenDevice()Z

    move-result v0

    .line 185
    .local v0, exist:Z
    const-string v1, "AirSharing_MultiScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renderer devices : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v0
.end method

.method public setCurrentDmrDevice(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;)V
    .locals 5
    .parameter "device"

    .prologue
    .line 225
    iget v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    iput v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->preDmrID:I

    .line 226
    const/4 v0, -0x5

    .line 228
    .local v0, deviceID:I
    :try_start_0
    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getDeviceId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 233
    :goto_0
    const/4 v2, -0x5

    if-eq v0, v2, :cond_0

    .line 234
    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    .line 235
    iput-object p1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    .line 236
    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getTransportController()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mDmrController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    .line 237
    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getUDN()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrUDN:Ljava/lang/String;

    .line 238
    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrName:Ljava/lang/String;

    .line 239
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getMultiscreenHelper()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->isSupportDLNA()Z

    move-result v2

    iput-boolean v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->isSupportDLNA:Z

    .line 240
    invoke-static {}, Lcom/huawei/gallery3d/multiscreen/MultiScreenUtils;->getMultiscreenHelper()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->isSupportMirror()Z

    move-result v2

    iput-boolean v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->isSupportMirror:Z

    .line 242
    :cond_0
    const-string v2, "AirSharing_MultiScreenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Change Dmr ID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->preDmrID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]-->("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") supported : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->isSupportMirror:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->isSupportDLNA:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AirSharing_MultiScreenManager"

    const-string v3, "setCurrentDmrDevice : getDeviceID occur ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setCurrentDmsDevice(Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;)V
    .locals 5
    .parameter "device"

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 206
    :cond_0
    iget v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmsID:I

    iput v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->preDmsID:I

    .line 207
    const/4 v0, -0x5

    .line 209
    .local v0, deviceID:I
    :try_start_0
    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;->getDeviceId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 214
    :goto_1
    const/4 v2, -0x5

    if-eq v0, v2, :cond_1

    .line 215
    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmsID:I

    .line 216
    invoke-interface {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmsDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmsName:Ljava/lang/String;

    .line 218
    :cond_1
    const-string v2, "AirSharing_MultiScreenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->preDmrID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AirSharing_MultiScreenManager"

    const-string v3, "setCurrentDmsDevice : getDeviceID occur ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setDefaultDmr()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 247
    iget v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->preDmrID:I

    .line 248
    const/4 v0, -0x5

    iput v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrID:I

    .line 249
    iput-object v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mDmrController:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcTransportController;

    .line 250
    iput-object v2, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDmrDevice;

    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrName:Ljava/lang/String;

    .line 252
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->currDmrUDN:Ljava/lang/String;

    .line 253
    iput-boolean v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->isSupportDLNA:Z

    .line 254
    iput-boolean v1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->isSupportMirror:Z

    .line 255
    return-void
.end method

.method public setDeviceMediaStatusCallback(Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;)V
    .locals 0
    .parameter "dmsc"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager;->mCallback:Lcom/huawei/gallery3d/multiscreen/DeviceMediaManager$DeviceMediaStatusCallback;

    .line 159
    return-void
.end method
