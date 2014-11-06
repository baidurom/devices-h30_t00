.class public Lcom/android/hwcamera/feature/shot/BurstModeFeature;
.super Lcom/android/hwcamera/feature/shot/AbstractShotMode;
.source "BurstModeFeature.java"


# static fields
.field private static MAX_BURST_PIC_NUM:I


# instance fields
.field private mIsBursting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x14

    sput v0, Lcom/android/hwcamera/feature/shot/BurstModeFeature;->MAX_BURST_PIC_NUM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/feature/shot/BurstModeFeature;->mIsBursting:Z

    return-void
.end method


# virtual methods
.method protected constructJpegPicTureCallback(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;
    .locals 1
    .parameter "loc"
    .parameter "isHDR"
    .parameter "photoModule"

    .prologue
    .line 93
    new-instance v0, Lcom/android/hwcamera/feature/shot/callback/BestPhotoFeaturePictureCallback;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoFeaturePictureCallback;-><init>(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)V

    return-object v0
.end method

.method public doBeforeOnLastPicTaken()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    iput-boolean v2, p0, Lcom/android/hwcamera/feature/shot/BurstModeFeature;->mIsBursting:Z

    .line 41
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v0

    new-instance v1, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptEvent;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V

    .line 42
    invoke-super {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->doBeforeOnLastPicTaken()V

    .line 43
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0}, Lcom/android/hwcamera/feature/ICamera;->cancelTakePicture()V

    .line 44
    return-void
.end method

.method public doBeforeTakePicture()V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/feature/shot/BurstModeFeature;->mIsBursting:Z

    .line 33
    invoke-super {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->doBeforeTakePicture()V

    .line 34
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/hwcamera/feature/ICamera;->setBurstShotInterval(I)V

    .line 35
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/BurstModeFeature;->getMaxPictureNum()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/hwcamera/feature/ICamera;->setBurstTotalCaptures(I)V

    .line 36
    return-void
.end method

.method public genJpegPictureCallback(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$PictureCallback;
    .locals 3
    .parameter "loc"
    .parameter "isHDR"
    .parameter "photoModule"

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->genJpegPictureCallback(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    .local v0, pictureCallback:Landroid/hardware/Camera$PictureCallback;
    move-object v1, v0

    .line 87
    check-cast v1, Lcom/android/hwcamera/feature/shot/callback/BestPhotoFeaturePictureCallback;

    invoke-virtual {p3}, Lcom/android/hwcamera/PhotoModule;->isBestPhotoOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/feature/shot/callback/BestPhotoFeaturePictureCallback;->setIsBestPhotoOn(Z)V

    .line 88
    return-object v0
.end method

.method protected getImagePostProcessValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "on"

    return-object v0
.end method

.method public getPictureNum()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/android/hwcamera/feature/shot/BurstModeFeature;->MAX_BURST_PIC_NUM:I

    return v0
.end method

.method protected getShootModeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->BURST:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public interruptTakePicture()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mPictureCallbackWrapper:Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mPictureCallbackWrapper:Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;

    invoke-virtual {v0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;->interruptTakePicture()V

    .line 67
    :cond_0
    return-void
.end method

.method public isProcessIng()Z
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->isProcessIng()Z

    move-result v0

    return v0
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;)V
    .locals 3
    .parameter "mShutterCallback"
    .parameter "mRawPictureCallback"
    .parameter "mPostViewPictureCallback"
    .parameter "jpegPictureCallback"

    .prologue
    .line 58
    invoke-static {}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->getInstance()Lcom/android/hwcamera/eventcenter/DefaultEventCenter;

    move-result-object v0

    new-instance v1, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/hwcamera/eventcenter/burstprompt/BurstPromptEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/eventcenter/DefaultEventCenter;->publish(Lcom/android/hwcamera/eventcenter/Event;)V

    .line 59
    const/4 v0, 0x0

    invoke-super {p0, v0, p2, p3, p4}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;)V

    .line 60
    return-void
.end method

.method public updateZsdModeValue(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x0

    .line 99
    const-string v2, "on"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedZSDMode()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZSDMode()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, zsdMode:Ljava/lang/String;
    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const-string v1, "on"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setZSDMode(Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public waitProcessDone(Z)V
    .locals 1
    .parameter "isPressBackMenu"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/BurstModeFeature;->mIsBursting:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/BurstModeFeature;->interruptTakePicture()V

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->waitProcessDone(Z)V

    .line 81
    return-void
.end method
