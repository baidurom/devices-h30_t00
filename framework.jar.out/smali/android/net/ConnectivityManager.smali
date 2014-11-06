.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DATA_ACTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.DATA_ACTIVITY_CHANGE"

.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final CONNECTIVITY_ACTION_IMMEDIATE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

.field public static final CONNECTIVITY_CHANGE_DELAY_DEFAULT:I = 0xbb8

.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x1

.field public static final DISABEL_DATA_SERVICE_ACTION:Ljava/lang/String; = "android.net.conn.DISABEL_DATA_SERVICE_ACTION"

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "activeArray"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final EXTRA_IS_ACTIVE:Ljava/lang/String; = "isActive"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_SIM_ID:Ljava/lang/String; = "simId"

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field public static final MAX_NETWORK_TYPE:I = 0x28

.field public static final MAX_RADIO_NUM:I = 0x2

.field public static final MAX_RADIO_TYPE:I = 0x28

.field public static final READY_FOR_USBINTERNET:Ljava/lang/String; = "android.net.conn.READY_FOR_USBINTERNET"

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final TETHER_CHANGED_DONE_ACTION:Ljava/lang/String; = "android.net.conn.TETHER_CHANGED_DONE"

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_IPV6_AVAIABLE:I = 0x20

.field public static final TETHER_ERROR_IPV6_NO_ERROR:I = 0x10

.field public static final TETHER_ERROR_IPV6_UNAVAIABLE:I = 0x30

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_CBS:I = 0xc

.field public static final TYPE_MOBILE_CMMAIL:I = 0x25

.field public static final TYPE_MOBILE_DM:I = 0x22

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_FOTA:I = 0xa

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_IMS:I = 0xb

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_NET:I = 0x24

.field public static final TYPE_MOBILE_RCSE:I = 0x26

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_MOBILE_WAP:I = 0x23

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_USB:I = 0x28

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIFI_P2P:I = 0xd

.field public static final TYPE_WIMAX:I = 0x6

.field public static final USBINTERNET_DONE_ACTION:Ljava/lang/String; = "android.net.conn.USBINTERNET_CHANGED_DONE"

.field public static final USB_INTERNET_SYSTEM_DEFAULT:I = 0x0

.field public static final USB_INTERNET_SYSTEM_KEY:Ljava/lang/String; = "android.net.conn.USB_INTERNET_SYSTEM_KEY"

.field public static final USB_INTERNET_SYSTEM_NUM:I = 0x2

.field public static final USB_INTERNET_SYSTEM_WIN7:I = 0x1

.field public static final USB_INTERNET_SYSTEM_WINXP:I


