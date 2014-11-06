.class public abstract Lcom/android/hwcamera/feature/AbstractAndroidCamera;
.super Ljava/lang/Object;
.source "AbstractAndroidCamera.java"

# interfaces
.implements Lcom/android/hwcamera/feature/ICamera;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/feature/AbstractAndroidCamera$HwExtHanlerThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractGoogleCamera"

.field protected static mCamera:Ljava/lang/Object;

.field protected static mFeatureCameraClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected static mFeatureCameraConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field protected static mFeatureCameraMethodList:[Ljava/lang/reflect/Method;


# instance fields
.field private mHwExtCameraHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mFeatureCameraMethodList:[Ljava/lang/reflect/Method;

    .line 39
    sput-object v0, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mFeatureCameraClass:Ljava/lang/Class;

    .line 40
    sput-object v0, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mFeatureCameraConstructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/feature/AbstractAndroidCamera;Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->setHWExtCameraHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private setHWExtCameraHandler(Landroid/os/Handler;)V
    .locals 5
    .parameter "handler"

    .prologue
    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    return-void

    .line 117
    :cond_0
    :try_start_1
    const-string v1, "setHandler"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 5
    .parameter "callbackBuffer"

    .prologue
    .line 650
    monitor-enter p0

    .line 651
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 666
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    return-void

    .line 655
    :cond_0
    :try_start_1
    const-string v1, "addCallbackBuffer"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    goto :goto_0

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 666
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 658
    :catch_1
    move-exception v0

    .line 659
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 660
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 661
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 662
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 663
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 5
    .parameter "mAutoFocusCallback"

    .prologue
    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 391
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    return-void

    .line 382
    :cond_0
    :try_start_1
    const-string v1, "autoFocus"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 391
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 385
    :catch_1
    move-exception v0

    .line 386
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 387
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 388
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 4

    .prologue
    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 409
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    return-void

    .line 400
    :cond_0
    :try_start_1
    const-string v1, "cancelAutoFocus"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 409
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 403
    :catch_1
    move-exception v0

    .line 404
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 405
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 406
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public enableShutterSound(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 630
    monitor-enter p0

    .line 631
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 646
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    return-void

    .line 635
    :cond_0
    :try_start_1
    const-string v1, "enableShutterSound"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 646
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 638
    :catch_1
    move-exception v0

    .line 639
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 640
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 641
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 642
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 643
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public abstract findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
.end method

.method public getAndroidCamera()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 487
    monitor-enter p0

    .line 488
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :goto_0
    return-object v1

    .line 492
    :cond_0
    :try_start_1
    const-string v1, "getAndroidCamera"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 502
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 496
    :catch_1
    move-exception v0

    .line 497
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 498
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 4

    .prologue
    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :goto_0
    return-object v1

    .line 150
    :cond_0
    :try_start_1
    const-string v1, "getParameters"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 158
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized initHwExtCameraHanlderThread()V
    .locals 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/hwcamera/Util;->Assert(Z)V

    .line 51
    new-instance v0, Lcom/android/hwcamera/feature/AbstractAndroidCamera$HwExtHanlerThread;

    const-string v1, "HwExtCamera_Hander_Thread"

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera$HwExtHanlerThread;-><init>(Lcom/android/hwcamera/feature/AbstractAndroidCamera;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mHwExtCameraHandlerThread:Landroid/os/HandlerThread;

    .line 52
    iget-object v0, p0, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mHwExtCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAndroidCamera()Z
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    instance-of v0, v0, Landroid/hardware/Camera;

    return v0
.end method

.method public lock()V
    .locals 4

    .prologue
    .line 451
    monitor-enter p0

    .line 452
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    .line 465
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    return-void

    .line 456
    :cond_0
    :try_start_1
    const-string v1, "lock"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 465
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 459
    :catch_1
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 461
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 462
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public reconnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V

    .line 177
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    return-void

    .line 168
    :cond_0
    :try_start_1
    const-string v1, "reconnect"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 177
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 171
    :catch_1
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 108
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    return-void

    .line 99
    :cond_0
    :try_start_1
    const-string v1, "release"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 102
    :catch_1
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized releaseHwExtCameraHanlderThread()V
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mHwExtCameraHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mHwExtCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mHwExtCameraHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 5
    .parameter "cb"

    .prologue
    .line 507
    monitor-enter p0

    .line 508
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 524
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    return-void

    .line 513
    :cond_0
    :try_start_1
    const-string v1, "setAutoFocusMoveCallback"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 524
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 516
    :catch_1
    move-exception v0

    .line 517
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 518
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 519
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 520
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 521
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setDisplayOrientation(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    .line 312
    monitor-enter p0

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 328
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    return-void

    .line 318
    :cond_0
    :try_start_1
    const-string v1, "setDisplayOrientation"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 328
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 322
    :catch_1
    move-exception v0

    .line 323
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 324
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 325
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 5
    .parameter "mErrorCallback"

    .prologue
    .line 431
    monitor-enter p0

    .line 432
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 447
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    return-void

    .line 437
    :cond_0
    :try_start_1
    const-string v1, "setErrorCallback"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 447
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 441
    :catch_1
    move-exception v0

    .line 442
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 443
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 444
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 609
    monitor-enter p0

    .line 610
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 626
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    return-void

    .line 615
    :cond_0
    :try_start_1
    const-string v1, "setFaceDetectionListener"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 626
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 618
    :catch_1
    move-exception v0

    .line 619
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 620
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 621
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 622
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 623
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 5
    .parameter "cb"

    .prologue
    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 290
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    return-void

    .line 279
    :cond_0
    :try_start_1
    const-string v1, "setOneShotPreviewCallback"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v1, "AbstractGoogleCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOneShotPreviewCallback cb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 290
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 284
    :catch_1
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 286
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "mParameters"

    .prologue
    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 195
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    return-void

    .line 186
    :cond_0
    :try_start_1
    const-string v1, "setParameters"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 189
    :catch_1
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 5
    .parameter "cb"

    .prologue
    .line 670
    monitor-enter p0

    .line 671
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 686
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    return-void

    .line 675
    :cond_0
    :try_start_1
    const-string v1, "setPreviewCallback"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 686
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 678
    :catch_1
    move-exception v0

    .line 679
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 680
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 681
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 682
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 683
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 5
    .parameter "object"

    .prologue
    .line 253
    monitor-enter p0

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 269
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    return-void

    .line 259
    :cond_0
    :try_start_1
    const-string v1, "setPreviewCallbackWithBuffer"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 269
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 263
    :catch_1
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 265
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    monitor-enter p0

    .line 414
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 427
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    return-void

    .line 418
    :cond_0
    :try_start_1
    const-string v1, "setPreviewDisplay"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 427
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 421
    :catch_1
    move-exception v0

    .line 422
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 423
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .parameter "surface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    monitor-enter p0

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 308
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    return-void

    .line 299
    :cond_0
    :try_start_1
    const-string v1, "setPreviewTexture"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 302
    :catch_1
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 5
    .parameter "mZoomListener"

    .prologue
    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 249
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    return-void

    .line 239
    :cond_0
    :try_start_1
    const-string v1, "setZoomChangeListener"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 243
    :catch_1
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 245
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 246
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    if-nez p1, :cond_1

    .line 133
    const/4 v0, 0x0

    .line 141
    :cond_0
    return-object v0

    .line 136
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startFaceDetection()V
    .locals 4

    .prologue
    .line 567
    monitor-enter p0

    .line 568
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 584
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    return-void

    .line 573
    :cond_0
    :try_start_1
    const-string v1, "startFaceDetectionEx"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 584
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 576
    :catch_1
    move-exception v0

    .line 577
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 578
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 579
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 580
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 581
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public startMTKPanorama(ILandroid/hardware/Camera$AUTORAMACallback;Landroid/hardware/Camera$AUTORAMAMVCallback;)V
    .locals 6
    .parameter "num"
    .parameter "cb"
    .parameter "MVcb"

    .prologue
    .line 689
    monitor-enter p0

    .line 690
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :goto_0
    return-void

    .line 694
    :cond_0
    :try_start_1
    const-string v1, "startMTKPanorama"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 705
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

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 697
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 698
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 699
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 700
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 701
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 702
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public startMav(ILandroid/hardware/Camera$MAVCallback;)V
    .locals 6
    .parameter "num"
    .parameter "cb"

    .prologue
    .line 749
    monitor-enter p0

    .line 750
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    :goto_0
    return-void

    .line 754
    :cond_0
    :try_start_1
    const-string v1, "startMav"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 765
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

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 757
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 758
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 759
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 760
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 761
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 762
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public startPreview()V
    .locals 4

    .prologue
    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 229
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    return-void

    .line 222
    :cond_0
    :try_start_1
    const-string v1, "startPreview"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startSmoothZoom(I)V
    .locals 6
    .parameter "mTargetZoomValue"

    .prologue
    .line 332
    monitor-enter p0

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 348
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    return-void

    .line 338
    :cond_0
    :try_start_1
    const-string v1, "startSmoothZoom"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 348
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 342
    :catch_1
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public startTargetTracking()V
    .locals 4

    .prologue
    .line 528
    monitor-enter p0

    .line 529
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :goto_0
    return-void

    .line 533
    :cond_0
    :try_start_1
    const-string v1, "startTargetTrackingEx"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 544
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

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 536
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 537
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 538
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 539
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 540
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 541
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public stopFaceDetection()V
    .locals 4

    .prologue
    .line 588
    monitor-enter p0

    .line 589
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 605
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    return-void

    .line 594
    :cond_0
    :try_start_1
    const-string v1, "stopFaceDetectionEx"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 605
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 597
    :catch_1
    move-exception v0

    .line 598
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 599
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 600
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 601
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 602
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public stopMTKPanorama(I)V
    .locals 6
    .parameter "isMerge"

    .prologue
    .line 709
    monitor-enter p0

    .line 710
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    :goto_0
    return-void

    .line 714
    :cond_0
    :try_start_1
    const-string v1, "stopMTKPanorama"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    .line 725
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

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 717
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 718
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 719
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 720
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 721
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 722
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public stopMTKPanoramaCallback()V
    .locals 4

    .prologue
    .line 729
    monitor-enter p0

    .line 730
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    :goto_0
    return-void

    .line 734
    :cond_0
    :try_start_1
    const-string v1, "stopMTKPanoramaCallback"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 745
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

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 737
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 738
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 739
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 740
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 741
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 742
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public stopMav(I)V
    .locals 6
    .parameter "isMerge"

    .prologue
    .line 769
    monitor-enter p0

    .line 770
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :goto_0
    return-void

    .line 774
    :cond_0
    :try_start_1
    const-string v1, "stopMav"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

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

    .line 785
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

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 777
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 778
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 779
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 780
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 781
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 782
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public stopMavCallback()V
    .locals 4

    .prologue
    .line 789
    monitor-enter p0

    .line 790
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    :goto_0
    return-void

    .line 794
    :cond_0
    :try_start_1
    const-string v1, "stopMavCallback"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 805
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

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 797
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 798
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 799
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 800
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 801
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 802
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public stopPreview()V
    .locals 4

    .prologue
    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 213
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    return-void

    .line 204
    :cond_0
    :try_start_1
    const-string v1, "stopPreview"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 213
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 207
    :catch_1
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 209
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public stopTargetTracking()V
    .locals 4

    .prologue
    .line 548
    monitor-enter p0

    .line 549
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    :goto_0
    return-void

    .line 553
    :cond_0
    :try_start_1
    const-string v1, "stopTargetTrackingEx"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 564
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

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 556
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 557
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 558
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 559
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 560
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 561
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 5
    .parameter "mShutterCallback"
    .parameter "mRawPictureCallback"
    .parameter "mPostViewPictureCallback"
    .parameter "jpegPictureCallback"
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "REC_CATCH_EXCEPTION"
        }
    .end annotation

    .prologue
    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 372
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    return-void

    .line 363
    :cond_0
    :try_start_1
    const-string v1, "takePictureEx"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "takePicture failed!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unlock()V
    .locals 4

    .prologue
    .line 469
    monitor-enter p0

    .line 470
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->isAndroidCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    sget-object v1, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    .line 483
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    return-void

    .line 474
    :cond_0
    :try_start_1
    const-string v1, "unlock"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/feature/AbstractAndroidCamera;->mCamera:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 483
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 477
    :catch_1
    move-exception v0

    .line 478
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 479
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 480
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
