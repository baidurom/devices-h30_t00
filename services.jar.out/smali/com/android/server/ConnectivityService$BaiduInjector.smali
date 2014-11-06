.class Lcom/android/server/ConnectivityService$BaiduInjector;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDefaultSlot(Lcom/android/server/ConnectivityService;I)I
    .locals 7
    .parameter "conn"
    .parameter "curSlotId"

    .prologue
    .line 1808
    sget-object v3, Lcom/android/server/ConnectivityService$BaiduInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gprs_connection_prefer_sim_setting"

    const-wide/16 v5, -0x5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1809
    .local v1, preferSimID:Ljava/lang/Long;
    sget-object v3, Lcom/android/server/ConnectivityService$BaiduInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    .line 1811
    .local v2, preferSoltId:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    :try_start_0
    #calls: Lcom/android/server/ConnectivityService;->getITelephony()Lcom/android/internal/telephony/ITelephony;
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/ITelephony;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1812
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultSlot, curSlotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preferSoltId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    .end local v2           #preferSoltId:I
    :goto_0
    return v2

    .line 1815
    .restart local v2       #preferSoltId:I
    :catch_0
    move-exception v0

    .line 1816
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move v2, p1

    .line 1818
    goto :goto_0
.end method

.method static saveContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1804
    sput-object p0, Lcom/android/server/ConnectivityService$BaiduInjector;->mContext:Landroid/content/Context;

    .line 1805
    return-void
.end method

.method static setPreferSimSetting(Ljava/lang/Long;)V
    .locals 4
    .parameter "simId"

    .prologue
    .line 1822
    sget-object v0, Lcom/android/server/ConnectivityService$BaiduInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_prefer_sim_setting"

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1823
    return-void
.end method
