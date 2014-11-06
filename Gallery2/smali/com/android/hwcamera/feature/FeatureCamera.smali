.class public Lcom/android/hwcamera/feature/FeatureCamera;
.super Lcom/android/hwcamera/feature/AbstractAndroidCamera;
.source "FeatureCamera.java"

# interfaces
.implements Lcom/android/hwcamera/feature/ICamera;


# static fields
.field private static final DEBUG:Z = false

.field private static FeatureCamera:Lcom/android/hwcamera/feature/ICamera; = null

.field private static final TAG:Ljava/lang/String; = "FeatureCamera"


# instance fields
.field private mShotModeFeature:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 51
    :try_start_0
    const-string v1, "FeatureCamera"

    const-string v2, "instance feature Camera"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v1, "com.huawei.hwextcamera.HwExtCamera"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/hwcamera/feature/FeatureCamera;->mFeatureCameraClass:Ljava/lang/Class;

    .line 53
    sget-object v1, Lcom/android/hwcamera/feature/FeatureCamera;->mFeatureCameraClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/hwcamera/feature/FeatureCamera;->mFeatureCameraMethodList:[Ljava/lang/reflect/Method;

    .line 54
    sget-object v1, Lcom/android/hwcamera/feature/FeatureCamera;->mFeatureCameraClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/android/hwcamera/feature/FeatureCamera;->mFeatureCameraConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 55
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 56
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FeatureCamera"

    const-string v2, "cannot instance feature Camera"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;-><init>()V

    .line 46
    sget-object v0, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized getFeatureCameraInstance()Lcom/android/hwcamera/feature/ICamera;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/android/hwcamera/feature/FeatureCamera;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/hwcamera/feature/FeatureCamera;->FeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/hwcamera/feature/FeatureCamera;

    invoke-direct {v0}, Lcom/android/hwcamera/feature/FeatureCamera;-><init>()V

    sput-object v0, Lcom/android/hwcamera/feature/FeatureCamera;->FeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    .line 42
    :cond_0
    sget-object v0, Lcom/android/hwcamera/feature/FeatureCamera;->FeatureCamera:Lcom/android/hwcamera/feature/ICamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isFeatureSupported(Ljava/lang/String;)Z
    .locals 8
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 403
    monitor-enter p0

    .line 404
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->isAndroidCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :goto_0
    return v2

    .line 408
    :cond_0
    :try_start_1
    const-string v4, "isFeatureSupported"

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/feature/FeatureCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    sget-object v5, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 409
    .local v1, isSupported:Ljava/lang/Object;
    const-string v4, "true"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v4

    if-eqz v4, :cond_1

    .line 410
    :try_start_2
    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 412
    .end local v1           #isSupported:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 413
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 422
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 414
    :catch_1
    move-exception v0

    .line 415
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 416
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 417
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 418
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 419
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static open(I)Lcom/android/hwcamera/feature/ICamera;
    .locals 8
    .parameter "cameraId"

    .prologue
    const-wide/16 v6, 0x400

    .line 62
    const-string v2, "FeatureCamera.open"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 63
    sget-object v2, Lcom/android/hwcamera/feature/FeatureCamera;->mFeatureCameraConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_0

    .line 65
    :try_start_0
    sget-object v2, Lcom/android/hwcamera/feature/FeatureCamera;->mFeatureCameraConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    .line 66
    const-string v2, "FeatureCamera"

    const-string v3, "feature Camera use hwextcamera"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 73
    const-string v2, "FeatureCamera"

    const-string v3, "feature Camera use android Camera"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    sput-object v2, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    .line 77
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/feature/FeatureCamera;->getFeatureCameraInstance()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v1

    .line 79
    .local v1, featureCamera:Lcom/android/hwcamera/feature/ICamera;
    invoke-interface {v1}, Lcom/android/hwcamera/feature/ICamera;->isAndroidCamera()Z

    move-result v2

    if-nez v2, :cond_2

    .line 80
    invoke-interface {v1}, Lcom/android/hwcamera/feature/ICamera;->initHwExtCameraHanlderThread()V

    .line 83
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 84
    return-object v1

    .line 67
    .end local v1           #featureCamera:Lcom/android/hwcamera/feature/ICamera;
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setBlinkDetection(Z)V
    .locals 6
    .parameter "value"

    .prologue
    .line 346
    monitor-enter p0

    .line 347
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    return-void

    .line 350
    :cond_0
    :try_start_1
    const-string v1, "setBlinkDetection"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/FeatureCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 361
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 353
    :catch_1
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 355
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 356
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public cancelTakePicture()V
    .locals 4

    .prologue
    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :goto_0
    return-void

    .line 223
    :cond_0
    :try_start_1
    const-string v1, "cancelTakePictureEx"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/FeatureCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 234
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 226
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 228
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 230
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public clearShootMode()V
    .locals 4

    .prologue
    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :goto_0
    return-void

    .line 163
    :cond_0
    :try_start_1
    const-string v1, "clearShotMode"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/FeatureCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 174
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 166
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 168
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 170
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public enableVideoRecordStereo(ZILandroid/media/AudioManager;)V
    .locals 10
    .parameter "enable"
    .parameter "oritation"
    .parameter "audioManager"

    .prologue
    .line 427
    monitor-enter p0

    .line 428
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->isAndroidCamera()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 429
    monitor-exit p0

    .line 448
    :goto_0
    return-void

    .line 431
    :cond_0
    const-string v2, "stereo_record"

    .line 432
    .local v2, stereoRecordEnable:Ljava/lang/String;
    const-string v7, "on"

    .line 433
    .local v7, stereoRecordOn:Ljava/lang/String;
    const-string v6, "off"

    .line 434
    .local v6, stereoRecordOff:Ljava/lang/String;
    const-string v3, "stereo_record_mainmic_is_left"

    .line 435
    .local v3, stereoRecordMainmic:Ljava/lang/String;
    const-string v4, "true"

    .line 436
    .local v4, stereoRecordMainmicIsLeft:Ljava/lang/String;
    const-string v5, "false"

    .line 437
    .local v5, stereoRecordMainmicIsRight:Ljava/lang/String;
    const-string v0, "config_videocamera_need_stereo"

    .line 438
    .local v0, isNeedStereo:Ljava/lang/String;
    const-string v1, ""

    .line 439
    .local v1, params:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 440
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5a

    if-ne p2, v9, :cond_1

    .end local v4           #stereoRecordMainmicIsLeft:Ljava/lang/String;
    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    :goto_2
    invoke-virtual {p3, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 447
    monitor-exit p0

    goto :goto_0

    .end local v0           #isNeedStereo:Ljava/lang/String;
    .end local v1           #params:Ljava/lang/String;
    .end local v2           #stereoRecordEnable:Ljava/lang/String;
    .end local v3           #stereoRecordMainmic:Ljava/lang/String;
    .end local v5           #stereoRecordMainmicIsRight:Ljava/lang/String;
    .end local v6           #stereoRecordOff:Ljava/lang/String;
    .end local v7           #stereoRecordOn:Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v0       #isNeedStereo:Ljava/lang/String;
    .restart local v1       #params:Ljava/lang/String;
    .restart local v2       #stereoRecordEnable:Ljava/lang/String;
    .restart local v3       #stereoRecordMainmic:Ljava/lang/String;
    .restart local v4       #stereoRecordMainmicIsLeft:Ljava/lang/String;
    .restart local v5       #stereoRecordMainmicIsRight:Ljava/lang/String;
    .restart local v6       #stereoRecordOff:Ljava/lang/String;
    .restart local v7       #stereoRecordOn:Ljava/lang/String;
    :cond_1
    move-object v4, v5

    .line 440
    goto :goto_1

    .line 443
    :cond_2
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_2
.end method

.method public findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter "method"

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/hwcamera/feature/FeatureCamera;->mFeatureCameraMethodList:[Ljava/lang/reflect/Method;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 97
    sget-object v1, Lcom/android/hwcamera/feature/FeatureCamera;->mFeatureCameraMethodList:[Ljava/lang/reflect/Method;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/android/hwcamera/feature/FeatureCamera;->mFeatureCameraMethodList:[Ljava/lang/reflect/Method;

    aget-object v1, v1, v0

    .line 102
    :goto_1
    return-object v1

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const-string v1, "FeatureCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t findMethod method="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFeatureShotMode()Lcom/android/hwcamera/feature/shot/IFeatureShotMode;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/hwcamera/feature/FeatureCamera;->mShotModeFeature:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    return-object v0
.end method

.method public getIsoKey()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 294
    monitor-enter p0

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 311
    :goto_0
    return-object v1

    .line 299
    :cond_0
    :try_start_1
    const-string v1, "getIsoKey"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/FeatureCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v3, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 310
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    monitor-exit p0

    move-object v1, v2

    .line 311
    goto :goto_0

    .line 302
    :catch_1
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 304
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 306
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getSupportedIsoValues()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->isAndroidCamera()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 240
    sget-object v0, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera;

    .line 241
    .local v0, _camera:Landroid/hardware/Camera;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 242
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 243
    .local v3, parameterClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/hardware/Camera$Parameters;>;"
    if-eqz v3, :cond_2

    .line 244
    const/4 v4, 0x0

    .line 246
    .local v4, ret:Ljava/lang/Object;
    :try_start_1
    const-string v6, "getSupportedIsoValues"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 247
    .local v2, invodeMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 248
    sget-object v6, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 250
    .end local v4           #ret:Ljava/lang/Object;
    :cond_0
    instance-of v6, v4, Ljava/util/List;

    if-eqz v6, :cond_1

    .line 251
    check-cast v4, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    .end local v0           #_camera:Landroid/hardware/Camera;
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v3           #parameterClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/hardware/Camera$Parameters;>;"
    :goto_0
    return-object v4

    .line 253
    .restart local v0       #_camera:Landroid/hardware/Camera;
    .restart local v2       #invodeMethod:Ljava/lang/reflect/Method;
    .restart local v3       #parameterClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/hardware/Camera$Parameters;>;"
    :cond_1
    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/feature/FeatureCamera;->split(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v4

    :try_start_4
    monitor-exit p0

    goto :goto_0

    .line 282
    .end local v0           #_camera:Landroid/hardware/Camera;
    .end local v2           #invodeMethod:Ljava/lang/reflect/Method;
    .end local v3           #parameterClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/hardware/Camera$Parameters;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 254
    .restart local v0       #_camera:Landroid/hardware/Camera;
    .restart local v3       #parameterClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/hardware/Camera$Parameters;>;"
    :catch_0
    move-exception v1

    .line 255
    .local v1, e:Ljava/lang/SecurityException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 267
    .end local v1           #e:Ljava/lang/SecurityException;
    .end local v3           #parameterClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/hardware/Camera$Parameters;>;"
    :cond_2
    :goto_1
    monitor-exit p0

    move-object v4, v5

    goto :goto_0

    .line 256
    .restart local v3       #parameterClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/hardware/Camera$Parameters;>;"
    :catch_1
    move-exception v1

    .line 257
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 258
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 259
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 260
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 261
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 262
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 263
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 270
    .end local v0           #_camera:Landroid/hardware/Camera;
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v3           #parameterClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/hardware/Camera$Parameters;>;"
    :cond_3
    :try_start_6
    const-string v6, "getSupportedIsoValues"

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/feature/FeatureCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    sget-object v7, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 271
    .restart local v4       #ret:Ljava/lang/Object;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/feature/FeatureCamera;->split(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_8

    move-result-object v4

    .end local v4           #ret:Ljava/lang/Object;
    :try_start_7
    monitor-exit p0

    goto :goto_0

    .line 272
    :catch_5
    move-exception v1

    .line 273
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 282
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    :goto_2
    monitor-exit p0

    move-object v4, v5

    .line 283
    goto :goto_0

    .line 274
    :catch_6
    move-exception v1

    .line 275
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 276
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_7
    move-exception v1

    .line 277
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 278
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_8
    move-exception v1

    .line 279
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public getSupportedShootingModes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 365
    monitor-enter p0

    .line 366
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->isAndroidCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 382
    :goto_0
    return-object v1

    .line 370
    :cond_0
    :try_start_1
    const-string v3, "getSupportedShootingModes"

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/feature/FeatureCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    sget-object v4, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 371
    .local v1, ret:Ljava/lang/Object;
    if-eqz v1, :cond_1

    check-cast v1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v1           #ret:Ljava/lang/Object;
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 382
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    monitor-exit p0

    move-object v1, v2

    goto :goto_0

    .line 374
    :catch_1
    move-exception v0

    .line 375
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 376
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 378
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public isSupportBackgroundImageProcess()Z
    .locals 1

    .prologue
    .line 387
    const-string v0, "BackgroundImageProcess"

    invoke-direct {p0, v0}, Lcom/android/hwcamera/feature/FeatureCamera;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportSmile()Z
    .locals 1

    .prologue
    .line 393
    const-string v0, "SmileDetection"

    invoke-direct {p0, v0}, Lcom/android/hwcamera/feature/FeatureCamera;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportTargetTrack()Z
    .locals 1

    .prologue
    .line 399
    const-string v0, "TargetTracking"

    invoke-direct {p0, v0}, Lcom/android/hwcamera/feature/FeatureCamera;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->isAndroidCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->releaseHwExtCameraHanlderThread()V

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->release()V

    .line 93
    return-void
.end method

.method public setBurstShotInterval(I)V
    .locals 6
    .parameter "millisecond"

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :goto_0
    return-void

    .line 203
    :cond_0
    :try_start_1
    const-string v1, "setBurstShotInterval"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/FeatureCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 214
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 206
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 208
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 210
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setBurstTotalCaptures(I)V
    .locals 6
    .parameter "num"

    .prologue
    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :goto_0
    return-void

    .line 183
    :cond_0
    :try_start_1
    const-string v1, "setBurstTotalCaptures"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/FeatureCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 194
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 186
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 188
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 190
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setFaceOrientation(I)V
    .locals 6
    .parameter "degree"

    .prologue
    .line 495
    monitor-enter p0

    .line 496
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    return-void

    .line 499
    :cond_0
    :try_start_1
    const-string v1, "setFaceOrientation"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/FeatureCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 510
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 502
    :catch_1
    move-exception v0

    .line 503
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 504
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 506
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setISOValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 2
    .parameter "mParameters"
    .parameter "iso"

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->getIsoKey()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, isoKey:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method

.method public setShootMode(Ljava/lang/String;)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_0
    return-void

    .line 143
    :cond_0
    :try_start_1
    const-string v1, "setShotMode"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/FeatureCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 154
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 148
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setSmileDetection(Z)V
    .locals 6
    .parameter "value"

    .prologue
    .line 327
    monitor-enter p0

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/FeatureCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    return-void

    .line 331
    :cond_0
    :try_start_1
    const-string v1, "setSmileDetection"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/FeatureCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/FeatureCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 342
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 334
    :catch_1
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 336
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 337
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 338
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public startFaceDetection()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->startFaceDetection()V

    .line 317
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/feature/FeatureCamera;->setBlinkDetection(Z)V

    .line 318
    return-void
.end method

.method public startMTKPanorama(ILandroid/hardware/Camera$AUTORAMACallback;Landroid/hardware/Camera$AUTORAMAMVCallback;)V
    .locals 0
    .parameter "num"
    .parameter "cb"
    .parameter "MVcb"

    .prologue
    .line 470
    invoke-super {p0, p1, p2, p3}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->startMTKPanorama(ILandroid/hardware/Camera$AUTORAMACallback;Landroid/hardware/Camera$AUTORAMAMVCallback;)V

    .line 471
    return-void
.end method

.method public startMav(ILandroid/hardware/Camera$MAVCallback;)V
    .locals 0
    .parameter "num"
    .parameter "cb"

    .prologue
    .line 482
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->startMav(ILandroid/hardware/Camera$MAVCallback;)V

    .line 483
    return-void
.end method

.method public startTargetTracking(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 452
    const-string v0, "target-coordinates"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 453
    const-string v0, "auckland-target-tracking"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    sget-object v0, Lcom/android/hwcamera/feature/FeatureCamera;->FeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/feature/ICamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 455
    const-string v0, "auckland-target-tracking"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 456
    invoke-super {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->startTargetTracking()V

    .line 458
    return-void
.end method

.method public stopFaceDetection()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/feature/FeatureCamera;->setBlinkDetection(Z)V

    .line 323
    invoke-super {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->stopFaceDetection()V

    .line 324
    return-void
.end method

.method public stopMTKPanorama(I)V
    .locals 0
    .parameter "isMerge"

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->stopMTKPanorama(I)V

    .line 475
    return-void
.end method

.method public stopMTKPanoramaCallback()V
    .locals 0

    .prologue
    .line 478
    invoke-super {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->stopMTKPanoramaCallback()V

    .line 479
    return-void
.end method

.method public stopMav(I)V
    .locals 0
    .parameter "isMerge"

    .prologue
    .line 486
    invoke-super {p0, p1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->stopMav(I)V

    .line 487
    return-void
.end method

.method public stopMavCallback()V
    .locals 0

    .prologue
    .line 490
    invoke-super {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->stopMavCallback()V

    .line 491
    return-void
.end method

.method public stopTargetTracking(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 468
    :goto_0
    return-void

    .line 463
    :cond_0
    const-string v0, "auckland-target-tracking"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v0, "target-coordinates"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 465
    sget-object v0, Lcom/android/hwcamera/feature/FeatureCamera;->FeatureCamera:Lcom/android/hwcamera/feature/ICamera;

    invoke-interface {v0, p1}, Lcom/android/hwcamera/feature/ICamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 466
    const-string v0, "auckland-target-tracking"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 467
    invoke-super {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->stopTargetTracking()V

    goto :goto_0
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .parameter "mShutterCallback"
    .parameter "mRawPictureCallback"
    .parameter "mPostViewPictureCallback"
    .parameter "jpegPictureCallback"

    .prologue
    .line 116
    instance-of v0, p4, Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/hwcamera/feature/FeatureCamera;->mShotModeFeature:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->getDefaultFeatureShotModeInstance(Lcom/android/hwcamera/feature/ICamera;)Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/FeatureCamera;->mShotModeFeature:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/feature/FeatureCamera;->mShotModeFeature:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    if-nez v0, :cond_1

    .line 127
    .end local p4
    :goto_0
    return-void

    .line 121
    .restart local p4
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/feature/FeatureCamera;->mShotModeFeature:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    check-cast p4, Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;

    .end local p4
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/hwcamera/feature/shot/IFeatureShotMode;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Lcom/android/hwcamera/feature/shot/FeaturePictureCallback;)V

    goto :goto_0

    .line 125
    .restart local p4
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method

.method public updateShootMode(Ljava/lang/String;Landroid/hardware/Camera$Parameters;ZI)Z
    .locals 1
    .parameter "mode"
    .parameter "parameters"
    .parameter "useBackProcessIfNeeded"
    .parameter "cameraId"

    .prologue
    .line 131
    invoke-static {p1, p0}, Lcom/android/hwcamera/feature/shot/FeatureShotModeFactory;->getFeatureShotModeInstance(Ljava/lang/String;Lcom/android/hwcamera/feature/ICamera;)Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/feature/FeatureCamera;->mShotModeFeature:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    .line 132
    iget-object v0, p0, Lcom/android/hwcamera/feature/FeatureCamera;->mShotModeFeature:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/feature/FeatureCamera;->mShotModeFeature:Lcom/android/hwcamera/feature/shot/IFeatureShotMode;

    invoke-interface {v0, p2, p3, p4}, Lcom/android/hwcamera/feature/shot/IFeatureShotMode;->prepareShotMode(Landroid/hardware/Camera$Parameters;ZI)Z

    move-result v0

    goto :goto_0
.end method
