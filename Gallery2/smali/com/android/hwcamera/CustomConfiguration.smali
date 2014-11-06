.class public Lcom/android/hwcamera/CustomConfiguration;
.super Ljava/lang/Object;
.source "CustomConfiguration.java"


# static fields
.field private static final STORAGE_DIR:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CustomConfiguration"

.field private static mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

.field private static final sIsFaceBeautyBarSupported:Z

.field private static final sIsHwScopeSupported:Z

.field private static final sIsSoundShutterSupported:Ljava/lang/String;

.field private static final sMuteSupported:Z

.field private static final sNeedNetworkLocation:Z

.field private static final sSmallPreviewPosition:Ljava/lang/String;

.field private static final sStereoSupported:Z

.field private static final sVideoFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    const-string v0, "ro.hwcamera.directory"

    const-string v1, "/DCIM/Camera"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/CustomConfiguration;->STORAGE_DIR:Ljava/lang/String;

    .line 19
    const-string v0, "ro.hwcamera.sound.muteable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/hwcamera/CustomConfiguration;->sMuteSupported:Z

    .line 20
    const-string v0, "ro.config.recordstereo"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/hwcamera/CustomConfiguration;->sStereoSupported:Z

    .line 21
    const-string v0, "ro.config.small.previewpos"

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/CustomConfiguration;->sSmallPreviewPosition:Ljava/lang/String;

    .line 22
    const-string v0, "ro.hwcamera.networklocation"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/hwcamera/CustomConfiguration;->sNeedNetworkLocation:Z

    .line 23
    const-string v0, "ro.config.hwscope"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/hwcamera/CustomConfiguration;->sIsHwScopeSupported:Z

    .line 24
    const-string v0, "ro.hwcamera.video.format"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/CustomConfiguration;->sVideoFormat:Ljava/lang/String;

    .line 26
    const-string v0, "ro.hwcamera.soundshutter"

    const-string v1, "MTK_VOICECAPTURE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/CustomConfiguration;->sIsSoundShutterSupported:Ljava/lang/String;

    .line 30
    const-string v0, "ro.hwcamera.facebeauty.uibar"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/hwcamera/CustomConfiguration;->sIsFaceBeautyBarSupported:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/hwcamera/CustomConfiguration;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/android/hwcamera/CustomConfiguration;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/CustomConfiguration;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/hwcamera/CustomConfiguration;

    invoke-direct {v0}, Lcom/android/hwcamera/CustomConfiguration;-><init>()V

    sput-object v0, Lcom/android/hwcamera/CustomConfiguration;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;

    .line 39
    :cond_0
    sget-object v0, Lcom/android/hwcamera/CustomConfiguration;->mCustomConfiguration:Lcom/android/hwcamera/CustomConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getVideoFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/hwcamera/CustomConfiguration;->sVideoFormat:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getJpegQuality(I)I
    .locals 5
    .parameter "cameraId"

    .prologue
    .line 43
    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v1

    .line 45
    .local v1, jpegQualityFromProfile:I
    const-string v2, "ro.hwcamera.jpeg.quality"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, jpegQuality:I
    const-string v2, "CustomConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jpegQuality is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return v0
.end method

.method public getSmallPreviewPos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/hwcamera/CustomConfiguration;->sSmallPreviewPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/hwcamera/CustomConfiguration;->STORAGE_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public isFaceBeautyBarSupported()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/android/hwcamera/CustomConfiguration;->sIsFaceBeautyBarSupported:Z

    return v0
.end method

.method public isHwScopeConfiged()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/hwcamera/CustomConfiguration;->sIsHwScopeSupported:Z

    return v0
.end method

.method public isHwScopeSupported(I)Z
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/hwcamera/CustomConfiguration;->sIsHwScopeSupported:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/hwcamera/Util;->isBackCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMtkVoiceShutterSupported()Z
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/android/hwcamera/CustomConfiguration;->sIsSoundShutterSupported:Ljava/lang/String;

    const-string v1, "MTK_VOICECAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMuteSupported()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/hwcamera/CustomConfiguration;->sMuteSupported:Z

    return v0
.end method

.method public isNeedNetworkLocation()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/hwcamera/CustomConfiguration;->sNeedNetworkLocation:Z

    return v0
.end method

.method public isSoundShutterSupported()Z
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/android/hwcamera/CustomConfiguration;->sIsSoundShutterSupported:Ljava/lang/String;

    const-string v1, "HW_SOUNDCAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStereoSupported()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/hwcamera/CustomConfiguration;->sStereoSupported:Z

    return v0
.end method
