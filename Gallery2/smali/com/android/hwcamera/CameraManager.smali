.class public Lcom/android/hwcamera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/CameraManager$1;,
        Lcom/android/hwcamera/CameraManager$CameraProxy;,
        Lcom/android/hwcamera/CameraManager$TakePictureResualt;,
        Lcom/android/hwcamera/CameraManager$CameraHandler;,
        Lcom/android/hwcamera/CameraManager$MsgObject;
    }
.end annotation


# static fields
.field private static final ADD_CALLBACK_BUFFER:I = 0x9

.field private static final AUTO_FOCUS:I = 0xa

.field private static final CANCEL_AUTO_FOCUS:I = 0xb

.field private static final ENABLE_SHUTTER_SOUND:I = 0x19

.field private static final GET_PARAMETERS:I = 0x14

.field private static final LOCK:I = 0x4

.field private static final RECONNECT:I = 0x2

.field private static final RELEASE:I = 0x1

.field private static final SET_AUTO_FOCUS_MOVE_CALLBACK:I = 0xc

.field private static final SET_DISPLAY_ORIENTATION:I = 0xd

.field private static final SET_ERROR_CALLBACK:I = 0x12

.field private static final SET_FACE_DETECTION_LISTENER:I = 0xf

.field private static final SET_FACE_ORIENTATION:I = 0x1a

.field private static final SET_PARAMETERS:I = 0x13

.field private static final SET_PARAMETERS_ASYNC:I = 0x15

.field private static final SET_PREVIEW_CALLBACK:I = 0x18

.field private static final SET_PREVIEW_CALLBACK_WITH_BUFFER:I = 0x8

.field private static final SET_PREVIEW_DISPLAY_ASYNC:I = 0x17

.field private static final SET_PREVIEW_TEXTURE_ASYNC:I = 0x5

.field private static final SET_SHOOT_MODE:I = 0x1b

.field private static final SET_ZOOM_CHANGE_LISTENER:I = 0xe

.field private static final START_FACE_DETECTION:I = 0x10

.field private static final START_PREVIEW_ASYNC:I = 0x6

.field private static final STOP_FACE_DETECTION:I = 0x11

.field private static final STOP_PREVIEW:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final UNLOCK:I = 0x3

.field private static final WAIT_FOR_IDLE:I = 0x16

.field private static sCameraManager:Lcom/android/hwcamera/CameraManager;


# instance fields
.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraOpenHandler:Landroid/os/Handler;

.field private mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mReconnectException:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/android/hwcamera/CameraManager;

    invoke-direct {v0}, Lcom/android/hwcamera/CameraManager;-><init>()V

    sput-object v0, Lcom/android/hwcamera/CameraManager;->sCameraManager:Lcom/android/hwcamera/CameraManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Camera Handler Thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance v2, Lcom/android/hwcamera/CameraManager$CameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/hwcamera/CameraManager$CameraHandler;-><init>(Lcom/android/hwcamera/CameraManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    .line 122
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Camera Open Handler Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, htopen:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 124
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/hwcamera/CameraManager;->mCameraOpenHandler:Landroid/os/Handler;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/CameraManager;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/hwcamera/CameraManager;->isNeedBlock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/CameraManager;)Lcom/android/hwcamera/CameraManager$CameraProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/hwcamera/CameraManager;Lcom/android/hwcamera/CameraManager$CameraProxy;)Lcom/android/hwcamera/CameraManager$CameraProxy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/hwcamera/CameraManager;)Ljava/io/IOException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/hwcamera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/hwcamera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/hwcamera/CameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/hwcamera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/hwcamera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/hwcamera/CameraManager;Lcom/android/hwcamera/feature/ICamera;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/CameraManager;->setAutoFocusMoveCallback(Lcom/android/hwcamera/feature/ICamera;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager;->mCameraOpenHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/CameraManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static instance()Lcom/android/hwcamera/CameraManager;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/hwcamera/CameraManager;->sCameraManager:Lcom/android/hwcamera/CameraManager;

    return-object v0
.end method

.method private isNeedBlock(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 142
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAutoFocusMoveCallback(Lcom/android/hwcamera/feature/ICamera;Ljava/lang/Object;)V
    .locals 0
    .parameter "camera"
    .parameter "cb"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 335
    check-cast p2, Landroid/hardware/Camera$AutoFocusMoveCallback;

    .end local p2
    invoke-interface {p1, p2}, Lcom/android/hwcamera/feature/ICamera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 336
    return-void
.end method


# virtual methods
.method cameraOpen(I)Lcom/android/hwcamera/CameraManager$CameraProxy;
    .locals 4
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x400

    .line 341
    const-string v0, "CameraManager.cameraOpen"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 348
    new-instance v0, Lcom/android/hwcamera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/hwcamera/CameraManager$CameraProxy;-><init>(Lcom/android/hwcamera/CameraManager;ILcom/android/hwcamera/CameraManager$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;

    .line 349
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraManager$CameraProxy;->getFeatureCamera()Lcom/android/hwcamera/feature/ICamera;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 350
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 351
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public getCamera()Lcom/android/hwcamera/CameraManager$CameraProxy;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/hwcamera/CameraManager;->mCameraProxy:Lcom/android/hwcamera/CameraManager$CameraProxy;

    return-object v0
.end method
