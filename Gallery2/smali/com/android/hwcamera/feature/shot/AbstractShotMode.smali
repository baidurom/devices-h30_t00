.class public abstract Lcom/android/hwcamera/feature/shot/AbstractShotMode;
.super Ljava/lang/Object;
.source "AbstractShotMode.java"

# interfaces
.implements Lcom/android/hwcamera/feature/shot/IFeatureShotMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractShotMode"

.field static mFeatureShotMode:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

.field private static mIsHalSupportQuickThumbnail:Z


# instance fields
.field protected mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

.field private mIsRestartPreview:Z

.field private mIsUpdate:Z

.field protected mJpegPictureCallback:Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;

.field protected mMaxPictureNumber:I

.field protected mPictureCallbackWrapper:Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureShotMode:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsHalSupportQuickThumbnail:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsUpdate:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsRestartPreview:Z

    .line 37
    iput v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mMaxPictureNumber:I

    .line 218
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsHalSupportQuickThumbnail:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    sput-boolean p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsHalSupportQuickThumbnail:Z

    return p0
.end method

.method public static getInstance(Ljava/lang/Class;)Lcom/android/hwcamera/feature/shot/IFeatureShotMode;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/hwcamera/feature/shot/IFeatureShotMode;",
            ">;)",
            "Lcom/android/hwcamera/feature/shot/IFeatureShotMode;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/hwcamera/feature/shot/IFeatureShotMode;>;"
    sget-object v1, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureShotMode:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureShotMode:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    sput-object v1, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureShotMode:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureShotMode:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private initEnvironment()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method private updateImagePostProcessValue(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->getImagePostProcessValue()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, value:Ljava/lang/String;
    const-string v1, "hw-image-post-process"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    const-string v1, "hw-image-post-process"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsUpdate:Z

    .line 154
    :cond_0
    return-void
.end method

.method private updateNosieValue(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->getNosieVaule()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, value:Ljava/lang/String;
    const-string v1, "hw-image-denoise"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    const-string v1, "hw-image-denoise"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsUpdate:Z

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method protected constructJpegPicTureCallback(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;
    .locals 1
    .parameter "loc"
    .parameter "isHDR"
    .parameter "photoModule"

    .prologue
    .line 373
    new-instance v0, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;-><init>(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)V

    return-object v0
.end method

.method public doAfterOnLastPicTaken()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public doAfterTakePicture()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public doBeforeOnLastPicTaken()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public doBeforeTakePicture()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public genJpegPictureCallback(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "loc"
    .parameter "isHDR"
    .parameter "photoModule"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mJpegPictureCallback:Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;

    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->constructJpegPicTureCallback(Landroid/location/Location;ZLcom/android/hwcamera/PhotoModule;)Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mJpegPictureCallback:Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mJpegPictureCallback:Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;

    return-object v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mJpegPictureCallback:Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->setIsHDR(Z)V

    .line 366
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mJpegPictureCallback:Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;

    invoke-virtual {v0, p3}, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->setPhotoModule(Lcom/android/hwcamera/PhotoModule;)V

    .line 367
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mJpegPictureCallback:Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->setLocation(Landroid/location/Location;)V

    goto :goto_0
.end method

.method protected getImagePostProcessValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-string v0, "off"

    return-object v0
.end method

.method public getMaxPictureNum()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mMaxPictureNumber:I

    if-lez v0, :cond_0

    .line 73
    iget v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mMaxPictureNumber:I

    .line 75
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->getPictureNum()I

    move-result v0

    goto :goto_0
.end method

.method protected getNosieVaule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "off"

    return-object v0
.end method

.method public abstract getPictureNum()I
.end method

.method protected getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "auto"

    return-object v0
.end method

.method protected abstract getShootModeValue()Ljava/lang/String;
.end method

.method public interruptTakePicture()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public isNeedRestartPreview()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsRestartPreview:Z

    return v0
.end method

.method public isProcessIng()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mJpegPictureCallback:Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mJpegPictureCallback:Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;

    invoke-virtual {v0}, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->isProcessIng()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareShotMode(Landroid/hardware/Camera$Parameters;ZI)Z
    .locals 4
    .parameter "parameters"
    .parameter "useBackProcessIfNeeded"
    .parameter "cameraId"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsUpdate:Z

    .line 112
    iput-boolean v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsRestartPreview:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->getShootModeValue()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, shootMode:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v1}, Lcom/android/hwcamera/feature/ICamera;->getSupportedShootingModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    :cond_0
    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->SINGLE:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v1, v0}, Lcom/android/hwcamera/feature/ICamera;->setShootMode(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v1}, Lcom/android/hwcamera/feature/ICamera;->isSupportBackgroundImageProcess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->updateImagePostProcessValue(Landroid/hardware/Camera$Parameters;)V

    .line 126
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->updateNosieValue(Landroid/hardware/Camera$Parameters;)V

    .line 129
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->updateSceneMode(Landroid/hardware/Camera$Parameters;)V

    .line 131
    invoke-static {p3}, Lcom/android/hwcamera/Util;->isBackCamera(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->updateZsdModeValue(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    iput-boolean v3, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsRestartPreview:Z

    .line 137
    :cond_4
    sget-object v1, Lcom/android/hwcamera/enm/ShotMode;->SMART:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v1}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getCaptureMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 139
    iput-boolean v3, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsUpdate:Z

    .line 142
    :cond_5
    iget-boolean v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsUpdate:Z

    if-eqz v1, :cond_6

    .line 143
    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v1, p1}, Lcom/android/hwcamera/feature/ICamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 145
    :cond_6
    iget-boolean v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsUpdate:Z

    return v1
.end method

.method public setFeatureCamera(Lcom/android/hwcamera/feature/ICamera;)V
    .locals 1
    .parameter "mFeatureCamera"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    if-eq v0, p1, :cond_1

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    .line 91
    :cond_1
    return-void
.end method

.method public setMaxPictureNum(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mMaxPictureNumber:I

    .line 81
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;)V
    .locals 2
    .parameter "mShutterCallback"
    .parameter "mRawPictureCallback"
    .parameter "mPostViewPictureCallback"
    .parameter "jpegPictureCallback"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->initEnvironment()V

    .line 58
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->doBeforeTakePicture()V

    .line 59
    new-instance v0, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;

    invoke-direct {v0, p0, p4}, Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;-><init>(Lcom/android/hwcamera/feature/shot/AbstractShotMode;Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;)V

    iput-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mPictureCallbackWrapper:Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;

    .line 60
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mFeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    iget-object v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mPictureCallbackWrapper:Lcom/android/hwcamera/feature/shot/AbstractShotMode$PictureCallbackWraper;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/hwcamera/feature/ICamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->doAfterTakePicture()V

    goto :goto_0
.end method

.method public updateSceneMode(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, sceneMode:Ljava/lang/String;
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!!!sceneMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mIsUpdate:Z

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateZsdModeValue(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x0

    .line 204
    const-string v2, "on"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedZSDMode()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZSDMode()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, zsdMode:Ljava/lang/String;
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const-string v1, "off"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setZSDMode(Ljava/lang/String;)V

    .line 210
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public waitProcessDone(Z)V
    .locals 1
    .parameter "isPressBackMenu"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mJpegPictureCallback:Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/feature/shot/AbstractShotMode;->mJpegPictureCallback:Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/feature/shot/callback/CommonFeaturePictureCallback;->waitProcessDone(Z)V

    .line 198
    :cond_0
    return-void
.end method
