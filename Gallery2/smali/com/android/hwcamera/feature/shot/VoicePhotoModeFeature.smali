.class public Lcom/android/hwcamera/feature/shot/VoicePhotoModeFeature;
.super Lcom/android/hwcamera/feature/shot/AbstractShotMode;
.source "VoicePhotoModeFeature.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;-><init>()V

    return-void
.end method


# virtual methods
.method protected constructJpegPicTureCallback(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;
    .locals 1
    .parameter "loc"
    .parameter "isHDR"
    .parameter "photoModule"

    .prologue
    .line 62
    new-instance v0, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/hwcamera/feature/shot/callback/VoicePhotoFeaturePictureCallback;-><init>(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)V

    return-object v0
.end method

.method protected getImagePostProcessValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "on"

    return-object v0
.end method

.method protected getNosieVaule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "on"

    return-object v0
.end method

.method public getPictureNum()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method protected getShootModeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->SMART:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateZsdModeValue(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x0

    .line 68
    const-string v2, "on"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedZSDMode()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZSDMode()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, zsdMode:Ljava/lang/String;
    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v1, "on"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setZSDMode(Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x1

    goto :goto_0
.end method
