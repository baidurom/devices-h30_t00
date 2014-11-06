.class public final Lcom/huawei/motiondetection/MRUtils;
.super Ljava/lang/Object;
.source "MRUtils.java"


# static fields
.field public static final MOTION_DETECTION_VERSION_CODE:I = 0xef2d

.field public static final MOTION_DETECTION_VERSION_NAME:Ljava/lang/String; = "6.1.229"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getMotionEnableState(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "motionitemkey"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, enabled:I
    return v0
.end method

.method public static isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "serviceProcess"

    .prologue
    .line 122
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 125
    .local v1, manager:Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 126
    .local v3, serviceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v3, :cond_1

    .line 127
    const-string v4, "MRUtils"

    const-string v5, "isServiceRunning serviceList == null"

    invoke-static {v4, v5}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 129
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 130
    .local v2, service:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static localProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "orgStr"

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const-string v0, ""

    .line 74
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, localStr:Ljava/lang/String;
    goto :goto_0
.end method

.method public static setMotionEnableState(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "motionitemkey"
    .parameter "enable"

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    return-void
.end method
