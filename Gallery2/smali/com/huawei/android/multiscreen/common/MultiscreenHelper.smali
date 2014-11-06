.class public Lcom/huawei/android/multiscreen/common/MultiscreenHelper;
.super Ljava/lang/Object;
.source "MultiscreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;
    }
.end annotation


# static fields
.field public static final DLNA_FAILED:I = 0x4

.field public static final DLNA_SUCCESS:I = 0x3

.field private static final MIN_SERVICE_VERSION_CODE:I = 0x4b0

.field private static final PACKAGE_NAME_SERVICE:Ljava/lang/String; = "com.huawei.android.multiscreen"

.field public static final SERVICE_CONNECT_FAILED:I = 0x1

.field public static final SERVICE_CONNECT_SUCCESS:I = 0x0

.field public static final SERVICE_DISCONNECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AirSharingPublic_MultiscreenHelper"

.field private static mInstance:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;


# instance fields
.field private mCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

.field private mDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

.field private mDmsDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;

.field private mInitMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

.field private mIsServiceBind:Z

.field private mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$1;-><init>(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)V

    iput-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mConnection:Landroid/content/ServiceConnection;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mIsServiceBind:Z

    return-void
.end method

.method static synthetic access$1(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmsDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;

    return-void
.end method

.method static synthetic access$2(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    return-void
.end method

.method static synthetic access$3(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    return-void
.end method

.method static synthetic access$4(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    return-void
.end method

.method static synthetic access$5(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

    return-object v0
.end method

.method static synthetic access$6(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    return-object v0
.end method

.method static synthetic access$7(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mInitMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    return-object v0
.end method

.method static synthetic access$8(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mInitMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/android/multiscreen/common/MultiscreenHelper;
    .locals 2

    .prologue
    .line 134
    const-class v1, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mInstance:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    invoke-direct {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;-><init>()V

    sput-object v0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mInstance:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;

    .line 138
    :cond_0
    sget-object v0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mInstance:Lcom/huawei/android/multiscreen/common/MultiscreenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getServiceVersion()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 748
    iget-object v4, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 749
    iget-object v4, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 753
    .local v2, mPackageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.huawei.android.multiscreen"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 754
    .local v1, mPackageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 756
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .end local v1           #mPackageInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #mPackageManager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v3

    .line 758
    .restart local v2       #mPackageManager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 759
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isWifiDisplayEnabled()Z
    .locals 4

    .prologue
    .line 713
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 714
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mContext:Landroid/content/Context;

    .line 715
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 714
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 717
    .local v0, connManager:Landroid/net/ConnectivityManager;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 719
    .local v1, mWifiDisplay:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 723
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v1           #mWifiDisplay:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 722
    :cond_0
    const-string v2, "AirSharingPublic_MultiscreenHelper"

    const-string v3, "isWifiDisplayEnabled failed mContext=null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setWifiDisplayEnable()V
    .locals 4

    .prologue
    .line 698
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mContext:Landroid/content/Context;

    .line 700
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 699
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 702
    .local v0, connManager:Landroid/net/ConnectivityManager;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 704
    .local v1, mWifiDisplay:Landroid/net/NetworkInfo;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 710
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v1           #mWifiDisplay:Landroid/net/NetworkInfo;
    :goto_0
    return-void

    .line 707
    :cond_0
    const-string v2, "AirSharingPublic_MultiscreenHelper"

    const-string v3, "setWifiDisplayEnable failed mContext=null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addDlnaSystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DlnaSystemEventListenerAgent;

    invoke-direct {v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DlnaSystemEventListenerAgent;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;)V

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->removeDlnaSystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener;)V

    .line 290
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DlnaSystemEventListenerAgent;

    invoke-direct {v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DlnaSystemEventListenerAgent;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;)V

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->addDlnaSystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addWifiDisplayChangedListener(Lcom/huawei/android/multiscreen/mirror/sdk/common/WifiDisplayDeviceChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 769
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 770
    const-string v1, "AirSharingPublic_MultiscreenHelper"

    const-string v2, "setWifiDisplayChangedListener null != mService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    new-instance v2, Lcom/huawei/android/multiscreen/mirror/sdk/service/agent/WifiDisplayDeviceChangedListenerAgent;

    invoke-direct {v2, p1}, Lcom/huawei/android/multiscreen/mirror/sdk/service/agent/WifiDisplayDeviceChangedListenerAgent;-><init>(Lcom/huawei/android/multiscreen/mirror/sdk/common/WifiDisplayDeviceChangedListener;)V

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->addWifiDisplayChangedListener(Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bindService()Z
    .locals 5

    .prologue
    .line 146
    const-string v2, "AirSharingPublic_MultiscreenHelper"

    const-string v3, "bindService()."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.huawei.android.multiscreen.service.MultiscreenService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, callService:Landroid/content/Intent;
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/huawei/android/multiscreen/common/Util;->isServiceAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 165
    .end local v0           #callService:Landroid/content/Intent;
    :goto_0
    return v2

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;->onBindStateChanged(I)V

    .line 160
    :cond_1
    const-string v2, "AirSharingPublic_MultiscreenHelper"

    const-string v3, "bindService() failed."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public bindService(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;)Z
    .locals 4
    .parameter "initMode"

    .prologue
    .line 330
    const-string v1, "AirSharingPublic_MultiscreenHelper"

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindService(final EDlnaInitMode initMode) with initMode["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getServiceVersion()I

    move-result v0

    .line 333
    .local v0, versionCode:I
    const/16 v1, 0x4b0

    if-lt v0, v1, :cond_0

    .line 334
    invoke-virtual {p0, p1}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->startMultiscreen(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;)Z

    move-result v1

    .line 337
    :goto_0
    return v1

    .line 336
    :cond_0
    iput-object p1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mInitMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    .line 337
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->bindService()Z

    move-result v1

    goto :goto_0
.end method

.method public connectMirror()Z
    .locals 5

    .prologue
    .line 511
    const-string v2, "AirSharingPublic_MultiscreenHelper"

    const-string v3, "connectMirror()."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v1, 0x0

    .line 514
    .local v1, res:Z
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v2, :cond_0

    .line 515
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->mirrorConnect()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 521
    :cond_0
    :goto_0
    const-string v2, "AirSharingPublic_MultiscreenHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "res["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return v1

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnectRendering()Z
    .locals 3

    .prologue
    .line 568
    const-string v1, "AirSharingPublic_MultiscreenHelper"

    const-string v2, "disconnectRendering()."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->disconnectRendering()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 577
    :goto_0
    return v1

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dlnaToMirror()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->connectMirror()Z

    move-result v0

    return v0
.end method

.method public exitDlna()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public getDmcManager()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    return-object v0
.end method

.method public getDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getLocalDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    move-result-object v0

    return-object v0
.end method

.method public getDmsDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getLocalDmsDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;

    move-result-object v0

    return-object v0
.end method

.method public getLocalDmrDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmrDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dmr/IDmrDevice;

    return-object v0
.end method

.method public getLocalDmsDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmsDevice:Lcom/huawei/android/multiscreen/dlna/sdk/dms/IDmsDevice;

    return-object v0
.end method

.method public getMirrorState()I
    .locals 5

    .prologue
    .line 405
    const-string v2, "AirSharingPublic_MultiscreenHelper"

    const-string v3, "getMirrorState()."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v1, -0x1

    .line 409
    .local v1, state:I
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getMirrorState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 415
    :cond_0
    :goto_0
    const-string v2, "AirSharingPublic_MultiscreenHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "state["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v1

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMirroringDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getRenderingDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public getRenderingDevice()Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    .locals 4

    .prologue
    .line 374
    const-string v2, "AirSharingPublic_MultiscreenHelper"

    const-string v3, "getRenderingDevice()."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v0, 0x0

    .line 378
    .local v0, device:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v2, :cond_0

    .line 379
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    if-eqz v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    iget-object v3, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getRenderingDevice()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getDeviceById(I)Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IRemoteDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 386
    :cond_0
    :goto_0
    return-object v0

    .line 383
    :catch_0
    move-exception v1

    .line 384
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRenderingMedia()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 350
    const-string v3, "AirSharingPublic_MultiscreenHelper"

    const-string v4, "getRenderingMedia()."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v3, :cond_0

    .line 353
    iget-object v3, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getRenderingMedia()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;

    move-result-object v1

    .line 355
    .local v1, mediaConvert:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    const-string v4, "AirSharingPublic_MultiscreenHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "mediaInfo["

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    if-nez v1, :cond_1

    move-object v3, v2

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-nez v1, :cond_2

    .line 365
    .end local v1           #mediaConvert:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    :cond_0
    :goto_1
    return-object v2

    .line 356
    .restart local v1       #mediaConvert:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    :cond_1
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->getMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;->getMediaInfo()Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 361
    .end local v1           #mediaConvert:Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfoConvert;
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getStackInitMode()Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    .locals 2

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getStackInitMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;->valueOf(Ljava/lang/String;)Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 326
    :goto_0
    return-object v1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->getVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 283
    :goto_0
    return-object v1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasMultiscreenDevice()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 731
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getServiceVersion()I

    move-result v1

    .line 732
    .local v1, versionCode:I
    const/16 v4, 0x4b0

    if-lt v1, v4, :cond_4

    .line 733
    iget-object v4, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getRemoteDmrDeviceList()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    .line 734
    :cond_0
    iget-object v4, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->hasWifiDisplayDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 743
    .end local v1           #versionCode:I
    :cond_1
    :goto_0
    return v2

    .line 736
    .restart local v1       #versionCode:I
    :cond_2
    iget-object v4, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getRemoteDmrDeviceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3

    iget-object v4, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->hasWifiDisplayDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0

    .line 739
    :cond_4
    iget-object v4, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getRemoteDmrDeviceList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mDmcManager:Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;

    invoke-interface {v4}, Lcom/huawei/android/multiscreen/dlna/sdk/dmc/IDmcManager;->getRemoteDmrDeviceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 741
    .end local v1           #versionCode:I
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isCasting()Z
    .locals 5

    .prologue
    .line 606
    const-string v2, "AirSharingPublic_MultiscreenHelper"

    const-string v3, "isCasting()."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v1, 0x0

    .line 610
    .local v1, isCasting:Z
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v2, :cond_0

    .line 611
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->isCasting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 616
    :cond_0
    :goto_0
    const-string v2, "AirSharingPublic_MultiscreenHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isCasting["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return v1

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isDLNAStackStarted()Z
    .locals 2

    .prologue
    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->isStarted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 234
    :goto_0
    return v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMirrorConnecting()Z
    .locals 2

    .prologue
    .line 451
    const-string v0, "AirSharingPublic_MultiscreenHelper"

    const-string v1, "isMirrorConnecting()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getMirrorState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 454
    const/4 v0, 0x1

    .line 457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMirroring()Z
    .locals 5

    .prologue
    .line 426
    const-string v2, "AirSharingPublic_MultiscreenHelper"

    const-string v3, "isMirroring()."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, isMirroring:Z
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->getMirrorState()I

    move-result v1

    .line 430
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 436
    const/4 v0, 0x0

    .line 439
    :goto_0
    const-string v2, "AirSharingPublic_MultiscreenHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isMirroring["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return v0

    .line 433
    :pswitch_0
    const/4 v0, 0x1

    .line 434
    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public isStarted()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->isDLNAStackStarted()Z

    move-result v0

    return v0
.end method

.method public isSupportDLNA()Z
    .locals 2

    .prologue
    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->isSupportDLNA()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 631
    :goto_0
    return v1

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 631
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportMirror()Z
    .locals 2

    .prologue
    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->isSupportMirror()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 643
    :goto_0
    return v1

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 643
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mirrorToDlna(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
    .locals 3
    .parameter "media"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 483
    const/4 v1, 0x0

    .line 485
    .local v1, res:Z
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->mirrorToDlna(Lcom/huawei/android/multiscreen/dlna/sdk/common/MediaInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 492
    :cond_0
    :goto_0
    return v1

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public muteMirrorSound()Z
    .locals 3

    .prologue
    .line 531
    const-string v1, "AirSharingPublic_MultiscreenHelper"

    const-string v2, "muteMirrorSound()."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->muteMirrorSound()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public openMirrorSound()Z
    .locals 3

    .prologue
    .line 550
    const-string v1, "AirSharingPublic_MultiscreenHelper"

    const-string v2, "openMirrorSound()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->openMirrorSound()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public push()Z
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    return v0
.end method

.method public pushAtPostion()Z
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x0

    return v0
.end method

.method public pushDefaultImage()Z
    .locals 3

    .prologue
    .line 647
    const-string v1, "AirSharingPublic_MultiscreenHelper"

    const-string v2, "pushDefaultImage()."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->pushDefaultImage()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 655
    :goto_0
    return v1

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 655
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeDlnaSystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    new-instance v2, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DlnaSystemEventListenerAgent;

    invoke-direct {v2, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/agent/DlnaSystemEventListenerAgent;-><init>(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/DlnaSystemEventListener;)V

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->removeDlnaSystemEventListener(Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/AIDLDlnaSystemEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeWifiDisplayChangedListener(Lcom/huawei/android/multiscreen/mirror/sdk/common/WifiDisplayDeviceChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 781
    const-string v1, "AirSharingPublic_MultiscreenHelper"

    const-string v2, "setWifiDisplayChangedListener null != mService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    new-instance v2, Lcom/huawei/android/multiscreen/mirror/sdk/service/agent/WifiDisplayDeviceChangedListenerAgent;

    invoke-direct {v2, p1}, Lcom/huawei/android/multiscreen/mirror/sdk/service/agent/WifiDisplayDeviceChangedListenerAgent;-><init>(Lcom/huawei/android/multiscreen/mirror/sdk/common/WifiDisplayDeviceChangedListener;)V

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->removeWifiDisplayChangedListener(Lcom/huawei/android/multiscreen/mirror/sdk/service/aidl/AIDLWifiDisplayDeviceChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public searchDevice()V
    .locals 2

    .prologue
    .line 584
    const-string v0, "AirSharingPublic_MultiscreenHelper"

    const-string v1, "searchDevice()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$2;

    invoke-direct {v0, p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$2;-><init>(Lcom/huawei/android/multiscreen/common/MultiscreenHelper;)V

    .line 597
    invoke-virtual {v0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper$2;->start()V

    .line 598
    return-void
.end method

.method public setBindCompleteCallback(Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mCallback:Lcom/huawei/android/multiscreen/common/MultiscreenHelper$BindStateCallback;

    .line 342
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mContext:Landroid/content/Context;

    .line 143
    return-void
.end method

.method public setLogLevel(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;)Z
    .locals 3
    .parameter "level"

    .prologue
    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-virtual {p1}, Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/ELogLevel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->setLogLevel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    const/4 v1, 0x1

    .line 316
    :goto_0
    return v1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPhoneView(I)V
    .locals 4
    .parameter "currentView"

    .prologue
    .line 466
    const-string v1, "AirSharingPublic_MultiscreenHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPhoneView(int currentView) with currentView["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-interface {v1, p1}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->setPhoneView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startDlna(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;)Z
    .locals 3
    .parameter "initMode"

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;->startDlna(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 199
    :goto_0
    return v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startMultiscreen(Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;)Z
    .locals 2
    .parameter "initMode"

    .prologue
    .line 686
    const-string v0, "AirSharingPublic_MultiscreenHelper"

    const-string v1, "startMultiscreen(EDlnaInitMode initMode)."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iput-object p1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mInitMode:Lcom/huawei/android/multiscreen/dlna/sdk/dlnamanager/EDlnaInitMode;

    .line 689
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->isWifiDisplayEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    const-string v0, "AirSharingPublic_MultiscreenHelper"

    const-string v1, "before setWifiDisplayEnable()."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-direct {p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->setWifiDisplayEnable()V

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->bindService()Z

    move-result v0

    return v0
.end method

.method public unbindService()Z
    .locals 4

    .prologue
    .line 169
    const-string v1, "AirSharingPublic_MultiscreenHelper"

    const-string v2, "unbindService()."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mIsServiceBind:Z

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    .line 175
    const/4 v1, 0x1

    .line 184
    :goto_0
    return v1

    .line 177
    :cond_0
    const-string v1, "AirSharingPublic_MultiscreenHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unbindService() failed mContext["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],mService["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mService:Lcom/huawei/android/multiscreen/dlna/sdk/service/aidl/IDLNAService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 178
    const-string v3, "],mIsServiceBind["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/huawei/android/multiscreen/common/MultiscreenHelper;->mIsServiceBind:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
