.class public Lcom/mediatek/op/net/DefaultConnectivityServiceExt;
.super Ljava/lang/Object;
.source "DefaultConnectivityServiceExt.java"

# interfaces
.implements Lcom/mediatek/common/net/IConnectivityServiceExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "CDS/IConnectivityServiceExt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private remindWifiToPdp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->remindWifiToPdp:Z

    .line 73
    const-string v0, "DefaultConnectivityServiceExt in default"

    invoke-direct {p0, v0}, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->log(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private getMobileDataEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 187
    iget-object v1, p0, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    const-string v3, "WifiService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 191
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 189
    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPsDataAvailable()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 153
    :try_start_0
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 154
    .local v4, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v7

    if-nez v7, :cond_1

    .line 180
    .end local v4           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v5

    .line 158
    .restart local v4       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v2

    .line 159
    .local v2, isSIM1Insert:Z
    const/4 v3, 0x0

    .line 161
    .local v3, isSIM2Insert:Z
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 164
    if-nez v2, :cond_2

    if-eqz v3, :cond_0

    .line 172
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->getMobileDataEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 176
    iget-object v7, p0, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 177
    .local v0, airplanMode:I
    const-string v7, "CDS/IConnectivityServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "airplanMode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eq v0, v6, :cond_0

    move v5, v6

    .line 180
    goto :goto_0

    .line 167
    .end local v0           #airplanMode:I
    .end local v2           #isSIM1Insert:Z
    .end local v3           #isSIM2Insert:Z
    .end local v4           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "CDS/IConnectivityServiceExt"

    const-string v7, "Connect to phone service error!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 197
    const-string v0, "CDS/IConnectivityServiceExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    const-string v2, "init in default"

    invoke-direct {p0, v2}, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->log(Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hw_RemindWifiToPdp"

    invoke-static {v2, v3, v1}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->remindWifiToPdp:Z

    .line 83
    const-string v0, "CDS/IConnectivityServiceExt"

    const-string v1, "Init done in DefaultConnectivityServiceExt"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void

    :cond_0
    move v0, v1

    .line 81
    goto :goto_0
.end method

.method public isControlBySetting(II)Z
    .locals 2
    .parameter "netType"
    .parameter "radio"

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isControlBySetting: netType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " readio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->log(Ljava/lang/String;)V

    .line 139
    if-nez p2, :cond_0

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultFailover(II)Z
    .locals 4
    .parameter "netType"
    .parameter "activeDefaultNetwork"

    .prologue
    const/4 v0, 0x1

    .line 122
    const-string v1, "CDS/IConnectivityServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default isDefaultFailover netType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", activeDefaultNetwork"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remindWifiToPdp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->remindWifiToPdp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-boolean v1, p0, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->remindWifiToPdp:Z

    if-nez v1, :cond_1

    .line 125
    const-string v1, "CDS/IConnectivityServiceExt"

    const-string v2, "default isDefaultFailover"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    if-ne v0, p1, :cond_0

    if-ne v0, p2, :cond_0

    .line 133
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserPrompt()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    const-string v6, "CDS/IConnectivityServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "default isUserPrompt remindWifiToPdp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->remindWifiToPdp:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-boolean v6, p0, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->remindWifiToPdp:Z

    if-nez v6, :cond_1

    .line 92
    const-string v5, "CDS/IConnectivityServiceExt"

    const-string v6, "default isUserPrompt"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    :goto_0
    return v4

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->isPsDataAvailable()Z

    move-result v0

    .line 97
    .local v0, dataAvailable:Z
    iget-object v6, p0, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 98
    .local v3, mgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->hasConnectableAp()Z

    move-result v2

    .line 99
    .local v2, hasConnectableAP:Z
    const-string v6, "CDS/IConnectivityServiceExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dataAvailable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",hasConnectableAP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action_WIFI_FAILOVER_GPRS_DIALOG"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, failoverIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/mediatek/op/net/DefaultConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    const-string v4, "CDS/IConnectivityServiceExt"

    const-string v6, "Send ACTION_WIFI_FAILOVER_GPRS_DIALOG intent"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 105
    goto :goto_0

    .line 112
    .end local v1           #failoverIntent:Landroid/content/Intent;
    :cond_2
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    move v4, v5

    .line 113
    goto :goto_0
.end method