# instance fields
.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 800
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 801
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 802
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 806
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 475
    packed-switch p0, :pswitch_data_0

    .line 515
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 477
    :pswitch_1
    const-string v0, "MOBILE"

    goto :goto_0

    .line 479
    :pswitch_2
    const-string v0, "WIFI"

    goto :goto_0

    .line 481
    :pswitch_3
    const-string v0, "MOBILE_MMS"

    goto :goto_0

    .line 483
    :pswitch_4
    const-string v0, "MOBILE_SUPL"

    goto :goto_0

    .line 485
    :pswitch_5
    const-string v0, "MOBILE_DUN"

    goto :goto_0

    .line 487
    :pswitch_6
    const-string v0, "MOBILE_HIPRI"

    goto :goto_0

    .line 489
    :pswitch_7
    const-string v0, "WIMAX"

    goto :goto_0

    .line 491
    :pswitch_8
    const-string v0, "BLUETOOTH"

    goto :goto_0

    .line 493
    :pswitch_9
    const-string v0, "DUMMY"

    goto :goto_0

    .line 495
    :pswitch_a
    const-string v0, "ETHERNET"

    goto :goto_0

    .line 497
    :pswitch_b
    const-string v0, "MOBILE_FOTA"

    goto :goto_0

    .line 499
    :pswitch_c
    const-string v0, "MOBILE_IMS"

    goto :goto_0

    .line 501
    :pswitch_d
    const-string v0, "MOBILE_CBS"

    goto :goto_0

    .line 503
    :pswitch_e
    const-string v0, "WIFI_P2P"

    goto :goto_0

    .line 505
    :pswitch_f
    const-string v0, "MOBILE_DM"

    goto :goto_0

    .line 507
    :pswitch_10
    const-string v0, "MOBILE_NET"

    goto :goto_0

    .line 509
    :pswitch_11
    const-string v0, "MOBILE_WAP"

    goto :goto_0

    .line 511
    :pswitch_12
    const-string v0, "MOBILE_CMMAIL"

    goto :goto_0

    .line 513
    :pswitch_13
    const-string v0, "MOBILE_RCSE"

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 521
    sparse-switch p0, :sswitch_data_0

    .line 537
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 535
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 521
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isNetworkTypeValid(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 470
    if-ltz p0, :cond_0

    const/16 v0, 0x28

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRadioNumValid(I)Z
    .locals 1
    .parameter "radioNum"

    .prologue
    const/4 v0, 0x1

    .line 1113
    if-ltz p0, :cond_0

    if-gt p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1088
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :goto_0
    return-void

    .line 1089
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 600
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 602
    :goto_0
    return-object v1

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 566
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 568
    :goto_0
    return-object v1

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "uid"

    .prologue
    .line 575
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 577
    :goto_0
    return-object v1

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 2

    .prologue
    .line 763
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 765
    :goto_0
    return-object v1

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 591
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 593
    :goto_0
    return-object v1

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackgroundDataSetting()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 736
    const/4 v0, 0x1

    return v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 1011
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1013
    :goto_0
    return-object v1

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"

    .prologue
    .line 961
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 963
    :goto_0
    return v1

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 609
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 611
    :goto_0
    return-object v1

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 2

    .prologue
    .line 777
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 779
    :goto_0
    return v1

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMobileDataEnabledGemini(I)Z
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1169
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getMobileDataEnabledGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1171
    :goto_0
    return v1

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 583
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 585
    :goto_0
    return-object v1

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPreference()I
    .locals 2

    .prologue
    .line 550
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getNetworkPreference()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 552
    :goto_0
    return v1

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPreferredDataSubscription()I
    .locals 2

    .prologue
    .line 1251
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getPreferredDataSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1253
    :goto_0
    return v1

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 1023
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getProxy()Landroid/net/ProxyProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1025
    :goto_0
    return-object v1

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 904
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 906
    :goto_0
    return-object v1

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 814
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 816
    :goto_0
    return-object v1

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 882
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 884
    :goto_0
    return-object v1

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 893
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 895
    :goto_0
    return-object v1

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 825
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 827
    :goto_0
    return-object v1

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 836
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 838
    :goto_0
    return-object v1

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheringIpv6Enable()Z
    .locals 2

    .prologue
    .line 1214
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringIpv6Enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1216
    :goto_0
    return v1

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActiveNetworkMetered()Z
    .locals 2

    .prologue
    .line 1068
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isActiveNetworkMetered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1070
    :goto_0
    return v1

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 1054
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1056
    :goto_0
    return v0

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTetheringChangeDone()Z
    .locals 2

    .prologue
    .line 1102
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isTetheringChangeDone()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1104
    :goto_0
    return v1

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTetheringSupported()Z
    .locals 2

    .prologue
    .line 871
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 873
    :goto_0
    return v1

    .line 872
    :catch_0
    move-exception v0

    .line 873
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportInetCondition(II)V
    .locals 1
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    .line 989
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :goto_0
    return-void

    .line 990
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)Z
    .locals 2
    .parameter "forWhom"

    .prologue
    .line 975
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->requestNetworkTransitionWakelock(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    const/4 v1, 0x1

    .line 978
    :goto_0
    return v1

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestRouteToHost(II)Z
    .locals 2
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 688
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 690
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 691
    const/4 v1, 0x0

    .line 694
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v1

    goto :goto_0
.end method

.method public requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    .locals 3
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 708
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 710
    .local v0, address:[B
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1, v0}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 712
    :goto_0
    return v2

    .line 711
    :catch_0
    move-exception v1

    .line 712
    .local v1, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 0
    .parameter "allowBackgroundData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 752
    return-void
.end method

.method public setDataDependency(IZ)V
    .locals 1
    .parameter "networkType"
    .parameter "met"

    .prologue
    .line 1036
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setDataDependency(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :goto_0
    return-void

    .line 1037
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 1000
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :goto_0
    return-void

    .line 1001
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 792
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :goto_0
    return-void

    .line 793
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMobileDataEnabledGemini(I)Z
    .locals 2
    .parameter "slotId"

    .prologue
    .line 1185
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabledGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1187
    :goto_0
    return v1

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setNetworkPreference(I)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 543
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setNetworkPreference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRadio(IZ)Z
    .locals 2
    .parameter "networkType"
    .parameter "turnOn"

    .prologue
    .line 627
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setRadio(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 629
    :goto_0
    return v1

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadios(Z)Z
    .locals 2
    .parameter "turnOn"

    .prologue
    .line 618
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setRadios(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 620
    :goto_0
    return v1

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSmartKeyguardLevel(Ljava/lang/String;)V
    .locals 2
    .parameter "level"

    .prologue
    .line 1269
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setSmartKeyguardLevel(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :goto_0
    return-void

    .line 1270
    :catch_0
    move-exception v0

    .line 1271
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setTetheringIpv6Enable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1200
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setTetheringIpv6Enable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    :goto_0
    return-void

    .line 1201
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUsbInternet(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 1228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->setUsbInternet(ZI)Z

    move-result v0

    return v0
.end method

.method public setUsbInternet(ZI)Z
    .locals 2
    .parameter "enable"
    .parameter "system_type"

    .prologue
    .line 1241
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setUsbInternetWithType(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1243
    :goto_0
    return v1

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbTethering(Z)I
    .locals 2
    .parameter "enable"

    .prologue
    .line 915
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUsbTethering(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 917
    :goto_0
    return v1

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 3
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 648
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #invoke-interface {v1, p1, p2, v2}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeatureBaidu(ILjava/lang/String;)I

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 651
    :goto_0
    return v1

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public startUsingNetworkFeatureGemini(ILjava/lang/String;I)I
    .locals 3
    .parameter "networkType"
    .parameter "feature"
    .parameter "radioNum"

    .prologue
    .line 1130
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, p2, v2, p3}, Landroid/net/IConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;Landroid/os/IBinder;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1133
    :goto_0
    return v1

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 2
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 670
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 672
    :goto_0
    return v1

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I
    .locals 2
    .parameter "networkType"
    .parameter "feature"
    .parameter "radioNum"

    .prologue
    .line 1151
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1153
    :goto_0
    return v1

    .line 1152
    :catch_0
    move-exception v0

    .line 1153
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"

    .prologue
    .line 848
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 850
    :goto_0
    return v1

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"

    .prologue
    .line 860
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 862
    :goto_0
    return v1

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public updateLockdownVpn()Z
    .locals 2

    .prologue
    .line 1077
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1079
    :goto_0
    return v1

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startUsingNetworkFeatureBaidu(ILjava/lang/String;)I
    .locals 5
    .parameter "networkType"
    .parameter "feature"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x1

    .line 635
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    aput-object p2, v1, v4

    invoke-static {v4, v4, v1}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkPermission(IZ[Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 642
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, p1, p2, v1}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    goto :goto_0
.end method