.class public Lcom/android/hwcamera/feature/shot/HDRModeFeature;
.super Lcom/android/hwcamera/feature/shot/AbstractShotMode;
.source "HDRModeFeature.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
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

.method public getPictureNum()I
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method protected getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->HDR:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShootModeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->SINGLE:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
