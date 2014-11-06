.class public Lcom/android/hwcamera/feature/shot/SmartModeFeature;
.super Lcom/android/hwcamera/feature/shot/AbstractShotMode;
.source "SmartModeFeature.java"


# static fields
.field public static final AUTO_DETECT_SCENE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "night"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "backlight"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "portrait"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "landscape"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "night-portrait"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "backlight-portrait"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "auto"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/hwcamera/feature/shot/SmartModeFeature;->AUTO_DETECT_SCENE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/hwcamera/feature/shot/AbstractShotMode;-><init>()V

    return-void
.end method

.method private isNeedChangeToAuto(Ljava/lang/String;)Z
    .locals 1
    .parameter "sceneMode"

    .prologue
    .line 80
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "night-portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getImagePostProcessValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "on"

    return-object v0
.end method

.method public getPictureNum()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method protected getShootModeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/hwcamera/enm/ShotMode;->SMART:Lcom/android/hwcamera/enm/ShotMode;

    invoke-virtual {v0}, Lcom/android/hwcamera/enm/ShotMode;->getShotMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateSceneMode(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, sceneMode:Ljava/lang/String;
    const-string v1, "SmartModeFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scenemode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0, v0}, Lcom/android/hwcamera/feature/shot/SmartModeFeature;->isNeedChangeToAuto(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public updateZsdModeValue(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x0

    .line 66
    const-string v2, "on"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedZSDMode()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZSDMode()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, zsdMode:Ljava/lang/String;
    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const-string v1, "on"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setZSDMode(Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x1

    goto :goto_0
.end method
