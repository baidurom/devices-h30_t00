.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$1;,
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$ContinuousShotDone;,
        Landroid/hardware/Camera$PreviewRawDumpCallback;,
        Landroid/hardware/Camera$ZSDPreviewDone;,
        Landroid/hardware/Camera$AUTORAMAMVCallback;,
        Landroid/hardware/Camera$AUTORAMACallback;,
        Landroid/hardware/Camera$AFDataCallback;,
        Landroid/hardware/Camera$ASDCallback;,
        Landroid/hardware/Camera$MAVCallback;,
        Landroid/hardware/Camera$SmileCallback;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$LcdCompensateCallback;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_NO_MEMORY:I = 0x3e8

.field public static final CAMERA_ERROR_RESET:I = 0x3e9

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_EXT_NOTIFY_LCD_COMPENSATE_LIGHT:I = 0x13

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final MTK_CAMERA_MSG_EXT_DATA:I = -0x80000000

.field private static final MTK_CAMERA_MSG_EXT_DATA_AF:I = 0x2

.field private static final MTK_CAMERA_MSG_EXT_DATA_AUTORAMA:I = 0x1

.field private static final MTK_CAMERA_MSG_EXT_DATA_BURST_SHOT:I = 0x3

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY:I = 0x40000000

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ASD:I = 0x2

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_BURST_SHUTTER:I = 0x4

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_CONTINUOUS_END:I = 0x6

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_MAV:I = 0x3

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_RAW_DUMP_STOPPED:I = 0x12

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_SMILE_DETECT:I = 0x1

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ZSD_PREVIEW_DONE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "Camera"


# instance fields
.field private mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

.field private mASDCallback:Landroid/hardware/Camera$ASDCallback;

.field private mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;

.field private mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mLcdCompensateCallback:Landroid/hardware/Camera$LcdCompensateCallback;

.field private mMAVCallback:Landroid/hardware/Camera$MAVCallback;

.field private mNativeContext:I

.field private mOneShot:Z

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

.field private mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mSmileCallback:Landroid/hardware/Camera$SmileCallback;

.field private mStereo3DModeForCamera:Z

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-boolean v0, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 252
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 442
    return-void
.end method

