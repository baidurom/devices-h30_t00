.class Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;
.super Ljava/lang/Thread;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveThread"
.end annotation


# instance fields
.field mCr:Landroid/content/ContentResolver;

.field mMcc:Ljava/lang/String;

.field mTimeZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "cr"
    .parameter "mcc"
    .parameter "timeZoneId"

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 895
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;->mCr:Landroid/content/ContentResolver;

    .line 896
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;->mMcc:Ljava/lang/String;

    .line 897
    iput-object p3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;->mTimeZoneId:Ljava/lang/String;

    .line 898
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 900
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 901
    const-class v4, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;

    monitor-enter v4

    .line 902
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;->mCr:Landroid/content/ContentResolver;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;->mMcc:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;->mTimeZoneId:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 903
    :cond_0
    monitor-exit v4

    .line 920
    :goto_0
    return-void

    .line 906
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;->mTimeZoneId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "||"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;->mMcc:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "||"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 908
    .local v1, saveStr:Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "nitz_timezone_info"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 910
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "keyguard_default_time_zone"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 912
    .local v2, timezoneId:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 913
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v5, "keyguard_default_time_zone"

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker$SaveThread;->mTimeZoneId:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 919
    :cond_3
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #saveStr:Ljava/lang/String;
    .end local v2           #timezoneId:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 916
    .restart local v1       #saveStr:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 917
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
