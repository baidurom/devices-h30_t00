.class public Lcom/android/hwcamera/feature/shot/MeterModeFeature;
.super Lcom/android/hwcamera/feature/shot/AbstractShotMode;
.source "MeterModeFeature.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;-><init>()V

    return-void
.end method


# virtual methods
.method protected getImagePostProcessValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "on"

    return-object v0
.end method

.method protected getNosieVaule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "on"

    return-object v0
.end method

.method public getPictureNum()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method protected getShootModeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->METER:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateZsdModeValue(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x0

    .line 37
    const-string v2, "on"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedZSDMode()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZSDMode()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, zsdMode:Ljava/lang/String;
    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string v1, "on"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setZSDMode(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0
.end method