.method constructor <init>(I)V
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-boolean v2, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 252
    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 254
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 415
    iput-object v3, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 416
    iput-object v3, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 417
    iput-object v3, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 418
    iput-object v3, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 419
    iput-object v3, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    .line 420
    iput-object v3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 421
    iput-object v3, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 424
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 425
    new-instance v2, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 432
    :goto_0
    new-instance v1, Lcom/huawei/permission/CameraPermission;

    invoke-direct {v1}, Lcom/huawei/permission/CameraPermission;-><init>()V

    .line 433
    .local v1, mCameraPermission:Lcom/huawei/permission/CameraPermission;
    invoke-virtual {v1}, Lcom/huawei/permission/CameraPermission;->remind()V

    .line 434
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-boolean v3, v1, Lcom/huawei/permission/CameraPermission;->isCameraBlocked:Z

    invoke-direct {p0, v2, p1, v3}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;IZ)V

    .line 436
    return-void

    .line 426
    .end local v1           #mCameraPermission:Lcom/huawei/permission/CameraPermission;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 427
    new-instance v2, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    .line 429
    :cond_1
    iput-object v3, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$ASDCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mASDCallback:Landroid/hardware/Camera$ASDCallback;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$MAVCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotDone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$LcdCompensateCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mLcdCompensateCallback:Landroid/hardware/Camera$LcdCompensateCallback;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMAMVCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$AUTORAMACallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$400(Landroid/hardware/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$500(Landroid/hardware/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$600(Landroid/hardware/Camera;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .parameter "callbackBuffer"
    .parameter "msgType"

    .prologue
    .line 836
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 838
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 843
    return-void
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 5
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 292
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 293
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 294
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 296
    .local v0, audioService:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    const/4 v3, 0x0

    iput-boolean v3, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v2

    .line 302
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 2170
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 2171
    .local v0, camera:Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    return-object v1
.end method

.method public static native getNumberOfCameras()I
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "def"

    .prologue
    .line 1746
    invoke-static {p0, p1}, Landroid/hardware/Camera;->native_getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2103
    const-string/jumbo v0, "persist.sys.screen.size"

    const-string v1, "800x480"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isRestricted(I)Z
    .locals 10
    .parameter "pid"

    .prologue
    .line 2068
    const/4 v7, 0x0

    .line 2069
    .local v7, ret:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cmdline"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2071
    .local v3, f:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2073
    .local v4, in:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #in:Ljava/io/FileInputStream;
    .local v5, in:Ljava/io/FileInputStream;
    move-object v4, v5

    .line 2078
    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :goto_0
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 2079
    .local v6, inReader:Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2080
    .local v1, buffer:Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    new-array v0, v8, [C

    .line 2082
    .local v0, buf:[C
    :goto_1
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 2083
    const/4 v8, 0x0

    aget-char v8, v0, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2086
    :catch_0
    move-exception v2

    .line 2087
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2090
    .end local v2           #e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.google.android.apps.unveil"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2091
    const/4 v7, 0x1

    .line 2093
    :cond_0
    return v7

    .line 2074
    .end local v0           #buf:[C
    .end local v1           #buffer:Ljava/lang/StringBuilder;
    .end local v6           #inReader:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 2075
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2085
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #buf:[C
    .restart local v1       #buffer:Ljava/lang/StringBuilder;
    .restart local v6       #inReader:Ljava/io/InputStreamReader;
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private static native native_getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private static native native_setProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;IZ)V
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 403
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 404
    .local v2, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 405
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 406
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 407
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 408
    new-instance v3, Landroid/hardware/Camera;

    invoke-direct {v3, v1}, Landroid/hardware/Camera;-><init>(I)V

    .line 411
    :goto_1
    return-object v3

    .line 405
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 393
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "camera_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1064
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 1065
    .local v0, c:Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v2, :cond_0

    .line 1069
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1070
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private final native setPreviewDisplay(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "val"

    .prologue
    .line 1756
    invoke-static {p0, p1}, Landroid/hardware/Camera;->native_setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    return-void
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 787
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 788
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 830
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 831
    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1150
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1151
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1152
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    .line 1154
    return-void

    .line 1152
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1167
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1168
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1169
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1186
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    .line 1187
    return-void

    .line 1169
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public native cancelContinuousShot()V
.end method

.method public native cancelPanorama()V
.end method

.method public native cancelSDPreview()V
.end method

.method public final native doPanorama(I)V
.end method

.method public final enableShutterSound(Z)Z
    .locals 5
    .parameter "enabled"

    .prologue
    .line 1430
    if-nez p1, :cond_0

    .line 1431
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1432
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1434
    .local v0, audioService:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 1439
    .end local v0           #audioService:Landroid/media/IAudioService;
    .end local v1           #b:Landroid/os/IBinder;
    :goto_0
    return v3

    .line 1435
    .restart local v0       #audioService:Landroid/media/IAudioService;
    .restart local v1       #b:Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 1436
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    .end local v0           #audioService:Landroid/media/IAudioService;
    .end local v1           #b:Landroid/os/IBinder;
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v3

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 445
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 446
    return-void
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2129
    new-instance v0, Landroid/hardware/Camera$Parameters;

    invoke-direct {v0, p0, v6}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2130
    .local v0, p:Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2131
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2133
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera framework getParameters ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    iget-boolean v3, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setStereo3DMode(Z)V

    .line 2139
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/Camera;->isRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2140
    const-string/jumbo v3, "tablet"

    const-string/jumbo v4, "ro.build.characteristics"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2142
    const-string v2, "760x480"

    .line 2143
    .local v2, size:Ljava/lang/String;
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change preview size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    const-string/jumbo v3, "preview-size-values"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    const-string/jumbo v3, "preview-size"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    .end local v2           #size:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 2150
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    .line 2151
    .restart local v2       #size:Ljava/lang/String;
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change preview size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    const-string/jumbo v3, "preview-size-values"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    const-string/jumbo v3, "preview-size"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final native lock()V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 459
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 461
    return-void
.end method

.method public final setAFDataCallback(Landroid/hardware/Camera$AFDataCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1899
    iput-object p1, p0, Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

    .line 1900
    return-void
.end method

.method public final setASDCallback(Landroid/hardware/Camera$ASDCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1878
    iput-object p1, p0, Landroid/hardware/Camera;->mASDCallback:Landroid/hardware/Camera$ASDCallback;

    .line 1879
    return-void
.end method

.method public final setAUTORAMACallback(Landroid/hardware/Camera$AUTORAMACallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1930
    iput-object p1, p0, Landroid/hardware/Camera;->mAUTORAMACallback:Landroid/hardware/Camera$AUTORAMACallback;

    .line 1931
    return-void
.end method

.method public final setAUTORAMAMVCallback(Landroid/hardware/Camera$AUTORAMAMVCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1942
    iput-object p1, p0, Landroid/hardware/Camera;->mAUTORAMAMVCallback:Landroid/hardware/Camera$AUTORAMAMVCallback;

    .line 1943
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 1215
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1216
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    .line 1217
    return-void

    .line 1216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCSDoneCallback(Landroid/hardware/Camera$ContinuousShotDone;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 2041
    iput-object p1, p0, Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;

    .line 2042
    return-void
.end method

.method public native setContinuousShotSpeed(I)V
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1732
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 1733
    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1514
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 1515
    return-void
.end method

.method public final setLcdCompensateCallback(Landroid/hardware/Camera$LcdCompensateCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1486
    const-string v0, "Camera"

    const-string v1, " setLcdCompensateCallback"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    iput-object p1, p0, Landroid/hardware/Camera;->mLcdCompensateCallback:Landroid/hardware/Camera$LcdCompensateCallback;

    .line 1488
    return-void
.end method

.method public final setMAVCallback(Landroid/hardware/Camera$MAVCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1856
    iput-object p1, p0, Landroid/hardware/Camera;->mMAVCallback:Landroid/hardware/Camera$MAVCallback;

    .line 1857
    return-void
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 711
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 712
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 713
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 714
    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 715
    return-void

    :cond_0
    move v0, v1

    .line 714
    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 2056
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 2057
    return-void
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 688
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 689
    iput-boolean v1, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 690
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 693
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 694
    return-void

    :cond_0
    move v0, v1

    .line 693
    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 746
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 747
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 748
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 749
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 750
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 545
    new-instance v0, Lcom/huawei/permission/CameraPermission;

    invoke-direct {v0}, Lcom/huawei/permission/CameraPermission;-><init>()V

    .line 546
    .local v0, cameraPermission:Lcom/huawei/permission/CameraPermission;
    invoke-virtual {v0}, Lcom/huawei/permission/CameraPermission;->remind()V

    .line 548
    iget-boolean v2, v0, Lcom/huawei/permission/CameraPermission;->isCameraBlocked:Z

    if-eqz v2, :cond_0

    .line 549
    check-cast v1, Landroid/view/Surface;

    invoke-direct {p0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 559
    :goto_0
    return-void

    .line 551
    :cond_0
    if-eqz p1, :cond_1

    .line 553
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0

    .line 555
    :cond_1
    check-cast v1, Landroid/view/Surface;

    invoke-direct {p0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 2024
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

    .line 2025
    return-void
.end method

.method public setPreviewRawDumpCallback(Landroid/hardware/Camera$PreviewRawDumpCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 2015
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    .line 2016
    return-void
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1781
    iput-object p1, p0, Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;

    .line 1782
    return-void
.end method

.method public setStereo3DModeForCamera(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2118
    iput-boolean p1, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 2119
    return-void
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1473
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1474
    return-void
.end method

.method public final native startAUTORAMA(I)V
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 1550
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 1551
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1553
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 1554
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1555
    return-void
.end method

.method public final native startMAV(I)V
.end method

.method public final native startPreview()V
.end method

.method public native startSDPreview()V
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public native stopAUTORAMA(I)V
.end method

.method public final stopFaceDetection()V
    .locals 1

    .prologue
    .line 1563
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 1564
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1565
    return-void
.end method

.method public native stopMAV(I)V
.end method

.method public final stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 649
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 652
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 653
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 654
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 655
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 656
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 657
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 658
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    iput-object v2, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 660
    return-void

    .line 658
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 1262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1263
    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 1297
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1298
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1299
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1300
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1303
    const/4 v0, 0x0

    .line 1304
    .local v0, msgType:I
    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 1305
    or-int/lit8 v0, v0, 0x2

    .line 1307
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    .line 1308
    or-int/lit16 v0, v0, 0x80

    .line 1310
    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    .line 1311
    or-int/lit8 v0, v0, 0x40

    .line 1313
    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_3

    .line 1314
    or-int/lit16 v0, v0, 0x100

    .line 1317
    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1318
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1319
    return-void
.end method

.method public final native unlock()V
.end method
