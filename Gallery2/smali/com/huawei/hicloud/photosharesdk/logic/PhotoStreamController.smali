.class public Lcom/huawei/hicloud/photosharesdk/logic/PhotoStreamController;
.super Ljava/lang/Object;
.source "PhotoStreamController.java"


# static fields
.field private static lastActiveTime:J = 0x0L

.field private static final refreshPeriod:J = 0xea60L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static closePhotoStream(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/huawei/hicloud/photosharesdk/logic/PhotoStreamController;->lastActiveTime:J

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$TimeLineUtil;->writeTimeLineToFile(Landroid/content/Context;J)V

    .line 86
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lcom/huawei/hicloud/photosharesdk/service/MainService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/service/MainService;->stopService(Landroid/content/Context;)V

    .line 90
    :cond_0
    return-void
.end method

.method public static openPhotoStream(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$TimeLineUtil;->writeTimeLineToFile(Landroid/content/Context;J)V

    .line 29
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/logic/PhotoStreamController;->startPhotoStream(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public static startPhotoStream(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->getSwitchInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getPhotoStreamSwitch()Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 45
    .local v1, currentTime:J
    sget-wide v3, Lcom/huawei/hicloud/photosharesdk/logic/PhotoStreamController;->lastActiveTime:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 46
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;-><init>()V

    .line 47
    .local v0, cameraScanner:Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;->prepareScan()V

    .line 48
    invoke-virtual {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;->beginScan(Landroid/content/Context;)V

    .line 49
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/service/MainService;->startService(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/huawei/hicloud/photosharesdk/logic/PhotoStreamController;->lastActiveTime:J

    goto :goto_0
.end method

.method public static startPhotoStreamUI(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchHelper;->getSwitchInfo(Landroid/content/Context;)Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hicloud/photosharesdk/settings/SwitchInfo;->getPhotoStreamSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hicloud/photosharesdk/helper/SharedPreferenceUtil$AccountInfoUtil;->readIsLogOnFromFile(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 66
    const-class v2, Lcom/huawei/hicloud/photosharesdk/service/MainService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {v1, v2}, Lcom/huawei/hicloud/photosharesdk/helper/ApplicationContext;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    new-instance v0, Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;

    invoke-direct {v0}, Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;-><init>()V

    .line 69
    .local v0, cameraScanner:Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;
    invoke-virtual {v0}, Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;->prepareScan()V

    .line 70
    invoke-virtual {v0, p0}, Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;->beginScan(Landroid/content/Context;)V

    .line 71
    invoke-static {p0}, Lcom/huawei/hicloud/photosharesdk/service/MainService;->startService(Landroid/content/Context;)V

    .line 73
    .end local v0           #cameraScanner:Lcom/huawei/hicloud/photosharesdk/logic/CameraScanner;
    :cond_0
    return-void
.end method
